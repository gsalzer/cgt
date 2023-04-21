Processing contract: /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol:BGD
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'BGD':
    |
    |
  > |contract BGD is StandardToken {
    |
    |  string public constant name = "Black Gold Dynasty";
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(105)

[33mWarning[0m for UnhandledException in contract 'BGD':
    |  function Airdrop(ERC20 token, address[] _addresses, uint256 amount) public {
    |        for (uint256 i = 0; i < _addresses.length; i++) {
  > |            token.transfer(_addresses[i], amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(125)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BGD':
    |  function Airdrop(ERC20 token, address[] _addresses, uint256 amount) public {
    |        for (uint256 i = 0; i < _addresses.length; i++) {
  > |            token.transfer(_addresses[i], amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BGD':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'BGD':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BGD':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BGD':
    |  function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(135)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xab2c51f52bf51925efcdbb0811786ae6758db686.sol(93)


