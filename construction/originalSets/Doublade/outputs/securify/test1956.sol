Processing contract: /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol:ELTC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol:ERC20
[33mWarning[0m for LockedEther in contract 'ELTC':
    | }
    |
  > |  contract ELTC is ERC20 {
    |     string public constant symbol = "ELTC";
    |     string public constant name = "eLTC";
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'ELTC':
    |
    |
  > |     function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |     }
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'ELTC':
    |
    |
  > |     function transferFrom(
    |         address _from,
    |         address _to,
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'ELTC':
    |     }
    |
  > |     function approve(address _spender, uint256 _amount) returns (bool success) {
    |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'ELTC':
    |     }
    |
  > |     function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |         return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'ELTC':
    |
    |  contract ELTC is ERC20 {
  > |     string public constant symbol = "ELTC";
    |     string public constant name = "eLTC";
    |     uint8 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'ELTC':
    |  contract ELTC is ERC20 {
    |     string public constant symbol = "ELTC";
  > |     string public constant name = "eLTC";
    |     uint8 public constant decimals = 8;
    |     uint256 _totalSupply = 84000000 * 10**8;
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'ELTC':
    |     string public constant symbol = "ELTC";
    |     string public constant name = "eLTC";
  > |     uint8 public constant decimals = 8;
    |     uint256 _totalSupply = 84000000 * 10**8;
    |
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'ELTC':
    |
    |
  > |     address public owner;
    |
    |     mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'ELTC':
    |
    |
  > |    function distributeELTCLarge(address[] addresses) onlyOwner {
    |        for (uint i = 0; i < addresses.length; i++) {
    |            balances[owner] -= 982879664000;
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'ELTC':
    |    }
    |
  > |    function distributeELTCMedium(address[] addresses) onlyOwner {
    |        for (uint i = 0; i < addresses.length; i++) {
    |            balances[owner] -= 491439832000;
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'ELTC':
    |    }
    |
  > |    function distributeELTCSmall(address[] addresses) onlyOwner {
    |        for (uint i = 0; i < addresses.length; i++) {
    |            balances[owner] -= 245719916000;
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'ELTC':
    |
    |
  > |     function totalSupply() constant returns (uint256 totalSupply) {
    |         totalSupply = _totalSupply;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'ELTC':
    |    function distributeELTCLarge(address[] addresses) onlyOwner {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            balances[owner] -= 982879664000;
    |
    |            require(balances[owner] >= 0);
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'ELTC':
    |            require(balances[owner] >= 0);
    |
  > |            balances[addresses[i]] += 982879664000;
    |            Transfer(owner, addresses[i], 982879664000);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'ELTC':
    |    function distributeELTCMedium(address[] addresses) onlyOwner {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            balances[owner] -= 491439832000;
    |
    |            require(balances[owner] >= 0);
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'ELTC':
    |            require(balances[owner] >= 0);
    |
  > |            balances[addresses[i]] += 491439832000;
    |            Transfer(owner, addresses[i], 491439832000);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'ELTC':
    |    function distributeELTCSmall(address[] addresses) onlyOwner {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            balances[owner] -= 245719916000;
    |
    |            require(balances[owner] >= 0);
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'ELTC':
    |            require(balances[owner] >= 0);
    |
  > |            balances[addresses[i]] += 245719916000;
    |            Transfer(owner, addresses[i], 245719916000);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTC':
    |            && _amount > 0
    |             && balances[_to] + _amount > balances[_to]) {
  > |             balances[msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTC':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTC':
    |
    |     function approve(address _spender, uint256 _amount) returns (bool success) {
  > |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |         return true;
  at /home/jiaming/mavs_srcs/contract@0x7e9d62e1ff4e34096f91ee0153222ab81f7184f0.sol(116)


