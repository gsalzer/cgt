Processing contract: /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol:FlexiInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol:Tracto
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Tracto':
    |      function () payable {
    |          if(this.balance > 1000000000000000000){
  > |            owner.transfer(this.balance);
    |          }
    |      }
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(65)

[33mWarning[0m for LockedEther in contract 'Tracto':
    |  }
    |   
  > |  contract Tracto is ERC20Interface, FlexiInterface {
    |      string public symbol = "TRCT";
    |      string public name = "Tracto";
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(29)

[31mViolation[0m for TODAmount in contract 'Tracto':
    |      function () payable {
    |          if(this.balance > 1000000000000000000){
  > |            owner.transfer(this.balance);
    |          }
    |      }
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(65)

[31mViolation[0m for TODReceiver in contract 'Tracto':
    |      function () payable {
    |          if(this.balance > 1000000000000000000){
  > |            owner.transfer(this.balance);
    |          }
    |      }
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(65)

[33mWarning[0m for UnhandledException in contract 'Tracto':
    |      function () payable {
    |          if(this.balance > 1000000000000000000){
  > |            owner.transfer(this.balance);
    |          }
    |      }
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'Tracto':
    |  }
    |   
  > |  contract Tracto is ERC20Interface, FlexiInterface {
    |      string public symbol = "TRCT";
    |      string public name = "Tracto";
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'Tracto':
    |		  require(balances[_to] + _amount > balances[_to]);
    |		  balances[msg.sender] -= _amount;
  > |          balances[_to] += _amount;		  
    |		  Transfer(msg.sender, _to, _amount);
    |		  return true;
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'Tracto':
    |		   require(balances[_to] + _amount > balances[_to]);
    |		   
  > |		   balances[_from] -= _amount;
    |           allowed[_from][msg.sender] -= _amount;
    |           balances[_to] += _amount;
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'Tracto':
    |		   balances[_from] -= _amount;
    |           allowed[_from][msg.sender] -= _amount;
  > |           balances[_to] += _amount;
    |           Transfer(_from, _to, _amount);
    |           return true;
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Tracto':
    |		  require(balances[msg.sender] >= _amount);
    |		  require(balances[_to] + _amount > balances[_to]);
  > |		  balances[msg.sender] -= _amount;
    |          balances[_to] += _amount;		  
    |		  Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Tracto':
    |		   
    |		   balances[_from] -= _amount;
  > |           allowed[_from][msg.sender] -= _amount;
    |           balances[_to] += _amount;
    |           Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Tracto':
    |		require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |		allowed[msg.sender][_spender] = _amount;
    |		Approval(msg.sender, _spender, _amount);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Tracto':
    |        returns (bool success) {
    |        //allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
  > |        allowed[msg.sender][_spender] += _addedValue;
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Tracto':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |          allowed[msg.sender][_spender] = 0;
    |        } else {
    |          //allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Tracto':
    |        } else {
    |          //allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  > |          allowed[msg.sender][_spender] -= _subtractedValue;
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Tracto':
    |  }
    |   
  > |  contract Tracto is ERC20Interface, FlexiInterface {
    |      string public symbol = "TRCT";
    |      string public name = "Tracto";
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Tracto':
    |	  
    |	function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    | }
  at /home/jiaming/mavs_srcs/contract@0x30cecb5461a449a90081f5a5f55db4e048397bab.sol(176)


