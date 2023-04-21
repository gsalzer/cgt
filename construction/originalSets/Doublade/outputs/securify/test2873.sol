Processing contract: /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol:AlsToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AlsToken':
    |}
    |
  > |contract AlsToken is StandardToken, Owned {
    |
    |    string public constant name = "CryptoAlias";
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require (_to != 0x0);                                           // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceMap[_from] >= _value);                           // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256) {
    |        return balanceMap[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint) {
    |        return allowanceMap[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'AlsToken':
    |     * Can be invoked only by the owner.
    |     * Can be called only once. Once set, the ICO address can not be changed. Any subsequent calls to this method will be ignored. */
  > |    function setIcoAddress(address _icoAddress) external onlyOwner {
    |        require (icoAddress == address(0x0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function allocateTeamAndPartnerTokens(address _teamAddress, address _partnersAddress) external onlyOwner {
    |        require (icoTokensWereBurned);
    |        require (!teamTokensWereAllocated);
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function safeDiv(uint a, uint b) internal pure returns (uint) {
    |        require(b > 0);
    |        uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal pure returns (uint) {
    |        require(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal pure returns (uint) {
    |        uint c = a + b;
    |        require(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |
    |    /* Interface declaration */
  > |    function isToken() public pure returns (bool) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function totalSupply() public constant returns (uint256) {
    |        return globalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |    }
    |
  > |    function getOwner() public constant returns (address currentOwner) {
    |        return owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |contract AlsToken is StandardToken, Owned {
    |
  > |    string public constant name = "CryptoAlias";
    |    string public constant symbol = "ALS";
    |    uint8 public constant decimals = 18;        // Same as ETH
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |
    |    string public constant name = "CryptoAlias";
  > |    string public constant symbol = "ALS";
    |    uint8 public constant decimals = 18;        // Same as ETH
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |    string public constant name = "CryptoAlias";
    |    string public constant symbol = "ALS";
  > |    uint8 public constant decimals = 18;        // Same as ETH
    |
    |    address public icoAddress;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |    uint8 public constant decimals = 18;        // Same as ETH
    |
  > |    address public icoAddress;
    |
    |    // ICO end time in seconds since epoch.
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |    // ICO end time in seconds since epoch.
    |    // Equivalent to Tuesday, February 20th 2018, 3 pm London time.
  > |    uint256 public constant icoEndTime = 1519138800;
    |
    |    // 1 million ALS with 18 decimals [10 to the power of (6 + 18) tokens].
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'AlsToken':
    |
    |    // Burns the tokens that were not sold during the ICO. Can be invoked only after the ICO ends.
  > |    function burnIcoTokens() external onlyAfterIco {
    |        require (!icoTokensWereBurned);
    |        icoTokensWereBurned = true;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'AlsToken':
    |        require (balanceMap[_to] + _value >= balanceMap[_to]);            // Check for overflows
    |        require (_value <= allowanceMap[_from][msg.sender]);               // Check allowance
  > |        balanceMap[_from] = safeSub(balanceMap[_from], _value);           // Subtract from the sender
    |        balanceMap[_to] = safeAdd(balanceMap[_to], _value);               // Add the same to the recipient
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'AlsToken':
    |        require (_value <= allowanceMap[_from][msg.sender]);               // Check allowance
    |        balanceMap[_from] = safeSub(balanceMap[_from], _value);           // Subtract from the sender
  > |        balanceMap[_to] = safeAdd(balanceMap[_to], _value);               // Add the same to the recipient
    |
    |        uint256 _allowance = allowanceMap[_from][msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'AlsToken':
    |    function burnIcoTokens() external onlyAfterIco {
    |        require (!icoTokensWereBurned);
  > |        icoTokensWereBurned = true;
    |
    |        uint256 tokensToBurn = balanceMap[icoAddress];
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'AlsToken':
    |        if (tokensToBurn > 0)
    |        {
  > |            balanceMap[icoAddress] = 0;
    |            globalSupply = safeSub(globalSupply, tokensToBurn);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'AlsToken':
    |        {
    |            balanceMap[icoAddress] = 0;
  > |            globalSupply = safeSub(globalSupply, tokensToBurn);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'AlsToken':
    |
    |        balanceMap[_teamAddress] = oneTenth;
  > |        globalSupply = safeAdd(globalSupply, oneTenth);
    |
    |        balanceMap[_partnersAddress] = oneTenth;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'AlsToken':
    |        globalSupply = safeAdd(globalSupply, oneTenth);
    |
  > |        balanceMap[_partnersAddress] = oneTenth;
    |        globalSupply = safeAdd(globalSupply, oneTenth);
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(240)

[31mViolation[0m for UnrestrictedWrite in contract 'AlsToken':
    |
    |        balanceMap[_partnersAddress] = oneTenth;
  > |        globalSupply = safeAdd(globalSupply, oneTenth);
    |
    |        teamTokensWereAllocated = true;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(241)

[31mViolation[0m for UnrestrictedWrite in contract 'AlsToken':
    |        globalSupply = safeAdd(globalSupply, oneTenth);
    |
  > |        teamTokensWereAllocated = true;
    |
    |        TeamAndPartnerTokensAllocated(_teamAddress, _partnersAddress);
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'AlsToken':
    |        require (balanceMap[msg.sender] >= _value);                      // Check if the sender has enough
    |        require (balanceMap[_to] + _value >= balanceMap[_to]);            // Check for overflows
  > |        balanceMap[msg.sender] = safeSub(balanceMap[msg.sender], _value); // Subtract from the sender
    |        balanceMap[_to] = safeAdd(balanceMap[_to], _value);               // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                              // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'AlsToken':
    |
    |        uint256 _allowance = allowanceMap[_from][msg.sender];
  > |        allowanceMap[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'AlsToken':
    |    function approve(address _spender, uint _value) public returns (bool) {
    |        require ((_value == 0) || (allowanceMap[msg.sender][_spender] == 0));
  > |        allowanceMap[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'AlsToken':
    |
    |    function transferOwnership(address newOwner) external onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'AlsToken':
    |        require (icoAddress == address(0x0));
    |
  > |        icoAddress = _icoAddress;
    |        balanceMap[icoAddress] = 80 * oneMillionAls;
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'AlsToken':
    |
    |        icoAddress = _icoAddress;
  > |        balanceMap[icoAddress] = 80 * oneMillionAls;
    |
    |        IcoAddressSet(icoAddress);
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'AlsToken':
    |        uint256 oneTenth = safeDiv(globalSupply, 8);
    |
  > |        balanceMap[_teamAddress] = oneTenth;
    |        globalSupply = safeAdd(globalSupply, oneTenth);
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(237)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address internal owner;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(153)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function getOwner() public constant returns (address currentOwner) {
    |        return owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address newOwner) external onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(167)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |
    |    function safeMul(uint a, uint b) internal pure returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(43)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |    uint256 internal globalSupply;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require (_to != 0x0);                                           // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceMap[_from] >= _value);                           // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256) {
    |        return balanceMap[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint) {
    |        return allowanceMap[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal pure returns (uint) {
    |        require(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal pure returns (uint) {
    |        uint c = a + b;
    |        require(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |    /* Interface declaration */
  > |    function isToken() public pure returns (bool) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function totalSupply() public constant returns (uint256) {
    |        return globalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require (balanceMap[_to] + _value >= balanceMap[_to]);            // Check for overflows
    |        require (_value <= allowanceMap[_from][msg.sender]);               // Check allowance
  > |        balanceMap[_from] = safeSub(balanceMap[_from], _value);           // Subtract from the sender
    |        balanceMap[_to] = safeAdd(balanceMap[_to], _value);               // Add the same to the recipient
    |
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require (_value <= allowanceMap[_from][msg.sender]);               // Check allowance
    |        balanceMap[_from] = safeSub(balanceMap[_from], _value);           // Subtract from the sender
  > |        balanceMap[_to] = safeAdd(balanceMap[_to], _value);               // Add the same to the recipient
    |
    |        uint256 _allowance = allowanceMap[_from][msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require (balanceMap[msg.sender] >= _value);                      // Check if the sender has enough
    |        require (balanceMap[_to] + _value >= balanceMap[_to]);            // Check for overflows
  > |        balanceMap[msg.sender] = safeSub(balanceMap[msg.sender], _value); // Subtract from the sender
    |        balanceMap[_to] = safeAdd(balanceMap[_to], _value);               // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                              // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        uint256 _allowance = allowanceMap[_from][msg.sender];
  > |        allowanceMap[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint _value) public returns (bool) {
    |        require ((_value == 0) || (allowanceMap[msg.sender][_spender] == 0));
  > |        allowanceMap[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbcec57361649e5da917efa9f992fbca0a2529350.sol(143)


