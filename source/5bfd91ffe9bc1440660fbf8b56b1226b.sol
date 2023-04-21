/**
 *  Faucet
 *
 *  This contract is designed to simplify the ownership of testnet
 *  funds. Anyone may send a request to this contract to send them
 *  pi ether. When done with your test ether, you may send any
 *  remaining funds back.
 *
 */

pragma solidity ^0.4.8;

contract Faucet {

    event didFund(address targetAddress, uint remainingBalance);

    bool _mutex = false;

    uint _sendCount = 0;
    uint _receiveCount = 0;

    function Faucet() { }

    function fund(address targetAddress) {
        if (_mutex) { throw; }
        _mutex = true;
        _sendCount++;

        // Send the target pi ether
        bool success = targetAddress.send(0x2b992ddfa23249d6);
        if (!success) { throw; }

        // Reimburse the sender 0.1 ether (this should VERY cover gas)
        success = msg.sender.send(0x16345785d8a0000);
        if (!success) { throw; }

        didFund(targetAddress, this.balance);

        _mutex = false;
    }

    function() payable {
        if (_mutex) { throw; }
        _receiveCount++;
    }

    function getStatus() constant returns (uint sendCount, uint receiveCount) {
        return (_sendCount, _receiveCount);
    }
}