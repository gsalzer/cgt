Processing contract: /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol:BitcoinPro
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol:ERC20
[33mWarning[0m for LockedEther in contract 'BitcoinPro':
    | }
    |  
  > |  contract BitcoinPro is ERC20 {
    |     string public constant symbol = "BTCP";
    |     string public constant name = "BTCP";
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPro':
    |  
    |
  > |     function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |     }
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPro':
    |     
    |     
  > |     function transferFrom(
    |         address _from,
    |         address _to,
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPro':
    |     }
    | 
  > |     function approve(address _spender, uint256 _amount) returns (bool success) {
    |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'BitcoinPro':
    |     }
    |  
  > |     function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |         return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPro':
    |  
    |  contract BitcoinPro is ERC20 {
  > |     string public constant symbol = "BTCP";
    |     string public constant name = "BTCP";
    |     uint8 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPro':
    |  contract BitcoinPro is ERC20 {
    |     string public constant symbol = "BTCP";
  > |     string public constant name = "BTCP";
    |     uint8 public constant decimals = 8;
    |     uint256 _totalSupply = 2000000 * 10**8;
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPro':
    |     string public constant symbol = "BTCP";
    |     string public constant name = "BTCP";
  > |     uint8 public constant decimals = 8;
    |     uint256 _totalSupply = 2000000 * 10**8;
    |     
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPro':
    |     
    |
  > |     address public owner;
    |  
    |     mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPro':
    |     
    |     
  > |     function distributeBTR(address[] addresses) onlyOwner {
    |         for (uint i = 0; i < addresses.length; i++) {
    |             balances[owner] -= 2000 * 10**8;
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'BitcoinPro':
    |     
    |  
  > |     function totalSupply() constant returns (uint256 totalSupply) {
    |         totalSupply = _totalSupply;
    |     }
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'BitcoinPro':
    |     function distributeBTR(address[] addresses) onlyOwner {
    |         for (uint i = 0; i < addresses.length; i++) {
  > |             balances[owner] -= 2000 * 10**8;
    |             balances[addresses[i]] += 2000 * 10**8;
    |             Transfer(owner, addresses[i], 2000 * 10**8);
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'BitcoinPro':
    |         for (uint i = 0; i < addresses.length; i++) {
    |             balances[owner] -= 2000 * 10**8;
  > |             balances[addresses[i]] += 2000 * 10**8;
    |             Transfer(owner, addresses[i], 2000 * 10**8);
    |         }
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPro':
    |            && _amount > 0
    |             && balances[_to] + _amount > balances[_to]) {
  > |             balances[msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPro':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinPro':
    | 
    |     function approve(address _spender, uint256 _amount) returns (bool success) {
  > |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |         return true;
  at /home/jiaming/mavs_srcs/contract@0xe57297258717ec66749fcfb4bf23869e252b03c3.sol(91)


