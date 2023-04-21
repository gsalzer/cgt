Processing contract: /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol:VjuCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'VjuCoin':
    |}
    |
  > |contract VjuCoin is ERC20Interface {
    |  string public constant symbol = "VJU";
    |  string public constant name = "VjuCoin";
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'VjuCoin':
    |  }
    |   
  > |  function balanceOf(address _owner) constant returns (uint256 balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'VjuCoin':
    |  }
    |   
  > |  function transferFrom(address _from,address _to,uint256 _amount) returns (bool success) {
    |    if (balances[_from] >= _amount && allowed[_from][msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]) {
    |      balances[_from] -= _amount;
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'VjuCoin':
    |  }
    |  
  > |  function approve(address _spender, uint256 _amount) returns (bool success) {
    |    allowed[msg.sender][_spender] = _amount;
    |    Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'VjuCoin':
    |  }
    |  
  > |  function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'VjuCoin':
    |
    |contract VjuCoin is ERC20Interface {
  > |  string public constant symbol = "VJU";
    |  string public constant name = "VjuCoin";
    |  uint8 public constant decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'VjuCoin':
    |contract VjuCoin is ERC20Interface {
    |  string public constant symbol = "VJU";
  > |  string public constant name = "VjuCoin";
    |  uint8 public constant decimals = 0;
    |  uint256 _totalSupply = 100000000;
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'VjuCoin':
    |  string public constant symbol = "VJU";
    |  string public constant name = "VjuCoin";
  > |  uint8 public constant decimals = 0;
    |  uint256 _totalSupply = 100000000;
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'VjuCoin':
    |  uint8 public constant decimals = 0;
    |  uint256 _totalSupply = 100000000;
  > |  address public owner;
    |  mapping(address => uint256) balances;
    |  mapping(address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'VjuCoin':
    |  }
    |   
  > |  function totalSupply() constant returns (uint256 supply) {
    |    supply = _totalSupply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'VjuCoin':
    |  function transfer(address _to, uint256 _amount) returns (bool success) {
    |    if (balances[msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]) {
  > |      balances[msg.sender] -= _amount;
    |      balances[_to] += _amount;
    |      Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'VjuCoin':
    |    if (balances[_from] >= _amount && allowed[_from][msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]) {
    |      balances[_from] -= _amount;
  > |       allowed[_from][msg.sender] -= _amount;
    |       balances[_to] += _amount;
    |       Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'VjuCoin':
    |  
    |  function approve(address _spender, uint256 _amount) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _amount;
    |    Approval(msg.sender, _spender, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcd8aac9972dc4ddc48d700bc0710c0f5223fbcfa.sol(60)


