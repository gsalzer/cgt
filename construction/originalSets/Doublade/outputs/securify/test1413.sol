Processing contract: /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol:BusinessChain
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'BusinessChain':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract BusinessChain {
    |    /* Public variables of the token */
    |    string public standard = 'BusinessChain';
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'BusinessChain':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'BusinessChain':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'BusinessChain':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'BusinessChain':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'BusinessChain':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (_to == 0x0) throw;                                // Prevent transfer to 0x0 address. Use burn() instead
    |        if (balanceOf[_from] < _value) throw;                 // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'BusinessChain':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        if (balanceOf[_from] < _value) throw;                // Check if the sender has enough
    |        if (_value > allowance[_from][msg.sender]) throw;    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'BusinessChain':
    |contract BusinessChain {
    |    /* Public variables of the token */
  > |    string public standard = 'BusinessChain';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'BusinessChain':
    |    /* Public variables of the token */
    |    string public standard = 'BusinessChain';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BusinessChain':
    |    string public standard = 'BusinessChain';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BusinessChain':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BusinessChain':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'BusinessChain':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (_to == 0x0) throw;                               // Prevent transfer to 0x0 address. Use burn() instead
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'BusinessChain':
    |    }
    |
  > |    function burn(uint256 _value) returns (bool success) {
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(71)

[33mWarning[0m for UnhandledException in contract 'BusinessChain':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(53)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BusinessChain':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'BusinessChain':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(37)

[31mViolation[0m for UnrestrictedWrite in contract 'BusinessChain':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
  > |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'BusinessChain':
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
  > |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'BusinessChain':
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  > |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'BusinessChain':
    |        if (balanceOf[_from] < _value) throw;                // Check if the sender has enough
    |        if (_value > allowance[_from][msg.sender]) throw;    // Check allowance
  > |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        totalSupply -= _value;                               // Updates totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'BusinessChain':
    |        if (_value > allowance[_from][msg.sender]) throw;    // Check allowance
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
  > |        totalSupply -= _value;                               // Updates totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BusinessChain':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'BusinessChain':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BusinessChain':
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BusinessChain':
    |    function burn(uint256 _value) returns (bool success) {
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
    |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x59e4e3ec944512e5ce26b7d6f04c54db44f3c2f4.sol(73)


