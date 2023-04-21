Processing contract: /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol:MettaCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol:MettaCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |    
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |	*/
    |	function transfer(address _to, uint256 _value) returns (bool) {
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(80)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken, Ownable {
    | 
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |	*/
    |	function transfer(address _to, uint256 _value) returns (bool) {
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |	function transfer(address _to, uint256 _value) returns (bool) {
    |		balances[msg.sender] = balances[msg.sender].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |		// require (_value <= _allowance);
    |
  > |		balances[_to] = balances[_to].add(_value);
    |		balances[_from] = balances[_from].sub(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |		balances[_to] = balances[_to].add(_value);
  > |		balances[_from] = balances[_from].sub(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |		balances[_to] = balances[_to].add(_value);
    |		balances[_from] = balances[_from].sub(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |		require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |										
    |
  > |		balances[burner] = balances[burner].sub(_value);
    |		totalSupply = totalSupply.sub(_value);
    |		Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |		balances[burner] = balances[burner].sub(_value);
  > |		totalSupply = totalSupply.sub(_value);
    |		Burn(burner, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |	function transferOwnership(address newOwner) onlyOwner {
    |		require(newOwner != address(0));      
  > |		ownerCandidat = newOwner;
    |	}
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |	function confirmOwnership()  {
    |		require(msg.sender == ownerCandidat);      
  > |		owner = msg.sender;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(197)

[33mWarning[0m for LockedEther in contract 'MettaCoin':
    |}
    | 
  > |contract MettaCoin is BurnableToken {
    | 
    |	string public constant name = "TOKEN METTA";   
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |	*/
    |	function transfer(address _to, uint256 _value) returns (bool) {
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |	function transfer(address _to, uint256 _value) returns (bool) {
    |		balances[msg.sender] = balances[msg.sender].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |		// require (_value <= _allowance);
    |
  > |		balances[_to] = balances[_to].add(_value);
    |		balances[_from] = balances[_from].sub(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |
    |		balances[_to] = balances[_to].add(_value);
  > |		balances[_from] = balances[_from].sub(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |		balances[_to] = balances[_to].add(_value);
    |		balances[_from] = balances[_from].sub(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |		require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |										
    |
  > |		balances[burner] = balances[burner].sub(_value);
    |		totalSupply = totalSupply.sub(_value);
    |		Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |
    |		balances[burner] = balances[burner].sub(_value);
  > |		totalSupply = totalSupply.sub(_value);
    |		Burn(burner, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |	function transferOwnership(address newOwner) onlyOwner {
    |		require(newOwner != address(0));      
  > |		ownerCandidat = newOwner;
    |	}
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MettaCoin':
    |	function confirmOwnership()  {
    |		require(msg.sender == ownerCandidat);      
  > |		owner = msg.sender;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(197)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |	address public owner;
    |	address public ownerCandidat;
    |
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    
    |	address public owner;
  > |	address public ownerCandidat;
    |
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	* @param newOwner The address to transfer ownership to.
    |	*/
  > |	function transferOwnership(address newOwner) onlyOwner {
    |		require(newOwner != address(0));      
    |		ownerCandidat = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	* @dev Allows safe change current owner to a newOwner.
    |	*/
  > |	function confirmOwnership()  {
    |		require(msg.sender == ownerCandidat);      
    |		owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |	function transferOwnership(address newOwner) onlyOwner {
    |		require(newOwner != address(0));      
  > |		ownerCandidat = newOwner;
    |	}
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |	function confirmOwnership()  {
    |		require(msg.sender == ownerCandidat);      
  > |		owner = msg.sender;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(197)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    
    |	function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(13)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |	mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |	*/
    |	function transfer(address _to, uint256 _value) returns (bool) {
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |		balances[_to] = balances[_to].add(_value);
    |		balances[_from] = balances[_from].sub(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |		require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3cecd05537ea3a9de9267c0e8a8abf218a903148.sol(140)


