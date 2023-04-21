Processing contract: /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol:PayBits
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PayBits':
    | }
    |  
  > |  contract PayBits is ERC20 {
    |     string public constant symbol = "PYB";
    |     string public constant name = "PayBits";
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'PayBits':
    |  
    |
  > |     function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |     }
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'PayBits':
    |     
    |     
  > |     function transferFrom(
    |         address _from,
    |         address _to,
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'PayBits':
    |     }
    | 
  > |     function approve(address _spender, uint256 _amount) returns (bool success) {
    |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'PayBits':
    |     }
    |  
  > |     function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |         return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'PayBits':
    |  
    |  contract PayBits is ERC20 {
  > |     string public constant symbol = "PYB";
    |     string public constant name = "PayBits";
    |     uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'PayBits':
    |  contract PayBits is ERC20 {
    |     string public constant symbol = "PYB";
  > |     string public constant name = "PayBits";
    |     uint8 public constant decimals = 18;
    |     uint256 _totalSupply = 21000000 * 10**18;
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'PayBits':
    |     string public constant symbol = "PYB";
    |     string public constant name = "PayBits";
  > |     uint8 public constant decimals = 18;
    |     uint256 _totalSupply = 21000000 * 10**18;
    |     
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'PayBits':
    |     
    |
  > |     address public owner;
    |  
    |     mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'PayBits':
    |     
    |  
  > |     function totalSupply() constant returns (uint256 totalSupply) {
    |         totalSupply = _totalSupply;
    |     }
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'PayBits':
    |            && _amount > 0
    |             && balances[_to] + _amount > balances[_to]) {
  > |             balances[msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'PayBits':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'PayBits':
    | 
    |     function approve(address _spender, uint256 _amount) returns (bool success) {
  > |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |         return true;
  at /home/jiaming/mavs_srcs/contract@0xb29e00a8dbc65f27b06389c9d016c4cbacf95e8c.sol(82)


