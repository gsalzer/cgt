Processing contract: /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol:TravellingFreeToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TravellingFreeToken':
    |pragma solidity ^0.4.14;
  > |contract TravellingFreeToken {
    |    /* Public variables of the token */
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'TravellingFreeToken':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'TravellingFreeToken':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'TravellingFreeToken':
    |
    |	/* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'TravellingFreeToken':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (_to == 0x0) throw;                                // Prevent transfer to 0x0 address. Use burn() instead
    |        if (balanceOf[_from] < _value) throw;                 // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'TravellingFreeToken':
    |contract TravellingFreeToken {
    |    /* Public variables of the token */
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TravellingFreeToken':
    |    /* Public variables of the token */
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'TravellingFreeToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'TravellingFreeToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'TravellingFreeToken':
    |	
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        if (_to == 0x0) throw;                               // Prevent transfer to 0x0 address. Use burn() instead
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'TravellingFreeToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'TravellingFreeToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
  > |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'TravellingFreeToken':
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
  > |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'TravellingFreeToken':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'TravellingFreeToken':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'TravellingFreeToken':
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x13ea82d5e1a811f55bda9c86fdd6195a6bd23aed.sol(58)


