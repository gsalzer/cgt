Processing contract: /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol:FrikandelToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'FrikandelToken':
    |        if (msg.value == 0) { return; }
    |
  > |        contractOwner.transfer(msg.value);
    |
    |        uint256 tokensIssued = (msg.value / 1e14); //Since 1 token can be bought for 0.0001 ETH split the value (in Wei) through 1e14 to get the amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(82)

[33mWarning[0m for LockedEther in contract 'FrikandelToken':
    |pragma solidity ^0.4.19;
    |
  > |contract FrikandelToken {
    |    address public contractOwner = msg.sender; //King Frikandel
    |
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(3)

[31mViolation[0m for TODReceiver in contract 'FrikandelToken':
    |        if (msg.value == 0) { return; }
    |
  > |        contractOwner.transfer(msg.value);
    |
    |        uint256 tokensIssued = (msg.value / 1e14); //Since 1 token can be bought for 0.0001 ETH split the value (in Wei) through 1e14 to get the amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(82)

[33mWarning[0m for UnhandledException in contract 'FrikandelToken':
    |        if (msg.value == 0) { return; }
    |
  > |        contractOwner.transfer(msg.value);
    |
    |        uint256 tokensIssued = (msg.value / 1e14); //Since 1 token can be bought for 0.0001 ETH split the value (in Wei) through 1e14 to get the amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'FrikandelToken':
    |        uint256 tokensIssued = (msg.value / 1e14); //Since 1 token can be bought for 0.0001 ETH split the value (in Wei) through 1e14 to get the amount of tokens
    |
  > |        totalSupply += tokensIssued;
    |        balances[msg.sender] += tokensIssued;
    |
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'FrikandelToken':
    |
    |        if (sufficientFunds && !overflowed) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'FrikandelToken':
    |
    |        totalSupply += tokensIssued;
  > |        balances[msg.sender] += tokensIssued;
    |
    |        Transfer(address(this), msg.sender, tokensIssued);
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'FrikandelToken':
    |	    if (msg.sender != contractOwner) { revert(); } //:crying_tears_of_joy:
    |
  > |        contractOwner = newOwner; //Nieuwe eigennaar van de frikandellentent
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'FrikandelToken':
    |	    if (msg.sender != contractOwner) { revert(); } //u dont control me
    |	    
  > |	    Killable = false;
    |	    return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'FrikandelToken':
    |    function enableICO() public {
    |        if (msg.sender != contractOwner) { revert(); } //Bro stay of my contract
  > |        ICOEnabled = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'FrikandelToken':
    |    function disableICO() public {
    |        if (msg.sender != contractOwner) { revert(); } //BRO what did I tell you
  > |        ICOEnabled = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x579afc9d2aab2fd0cbf55eddc35ce4667725f88e.sol(73)


