pragma solidity ^0.4.6;

contract Atomic {

    // Hold status:
    // 0: Removed
    // 1: On Hold
    // 2: Confirmed

    event LogHoldChange(
        bytes32 indexed hold_id, 
        address indexed user, 
        address indexed company, 
        uint256 price, 
        uint256 expiry, 
        bytes32 external_id, 
        uint256 status
    );

    struct Hold {
        address user;
        address company;
        uint256 price;
        uint256 expiry;
        bytes32 external_id; // For the ID in the company's external database
        uint256 status;
    }

    mapping(address=>bytes32[]) public user_holds;
    mapping(address=>bytes32[]) public company_holds;

    mapping(bytes32=>Hold) public holds;

    function complete(bytes32[] hold_ids) payable returns (bool) {
        uint256 i;
        for(i=0; i<hold_ids.length; i++) {
            bytes32 hold_id = hold_ids[i];
            if (holds[hold_id].status != 1) throw;
            if (holds[hold_id].expiry < now) throw;
            holds[hold_id].status = 2;
            if (!holds[hold_id].company.send(holds[hold_id].price)) throw;
            LogHoldChange(hold_id, holds[hold_id].user, holds[hold_id].company, holds[hold_id].price, holds[hold_id].expiry, holds[hold_id].external_id, 2);
        }
    }

    function isValid(bytes32[] hold_ids) constant returns (bool) {
        uint256 i;
        for(i=0; i<hold_ids.length; i++) {
            bytes32 hold_id = hold_ids[i];
            if (holds[hold_id].status != 1) return false;
            if (holds[hold_id].expiry < now) return false;
        }
        return true;
    }


    function balancePayable(bytes32[] hold_ids) constant returns (uint256) {
        uint256 i;
        uint256 bal = 0;
        for(i=0; i<hold_ids.length; i++) {
            bytes32 hold_id = hold_ids[i];
            if ( (holds[hold_id].status == 1) && (holds[hold_id].expiry > now) ){
                bal = bal + holds[hold_id].price;
            }
        }
        return bal;
    }

    // TODO: Pass in a signature for the company... 
    // ...so that you can only create holds for the company if they agree
    function createHold(address company, uint256 price, uint256 expiry, bytes32 external_id) returns (bytes32 created_hold_id) {
        bytes32 hold_id = holdIDForParameters(msg.sender, company, price, expiry, external_id);
        holds[hold_id] = Hold(
            msg.sender,
            company,
            price,
            expiry,
            external_id,
            1
        );
        user_holds[msg.sender].push(hold_id);
        company_holds[company].push(hold_id);
        LogHoldChange(hold_id, msg.sender, company, price, expiry, external_id, 1);
        return hold_id;
    }

    function holdIDForParameters(address user, address company, uint256 price, uint256 expiry, bytes32 external_id) returns (bytes32 hold_id) {
        return sha3(user, company, price, expiry, external_id);
    }

    function removeHoldByCompany(bytes32 hold_id) returns (bool) {
        if (msg.sender != holds[hold_id].company) throw;

        // completed, cannot be removed
        if (holds[hold_id].status == 2) {
            return false;
        }

        holds[hold_id].status = 0;
        LogHoldChange(hold_id, holds[hold_id].user, holds[hold_id].company, holds[hold_id].price, holds[hold_id].expiry, holds[hold_id].external_id, 0);
        return true;
    }

    function removeHoldByUser(bytes32 hold_id) returns (bool) {
        if (msg.sender != holds[hold_id].user) throw;

        // completed, cannot be removed
        if (holds[hold_id].status == 2) {
            return false;
        }

        holds[hold_id].status = 0;
        LogHoldChange(hold_id, holds[hold_id].user, holds[hold_id].company, holds[hold_id].price, holds[hold_id].expiry, holds[hold_id].external_id, 0);
        return true;
    }

    function getHoldStatus(bytes32 hold_id) constant returns (uint256) {
        return holds[hold_id].status;
    }

    /*
    function activeHoldIDsForUser(address user) constant returns (bytes32[]){
        uint256 i;
        bytes32[] ret;
        for(i=0; i<user_holds[user].length; i++) {
            bytes32 hold_id = user_holds[user][i];
            if (holds[hold_id].status == 1) {
                ret.push(user_holds[user]);
            }
        }
        return ret;
    }

    function activeHoldIDsForCompany(address company) constant returns (bytes32[]){
        uint256 i;
        bytes32[] ret;
        for(i=0; i<company_holds[company].length; i++) {
            bytes32 hold_id = company_holds[company][i];
            if (holds[hold_id].status == 1) {
                ret.push(company_holds[company]);
            }
        }
        return ret;
    }
    */

}