Processing contract: /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol:Kin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'Kin':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract Kin {
    |    /* Public variables of the token */
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(5)

[33mWarning[0m for UnhandledException in contract 'Kin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(76)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Kin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'Kin':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract Kin {
    |    /* Public variables of the token */
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'Kin':
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(37)

[31mViolation[0m for UnrestrictedWrite in contract 'Kin':
    |        require (balanceOf[msg.sender] > _value);            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  > |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'Kin':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'Kin':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Kin':
    |        require (balanceOf[_from] > _value);                // Check if the sender has enough
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Kin':
    |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (_value < allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Kin':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Kin':
    |    function burn(uint256 _value) returns (bool success) {
    |        require (balanceOf[msg.sender] > _value);            // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
    |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Kin':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xea8065b4eb4180c94f0e7874e771ea3e2d619e5b.sol(95)


