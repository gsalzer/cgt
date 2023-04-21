Processing contract: /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |// ----------------------------------------------------------------------------
    |
  > |contract ERC20Token is ERC20Interface, Owned {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(158)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |        Approval(msg.sender, spender, tokens);
    |
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(346)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(376)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |        Approval(msg.sender, spender, tokens);
    |
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(376)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |
  > |        balances[to] = balances[to].add(tokens);
    |
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |
  > |        balances[from] = balances[from].sub(tokens);
    |
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |
  > |        balances[to] = balances[to].add(tokens);
    |
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function approve(address spender, uint tokens) public returns (bool success) {
    |
  > |        allowed[msg.sender][spender] = tokens;
    |
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        balances[from] = balances[from].sub(tokens);
    |
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |
  > |        allowed[msg.sender][spender] = tokens;
    |
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(142)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |
    |        require(msg.sender == newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(142)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |
  > |library SafeMath {
    |
    |    function add(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0xc069220e28b0705fa9c1d0935ab2be73e04b6ae2.sol(9)


