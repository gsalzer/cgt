Processing contract: /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol:BUXCOINC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'BUXCOINC':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract BUXCOINC is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(102)

[33mWarning[0m for UnhandledException in contract 'BUXCOINC':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(204)

[33mWarning[0m for UnhandledException in contract 'BUXCOINC':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BUXCOINC':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BUXCOINC':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract BUXCOINC is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |        symbol = "BUXCOIN";
    |        name = "BUX COIN MONEY";
  > |        decimals = 18;
    |        _totalSupply = 1000000000000000000000000000;
    |        balances[0xa216E3BB2c91cC0c6a7E0e0d56F9442162C52D62] = _totalSupply; //MEW address here
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |        name = "BUX COIN MONEY";
    |        decimals = 18;
  > |        _totalSupply = 1000000000000000000000000000;
    |        balances[0xa216E3BB2c91cC0c6a7E0e0d56F9442162C52D62] = _totalSupply; //MEW address here
    |        Transfer(address(0), 0xa216E3BB2c91cC0c6a7E0e0d56F9442162C52D62, _totalSupply);//MEW address here
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |        decimals = 18;
    |        _totalSupply = 1000000000000000000000000000;
  > |        balances[0xa216E3BB2c91cC0c6a7E0e0d56F9442162C52D62] = _totalSupply; //MEW address here
    |        Transfer(address(0), 0xa216E3BB2c91cC0c6a7E0e0d56F9442162C52D62, _totalSupply);//MEW address here
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
  > |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  > |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BUXCOINC':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(93)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x967e9de6741c3c3625ea4ff66563397ae2b4aa9f.sol(34)


