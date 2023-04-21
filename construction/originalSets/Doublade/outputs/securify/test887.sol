Processing contract: /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol:BsToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol:BsToken_SNOV
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol:MultiOwnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol:TokenSpender
[33mWarning[0m for LockedEther in contract 'BsToken':
    |}
    |
  > |contract BsToken is StandardToken, MultiOwnable {
    |
    |    bool public locked;
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(207)

[33mWarning[0m for UnhandledException in contract 'BsToken':
    |        TokenSpender spender = TokenSpender(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BsToken':
    |        TokenSpender spender = TokenSpender(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'BsToken':
    |    function transfer(address _to, uint256 _value) returns (bool) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BsToken':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSub(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'BsToken':
    |    /// @param _value Number of approved tokens.
    |    function approve(address _spender, uint256 _value) returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'BsToken':
    |    function burn(uint256 _value) returns (bool) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender], _value) ;
    |            totalSupply = safeSub(totalSupply, _value);
    |            Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(284)

[33mWarning[0m for LockedEther in contract 'BsToken_SNOV':
    |}
    |
  > |contract BsToken_SNOV is BsToken {
    |
    |    function BsToken_SNOV()
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(300)

[33mWarning[0m for UnhandledException in contract 'BsToken_SNOV':
    |        TokenSpender spender = TokenSpender(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BsToken_SNOV':
    |        TokenSpender spender = TokenSpender(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'BsToken_SNOV':
    |    function transfer(address _to, uint256 _value) returns (bool) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BsToken_SNOV':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSub(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'BsToken_SNOV':
    |    /// @param _value Number of approved tokens.
    |    function approve(address _spender, uint256 _value) returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'BsToken_SNOV':
    |    function burn(uint256 _value) returns (bool) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender], _value) ;
    |            totalSupply = safeSub(totalSupply, _value);
    |            Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(284)

[33mWarning[0m for LockedEther in contract 'MultiOwnable':
    |}
    |
  > |contract MultiOwnable {
    |
    |    mapping (address => bool) ownerMap;
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(152)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.11;
    |
  > |contract SafeMath {
    |
    |    function safeMul(uint256 a, uint256 b) internal returns (uint256 ) {
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, SafeMath {
    |
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] = safeAdd(balances[_to], _value);
    |            balances[_from] = safeSub(balances[_from], _value);
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    /// @param _value Number of approved tokens.
    |    function approve(address _spender, uint256 _value) returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38bca9e1cebc427d31118d1665cbf0e8e8304083.sol(139)


