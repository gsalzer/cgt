Processing contract: /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol:SicoinCo2
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'SicoinCo2':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract SicoinCo2 {
    |    // Public variables of the token
    |    string public name = "Sicoinco2";
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(7)

[33mWarning[0m for UnhandledException in contract 'SicoinCo2':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SicoinCo2':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |        string tokenSymbol
    |    ) public {
  > |        totalSupply = initialSupply = 1000000000000000; uint256(decimals);  // Update total supply with the decimal amount
    |        balanceOf[msg.sender] = totalSupply = 1000000000000000;                // Give the creator all initial tokens
    |        name = tokenName = "SICOINCO2";                      // Set the name for display purposes
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |    ) public {
    |        totalSupply = initialSupply = 1000000000000000; uint256(decimals);  // Update total supply with the decimal amount
  > |        balanceOf[msg.sender] = totalSupply = 1000000000000000;                // Give the creator all initial tokens
    |        name = tokenName = "SICOINCO2";                      // Set the name for display purposes
    |        symbol = tokenSymbol = "CO2";                               // Set the symbol for display purposes
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |    ) public {
    |        totalSupply = initialSupply = 1000000000000000; uint256(decimals);  // Update total supply with the decimal amount
  > |        balanceOf[msg.sender] = totalSupply = 1000000000000000;                // Give the creator all initial tokens
    |        name = tokenName = "SICOINCO2";                      // Set the name for display purposes
    |        symbol = tokenSymbol = "CO2";                               // Set the symbol for display purposes
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'SicoinCo2':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xe7baa76b10a19f06abde07ee8f659d78f0877b28.sol(150)


