Processing contract: /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol:ERC20CompatibleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol:Eclaira
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20CompatibleToken':
    |}
    |
  > |contract ERC20CompatibleToken {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20CompatibleToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20CompatibleToken':
    |  
    |    function approve(address _spender, uint _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(92)

[33mWarning[0m for LockedEther in contract 'Eclaira':
    |
    |
  > |contract Eclaira is ERC20CompatibleToken,Ownable {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Eclaira':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Eclaira':
    |  
    |    function approve(address _spender, uint _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Eclaira':
    |        }
    |
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Eclaira':
    |
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Eclaira':
    |        }
    |        
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Eclaira':
    |        
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Eclaira':
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Eclaira':
    |    
    |    function burn(address _who, uint256 _value) onlyOwner public { 
  > |        balances[_who] = balances[_who].sub(_value); 
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(_who, _value); 
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Eclaira':
    |    function burn(address _who, uint256 _value) onlyOwner public { 
    |        balances[_who] = balances[_who].sub(_value); 
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(_who, _value); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(169)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |  
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(63)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6446323cfa0aea73fccfe089799e21208cce8e82.sol(9)


