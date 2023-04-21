Processing contract: /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol:Roubini
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    | 
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    | 
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |
    |        require(msg.sender == newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(183)

[33mWarning[0m for LockedEther in contract 'Roubini':
    |// ----------------------------------------------------------------------------
    |
  > |contract Roubini is ERC20Interface, Owned {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(201)

[33mWarning[0m for UnhandledException in contract 'Roubini':
    |        Approval(msg.sender, spender, tokens);
    |
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(409)

[33mWarning[0m for UnhandledException in contract 'Roubini':
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(443)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Roubini':
    |        Approval(msg.sender, spender, tokens);
    |
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(409)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Roubini':
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(443)

[31mViolation[0m for UnrestrictedWrite in contract 'Roubini':
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |
  > |        balances[to] = balances[to].add(tokens);
    |
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(297)

[31mViolation[0m for UnrestrictedWrite in contract 'Roubini':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |
  > |        balances[from] = balances[from].sub(tokens);
    |
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(359)

[31mViolation[0m for UnrestrictedWrite in contract 'Roubini':
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |
  > |        balances[to] = balances[to].add(tokens);
    |
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'Roubini':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'Roubini':
    |    function approve(address spender, uint tokens) public returns (bool success) {
    |
  > |        allowed[msg.sender][spender] = tokens;
    |
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'Roubini':
    |        balances[from] = balances[from].sub(tokens);
    |
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'Roubini':
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |
  > |        allowed[msg.sender][spender] = tokens;
    |
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'Roubini':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Roubini':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'Roubini':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(183)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |
  > |library SafeMath {
    |
    |    function add(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0xdb9a01ce2e3fb211e652b59774f758ccb75b6235.sol(39)


