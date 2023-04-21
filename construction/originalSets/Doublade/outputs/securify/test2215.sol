Processing contract: /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol:VKBToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'VKBToken':
    |pragma solidity ^0.4.11;
    |
  > |contract VKBToken {
    |	string public constant symbol = "VKB";
    |	string public constant name = "VKBToken";
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'VKBToken':
    |	}
    |	
  > |	function balanceOf(address _owner) constant returns (uint256 balance) {
    |	    return balances[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'VKBToken':
    |    }
    |    
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'VKBToken':
    |    }
    |    
  > |    function approve(address _spender, uint256 _amount) returns (bool success) {
    |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'VKBToken':
    |    }
    | 
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'VKBToken':
    |
    |contract VKBToken {
  > |	string public constant symbol = "VKB";
    |	string public constant name = "VKBToken";
    |	uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'VKBToken':
    |contract VKBToken {
    |	string public constant symbol = "VKB";
  > |	string public constant name = "VKBToken";
    |	uint8 public constant decimals = 18;
    |	uint256 _totalSupply = 210000;
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'VKBToken':
    |	string public constant symbol = "VKB";
    |	string public constant name = "VKBToken";
  > |	uint8 public constant decimals = 18;
    |	uint256 _totalSupply = 210000;
    |	
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'VKBToken':
    |	uint256 _totalSupply = 210000;
    |	
  > |	address public owner;
    |	
    |	mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'VKBToken':
    |	}
    |
  > |	function totalSupply() constant returns (uint256 totalSupply) {
    |	    totalSupply = _totalSupply;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'VKBToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'VKBToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'VKBToken':
    |    
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9016c39638c9c4ab5e91c7c075eb879cb0c9b2ad.sol(70)


