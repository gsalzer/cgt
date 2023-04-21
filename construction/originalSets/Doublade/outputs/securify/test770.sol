Processing contract: /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol:TGCToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol:TGCTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol:TokenRecipient
[33mWarning[0m for LockedEther in contract 'TGCToken':
    |
    |
  > |contract TGCToken is TGCTokenBase {
    |
    |    function TGCToken() TGCTokenBase(100000000000, "TGCToken", "TGC", 18) public {
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'TGCToken':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns(uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'TGCToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256) {
    |        return allowances[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'TGCToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool) {
    |        require(_value <= allowances[_from][msg.sender]);     // Check allowance
    |        allowances[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'TGCToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public returns(bool) {
    |        allowances[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'TGCToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns(bool) {
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'TGCToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns(bool) {
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'TGCToken':
    |     * From MonolithDAO Token.sol
    |     */
  > |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |        // Check for overflows
    |        require(allowances[msg.sender][_spender] + _addedValue > allowances[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(193)

[31mViolation[0m for MissingInputValidation in contract 'TGCToken':
    |    }
    |
  > |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |        uint oldValue = allowances[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'TGCToken':
    |contract ERC20 {
    |    // the total token supply
  > |    uint256 public totalSupply;
    | 
    |    // Get the account balance of another account with address _owner
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TGCToken':
    |contract TGCTokenBase is ERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8  public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'TGCToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8  public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'TGCToken':
    |    string public name;
    |    string public symbol;
  > |    uint8  public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'TGCToken':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal returns(bool) {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'TGCToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns(bool) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(161)

[33mWarning[0m for UnhandledException in contract 'TGCToken':
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TGCToken':
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCToken':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] -= _value;
    |        // Add the same to the recipient
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCToken':
    |        balances[_from] -= _value;
    |        // Add the same to the recipient
  > |        balances[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCToken':
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCToken':
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
  > |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowances[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCToken':
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowances[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCToken':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] -= _value;
    |        // Add the same to the recipient
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool) {
    |        require(_value <= allowances[_from][msg.sender]);     // Check allowance
  > |        allowances[_from][msg.sender] -= _value;
    |        return _transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns(bool) {
  > |        allowances[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCToken':
    |    function burn(uint256 _value) public returns(bool) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |        balances[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCToken':
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowances[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCToken':
    |        require(allowances[msg.sender][_spender] + _addedValue > allowances[msg.sender][_spender]);
    |
  > |        allowances[msg.sender][_spender] += _addedValue;
    |        Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCToken':
    |        uint oldValue = allowances[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowances[msg.sender][_spender] = 0;
    |        } else {
    |            allowances[msg.sender][_spender] = oldValue - _subtractedValue;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCToken':
    |            allowances[msg.sender][_spender] = 0;
    |        } else {
  > |            allowances[msg.sender][_spender] = oldValue - _subtractedValue;
    |        }
    |        Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(207)

[33mWarning[0m for LockedEther in contract 'TGCTokenBase':
    |}
    |
  > |contract TGCTokenBase is ERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'TGCTokenBase':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns(uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'TGCTokenBase':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256) {
    |        return allowances[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'TGCTokenBase':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool) {
    |        require(_value <= allowances[_from][msg.sender]);     // Check allowance
    |        allowances[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'TGCTokenBase':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public returns(bool) {
    |        allowances[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'TGCTokenBase':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns(bool) {
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'TGCTokenBase':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns(bool) {
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'TGCTokenBase':
    |     * From MonolithDAO Token.sol
    |     */
  > |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |        // Check for overflows
    |        require(allowances[msg.sender][_spender] + _addedValue > allowances[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(193)

[31mViolation[0m for MissingInputValidation in contract 'TGCTokenBase':
    |    }
    |
  > |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |        uint oldValue = allowances[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'TGCTokenBase':
    |contract ERC20 {
    |    // the total token supply
  > |    uint256 public totalSupply;
    | 
    |    // Get the account balance of another account with address _owner
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TGCTokenBase':
    |contract TGCTokenBase is ERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8  public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'TGCTokenBase':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8  public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'TGCTokenBase':
    |    string public name;
    |    string public symbol;
  > |    uint8  public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'TGCTokenBase':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal returns(bool) {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'TGCTokenBase':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns(bool) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(161)

[33mWarning[0m for UnhandledException in contract 'TGCTokenBase':
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TGCTokenBase':
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] -= _value;
    |        // Add the same to the recipient
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |        balances[_from] -= _value;
    |        // Add the same to the recipient
  > |        balances[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
  > |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowances[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowances[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] -= _value;
    |        // Add the same to the recipient
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool) {
    |        require(_value <= allowances[_from][msg.sender]);     // Check allowance
  > |        allowances[_from][msg.sender] -= _value;
    |        return _transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |     */
    |    function approve(address _spender, uint256 _value) public returns(bool) {
  > |        allowances[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |    function burn(uint256 _value) public returns(bool) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |        balances[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowances[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |        require(allowances[msg.sender][_spender] + _addedValue > allowances[msg.sender][_spender]);
    |
  > |        allowances[msg.sender][_spender] += _addedValue;
    |        Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |        uint oldValue = allowances[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowances[msg.sender][_spender] = 0;
    |        } else {
    |            allowances[msg.sender][_spender] = oldValue - _subtractedValue;
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'TGCTokenBase':
    |            allowances[msg.sender][_spender] = 0;
    |        } else {
  > |            allowances[msg.sender][_spender] = oldValue - _subtractedValue;
    |        }
    |        Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x31041f1b393c46e324d9a23406e39a13705eb204.sol(207)


