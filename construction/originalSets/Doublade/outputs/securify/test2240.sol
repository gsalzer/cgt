Processing contract: /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol:ERCInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol:MDZAToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MDZAToken':
    |}
    |
  > |contract MDZAToken is ERCInterface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(68)

[33mWarning[0m for UnhandledException in contract 'MDZAToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(145)

[33mWarning[0m for UnhandledException in contract 'MDZAToken':
    |    // Transfer any ERC Token
    |    function transferAnyERCToken(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERCInterface(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(156)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDZAToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDZAToken':
    |    // Transfer any ERC Token
    |    function transferAnyERCToken(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERCInterface(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'MDZAToken':
    |        require(!frozenAccount[to]);// Check if recipient is frozen
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'MDZAToken':
    |        require(!frozenAccount[from]);     // Check if sender is frozen
    |        require(!frozenAccount[to]);       // Check if recipient is frozen
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'MDZAToken':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'MDZAToken':
    |    function burn(uint256 tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        _totalSupply = _totalSupply.sub(tokens);
    |        emit Burn(msg.sender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'MDZAToken':
    |    // Burn token from specific account and with specific value
    |    function burnFrom(address from, uint256 tokens) public  returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        _totalSupply = _totalSupply.sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'MDZAToken':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        _totalSupply = _totalSupply.sub(tokens);
    |        emit Burn(from, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |        require(!transactionLock);  // Check for transaction lock
    |        require(!frozenAccount[to]);// Check if recipient is frozen
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |    // Token owner can approve for spender to transferFrom(...) tokens from the token owner's account
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |        require(!frozenAccount[to]);       // Check if recipient is frozen
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |    // Token owner can approve for spender to transferFrom(...) tokens
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |    // Burn specific amount token
    |    function burn(uint256 tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        _totalSupply = _totalSupply.sub(tokens);
    |        emit Burn(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |    function burnFrom(address from, uint256 tokens) public  returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        _totalSupply = _totalSupply.sub(tokens);
    |        emit Burn(from, tokens);
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |    // Freeze and unFreeze account from sending and receiving tokens
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'MDZAToken':
    |    // Lock and unLock all transactions
    |    function lockTransactions(bool lock) public onlyOwner returns (bool response){
  > |        transactionLock = lock;
    |        return lock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(189)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    event FrozenFunds(address target, bool frozen);
    |}
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |}
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(45)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x919362f32f37364ccd6972aac8b889d918dc59be.sol(49)


