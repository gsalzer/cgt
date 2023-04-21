Processing contract: /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol:TopListICOToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'TopListICOToken':
    |	
    |	function withdrawEther(uint amount) onlyOwner public {
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(41)

[33mWarning[0m for LockedEther in contract 'TopListICOToken':
    |pragma solidity ^0.4.18;
    |
  > |contract TopListICOToken {
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(3)

[33mWarning[0m for TODAmount in contract 'TopListICOToken':
    |	
    |	function withdrawEther(uint amount) onlyOwner public {
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(41)

[33mWarning[0m for TODReceiver in contract 'TopListICOToken':
    |	
    |	function withdrawEther(uint amount) onlyOwner public {
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(41)

[33mWarning[0m for UnhandledException in contract 'TopListICOToken':
    |	
    |	function withdrawEther(uint amount) onlyOwner public {
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TopListICOToken':
    |	
    |	function withdrawEther(uint amount) onlyOwner public {
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'TopListICOToken':
    |pragma solidity ^0.4.18;
    |
  > |contract TopListICOToken {
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'TopListICOToken':
    |        require(_value <= balances[msg.sender]);
    |		balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |		Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'TopListICOToken':
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  > |		balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'TopListICOToken':
    |	
    |	function buy() payable public {
  > |	    balances[msg.sender] += msg.value * 1000 * 10**uint256(decimals);
    |	    Transfer(owner, msg.sender, msg.value * 1000 * 10**uint256(decimals));
    |    }	
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'TopListICOToken':
    |pragma solidity ^0.4.18;
    |
  > |contract TopListICOToken {
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x52c147158dba475851e095aab870941cd750ee7b.sol(3)


