Processing contract: /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol:BOMSToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BOMSToken':
    |// ----------------------------------------------------------------------------
    |
  > |contract BOMSToken is ERC20Interface, Owned {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(158)

[33mWarning[0m for UnhandledException in contract 'BOMSToken':
    |        Approval(msg.sender, spender, tokens);
    |
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(348)

[33mWarning[0m for UnhandledException in contract 'BOMSToken':
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(378)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BOMSToken':
    |        Approval(msg.sender, spender, tokens);
    |
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(348)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BOMSToken':
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(378)

[31mViolation[0m for UnrestrictedWrite in contract 'BOMSToken':
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |
  > |        balances[to] = balances[to].add(tokens);
    |
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'BOMSToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |
  > |        balances[from] = balances[from].sub(tokens);
    |
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'BOMSToken':
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |
  > |        balances[to] = balances[to].add(tokens);
    |
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'BOMSToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'BOMSToken':
    |    function approve(address spender, uint tokens) public returns (bool success) {
    |
  > |        allowed[msg.sender][spender] = tokens;
    |
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'BOMSToken':
    |        balances[from] = balances[from].sub(tokens);
    |
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'BOMSToken':
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |
  > |        allowed[msg.sender][spender] = tokens;
    |
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'BOMSToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'BOMSToken':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'BOMSToken':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(142)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |
    |        require(msg.sender == newOwner);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(142)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |
  > |library SafeMath {
    |
    |    function add(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0xffc36ae6d98d934553f7dac3add92ff501e464ae.sol(9)


