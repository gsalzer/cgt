Processing contract: /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol:BitGuildCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol:BitGuildToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol:BitGuildWhitelist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'BitGuildCrowdsale':
    |
    |    // Send funds
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(317)

[33mWarning[0m for LockedEther in contract 'BitGuildCrowdsale':
    | * Capped crowdsale with a stard/end date
    | */
  > |contract BitGuildCrowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(236)

[33mWarning[0m for UnhandledException in contract 'BitGuildCrowdsale':
    |  function buyTokens(address beneficiary) public payable {
    |    require(beneficiary != address(0));
  > |    require(whitelist.whitelist(beneficiary));
    |    require(validPurchase());
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(300)

[33mWarning[0m for UnhandledException in contract 'BitGuildCrowdsale':
    |
    |    // Send tokens
  > |    token.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(313)

[33mWarning[0m for UnhandledException in contract 'BitGuildCrowdsale':
    |
    |    // Send funds
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(317)

[33mWarning[0m for UnhandledException in contract 'BitGuildCrowdsale':
    |    crowdsaleFinalized = true;
    |    // send remaining tokens back to the admin
  > |    uint256 tokensLeft = token.balanceOf(this);
    |    token.transfer(wallet, tokensLeft);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(361)

[33mWarning[0m for UnhandledException in contract 'BitGuildCrowdsale':
    |    // send remaining tokens back to the admin
    |    uint256 tokensLeft = token.balanceOf(this);
  > |    token.transfer(wallet, tokensLeft);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildCrowdsale':
    |  function buyTokens(address beneficiary) public payable {
    |    require(beneficiary != address(0));
  > |    require(whitelist.whitelist(beneficiary));
    |    require(validPurchase());
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildCrowdsale':
    |
    |    // Send tokens
  > |    token.transfer(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildCrowdsale':
    |
    |    // Send funds
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildCrowdsale':
    |    crowdsaleFinalized = true;
    |    // send remaining tokens back to the admin
  > |    uint256 tokensLeft = token.balanceOf(this);
    |    token.transfer(wallet, tokensLeft);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(361)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildCrowdsale':
    |    // send remaining tokens back to the admin
    |    uint256 tokensLeft = token.balanceOf(this);
  > |    token.transfer(wallet, tokensLeft);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildCrowdsale':
    |
    |    // update total and individual contributions
  > |    weiRaised = weiRaised.add(weiAmount);
    |    contributions[beneficiary] = contributions[beneficiary].add(weiAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildCrowdsale':
    |    // update total and individual contributions
    |    weiRaised = weiRaised.add(weiAmount);
  > |    contributions[beneficiary] = contributions[beneficiary].add(weiAmount);
    |
    |    // Send tokens
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildCrowdsale':
    |  function finalizeCrowdsale() public {
    |    require(msg.sender == wallet);
  > |    crowdsaleFinalized = true;
    |    // send remaining tokens back to the admin
    |    uint256 tokensLeft = token.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(359)

[33mWarning[0m for LockedEther in contract 'BitGuildToken':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract BitGuildToken {
    |    // Public variables of the token
    |    string public name = "BitGuild PLAT";
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |contract BitGuildToken {
    |    // Public variables of the token
  > |    string public name = "BitGuild PLAT";
    |    string public symbol = "PLAT";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |    // Public variables of the token
    |    string public name = "BitGuild PLAT";
  > |    string public symbol = "PLAT";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 10000000000 * 10 ** uint256(decimals); // 10 billion tokens;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |    string public name = "BitGuild PLAT";
    |    string public symbol = "PLAT";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 10000000000 * 10 ** uint256(decimals); // 10 billion tokens;
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |    string public symbol = "PLAT";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 10000000000 * 10 ** uint256(decimals); // 10 billion tokens;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(165)

[33mWarning[0m for UnhandledException in contract 'BitGuildToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(153)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitGuildToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'BitGuildToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(185)

[33mWarning[0m for LockedEther in contract 'BitGuildWhitelist':
    | * A small smart contract to provide whitelist functionality and storage
    | */
  > |contract BitGuildWhitelist {
    |
    |  address admin;
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'BitGuildWhitelist':
    |  address admin;
    |
  > |  mapping (address => bool) public whitelist;
    |  uint256 public totalWhitelisted = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'BitGuildWhitelist':
    |
    |  mapping (address => bool) public whitelist;
  > |  uint256 public totalWhitelisted = 0;
    |
    |  event AddressWhitelisted(address indexed user, bool whitelisted);
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |      if (whitelist[_users[i]] == _whitelisted) continue;
    |      if (_whitelisted) {
  > |        totalWhitelisted++;
    |      } else {
    |        if (totalWhitelisted > 0) {
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |      } else {
    |        if (totalWhitelisted > 0) {
  > |          totalWhitelisted--;
    |        }
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'BitGuildWhitelist':
    |      }
    |      AddressWhitelisted(_users[i], _whitelisted);
  > |      whitelist[_users[i]] = _whitelisted;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(227)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4118d7f757ad5893b8fa2f95e067994e1f531371.sol(7)


