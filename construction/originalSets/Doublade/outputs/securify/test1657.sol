Processing contract: /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol:CrestToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CrestToken':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract CrestToken is ERC20Interface {
    |    
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        if(balances[msg.sender] >= tokens && tokens > 0 && to != address(0)) {
  > |            balances[msg.sender] = balances[msg.sender].sub(tokens);
    |            balances[to] = balances[to].add(tokens);
    |            emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |        if(balances[msg.sender] >= tokens && tokens > 0 && to != address(0)) {
    |            balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |            balances[to] = balances[to].add(tokens);
    |            emit Transfer(msg.sender, to, tokens);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |    function approve(address spender, uint tokens) public returns (bool success) {
    |        if(tokens > 0 && spender != address(0)) {
  > |            allowed[msg.sender][spender] = tokens;
    |            emit Approval(msg.sender, spender, tokens);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        if (balances[from] >= tokens && allowed[from][msg.sender] >= tokens && tokens > 0) {
  > |            balances[from] = balances[from].sub(tokens);
    |            allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |            balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |        if (balances[from] >= tokens && allowed[from][msg.sender] >= tokens && tokens > 0) {
    |            balances[from] = balances[from].sub(tokens);
  > |            allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |            balances[to] = balances[to].add(tokens);
    |            emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |            balances[from] = balances[from].sub(tokens);
    |            allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |            balances[to] = balances[to].add(tokens);
    |            emit Transfer(from, to, tokens);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |    // ------------------------------------------------------------------------
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |      require(_value <= balances[msg.sender]);
    |      address burner = msg.sender;
  > |      balances[burner] = balances[burner].sub(_value);
    |      _totalSupply = _totalSupply.sub(_value);
    |      emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'CrestToken':
    |      address burner = msg.sender;
    |      balances[burner] = balances[burner].sub(_value);
  > |      _totalSupply = _totalSupply.sub(_value);
    |      emit Burn(burner, _value);
    |      emit Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(222)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe math
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x699a27f71bf580b94b4aeec09b54e264b67f5cce.sol(16)


