Processing contract: /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol:LinkToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * Basic version of StandardToken, with no allowances
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(91)

[33mWarning[0m for LockedEther in contract 'LinkToken':
    |
    |
  > |contract LinkToken is StandardToken, Ownable {
    |
    |    string public   name =           "Link Platform";    // Name of the Token
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'LinkToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'LinkToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'LinkToken':
    |
    |  function approve(address _spender, uint _value) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'LinkToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'LinkToken':
    |        onlyOwner {
    |
  > |        balances[_spender] += _value;
    |        totalSupply += _value;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'LinkToken':
    |
    |        balances[_spender] += _value;
  > |        totalSupply += _value;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(188)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * Provides onlyOwner modifier, which prevents function from running if it is called by anyone other than the owner.
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(170)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(22)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is BasicToken, ERC20 {
    |
    |  mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint _value) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe2e6d4be086c6938b53b22144855eef674281639.sol(139)


