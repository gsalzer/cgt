Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol:TMXGlobalToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TMXGlobalToken':
    |
    |
  > |contract TMXGlobalToken  {
    |    //TMX Global Official Token Name
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |
    |//check TMX Global Tokens balance of an Ethereum account
  > |function balanceOf(address who) public constant returns (uint value) {
    |    return _balances[who];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |
    |//check how many TMX Global Tokens a spender is allowed to spend from an owner
  > |function allowance(address _owner, address spender) public constant returns (uint _allowance) {
    |    return _approvals[_owner][spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |
    |//transfer an amount of TMX Global Tokens to an Ethereum address
  > |function transfer(address to, uint value) public returns (bool ok) {
    |
    |    if(_balances[msg.sender] < value) revert();
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |
    |//spend TMX Global Tokens from another Ethereum account that approves you as spender
  > |function transferFrom(address from, address to, uint value) public returns (bool ok) {
    |    // if you don't have enough balance, throw
    |    if(_balances[from] < value) revert();
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |  
    |//allow another Ethereum account to spend TMX Global Tokens from your Account
  > |function approve(address spender, uint value)
    |    public
    |    returns (bool ok) {
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |//only minter can create new TMX Global Tokens
    |//check if TMX Global Token Hard Cap is reached before proceedig - revert if true
  > |function mint(address recipient, uint amount) onlyMinter cap_reached(amount) public
    |  {
    |        
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(140)

[31mViolation[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |  
    | //transfer the priviledge of creating new TMX Global Tokens to anothe Ethereum account
  > |function transferMintership(address newMinter) public onlyMinter returns(bool)
    |  {
    |    dev = newMinter;
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |contract TMXGlobalToken  {
    |    //TMX Global Official Token Name
  > |    string public name;
    |    
    |    //TMX Global Token Official Symbol
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |    
    |    //TMX Global Token Official Symbol
  > |	string public symbol;
    |	
    |	//TMX Global Token Decimals
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |	
    |	//TMX Global Token Decimals
  > |	uint8 public decimals; 
    |  
    |  //database to match user Accounts and their respective balances
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |  
    |  //TMX Global Token Hard cap 
  > |  uint public cap_tmx;
    |  
    |  //Number of TMX Global Tokens in existence
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |  
    |  //Number of TMX Global Tokens in existence
  > |  uint public _supply;
    |  
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'TMXGlobalToken':
    | 
    | //Ethereum address of Authorized Nuru Token Minter
  > |address public dev;
    |
    |//check if hard cap reached before mintting new Tokens
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |
    |//retrieve number of all TMX Global Tokens in existence
  > |function totalSupply() public constant returns (uint supply) {
    |    return _supply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'TMXGlobalToken':
    |
    |  // A helper to notify if overflow occurs
  > |function safeToAdd(uint a, uint b) internal returns (bool) {
    |    return (a + b >= a && a + b >= b);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'TMXGlobalToken':
    |
    |    _balances[msg.sender] -= value;
  > |    _balances[to] += value;
    |    Transfer(msg.sender, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'TMXGlobalToken':
    |    // transfer and return true
    |    _approvals[from][msg.sender] -= value;
  > |    _balances[from] -= value;
    |    _balances[to] += value;
    |    Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'TMXGlobalToken':
    |    _approvals[from][msg.sender] -= value;
    |    _balances[from] -= value;
  > |    _balances[to] += value;
    |    Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'TMXGlobalToken':
    |    
    |
  > |    _balances[msg.sender] -= value;
    |    _balances[to] += value;
    |    Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'TMXGlobalToken':
    |    
    |    // transfer and return true
  > |    _approvals[from][msg.sender] -= value;
    |    _balances[from] -= value;
    |    _balances[to] += value;
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'TMXGlobalToken':
    |    public
    |    returns (bool ok) {
  > |    _approvals[msg.sender][spender] = value;
    |    Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'TMXGlobalToken':
    |  {
    |        
  > |   _balances[recipient] += amount;  
    |   _supply += amount;
    |    
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'TMXGlobalToken':
    |        
    |   _balances[recipient] += amount;  
  > |   _supply += amount;
    |    
    |   
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'TMXGlobalToken':
    |function transferMintership(address newMinter) public onlyMinter returns(bool)
    |  {
  > |    dev = newMinter;
    |    
    |    minterTransfered(dev, newMinter);
  at /home/jiaming/mavs_srcs/contract@0x4fc02519648ca7c1ca120f5f73f928ed1ca8bfb3.sol(153)


