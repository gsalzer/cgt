Processing contract: /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol:Arexium
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Arexium':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract Arexium {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'Arexium':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Arexium':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Arexium':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Arexium':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Arexium':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (_to == 0x0) (revert());                                // Prevent transfer to 0x0 address. Use burn() instead
    |        if (balanceOf[_from] < _value) revert();                 // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'Arexium':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        if (balanceOf[_from] < _value) revert();                // Check if the sender has enough
    |        if (_value > allowance[_from][msg.sender]) revert();    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Arexium':
    |contract Arexium {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Arexium':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Arexium':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Arexium':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Arexium':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Arexium':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (_to == 0x0) revert();                               // Prevent transfer to 0x0 address. Use burn() instead
    |        if (balanceOf[msg.sender] < _value) revert();           // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Arexium':
    |    }
    |
  > |    function burn(uint256 _value) returns (bool success) {
    |        if (balanceOf[msg.sender] < _value) revert();            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(76)

[33mWarning[0m for UnhandledException in contract 'Arexium':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(58)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arexium':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Arexium':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) revert(); // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'Arexium':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) revert();  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) revert();     // Check allowance
  > |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'Arexium':
    |        if (_value > allowance[_from][msg.sender]) revert();     // Check allowance
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
  > |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'Arexium':
    |        if (balanceOf[msg.sender] < _value) revert();            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  > |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'Arexium':
    |        if (balanceOf[_from] < _value) revert();                // Check if the sender has enough
    |        if (_value > allowance[_from][msg.sender]) revert();    // Check allowance
  > |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        totalSupply -= _value;                               // Updates totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'Arexium':
    |        if (_value > allowance[_from][msg.sender]) revert();    // Check allowance
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
  > |        totalSupply -= _value;                               // Updates totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Arexium':
    |        if (balanceOf[msg.sender] < _value) revert();           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) revert(); // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Arexium':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Arexium':
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Arexium':
    |    function burn(uint256 _value) returns (bool success) {
    |        if (balanceOf[msg.sender] < _value) revert();            // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
    |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe256bb0b2a3457e54db3a41cf5a8b826aca222a8.sol(78)


