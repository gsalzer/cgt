Processing contract: /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol:TEMPLAR
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(49)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |  }
    |}
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(3)

[33mWarning[0m for DAOConstantGas in contract 'TEMPLAR':
    |}
    |function collect(uint256 amount) onlyOwner public{
  > |  msg.sender.transfer(amount);
    |}
    |function transfer(address _to, uint256 _amount) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(122)

[33mWarning[0m for LockedEther in contract 'TEMPLAR':
    |  }
    |}
  > |contract TEMPLAR is BasicToken {
    |
    |  string public constant symbol = "TXK";
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'TEMPLAR':
    |  fundsWallet.transfer(msg.value);
    |}
  > | function create(address beneficiary)public payable{
    |    uint256 amount = msg.value;
    |   
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'TEMPLAR':
    |    }
    |  }
  > |function balanceOf(address _owner) public constant returns (uint256 balance) {
    |    return balances[_owner];
    |}
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'TEMPLAR':
    |    return balances[_owner];
    |}
  > |function collect(uint256 amount) onlyOwner public{
    |  msg.sender.transfer(amount);
    |}
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'TEMPLAR':
    |    }
    |}
  > |function transferFrom(
    |    address _from,
    |    address _to,
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'TEMPLAR':
    |    }
    |}
  > |function approve(address _spender, uint256 _amount) public returns (bool success) {
    |    allowed[msg.sender][_spender] = _amount;
    |    Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(154)

[31mViolation[0m for MissingInputValidation in contract 'TEMPLAR':
    |    return true;
    |}
  > |function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |}
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'TEMPLAR':
    |    uint public difficulty = 10**32;
    |
  > |function proofOfWork(uint nonce){
    |        bytes8 n = bytes8(keccak256(nonce, currentChallenge)); 
    |        require(n >= bytes8(difficulty));
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |contract TEMPLAR is BasicToken {
    |
  > |  string public constant symbol = "TXK";
    |  string public constant name = "TEMPLAR";
    |  uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |
    |  string public constant symbol = "TXK";
  > |  string public constant name = "TEMPLAR";
    |  uint256 public constant decimals = 18;
    |  uint256 public totalCreationCap = 2e9 * (10**uint256(decimals));
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |  string public constant symbol = "TXK";
    |  string public constant name = "TEMPLAR";
  > |  uint256 public constant decimals = 18;
    |  uint256 public totalCreationCap = 2e9 * (10**uint256(decimals));
    |  uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |  string public constant name = "TEMPLAR";
    |  uint256 public constant decimals = 18;
  > |  uint256 public totalCreationCap = 2e9 * (10**uint256(decimals));
    |  uint256 public totalSupply = 0;
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |  uint256 public constant decimals = 18;
    |  uint256 public totalCreationCap = 2e9 * (10**uint256(decimals));
  > |  uint256 public totalSupply = 0;
    |  address public owner;
    |  address public fundsWallet = 0x38Ad461874238f4Cff9d29D4efE304AcbE9A801E;
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |  uint256 public totalCreationCap = 2e9 * (10**uint256(decimals));
    |  uint256 public totalSupply = 0;
  > |  address public owner;
    |  address public fundsWallet = 0x38Ad461874238f4Cff9d29D4efE304AcbE9A801E;
    |  uint256 public tokenExchangeRate =  100000;
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |  uint256 public totalSupply = 0;
    |  address public owner;
  > |  address public fundsWallet = 0x38Ad461874238f4Cff9d29D4efE304AcbE9A801E;
    |  uint256 public tokenExchangeRate =  100000;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |  address public owner;
    |  address public fundsWallet = 0x38Ad461874238f4Cff9d29D4efE304AcbE9A801E;
  > |  uint256 public tokenExchangeRate =  100000;
    |  mapping(address => uint256) balances;
    |  mapping(address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |    return allowed[_owner][_spender];
    |}
  > |    bytes32 public currentChallenge;
    |    uint public timeOfLastProof;
    |    uint public difficulty = 10**32;
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |}
    |    bytes32 public currentChallenge;
  > |    uint public timeOfLastProof;
    |    uint public difficulty = 10**32;
    |
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'TEMPLAR':
    |    bytes32 public currentChallenge;
    |    uint public timeOfLastProof;
  > |    uint public difficulty = 10**32;
    |
    |function proofOfWork(uint nonce){
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(164)

[33mWarning[0m for TODAmount in contract 'TEMPLAR':
    |}
    |function collect(uint256 amount) onlyOwner public{
  > |  msg.sender.transfer(amount);
    |}
    |function transfer(address _to, uint256 _amount) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(122)

[33mWarning[0m for TODReceiver in contract 'TEMPLAR':
    |}
    |function collect(uint256 amount) onlyOwner public{
  > |  msg.sender.transfer(amount);
    |}
    |function transfer(address _to, uint256 _amount) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(122)

[33mWarning[0m for UnhandledException in contract 'TEMPLAR':
    |}
    |function collect(uint256 amount) onlyOwner public{
  > |  msg.sender.transfer(amount);
    |}
    |function transfer(address _to, uint256 _amount) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TEMPLAR':
    |}
    |function collect(uint256 amount) onlyOwner public{
  > |  msg.sender.transfer(amount);
    |}
    |function transfer(address _to, uint256 _amount) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |   
    |    if(amount > 0){
  > |      balances[beneficiary] += amount * tokenExchangeRate;
    |      totalSupply += amount * tokenExchangeRate;
    |    }if(totalSupply > totalCreationCap) { revert();
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |    if(amount > 0){
    |      balances[beneficiary] += amount * tokenExchangeRate;
  > |      totalSupply += amount * tokenExchangeRate;
    |    }if(totalSupply > totalCreationCap) { revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |        balances[msg.sender] += timeSinceLastProof / 60 seconds; 
    |
  > |        difficulty = difficulty * 10 minutes / timeSinceLastProof + 1; 
    |
    |        timeOfLastProof = now;                              // Reset the counter
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(174)

[31mViolation[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |        difficulty = difficulty * 10 minutes / timeSinceLastProof + 1; 
    |
  > |        timeOfLastProof = now;                              // Reset the counter
    |        currentChallenge = keccak256(nonce, currentChallenge, block.blockhash(block.number - 1));  // Save a hash that will be used as the next proof
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |
    |        timeOfLastProof = now;                              // Reset the counter
  > |        currentChallenge = keccak256(nonce, currentChallenge, block.blockhash(block.number - 1));  // Save a hash that will be used as the next proof
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |        && _amount > 0
    |        && balances[_to] + _amount > balances[_to]) {
  > |        balances[msg.sender] -= _amount;
    |        balances[_to] += _amount;
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |        && balances[_to] + _amount > balances[_to]) {
    |        balances[_from] -= _amount;
  > |        allowed[_from][msg.sender] -= _amount;
    |        balances[_to] += _amount;
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |}
    |function approve(address _spender, uint256 _amount) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = _amount;
    |    Approval(msg.sender, _spender, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |        uint timeSinceLastProof = (now - timeOfLastProof); 
    |        require(timeSinceLastProof >=  5 seconds);  
  > |        balances[msg.sender] += timeSinceLastProof / 60 seconds; 
    |
    |        difficulty = difficulty * 10 minutes / timeSinceLastProof + 1; 
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'TEMPLAR':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa1c5843502ddf6b49f8a28259167d3f229024cad.sol(49)


