Processing contract: /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol:GoblinChainToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GoblinChainToken':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract GoblinChainToken is ERC20Interface{
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(53)

[33mWarning[0m for UnhandledException in contract 'GoblinChainToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoblinChainToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'GoblinChainToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'GoblinChainToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'GoblinChainToken':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'GoblinChainToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'GoblinChainToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'GoblinChainToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'GoblinChainToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(146)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x5b755b2130dab47636222ea33695c62bb54dc85d.sol(30)


