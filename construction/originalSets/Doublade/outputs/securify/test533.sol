Processing contract: /home/jiaming/mavs_srcs/contract@0x227f786028e1b5ecb60c2252aee3306c067ec978.sol:EtherPrice
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EtherPrice':
    |
    |
  > |contract EtherPrice {
    |
    |    uint256 private dollars;
  at /home/jiaming/mavs_srcs/contract@0x227f786028e1b5ecb60c2252aee3306c067ec978.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'EtherPrice':
    |    }
    |
  > |    function setPrice(uint256 _dollars, uint8 _cents) validateCents(_dollars, _cents) {
    |        require(owner == msg.sender);
    |        dollars = _dollars;
  at /home/jiaming/mavs_srcs/contract@0x227f786028e1b5ecb60c2252aee3306c067ec978.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'EtherPrice':
    |    }
    |
  > |    function getPrice() constant returns (uint256, uint8) {
    |        return (dollars, cents);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x227f786028e1b5ecb60c2252aee3306c067ec978.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherPrice':
    |    function setPrice(uint256 _dollars, uint8 _cents) validateCents(_dollars, _cents) {
    |        require(owner == msg.sender);
  > |        dollars = _dollars;
    |        cents = _cents;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x227f786028e1b5ecb60c2252aee3306c067ec978.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherPrice':
    |        require(owner == msg.sender);
    |        dollars = _dollars;
  > |        cents = _cents;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x227f786028e1b5ecb60c2252aee3306c067ec978.sol(27)


