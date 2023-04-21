Processing contract: /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol:EtherSport
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol:Token
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(96)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    /*
    |     *  Storage
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address from, address to, uint value) public returns (bool) {
    |        // Do not allow transfer to 0x0 or the token contract itself
    |        require((to != 0x0) && (to != address(this)));
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address spender, uint value) public returns (bool) {
    |        allowances[msg.sender][spender] = value;
    |        Approval(msg.sender, spender, value);
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address owner, address spender) public constant returns (uint) {
    |        return allowances[owner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address owner) public constant returns (uint) {
    |        return balances[owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |    /* Total amount of tokens */
  > |    uint256 public totalSupply;
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |
  > |    function transfer(address to, uint value) public returns (bool) {
    |        // Do not allow transfer to 0x0 or the token contract itself
    |        require((to != 0x0) && (to != address(this)));
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        revert();  // Balance too low
    |        balances[msg.sender] -= value;
  > |        balances[to] += value;
    |        Transfer(msg.sender, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        if (balances[from] < value || allowances[from][msg.sender] < value)
    |        revert(); // Balance or allowance too low
  > |        balances[to] += value;
    |        balances[from] -= value;
    |        allowances[from][msg.sender] -= value;
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        revert(); // Balance or allowance too low
    |        balances[to] += value;
  > |        balances[from] -= value;
    |        allowances[from][msg.sender] -= value;
    |        Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        if (balances[msg.sender] < value)
    |        revert();  // Balance too low
  > |        balances[msg.sender] -= value;
    |        balances[to] += value;
    |        Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[to] += value;
    |        balances[from] -= value;
  > |        allowances[from][msg.sender] -= value;
    |        Transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address spender, uint value) public returns (bool) {
  > |        allowances[msg.sender][spender] = value;
    |        Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x856912680349a406f72e26aa994100b8ad409f87.sol(82)


