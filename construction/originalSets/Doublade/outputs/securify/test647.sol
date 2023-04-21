Processing contract: /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol:Petro
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Petro':
    | }
    |  
  > | contract Petro is ERC20Interface {
    |      string public constant symbol = "PTR";
    |      string public constant name = "Petro";
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'Petro':
    |      }
    |   
  > |      function balanceOf(address _owner) constant returns (uint256 balance) {
    |          return balances[_owner];
    |      }
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'Petro':
    |      }
    |   
  > |      function transferFrom(
    |          address _from,
    |          address _to,
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'Petro':
    |     }
    |
  > |     function approve(address _spender, uint256 _amount) returns (bool success) {
    |         allowed[msg.sender][_spender] = _amount;
    |         Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'Petro':
    |     }
    |  
  > |     function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |         return allowed[_owner][_spender];
    |     }
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Petro':
    |  
    | contract Petro is ERC20Interface {
  > |      string public constant symbol = "PTR";
    |      string public constant name = "Petro";
    |      uint8 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Petro':
    | contract Petro is ERC20Interface {
    |      string public constant symbol = "PTR";
  > |      string public constant name = "Petro";
    |      uint8 public constant decimals = 8;
    |      uint256 _totalSupply = 2100000000000000;
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Petro':
    |      string public constant symbol = "PTR";
    |      string public constant name = "Petro";
  > |      uint8 public constant decimals = 8;
    |      uint256 _totalSupply = 2100000000000000;
    | 
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Petro':
    |      uint256 _totalSupply = 2100000000000000;
    | 
  > |      address public owner;
    |   
    |      mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Petro':
    |      }
    |   
  > |      function totalSupply() constant returns (uint256 totalSupply) {
    |          totalSupply = _totalSupply;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |              && _amount > 0
    |              && balances[_to] + _amount > balances[_to]) {
  > |              balances[msg.sender] -= _amount;
    |              balances[_to] += _amount;
    |              Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Petro':
    |
    |     function approve(address _spender, uint256 _amount) returns (bool success) {
  > |         allowed[msg.sender][_spender] = _amount;
    |         Approval(msg.sender, _spender, _amount);
    |         return true;
  at /home/jiaming/mavs_srcs/contract@0x2955f4a4cdc4a06ba31f3df5662db9b8149b9c7d.sol(90)


