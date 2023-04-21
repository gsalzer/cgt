Processing contract: /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol:TalentEducationToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TalentEducationToken':
    |pragma solidity ^0.4.11;
  > |contract TalentEducationToken{
    |	mapping (address => uint256) balances;
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'TalentEducationToken':
    |    /// @param _owner The address from which the balance will be retrieved
    |    /// @return The balance
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |		 return balances[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'TalentEducationToken':
    |    /// @param _value The amount of token to be transferred
    |    /// @return Whether the transfer was successful or not
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |	    require(_value > 0 );                                      // Check send token value > 0;
    |		require(balances[msg.sender] >= _value);                    // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'TalentEducationToken':
    |    /// @param _value The amount of token to be transferred
    |    /// @return Whether the transfer was successful or not
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |	  
    |	    require(balances[_from] >= _value);                 // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'TalentEducationToken':
    |    /// @param _value The amount of tokens to be approved for transfer
    |    /// @return Whether the approval was successful or not
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |		require(balances[msg.sender] >= _value);
    |		allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'TalentEducationToken':
    |    /// @param _spender The address of the account able to transfer the tokens
    |    /// @return Amount of remaining tokens allowed to spent
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'TalentEducationToken':
    |contract TalentEducationToken{
    |	mapping (address => uint256) balances;
  > |	address public owner;
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TalentEducationToken':
    |	mapping (address => uint256) balances;
    |	address public owner;
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'TalentEducationToken':
    |	address public owner;
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |	// total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'TalentEducationToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |	// total amount of tokens
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'TalentEducationToken':
    |    uint8 public decimals;
    |	// total amount of tokens
  > |    uint256 public totalSupply;
    |	// `allowed` tracks any extra transfer rights as in all ERC20 tokens
    |    mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(9)

[31mViolation[0m for UnrestrictedWrite in contract 'TalentEducationToken':
    |        require(balances[_to] + _value > balances[_to]);           // Check for overflows											
    |		balances[msg.sender] -= _value;                          // Subtract from the sender
  > |		balances[_to] += _value;                                 // Add the same to the recipient                       
    |		 
    |		Transfer(msg.sender, _to, _value); 							// Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'TalentEducationToken':
    |        require(balances[_to] + _value >= balances[_to]);   // Check for overflows
    |        require(_value <= allowed[_from][msg.sender]);      // Check allowance
  > |        balances[_from] -= _value;                         // Subtract from the sender
    |        balances[_to] += _value;                           // Add the same to the recipient
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'TalentEducationToken':
    |        require(_value <= allowed[_from][msg.sender]);      // Check allowance
    |        balances[_from] -= _value;                         // Subtract from the sender
  > |        balances[_to] += _value;                           // Add the same to the recipient
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'TalentEducationToken':
    |		require(balances[msg.sender] >= _value);                    // Check if the sender has enough
    |        require(balances[_to] + _value > balances[_to]);           // Check for overflows											
  > |		balances[msg.sender] -= _value;                          // Subtract from the sender
    |		balances[_to] += _value;                                 // Add the same to the recipient                       
    |		 
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'TalentEducationToken':
    |        balances[_from] -= _value;                         // Subtract from the sender
    |        balances[_to] += _value;                           // Add the same to the recipient
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'TalentEducationToken':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |		require(balances[msg.sender] >= _value);
  > |		allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0xf3a04a8523e2adf2911e26385024c7262f5af3d9.sol(65)


