Processing contract: /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol:CodexStandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CodexStandardToken':
    |}
    |
  > |contract CodexStandardToken is ERC20Interface, Owned {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(77)

[33mWarning[0m for UnhandledException in contract 'CodexStandardToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(132)

[33mWarning[0m for UnhandledException in contract 'CodexStandardToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CodexStandardToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CodexStandardToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'CodexStandardToken':
    |
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'CodexStandardToken':
    |
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'CodexStandardToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'CodexStandardToken':
    |
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'CodexStandardToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |       require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'CodexStandardToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'CodexStandardToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(57)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |    
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |       require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |       require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x1c4f85e3e58afbf488998c92c6b920715daf5af7.sol(4)


