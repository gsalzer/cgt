Processing contract: /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol:PSYT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'PSYT':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract PSYT {
    |    /* Public variables of the token */
    |    string public standard;
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'PSYT':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'PSYT':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'PSYT':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'PSYT':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'PSYT':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (_to == 0x0) throw;                                // Prevent transfer to 0x0 address. Use burn() instead
    |        if (balanceOf[_from] < _value) throw;                 // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'PSYT':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        if (balanceOf[_from] < _value) throw;                // Check if the sender has enough
    |        if (_value > allowance[_from][msg.sender]) throw;    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'PSYT':
    |contract PSYT {
    |    /* Public variables of the token */
  > |    string public standard;
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'PSYT':
    |    /* Public variables of the token */
    |    string public standard;
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'PSYT':
    |    string public standard;
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PSYT':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'PSYT':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'PSYT':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (_to == 0x0) throw;                               // Prevent transfer to 0x0 address. Use burn() instead
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'PSYT':
    |    }
    |
  > |    function burn(uint256 _value) returns (bool success) {
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(72)

[33mWarning[0m for UnhandledException in contract 'PSYT':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(54)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PSYT':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'PSYT':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'PSYT':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
  > |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'PSYT':
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
  > |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'PSYT':
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  > |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'PSYT':
    |        if (balanceOf[_from] < _value) throw;                // Check if the sender has enough
    |        if (_value > allowance[_from][msg.sender]) throw;    // Check allowance
  > |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        totalSupply -= _value;                               // Updates totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'PSYT':
    |        if (_value > allowance[_from][msg.sender]) throw;    // Check allowance
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
  > |        totalSupply -= _value;                               // Updates totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'PSYT':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'PSYT':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'PSYT':
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'PSYT':
    |    function burn(uint256 _value) returns (bool success) {
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
    |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1d6d1947428310dd91bec6fcc0d9ea48430c33ed.sol(74)


