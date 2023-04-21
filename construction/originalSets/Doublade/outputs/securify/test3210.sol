Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:AbstractFundraiser
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:AdultXToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:AdultXTokenFundraiser
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:AdultXTokenSafe
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:BasicFundraiser
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:BurnableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:ForwardFundsFundraiser
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:GasPriceLimitFundraiser
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:HasOwner
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:IndividualCapsFundraiser
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:MintableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:MintableTokenFundraiser
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:PausableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:StandardMintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:StandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:TieredFundraiser
Processing contract: /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol:TokenSafe
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AdultXToken':
    | */
    |
  > |contract AdultXToken is MintableToken, BurnableToken, PausableToken {
    |    constructor(address _owner, address _minter)
    |        StandardToken(
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(908)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |        
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
    |        executeTransfer(_from, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |        require(_value != 0 && _value <= balances[_from]);
    |        
  > |        balances[_from] = balances[_from].minus(_value);
    |        balances[_to] = balances[_to].plus(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |        
    |        balances[_from] = balances[_from].minus(_value);
  > |        balances[_to] = balances[_to].plus(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |    */
    |    function mint(address _to, uint256 _value) public onlyMinter canMint {
  > |        totalSupply = totalSupply.plus(_value);
    |        balances[_to] = balances[_to].plus(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |    function mint(address _to, uint256 _value) public onlyMinter canMint {
    |        totalSupply = totalSupply.plus(_value);
  > |        balances[_to] = balances[_to].plus(_value);
    |
    |        emit Transfer(0x0, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |        require(_value <= balances[burner]);
    |
  > |        balances[burner] = balances[burner].minus(_value);
    |        totalSupply = totalSupply.minus(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |
    |        balances[burner] = balances[burner].minus(_value);
  > |        totalSupply = totalSupply.minus(_value);
    |
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |    */
    |    function disableMinting() public onlyMinter canMint {
  > |        mintingDisabled = true;
    |       
    |        emit MintingDisabled();
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |        emit OwnershipTransfer(owner, newOwner);
    |
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |     */
    |    function pause() public onlyOwner whenNotPaused {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXToken':
    |        require(paused);
    |
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(466)

[33mWarning[0m for DAOConstantGas in contract 'AdultXTokenFundraiser':
    |    function handleFunds(address, uint256 _ethers) internal {
    |        // Forward the funds directly to the beneficiary
  > |        beneficiary.transfer(_ethers);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(864)

[33mWarning[0m for LockedEther in contract 'AdultXTokenFundraiser':
    | */
    |
  > |contract AdultXTokenFundraiser is MintableTokenFundraiser, IndividualCapsFundraiser, ForwardFundsFundraiser, TieredFundraiser, GasPriceLimitFundraiser {
    |    AdultXTokenSafe public tokenSafe;
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(975)

[33mWarning[0m for TODAmount in contract 'AdultXTokenFundraiser':
    |    function handleFunds(address, uint256 _ethers) internal {
    |        // Forward the funds directly to the beneficiary
  > |        beneficiary.transfer(_ethers);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(864)

[31mViolation[0m for TODReceiver in contract 'AdultXTokenFundraiser':
    |    function handleFunds(address, uint256 _ethers) internal {
    |        // Forward the funds directly to the beneficiary
  > |        beneficiary.transfer(_ethers);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(864)

[33mWarning[0m for UnhandledException in contract 'AdultXTokenFundraiser':
    |     */
    |    function handleTokens(address _address, uint256 _tokens) internal {
  > |        MintableToken(token).mint(_address, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(738)

[33mWarning[0m for UnhandledException in contract 'AdultXTokenFundraiser':
    |     */
    |    function handleTokens(address _address, uint256 _tokens) internal {
  > |        require(individualMaxCapTokens == 0 || token.balanceOf(_address).plus(_tokens) <= individualMaxCapTokens);
    |
    |        super.handleTokens(_address, _tokens);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(807)

[33mWarning[0m for UnhandledException in contract 'AdultXTokenFundraiser':
    |    function handleFunds(address, uint256 _ethers) internal {
    |        // Forward the funds directly to the beneficiary
  > |        beneficiary.transfer(_ethers);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(864)

[33mWarning[0m for UnhandledException in contract 'AdultXTokenFundraiser':
    |      */
    |    function mint(address _to, uint256 _value) public onlyOwner {
  > |        MintableToken(token).mint(_to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(1037)

[33mWarning[0m for UnhandledException in contract 'AdultXTokenFundraiser':
    |      */
    |    function disableMinting() public onlyOwner {
  > |        MintableToken(token).disableMinting();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(1044)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AdultXTokenFundraiser':
    |     */
    |    function handleTokens(address _address, uint256 _tokens) internal {
  > |        MintableToken(token).mint(_address, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(738)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AdultXTokenFundraiser':
    |     */
    |    function handleTokens(address _address, uint256 _tokens) internal {
  > |        require(individualMaxCapTokens == 0 || token.balanceOf(_address).plus(_tokens) <= individualMaxCapTokens);
    |
    |        super.handleTokens(_address, _tokens);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(807)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AdultXTokenFundraiser':
    |    function handleFunds(address, uint256 _ethers) internal {
    |        // Forward the funds directly to the beneficiary
  > |        beneficiary.transfer(_ethers);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(864)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AdultXTokenFundraiser':
    |      */
    |    function mint(address _to, uint256 _value) public onlyOwner {
  > |        MintableToken(token).mint(_to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(1037)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AdultXTokenFundraiser':
    |      */
    |    function disableMinting() public onlyOwner {
  > |        MintableToken(token).disableMinting();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(1044)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |        require(tokens > 0);
    |
  > |        totalRaised = totalRaised.plus(_amount);
    |        handleTokens(_address, tokens);
    |        handleFunds(_address, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(662)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |        emit OwnershipTransfer(owner, newOwner);
    |
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |        require(_conversionRate > 0);
    |
  > |        conversionRate = _conversionRate;
    |
    |        emit ConversionRateChanged(_conversionRate);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(634)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |        require(_beneficiary != address(0));
    |
  > |        beneficiary = _beneficiary;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(647)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |        }
    |        
  > |        individualMaxCapTokens = individualMaxCap * _conversionRate;
    |
    |        emit IndividualMaxCapTokensChanged(individualMaxCapTokens);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(777)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |
    |    function setIndividualMinCap(uint256 _individualMinCap) public onlyOwner {
  > |        individualMinCap = _individualMinCap;
    |
    |        emit IndividualMinCapChanged(individualMinCap);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(783)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |
    |    function setIndividualMaxCap(uint256 _individualMaxCap) public onlyOwner {
  > |        individualMaxCap = _individualMaxCap;
    |        individualMaxCapTokens = _individualMaxCap * conversionRate;
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(789)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |    function setIndividualMaxCap(uint256 _individualMaxCap) public onlyOwner {
    |        individualMaxCap = _individualMaxCap;
  > |        individualMaxCapTokens = _individualMaxCap * conversionRate;
    |
    |        emit IndividualMaxCapTokensChanged(individualMaxCapTokens);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(790)

[33mWarning[0m for UnrestrictedWrite in contract 'AdultXTokenFundraiser':
    |     */
    |    function changeGasPriceLimit(uint256 _gasPriceLimit) onlyOwner() public {
  > |        gasPriceLimit = _gasPriceLimit;
    |
    |        emit GasPriceLimitChanged(_gasPriceLimit);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(836)

[33mWarning[0m for LockedEther in contract 'AdultXTokenSafe':
    | */
    |
  > |contract AdultXTokenSafe is TokenSafe {
    |  constructor(address _token)
    |    TokenSafe(_token)
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(928)

[33mWarning[0m for UnhandledException in contract 'AdultXTokenSafe':
    |        group.remaining = group.remaining.minus(tokens);
    |        
  > |        if (!token.transfer(_account, tokens)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AdultXTokenSafe':
    |        group.remaining = group.remaining.minus(tokens);
    |        
  > |        if (!token.transfer(_account, tokens)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'AdultXTokenSafe':
    |        require(tokens > 0);
    |        
  > |        group.balances[_account] = 0;
    |        group.remaining = group.remaining.minus(tokens);
    |        
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'AdultXTokenSafe':
    |        
    |        group.balances[_account] = 0;
  > |        group.remaining = group.remaining.minus(tokens);
    |        
    |        if (!token.transfer(_account, tokens)) {
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(136)

[33mWarning[0m for LockedEther in contract 'HasOwner':
    | * @dev Allows for exclusive access to certain functionality.
    | */
  > |contract HasOwner {
    |    // The current owner.
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(365)

[31mViolation[0m for MissingInputValidation in contract 'HasOwner':
    |     * @param _newOwner The address of the proposed new owner.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(405)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    |contract HasOwner {
    |    // The current owner.
  > |    address public owner;
    |
    |    // Conditionally the new owner.
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(367)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    |
    |    // Conditionally the new owner.
  > |    address public newOwner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(370)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    |     * ownership.
    |     */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'HasOwner':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'HasOwner':
    |        emit OwnershipTransfer(owner, newOwner);
    |
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(418)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Library for safe mathematical operations.
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(14)

[33mWarning[0m for LockedEther in contract 'StandardMintableToken':
    |// File: contracts/token/StandardMintableToken.sol
    |
  > |contract StandardMintableToken is MintableToken {
    |    constructor(address _minter, string _name, string _symbol, uint8 _decimals)
    |        StandardToken(_name, _symbol, _decimals)
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(703)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardMintableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardMintableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |        
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].minus(_value);
    |        executeTransfer(_from, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardMintableToken':
    |        require(_value != 0 && _value <= balances[_from]);
    |        
  > |        balances[_from] = balances[_from].minus(_value);
    |        balances[_to] = balances[_to].plus(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardMintableToken':
    |        
    |        balances[_from] = balances[_from].minus(_value);
  > |        balances[_to] = balances[_to].plus(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardMintableToken':
    |    */
    |    function mint(address _to, uint256 _value) public onlyMinter canMint {
  > |        totalSupply = totalSupply.plus(_value);
    |        balances[_to] = balances[_to].plus(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardMintableToken':
    |    function mint(address _to, uint256 _value) public onlyMinter canMint {
    |        totalSupply = totalSupply.plus(_value);
  > |        balances[_to] = balances[_to].plus(_value);
    |
    |        emit Transfer(0x0, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardMintableToken':
    |    */
    |    function disableMinting() public onlyMinter canMint {
  > |        mintingDisabled = true;
    |       
    |        emit MintingDisabled();
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(317)

[33mWarning[0m for LockedEther in contract 'TokenSafe':
    | *      has it's own release time and multiple accounts with locked tokens.
    | */
  > |contract TokenSafe {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(68)

[33mWarning[0m for UnhandledException in contract 'TokenSafe':
    |        group.remaining = group.remaining.minus(tokens);
    |        
  > |        if (!token.transfer(_account, tokens)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSafe':
    |        group.remaining = group.remaining.minus(tokens);
    |        
  > |        if (!token.transfer(_account, tokens)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenSafe':
    |        require(tokens > 0);
    |        
  > |        group.balances[_account] = 0;
    |        group.remaining = group.remaining.minus(tokens);
    |        
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenSafe':
    |        
    |        group.balances[_account] = 0;
  > |        group.remaining = group.remaining.minus(tokens);
    |        
    |        if (!token.transfer(_account, tokens)) {
  at /home/jiaming/mavs_srcs/contract@0xd239ff182532c65bd437c65014697ec587e18234.sol(136)


