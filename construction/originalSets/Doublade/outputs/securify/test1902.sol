Processing contract: /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol:GayPersonalAdsToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol:createGayPersonalAdsToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'GayPersonalAdsToken':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract GayPersonalAdsToken {
    |    /* Public variables of the token */
    |    string public standard = 'GayPersonalAds 0.1';
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    /// @param _to The address of the recipient
    |    /// @param _value the amount to send
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (_value < allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    /// @param _spender The address authorized to spend
    |    /// @param _value the max amount they can spend
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    /// @param _value the max amount they can spend
    |    /// @param _extraData some extra information to send to the approved contract
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |contract GayPersonalAdsToken {
    |    /* Public variables of the token */
  > |    string public standard = 'GayPersonalAds 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    /* Public variables of the token */
    |    string public standard = 'GayPersonalAds 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    string public standard = 'GayPersonalAds 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] > _value);                // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    /// @notice Remove `_value` tokens from the system irreversibly
    |    /// @param _value the amount of money to burn
  > |    function burn(uint256 _value) returns (bool success) {
    |        require (balanceOf[msg.sender] > _value);            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'GayPersonalAdsToken':
    |    }
    |
  > |    function GayPersonalAds() constant returns (string)          
    |    {
    |        return "https://play.google.com/store/apps/details?id=com.pl.ajoinfinity.gaymendating";
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(113)

[33mWarning[0m for UnhandledException in contract 'GayPersonalAdsToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GayPersonalAdsToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |        require (balanceOf[_from] > _value);                // Check if the sender has enough
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |        require (balanceOf[msg.sender] > _value);            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  > |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |        require (balanceOf[_from] > _value);                // Check if the sender has enough
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (_value < allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |    function burn(uint256 _value) returns (bool success) {
    |        require (balanceOf[msg.sender] > _value);            // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
    |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'GayPersonalAdsToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(107)

[33mWarning[0m for LockedEther in contract 'createGayPersonalAdsToken':
    |}
    |
  > |contract createGayPersonalAdsToken is GayPersonalAdsToken(21000000, "Gay Personal Ads Token", 18, "GAYPA") {}
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    /// @param _to The address of the recipient
    |    /// @param _value the amount to send
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (_value < allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    /// @param _spender The address authorized to spend
    |    /// @param _value the max amount they can spend
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    /// @param _value the max amount they can spend
    |    /// @param _extraData some extra information to send to the approved contract
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |contract GayPersonalAdsToken {
    |    /* Public variables of the token */
  > |    string public standard = 'GayPersonalAds 0.1';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    /* Public variables of the token */
    |    string public standard = 'GayPersonalAds 0.1';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    string public standard = 'GayPersonalAds 0.1';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] > _value);                // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    /// @notice Remove `_value` tokens from the system irreversibly
    |    /// @param _value the amount of money to burn
  > |    function burn(uint256 _value) returns (bool success) {
    |        require (balanceOf[msg.sender] > _value);            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'createGayPersonalAdsToken':
    |    }
    |
  > |    function GayPersonalAds() constant returns (string)          
    |    {
    |        return "https://play.google.com/store/apps/details?id=com.pl.ajoinfinity.gaymendating";
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(113)

[33mWarning[0m for UnhandledException in contract 'createGayPersonalAdsToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'createGayPersonalAdsToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |        require (balanceOf[_from] > _value);                // Check if the sender has enough
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |        require (balanceOf[msg.sender] > _value);            // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  > |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |        require (balanceOf[_from] > _value);                // Check if the sender has enough
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (_value < allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |    function burn(uint256 _value) returns (bool success) {
    |        require (balanceOf[msg.sender] > _value);            // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
    |        totalSupply -= _value;                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'createGayPersonalAdsToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x79e959b7a6f14adbb8b40ddd29ed8fc2d64ae5cd.sol(107)


