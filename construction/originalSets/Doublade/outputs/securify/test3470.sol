Processing contract: /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol:Vaginati
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Vaginati':
    |            
    |            function drain() external onlyOwner {
  > |                owner.transfer(this.balance);
    |             }
    |             
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(114)

[33mWarning[0m for LockedEther in contract 'Vaginati':
    |        // -------------------------------------------------------------------------
    |        
  > |        contract Vaginati 
    |        {
    |        string public constant symbol = 'VGN';
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Vaginati':
    |    
    |        // What is the balance of a particular account?
  > |        function balanceOf(address _owner) constant returns (uint256 balance) {
    |            return balances[_owner];
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'Vaginati':
    |    
    |        // Send _value amount of tokens from address _from to address _to
  > |        function transferFrom(
    |            address _from,
    |            address _to,
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'Vaginati':
    |        }
    |
  > |        function approve(address _spender, uint256 _amount) 
    |            returns (bool success) {
    |            allowed[msg.sender][_spender] = _amount;
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'Vaginati':
    |        }
    |
  > |        function allowance(address _owner, address _spender) 
    |            constant returns (uint256 remaining) {
    |            return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'Vaginati':
    |             
    |                 //used by wallet during token buying procedure 
  > |    function transferby(address _from,address _to,uint256 _amount) public onlyOwner returns(bool success) {
    |        if (balances[_from] >= _amount &&
    |            _amount > 0 &&
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'Vaginati':
    |        contract Vaginati 
    |        {
  > |        string public constant symbol = 'VGN';
    |        string public constant name = 'Vaginati';
    |        uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Vaginati':
    |        {
    |        string public constant symbol = 'VGN';
  > |        string public constant name = 'Vaginati';
    |        uint8 public constant decimals = 18;
    |        uint256 _totalSupply = 1000000 * 10 **18;
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Vaginati':
    |        string public constant symbol = 'VGN';
    |        string public constant name = 'Vaginati';
  > |        uint8 public constant decimals = 18;
    |        uint256 _totalSupply = 1000000 * 10 **18;
    |        
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Vaginati':
    |        
    |        // Owner of this contract
  > |        address public owner = 0x36EaD5904808bbEF2cF2D12B41e6382D54E82b53;
    |        
    |        uint256 priceoftoken_1ether = 1;
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Vaginati':
    |        }
    |    
  > |        function totalSupply() constant returns (uint256 totalSupply) {
    |            return _totalSupply;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Vaginati':
    |            }
    |            
  > |            function drain() external onlyOwner {
    |                owner.transfer(this.balance);
    |             }
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Vaginati':
    |             
    |             	//In case the ownership needs to be transferred
  > |	function transferOwnership(address newOwner)public onlyOwner
    |	{
    |	    require( newOwner != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(133)

[31mViolation[0m for TODAmount in contract 'Vaginati':
    |            
    |            function drain() external onlyOwner {
  > |                owner.transfer(this.balance);
    |             }
    |             
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(114)

[31mViolation[0m for TODReceiver in contract 'Vaginati':
    |            
    |            function drain() external onlyOwner {
  > |                owner.transfer(this.balance);
    |             }
    |             
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(114)

[33mWarning[0m for UnhandledException in contract 'Vaginati':
    |            
    |            function drain() external onlyOwner {
  > |                owner.transfer(this.balance);
    |             }
    |             
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vaginati':
    |            
    |            function drain() external onlyOwner {
  > |                owner.transfer(this.balance);
    |             }
    |             
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Vaginati':
    |                && _amount > 0
    |                && balances[_to] + _amount > balances[_to]) {
  > |                balances[msg.sender] -= _amount;
    |                balances[_to] += _amount;
    |                Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Vaginati':
    |                && balances[_to] + _amount > balances[_to]) {
    |                balances[_from] -= _amount;
  > |                allowed[_from][msg.sender] -= _amount;
    |                balances[_to] += _amount;
    |                Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Vaginati':
    |        function approve(address _spender, uint256 _amount) 
    |            returns (bool success) {
  > |            allowed[msg.sender][_spender] = _amount;
    |            Approval(msg.sender, _spender, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Vaginati':
    |            balances[_to] + _amount > balances[_to]) {
    |                 
  > |            balances[_from] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Vaginati':
    |                 
    |            balances[_from] -= _amount;
  > |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Vaginati':
    |	{
    |	    require( newOwner != 0x0);
  > |	    balances[newOwner] = balances[newOwner] + (balances[owner]);
    |	    balances[owner] = 0;
    |	    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Vaginati':
    |	    require( newOwner != 0x0);
    |	    balances[newOwner] = balances[newOwner] + (balances[owner]);
  > |	    balances[owner] = 0;
    |	    owner = newOwner;
    |	    Transfer(owner, newOwner, balances[newOwner]);
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Vaginati':
    |	    balances[newOwner] = balances[newOwner] + (balances[owner]);
    |	    balances[owner] = 0;
  > |	    owner = newOwner;
    |	    Transfer(owner, newOwner, balances[newOwner]);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xe3702de90e0733b071b51348560bb0a096e36bee.sol(138)


