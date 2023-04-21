Processing contract: /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol:DarkSideCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'DarkSideCoin':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract DarkSideCoin {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(3)

[33mWarning[0m for UnhandledException in contract 'DarkSideCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DarkSideCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |        string tokenSymbol
    |    ) public {
  > |        totalSupply = 8400000000;  // Update total supply with the decimal amount
    |        initialSupply = totalSupply;
    |        balanceOf[msg.sender] = totalSupply;                // Give the creator all initial tokens
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |        totalSupply = 8400000000;  // Update total supply with the decimal amount
    |        initialSupply = totalSupply;
  > |        balanceOf[msg.sender] = totalSupply;                // Give the creator all initial tokens
    |        name = "DarkSideCoin";                                   // Set the name for display purposes
    |        symbol = "DKSCN";                               // Set the symbol for display purposes
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'DarkSideCoin':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x3ef606ea98600ad738bc1c72e1dfc36ea097bfd9.sol(150)


