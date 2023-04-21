Processing contract: /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol:JesusCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol:TokenDestructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(76)

[33mWarning[0m for LockedEther in contract 'JesusCoin':
    |}
    |
  > |contract JesusCoin is MintableToken, TokenDestructible {
    |  string public constant name = "Jesus Coin";
    |  uint8  public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(186)

[33mWarning[0m for UnhandledException in contract 'JesusCoin':
    |    for(uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(178)

[33mWarning[0m for UnhandledException in contract 'JesusCoin':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCoin':
    |    for(uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JesusCoin':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |
    |  function mint(address _to, uint256 _amount) onlyAirdropper canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |  function mint(address _to, uint256 _amount) onlyAirdropper canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |    OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'JesusCoin':
    |  function setAirdropper(address _airdropper) public onlyOwner {
    |      require(_airdropper != address(0));
  > |      airdropper = _airdropper;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(168)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function mint(address _to, uint256 _amount) onlyAirdropper canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyAirdropper canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |    OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function setAirdropper(address _airdropper) public onlyOwner {
    |      require(_airdropper != address(0));
  > |      airdropper = _airdropper;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(168)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |    OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(46)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(124)

[33mWarning[0m for LockedEther in contract 'TokenDestructible':
    |}
    |
  > |contract TokenDestructible is Ownable {
    |  function TokenDestructible() public payable { }
    |
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(172)

[33mWarning[0m for UnhandledException in contract 'TokenDestructible':
    |    for(uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(178)

[33mWarning[0m for UnhandledException in contract 'TokenDestructible':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDestructible':
    |    for(uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDestructible':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDestructible':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |    OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2d82dc7da0e6f882e96846451f4fabcc8f90528.sol(46)


