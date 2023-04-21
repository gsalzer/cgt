Processing contract: /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol:Helenex
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Helenex':
    |	// transfer balance to owner
    |	function withdrawEther(uint256 amount)  public onlyOwner returns (bool success){
  > |		owner.transfer(amount);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(176)

[33mWarning[0m for LockedEther in contract 'Helenex':
    |
    |
  > |contract Helenex is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'Helenex':
    |    }
    |
  > |    function balanceOf(address tokenOwner) public constant returns (uint256 balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'Helenex':
    |
    |
  > |    function approve(address spender, uint256 tokens) public returns (bool success) {
    |        require(tokens > 0); 
    |        allowed[msg.sender][spender] = tokens;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'Helenex':
    |    }
    |	
  > |    function transferFrom(address from, address to, uint256 tokens) public returns (bool success) {
    |        if (to == 0x0) revert();                                // Prevent transfer to 0x0 address. Use burn() instead
    |		if (tokens <= 0) revert(); 
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'Helenex':
    |
    |
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint256 remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(156)

[31mViolation[0m for MissingInputValidation in contract 'Helenex':
    |    }
    |
  > |    function approveAndCall(address spender, uint256 tokens, bytes data) public returns (bool success) {
    |        require(tokens > 0);
    |        allowed[msg.sender][spender] = tokens;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(160)

[31mViolation[0m for MissingInputValidation in contract 'Helenex':
    |
    |	// transfer balance to owner
  > |	function withdrawEther(uint256 amount)  public onlyOwner returns (bool success){
    |		owner.transfer(amount);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'Helenex':
    |	}
    |
  > |    function transferAnyERC20Token(address tokenAddress, uint256 tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |
    |contract SafeMath {
  > |    function safeAdd(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |        c = a - b;
    |    }
  > |    function safeMul(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |
    |contract Owned {
  > |    address public owner;
    |    //address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |
    |contract Helenex is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |contract Helenex is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint256 public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint256 public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint256 public _totalSupply;
    |
    |    mapping(address => uint256) internal balances;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Helenex':
    |    }
    |
  > |    function totalSupply() public constant returns (uint256) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(85)

[33mWarning[0m for TODAmount in contract 'Helenex':
    |	// transfer balance to owner
    |	function withdrawEther(uint256 amount)  public onlyOwner returns (bool success){
  > |		owner.transfer(amount);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(176)

[33mWarning[0m for TODReceiver in contract 'Helenex':
    |	// transfer balance to owner
    |	function withdrawEther(uint256 amount)  public onlyOwner returns (bool success){
  > |		owner.transfer(amount);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(176)

[33mWarning[0m for UnhandledException in contract 'Helenex':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(164)

[33mWarning[0m for UnhandledException in contract 'Helenex':
    |	// transfer balance to owner
    |	function withdrawEther(uint256 amount)  public onlyOwner returns (bool success){
  > |		owner.transfer(amount);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(176)

[33mWarning[0m for UnhandledException in contract 'Helenex':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint256 tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Helenex':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Helenex':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint256 tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Helenex':
    |	// transfer balance to owner
    |	function withdrawEther(uint256 amount)  public onlyOwner returns (bool success){
  > |		owner.transfer(amount);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'Helenex':
    |        if (balances[to] + tokens < balances[to]) revert();  // Check for overflows
    |        if (tokens > allowed[from][msg.sender]) revert();     // Check allowance
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Helenex':
    |        if (balances[msg.sender] < tokens) revert();           // Check if the sender has enough
    |        if (balances[to] + tokens < balances[to]) revert(); // Check for overflows
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Helenex':
    |    function approve(address spender, uint256 tokens) public returns (bool success) {
    |        require(tokens > 0); 
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Helenex':
    |        if (balances[msg.sender] < _value) revert();            // Check if the sender has enough
    |		if (_value <= 0) revert(); 
  > |        balances[msg.sender] = SafeMath.safeSub(balances[msg.sender], _value);                      // Subtract from the sender
    |        _totalSupply = SafeMath.safeSub(_totalSupply,_value);                                // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Helenex':
    |        if (balances[msg.sender] < _value) revert();            // Check if the sender has enough
    |		if (_value <= 0) revert(); 
  > |        balances[msg.sender] = SafeMath.safeSub(balances[msg.sender], _value);                      // Subtract from the sender
    |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        emit Freeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Helenex':
    |		if (_value <= 0) revert(); 
    |        balances[msg.sender] = SafeMath.safeSub(balances[msg.sender], _value);                      // Subtract from the sender
  > |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        emit Freeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Helenex':
    |        if (freezeOf[msg.sender] < _value) revert();            // Check if the sender has enough
    |		if (_value <= 0) revert(); 
  > |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
    |		balances[msg.sender] = SafeMath.safeAdd(balances[msg.sender], _value);
    |        emit Unfreeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Helenex':
    |		if (_value <= 0) revert(); 
    |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
  > |		balances[msg.sender] = SafeMath.safeAdd(balances[msg.sender], _value);
    |        emit Unfreeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Helenex':
    |        if (tokens > allowed[from][msg.sender]) revert();     // Check allowance
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Helenex':
    |    function approveAndCall(address spender, uint256 tokens, bytes data) public returns (bool success) {
    |        require(tokens > 0);
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(162)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    //address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    //address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(48)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |contract SafeMath {
    |    function safeAdd(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    function safeAdd(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint256 a, uint256 b) public pure returns (uint256 c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x719efd3550c82b1ce656e64803de576ce93e362f.sol(16)


