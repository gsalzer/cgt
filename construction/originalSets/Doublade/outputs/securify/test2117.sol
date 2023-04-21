Processing contract: /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol:TicketCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'TicketCoin':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TicketCoin {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(5)

[33mWarning[0m for UnhandledException in contract 'TicketCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TicketCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'TicketCoin':
    |        string tokenSymbol
    |    ) public {
  > |        totalSupply = 100000000;  // Update total supply with the decimal amount
    |        balanceOf[msg.sender] = totalSupply;                // Give the creator all initial tokens
    |        name = "TicketCoin";                                   // Set the name for display purposes
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'TicketCoin':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'TicketCoin':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'TicketCoin':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'TicketCoin':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'TicketCoin':
    |    ) public {
    |        totalSupply = 100000000;  // Update total supply with the decimal amount
  > |        balanceOf[msg.sender] = totalSupply;                // Give the creator all initial tokens
    |        name = "TicketCoin";                                   // Set the name for display purposes
    |        symbol = "TKC";                               // Set the symbol for display purposes
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'TicketCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'TicketCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'TicketCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'TicketCoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'TicketCoin':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a7a7f0372bece64cc08bccc9218b12042324434.sol(148)


