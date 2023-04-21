Processing contract: /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol:SpaceTRIEUToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(60)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is StandardToken {
    |  event Burn(address indexed burner, uint256 value);
    |  function burn(uint256 _value) public {
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  }
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  }
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(112)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.18;
    |
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    _;
    |  }
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(16)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(19)

[33mWarning[0m for LockedEther in contract 'SpaceTRIEUToken':
    |  }
    |}
  > |contract SpaceTRIEUToken is BurnableToken {
    |  string public constant name = "Space TRIEU Token";
    |  string public constant symbol = "TRIEU";
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'SpaceTRIEUToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'SpaceTRIEUToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'SpaceTRIEUToken':
    |  }
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'SpaceTRIEUToken':
    |  }
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'SpaceTRIEUToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'SpaceTRIEUToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'SpaceTRIEUToken':
    |    require(_value <= balances[msg.sender]);
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(112)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |  }
    |}
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  }
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  }
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3b514e091f220c582a089fb8b8721b23646f2c79.sol(99)


