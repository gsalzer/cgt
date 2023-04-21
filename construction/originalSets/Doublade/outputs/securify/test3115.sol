Processing contract: /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol:Frikandel
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Frikandel':
    |        if (msg.value == 0) { return; }
    |
  > |        creator.transfer(msg.value);
    |
    |        uint256 tokensIssued = (msg.value / 1e14); //Since 1 token can be bought for 0.0001 ETH split the value (in Wei) through 1e14 to get the amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(114)

[33mWarning[0m for LockedEther in contract 'Frikandel':
    |pragma solidity ^0.4.19;
    |
  > |contract Frikandel {
    |    address creator = msg.sender; //King Frikandel
    |
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(3)

[31mViolation[0m for TODReceiver in contract 'Frikandel':
    |        if (msg.value == 0) { return; }
    |
  > |        creator.transfer(msg.value);
    |
    |        uint256 tokensIssued = (msg.value / 1e14); //Since 1 token can be bought for 0.0001 ETH split the value (in Wei) through 1e14 to get the amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(114)

[33mWarning[0m for UnhandledException in contract 'Frikandel':
    |        if (msg.value == 0) { return; }
    |
  > |        creator.transfer(msg.value);
    |
    |        uint256 tokensIssued = (msg.value / 1e14); //Since 1 token can be bought for 0.0001 ETH split the value (in Wei) through 1e14 to get the amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'Frikandel':
    |        uint256 tokensIssued = (msg.value / 1e14); //Since 1 token can be bought for 0.0001 ETH split the value (in Wei) through 1e14 to get the amount of tokens
    |
  > |        totalSupply += tokensIssued;
    |        balances[msg.sender] += tokensIssued;
    |
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Frikandel':
    |
    |        if (sufficientFunds && !overflowed) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Frikandel':
    |            balances[_from] -= _value;
    |            
  > |            allowed[_from][msg.sender] -= _value;
    |            
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Frikandel':
    |
    |        totalSupply += tokensIssued;
  > |        balances[msg.sender] += tokensIssued;
    |
    |        Transfer(address(this), msg.sender, tokensIssued);
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Frikandel':
    |	    if (msg.sender != creator) { revert(); } //u dont control me
    |	    
  > |	    Killable = false;
    |	    return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Frikandel':
    |    function enable() public {
    |        if (msg.sender != creator) { revert(); } //Bro stay of my contract
  > |        Enabled = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Frikandel':
    |    function disable() public {
    |        if (msg.sender != creator) { revert(); } //BRO what did I tell you
  > |        Enabled = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcc4bb7948ac97b0dd8857552a69893cd0f03ee17.sol(105)


