Processing contract: /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol:OuCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'OuCoin':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract OuCoin {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'OuCoin':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'OuCoin':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'OuCoin':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'OuCoin':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'OuCoin':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (_to != 0x0);                                // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);                 // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'OuCoin':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        require (balanceOf[_from] >= _value);                // Check if the sender has enough
    |        require (_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'OuCoin':
    |contract OuCoin {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public constant name = "OuCoin";
    |    string public constant symbol = "IOU";
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'OuCoin':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public constant name = "OuCoin";
    |    string public constant symbol = "IOU";
    |    uint8 public constant decimals = 3;
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'OuCoin':
    |    string public standard = 'Token 0.1';
    |    string public constant name = "OuCoin";
  > |    string public constant symbol = "IOU";
    |    uint8 public constant decimals = 3;
    |    uint256 public constant initialSupply = 10000000;
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'OuCoin':
    |    string public constant name = "OuCoin";
    |    string public constant symbol = "IOU";
  > |    uint8 public constant decimals = 3;
    |    uint256 public constant initialSupply = 10000000;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'OuCoin':
    |    string public constant symbol = "IOU";
    |    uint8 public constant decimals = 3;
  > |    uint256 public constant initialSupply = 10000000;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'OuCoin':
    |    uint8 public constant decimals = 3;
    |    uint256 public constant initialSupply = 10000000;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'OuCoin':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[msg.sender] >= _value);           // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'OuCoin':
    |    }
    |
  > |    function burn(uint256 _value) returns (bool success) {
    |        require (balanceOf[msg.sender] >= _value);            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(69)

[33mWarning[0m for UnhandledException in contract 'OuCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(51)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OuCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'OuCoin':
    |        require (balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'OuCoin':
    |        require (balanceOf[_to] + _value >= balanceOf[_to]);  // Check for overflows
    |        require (_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'OuCoin':
    |        require (_value <= allowance[_from][msg.sender]);     // Check allowance
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
  > |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'OuCoin':
    |        require (balanceOf[msg.sender] >= _value);            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  > |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'OuCoin':
    |        require (balanceOf[_from] >= _value);                // Check if the sender has enough
    |        require (_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                          // Subtract from the sender
    |        totalSupply -= _value;                               // Updates totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'OuCoin':
    |        require (_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                          // Subtract from the sender
  > |        totalSupply -= _value;                               // Updates totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'OuCoin':
    |        require (balanceOf[msg.sender] >= _value);           // Check if the sender has enough
    |        require (balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'OuCoin':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'OuCoin':
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'OuCoin':
    |    function burn(uint256 _value) returns (bool success) {
    |        require (balanceOf[msg.sender] >= _value);            // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
    |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9aeda3956100fa20c258f52bd076ec1cb6f78079.sol(71)


