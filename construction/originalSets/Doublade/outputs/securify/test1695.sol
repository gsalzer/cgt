Processing contract: /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol:FixedSupplyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FixedSupplyToken':
    |}
    |
  > |contract FixedSupplyToken is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(75)

[33mWarning[0m for UnhandledException in contract 'FixedSupplyToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(136)

[33mWarning[0m for UnhandledException in contract 'FixedSupplyToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FixedSupplyToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FixedSupplyToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |   
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(71)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x6bef7336e8176ce577d32a4ffc8c7e87b726d4a3.sol(14)


