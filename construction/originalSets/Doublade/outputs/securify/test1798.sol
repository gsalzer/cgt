Processing contract: /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol:METAXCrowdSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'METAXCrowdSale':
    |
    |    function drain() onlyOwner {
  > |        if (!owner.send(this.balance)) revert();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1278)

[33mWarning[0m for LockedEther in contract 'METAXCrowdSale':
    |}
    |
  > |contract METAXCrowdSale is ERC20, usingOraclize
    |
    |{
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1039)

[31mViolation[0m for TODAmount in contract 'METAXCrowdSale':
    |
    |    function drain() onlyOwner {
  > |        if (!owner.send(this.balance)) revert();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1278)

[33mWarning[0m for TODReceiver in contract 'METAXCrowdSale':
    |
    |    function drain() onlyOwner {
  > |        if (!owner.send(this.balance)) revert();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1278)

[33mWarning[0m for UnhandledException in contract 'METAXCrowdSale':
    |    modifier oraclizeAPI {
    |        if((address(OAR)==0)||(getCodeSize(address(OAR))==0)) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(74)

[33mWarning[0m for UnhandledException in contract 'METAXCrowdSale':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(153)

[33mWarning[0m for UnhandledException in contract 'METAXCrowdSale':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(155)

[33mWarning[0m for UnhandledException in contract 'METAXCrowdSale':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(511)

[33mWarning[0m for UnhandledException in contract 'METAXCrowdSale':
    |
    |    function drain() onlyOwner {
  > |        if (!owner.send(this.balance)) revert();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METAXCrowdSale':
    |    modifier oraclizeAPI {
    |        if((address(OAR)==0)||(getCodeSize(address(OAR))==0)) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METAXCrowdSale':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(153)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METAXCrowdSale':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(511)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'METAXCrowdSale':
    |
    |    function drain() onlyOwner {
  > |        if (!owner.send(this.balance)) revert();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1278)

[31mViolation[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |       
    |        balances[msg.sender] -= _amount; // Subtract from the sender
  > |        balances[_to] += _amount; // Add the same to the recipient
    |        Transfer(msg.sender, _to, _amount); // Notify anyone listening that this transfer took place
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1184)

[31mViolation[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |        for(uint i = 0; i < addresses.length; i++) {
    |          
  > |            reward[addresses[i]] = true;
    |          
    |        }
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1217)

[31mViolation[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |    // used in reward contract
    |    function setRewardStatus(address addr, bool status) {
  > |        reward[addr] = status;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1306)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |    modifier oraclizeAPI {
    |        if((address(OAR)==0)||(getCodeSize(address(OAR))==0)) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |    function oraclize_setNetwork(uint8 networkID) internal returns(bool){
    |        if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |            OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |            oraclize_setNetworkName("eth_mainnet");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |        }
    |        if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |            OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |            oraclize_setNetworkName("eth_ropsten3");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |        }
    |        if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |            OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |            oraclize_setNetworkName("eth_kovan");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |        }
    |        if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |            OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |            oraclize_setNetworkName("eth_rinkeby");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |        }
    |        if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |            OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |        }
    |        if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |            OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |        }
    |        if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |            OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |}
    |
  > |contract METAXCrowdSale is ERC20, usingOraclize
    |
    |{
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1039)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |           
    |            userAddress[ID] = msg.sender;
  > |            uservalue[msg.sender] = msg.value;
    |            userqueryID[ID] = ID;
    |            
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1115)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |        if (balances[_to] + _amount < balances[_to]) throw; // Check for overflows
    |       
  > |        balances[msg.sender] -= _amount; // Subtract from the sender
    |        balances[_to] += _amount; // Add the same to the recipient
    |        Transfer(msg.sender, _to, _amount); // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1183)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |            balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1253)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _amount) returns(bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1265)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |           if(_amount >0)
    |           {
  > |            balances[_from] = balances[_from] - _amount;
    |            totalSupply = totalSupply - _amount;
    |           }
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1164)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |           {
    |            balances[_from] = balances[_from] - _amount;
  > |            totalSupply = totalSupply - _amount;
    |           }
    |          crowd_sale_status =false;
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1165)

[33mWarning[0m for UnrestrictedWrite in contract 'METAXCrowdSale':
    |            totalSupply = totalSupply - _amount;
    |           }
  > |          crowd_sale_status =false;
    |       }
    |
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(1167)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    function getAddress() returns (address _addr);
    |}
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0x72e70ad1fd8bb22318d31ed9e9fb85dc56bad19c.sol(53)


