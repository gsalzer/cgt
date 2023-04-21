Processing contract: /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol:MyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'MyToken':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract MyToken {
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => uint256) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => uint256) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |    mapping (address => uint256) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        uint forbiddenPremine =  1501545600 - block.timestamp + 86400*365;        
    |        if (forbiddenPremine < 0) forbiddenPremine = 0;   
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        require(balanceOf[_from] > _value);                // Check if the sender has enough
    |        require(_value < allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    }
    |    
  > |    function freezeAccount(address target, uint256 freeze) {
    |        require(msg.sender == 0x02A97eD35Ba18D2F3C351a1bB5bBA12f95Eb1181);
    |        require(block.timestamp < 1502036759 + 3600*10);
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |contract MyToken {
    |    /* Public variables of the token */
  > |    string public standard = 'Token 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    /* Public variables of the token */
    |    string public standard = 'Token 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public standard = 'Token 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) {
    |        uint forbiddenPremine =  1501545600 - block.timestamp + 86400*365;
    |        if (forbiddenPremine < 0) forbiddenPremine = 0;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    }
    |
  > |    function burn(uint256 _value) returns (bool success) {
    |        require(balanceOf[msg.sender] > _value);            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                    // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(82)

[33mWarning[0m for UnhandledException in contract 'MyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(61)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);   // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);  // Check for overflows
    |        require(_value < allowance[_from][msg.sender]);     // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(_value < allowance[_from][msg.sender]);     // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[msg.sender] > _value);            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                    // Subtract from the sender
  > |        totalSupply -= _value;                              // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_from] > _value);                // Check if the sender has enough
    |        require(_value < allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                        // Subtract from the sender
    |        totalSupply -= _value;                             // Updates totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(_value < allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                        // Subtract from the sender
  > |        totalSupply -= _value;                             // Updates totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[msg.sender] > _value + frozenAccount[msg.sender] * forbiddenPremine / (86400*365) );    // Check if the sender has enough
    |        require(balanceOf[_to] + _value > balanceOf[_to]);   // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function burn(uint256 _value) returns (bool success) {
    |        require(balanceOf[msg.sender] > _value);            // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;                    // Subtract from the sender
    |        totalSupply -= _value;                              // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(msg.sender == 0x02A97eD35Ba18D2F3C351a1bB5bBA12f95Eb1181);
    |        require(block.timestamp < 1502036759 + 3600*10);
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x563383b56367ff2afffe5c6bcf9187bbe52d40ad.sol(102)


