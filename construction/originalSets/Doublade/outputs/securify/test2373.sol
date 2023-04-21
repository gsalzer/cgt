Processing contract: /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol:EDNR
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol:ERC20
[33mWarning[0m for LockedEther in contract 'EDNR':
    | }
    |  
  > |  contract EDNR is ERC20 {
    |     string public constant symbol = "EDNR";
    |     string public constant name = "eDNR";
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'EDNR':
    |  
    |
  > |     function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |     }
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'EDNR':
    |     
    |     
  > |     function transferFrom(
    |         address _from,
    |         address _to,
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'EDNR':
    |     }
    | 
  > |     function approve(address _spender, uint256 _amount) returns (bool success) {
    |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'EDNR':
    |     }
    |  
  > |     function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |         return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'EDNR':
    |  
    |  contract EDNR is ERC20 {
  > |     string public constant symbol = "EDNR";
    |     string public constant name = "eDNR";
    |     uint8 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'EDNR':
    |  contract EDNR is ERC20 {
    |     string public constant symbol = "EDNR";
  > |     string public constant name = "eDNR";
    |     uint8 public constant decimals = 8;
    |     uint256 _totalSupply = 10000000 * 10**8;
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'EDNR':
    |     string public constant symbol = "EDNR";
    |     string public constant name = "eDNR";
  > |     uint8 public constant decimals = 8;
    |     uint256 _totalSupply = 10000000 * 10**8;
    |     
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'EDNR':
    |     
    |
  > |     address public owner;
    |  
    |     mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'EDNR':
    |     
    |     
  > |     function distributeEDNR(address[] addresses) onlyOwner {
    |         for (uint i = 0; i < addresses.length; i++) {
    |             balances[owner] -= 245719916000;
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'EDNR':
    |     
    |  
  > |     function totalSupply() constant returns (uint256 totalSupply) {
    |         totalSupply = _totalSupply;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'EDNR':
    |     function distributeEDNR(address[] addresses) onlyOwner {
    |         for (uint i = 0; i < addresses.length; i++) {
  > |             balances[owner] -= 245719916000;
    |             balances[addresses[i]] += 245719916000;
    |             Transfer(owner, addresses[i], 245719916000);
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'EDNR':
    |         for (uint i = 0; i < addresses.length; i++) {
    |             balances[owner] -= 245719916000;
  > |             balances[addresses[i]] += 245719916000;
    |             Transfer(owner, addresses[i], 245719916000);
    |         }
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'EDNR':
    |            && _amount > 0
    |             && balances[_to] + _amount > balances[_to]) {
  > |             balances[msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'EDNR':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'EDNR':
    | 
    |     function approve(address _spender, uint256 _amount) returns (bool success) {
  > |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |         return true;
  at /home/jiaming/mavs_srcs/contract@0x9a9ffd00147046ce4df1c954c953b27f9b4f6529.sol(91)


