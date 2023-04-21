Processing contract: /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol:SysEscrow
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'SysEscrow':
    |        uint256 buyerValue =  escrows[_tradeHash].summ - arbitratorValue;
    |        
  > |        bool buyerReceivedMoney = escrows[_tradeHash].buyer.call.value(buyerValue)();
    |        bool arbitratorReceivedMoney = arbitrator.call.value(arbitratorValue)();
    |        
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(98)

[31mViolation[0m for DAO in contract 'SysEscrow':
    |        
    |        bool buyerReceivedMoney = escrows[_tradeHash].buyer.call.value(buyerValue)();
  > |        bool arbitratorReceivedMoney = arbitrator.call.value(arbitratorValue)();
    |        
    |        if ( buyerReceivedMoney && arbitratorReceivedMoney )
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(99)

[31mViolation[0m for DAO in contract 'SysEscrow':
    |        uint256 buyerValue =  escrows[_tradeHash].summ - arbitratorValue;
    |        
  > |        bool sellerReceivedMoney = escrows[_tradeHash].seller.call.value(buyerValue)();
    |        bool arbitratorReceivedMoney = arbitrator.call.value(arbitratorValue)();
    |        
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(144)

[31mViolation[0m for DAO in contract 'SysEscrow':
    |        
    |        bool sellerReceivedMoney = escrows[_tradeHash].seller.call.value(buyerValue)();
  > |        bool arbitratorReceivedMoney = arbitrator.call.value(arbitratorValue)();
    |        
    |        if ( sellerReceivedMoney && arbitratorReceivedMoney )
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(145)

[33mWarning[0m for LockedEther in contract 'SysEscrow':
    |
    |
  > |contract SysEscrow {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'SysEscrow':
    |
    |    // Mapping of active trades. Key is a hash of the trade data
  > |    mapping (bytes32 => Escrow) public escrows;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'SysEscrow':
    |
    |
  > |function createEscrow(
    |      /**
    |       * Create a new escrow and add it to `escrows`.
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'SysEscrow':
    |
    |
  > |    function setArbitrator( address _newArbitrator ) onlyOwner {
    |        /**
    |         * Set the arbitrator to a new address. Only the owner can call this.
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'SysEscrow':
    |    }
    |
  > |    function setOwner(address _newOwner) onlyOwner external {
    |        /**
    |         * Change the owner to a new address. Only the owner can call this.
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'SysEscrow':
    |
    |
  > |    function cancelEscrow(
    |      /**
    |       * Cancel escrow. Return money to buyer
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'SysEscrow':
    |    }
    |    
  > |    function approveEscrow(
    |      /**
    |       * Approve escrow. 
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'SysEscrow':
    |    
    |    
  > |    function releaseEscrow(
    |      /**
    |       * Release escrow. Send money to seller
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'SysEscrow':
    |    
    |    
  > |    function isExistsEscrow(
    |      bytes16 _tradeID, // The unique ID of the trade
    |      address _seller, // The selling party of the trade
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'SysEscrow':
    |contract SysEscrow {
    |
  > |    address public owner;
    |    address arbitrator;
    |
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SysEscrow':
    |    address arbitrator;
    |
  > |    uint public MinDeposit = 600000000000000000; // 0.6 Ether
    |
    |    uint constant ARBITRATOR_PERCENT = 1; //1%
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(9)

[31mViolation[0m for TODReceiver in contract 'SysEscrow':
    |        
    |        bool buyerReceivedMoney = escrows[_tradeHash].buyer.call.value(buyerValue)();
  > |        bool arbitratorReceivedMoney = arbitrator.call.value(arbitratorValue)();
    |        
    |        if ( buyerReceivedMoney && arbitratorReceivedMoney )
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(99)

[31mViolation[0m for TODReceiver in contract 'SysEscrow':
    |        
    |        bool sellerReceivedMoney = escrows[_tradeHash].seller.call.value(buyerValue)();
  > |        bool arbitratorReceivedMoney = arbitrator.call.value(arbitratorValue)();
    |        
    |        if ( sellerReceivedMoney && arbitratorReceivedMoney )
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(145)

[33mWarning[0m for UnhandledException in contract 'SysEscrow':
    |        uint256 buyerValue =  escrows[_tradeHash].summ - arbitratorValue;
    |        
  > |        bool buyerReceivedMoney = escrows[_tradeHash].buyer.call.value(buyerValue)();
    |        bool arbitratorReceivedMoney = arbitrator.call.value(arbitratorValue)();
    |        
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(98)

[33mWarning[0m for UnhandledException in contract 'SysEscrow':
    |        uint256 buyerValue =  escrows[_tradeHash].summ - arbitratorValue;
    |        
  > |        bool sellerReceivedMoney = escrows[_tradeHash].seller.call.value(buyerValue)();
    |        bool arbitratorReceivedMoney = arbitrator.call.value(arbitratorValue)();
    |        
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'SysEscrow':
    |        require(!escrows[_tradeHash].exists); // Require that trade does not already exist
    |        uint _buyerCanCancelAfter =  now + _paymentWindowInSeconds;
  > |        escrows[_tradeHash] = Escrow(true, _seller, _buyer, _value, _buyerCanCancelAfter, false, false);
    |
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'SysEscrow':
    |         * @param address _newArbitrator
    |         */
  > |        arbitrator = _newArbitrator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'SysEscrow':
    |         * @param address _newOwner
    |         */
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'SysEscrow':
    |        if ( buyerReceivedMoney && arbitratorReceivedMoney )
    |        {    
  > |            delete escrows[_tradeHash];
    |        } else {
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'SysEscrow':
    |        if ( sellerReceivedMoney && arbitratorReceivedMoney )
    |        {    
  > |            delete escrows[_tradeHash];
    |        } else {
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'SysEscrow':
    |        require(escrows[_tradeHash].exists);
    |        require(escrows[_tradeHash].buyer==msg.sender);
  > |        escrows[_tradeHash].buyerApprovedTheTransaction = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x903643251af408a3c5269c836b9a2a4a1f04d1cf.sol(122)


