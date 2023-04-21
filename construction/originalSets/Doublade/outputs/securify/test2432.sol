Processing contract: /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol:ICTA
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ICTA':
    |}
    |
  > |contract ICTA is ERC20,Ownable{
    |	using SafeMath for uint256;
    |	string public constant name="ICTA";
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |/*
    |
  > |  Copyright 2018 AICT Foundation.
    |  https://www.aict.io/
    |
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |
    |		require(balances[msg.sender].sub(_value)>=needLockBalance);
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |		require(balances[msg.sender].sub(_value)>=needLockBalance);
    |		balances[msg.sender] = balances[msg.sender].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |		uint256 _allowance = allowed[_from][msg.sender];
    |
  > |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |
    |		balances[_from] = balances[_from].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |  	function approve(address _spender, uint256 _value) public returns (bool) 
    |  	{
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |	{
    |		 epoch[] storage epochs = lockEpochsMap[user];
  > |		 epochs.push(epoch(lockEndTime,lockAmount));
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |            lockBalance(_holders [i],unfreezeAmount,now+10368000+2592000+2592000+2592000+2592000);
    |            
  > |			airdropSupply = airdropSupply.add(paySize);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |            lockBalance(_holders [i],unfreezeAmount,now+5184000+2592000+2592000+2592000+2592000+2592000+2592000+2592000+2592000+2592000);
    |            
  > |			airdropSupply = airdropSupply.add(paySize);
    |        }
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'ICTA':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(235)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(40)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x9e2b209afc38b74b3278b4e3e2e61dcefc752bb2.sol(45)


