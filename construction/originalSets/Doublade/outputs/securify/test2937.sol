Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:CrowdsaleExt
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:CrowdsaleTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:FractionalERC20Ext
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:MilestonePricing
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:MintableTokenExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:MintedTokenCappedCrowdsaleExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:MjtToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:SMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:UpgradeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol:UpgradeableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |
    |
  > |contract BurnableToken is StandardToken {
    |
    |    using SMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(653)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(256)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'BurnableToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal returns (uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal returns (uint) {
    |        uint c = a + b;
    |        assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    | */
    |contract ERC20Basic {
  > |    uint256 public totalSupply;
    |    function balanceOf(address who) public constant returns (uint256);
    |    function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |
    |    /* Interface declaration */
  > |    function isToken() public constant returns (bool weAre) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'BurnableToken':
    |     * @param _value The amount of token to be burned.
    |     */
  > |    function burn(uint256 _value) public {
    |        require(_value <= balances[msg.sender]);
    |        // no need to require value <= totalSupply, since that would imply the
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(662)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    function transfer(address _to, uint _value) returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(250)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    function transfer(address _to, uint _value) returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        uint _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].minus(_value);
  > |        totalSupply = totalSupply.minus(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(669)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require ((_value != 0) && (allowed[msg.sender][_spender] != 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].minus(_value);
    |        totalSupply = totalSupply.minus(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(668)

[31mViolation[0m for LockedEther in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, BurnableToken, UpgradeableToken {
    |
    |    /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(688)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |
    |        // Upgrade agent reissues the tokens
  > |        upgradeAgent.upgradeFrom(msg.sender, value);
    |        Upgrade(msg.sender, upgradeAgent, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(389)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |
    |        // Bad interface
  > |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
    |        require(upgradeAgent.originalSupply() != totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(409)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleTokenExt':
    |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
  > |        require(upgradeAgent.originalSupply() != totalSupply);
    |
    |        UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |
    |        // Upgrade agent reissues the tokens
  > |        upgradeAgent.upgradeFrom(msg.sender, value);
    |        Upgrade(msg.sender, upgradeAgent, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(389)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |
    |        // Bad interface
  > |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
    |        require(upgradeAgent.originalSupply() != totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(409)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleTokenExt':
    |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
  > |        require(upgradeAgent.originalSupply() != totalSupply);
    |
    |        UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(411)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |     */
    |    function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |        totalSupply = totalSupply.plus(amount);
    |        balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(518)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |        totalSupply = totalSupply.plus(amount);
  > |        balances[receiver] = balances[receiver].plus(amount);
    |
    |        // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(519)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].minus(_value);
  > |        totalSupply = totalSupply.minus(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(669)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, BurnableToken, UpgradeableToken {
    |
    |    /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(688)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |    function transfer(address _to, uint _value) returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    function transfer(address _to, uint _value) returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        uint _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        require ((_value != 0) && (allowed[msg.sender][_spender] != 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        require (value == 0);
    |
  > |        balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |        // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |        // Take tokens out from circulation
  > |        totalSupply = safeSub(totalSupply, value);
    |        totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        // Take tokens out from circulation
    |        totalSupply = safeSub(totalSupply, value);
  > |        totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |        // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].minus(_value);
    |        totalSupply = totalSupply.minus(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(668)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |/**
  > | * This smart contract code is Copyright 2017 TokenMarket Ltd. For more information see https://tokenmarket.net
    | *
    | * Licensed under the Apache License, version 2.0: https://github.com/TokenMarketNet/ico/blob/master/LICENSE.txt
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        require(getUpgradeState() == UpgradeState.Upgrading);
    |
  > |        upgradeAgent = UpgradeAgent(agent);
    |
    |        // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        require(master == 0x0);
    |        require(msg.sender != upgradeMaster);
  > |        upgradeMaster = master;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |    function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) onlyOwner {
  > |        reservedTokensDestinations.push(addr);
    |        reservedTokensDestinationsLen++;
    |        reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentageUnit:inPercentageUnit, inPercentageDecimals: inPercentageDecimals});
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |    function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) onlyOwner {
    |        reservedTokensDestinations.push(addr);
  > |        reservedTokensDestinationsLen++;
    |        reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentageUnit:inPercentageUnit, inPercentageDecimals: inPercentageDecimals});
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |        reservedTokensDestinations.push(addr);
    |        reservedTokensDestinationsLen++;
  > |        reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentageUnit:inPercentageUnit, inPercentageDecimals: inPercentageDecimals});
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |     */
    |    function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |        mintAgents[addr] = state;
    |        MintingAgentChanged(addr, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(530)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |
    |        // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |        releaseAgent = addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |     */
    |    function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |        transferAgents[addr] = state;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(602)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    |     */
    |    function releaseTokenTransfer() public onlyReleaseAgent {
  > |        released = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleTokenExt':
    | *
    | */
  > |contract CrowdsaleTokenExt is ReleasableToken, MintableTokenExt, BurnableToken, UpgradeableToken {
    |
    |    /** Name and symbol were updated. */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(688)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |    bool public halted;
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |    bool public halted;
    |
    |    modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |    // called by the owner on emergency, triggers stopped state
  > |    function halt() external onlyOwner {
    |        halted = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |    // called by the owner on end of emergency, returns to normal state
  > |    function unhalt() external onlyOwner onlyInEmergency {
    |        halted = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    // called by the owner on emergency, triggers stopped state
    |    function halt() external onlyOwner {
  > |        halted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    // called by the owner on end of emergency, returns to normal state
    |    function unhalt() external onlyOwner onlyInEmergency {
  > |        halted = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(180)

[33mWarning[0m for DAO in contract 'MilestonePricing':
    |    function isSane(address _crowdsale) public constant returns(bool) {
    |        CrowdsaleExt crowdsale = CrowdsaleExt(_crowdsale);
  > |        return crowdsale.startsAt() == getPricingStartsAt() && crowdsale.endsAt() == getPricingEndsAt();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1030)

[33mWarning[0m for LockedEther in contract 'MilestonePricing':
    |
    |/// @dev Time milestone based pricing with special support for pre-ico deals.
  > |contract MilestonePricing is PricingStrategy, Ownable {
    |
    |    using SMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(936)

[31mViolation[0m for MissingInputValidation in contract 'MilestonePricing':
    |
    |    // This contains all pre-ICO addresses, and their prices (weis per token)
  > |    mapping (address => uint) public preicoAddresses;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(943)

[31mViolation[0m for MissingInputValidation in contract 'MilestonePricing':
    |    /// @param preicoAddress PresaleFundCollector address
    |    /// @param pricePerToken How many weis one token cost for pre-ico investors
  > |    function setPreicoAddress(address preicoAddress, uint pricePerToken)
    |    public
    |    onlyOwner
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(999)

[31mViolation[0m for MissingInputValidation in contract 'MilestonePricing':
    |
    |    /// @dev Calculate the current price for buy in amount.
  > |    function calculatePrice(uint value, uint weiRaised, uint tokensSold, address msgSender, uint decimals) public constant returns (uint) {
    |
    |        uint multiplier = 10 ** decimals;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1052)

[31mViolation[0m for MissingInputValidation in contract 'MilestonePricing':
    |    }
    |
  > |    function isPresalePurchase(address purchaser) public constant returns (bool) {
    |        if(preicoAddresses[purchaser] > 0)
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1065)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |
    |    /** Interface declaration. */
  > |    function isPricingStrategy() public constant returns (bool) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(898)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |
    |/// @dev Time milestone based pricing with special support for pre-ico deals.
  > |contract MilestonePricing is PricingStrategy, Ownable {
    |
    |    using SMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(936)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |    using SMathLib for uint;
    |
  > |    uint public constant MAX_MILESTONE = 10;
    |
    |    // This contains all pre-ICO addresses, and their prices (weis per token)
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(940)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |    // Milestone 0 is always (0, 0)
    |    // (TODO: change this when we confirm dynamic arrays are explorable)
  > |    Milestone[10] public milestones;
    |
    |    // How many active milestones we have
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(960)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |
    |    // How many active milestones we have
  > |    uint public milestoneCount;
    |
    |    /// @dev Contruction, creating a list of milestones
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(963)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |    /// @dev Iterate through milestones. You reach end of milestones when price = 0
    |    /// @return tuple (time, price)
  > |    function getMilestone(uint n) public constant returns (uint, uint) {
    |        return (milestones[n].time, milestones[n].price);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1008)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |    }
    |
  > |    function getFirstMilestone() private constant returns (Milestone) {
    |        return milestones[0];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1012)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |    }
    |
  > |    function getLastMilestone() private constant returns (Milestone) {
    |        return milestones[milestoneCount-1];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1016)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |    }
    |
  > |    function getPricingStartsAt() public constant returns (uint) {
    |        return getFirstMilestone().time;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1020)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |    }
    |
  > |    function getPricingEndsAt() public constant returns (uint) {
    |        return getLastMilestone().time;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1024)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |    /// @dev Get the current milestone or bail out if we are not in the milestone periods.
    |    /// @return {[type]} [description]
  > |    function getCurrentMilestone() private constant returns (Milestone) {
    |        uint i;
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1035)

[33mWarning[0m for MissingInputValidation in contract 'MilestonePricing':
    |    /// @dev Get the current price.
    |    /// @return The current price or 0 if we are outside milestone period
  > |    function getCurrentPrice() public constant returns (uint result) {
    |        return getCurrentMilestone().price;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1047)

[33mWarning[0m for UnhandledException in contract 'MilestonePricing':
    |    function isSane(address _crowdsale) public constant returns(bool) {
    |        CrowdsaleExt crowdsale = CrowdsaleExt(_crowdsale);
  > |        return crowdsale.startsAt() == getPricingStartsAt() && crowdsale.endsAt() == getPricingEndsAt();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1030)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MilestonePricing':
    |    function isSane(address _crowdsale) public constant returns(bool) {
    |        CrowdsaleExt crowdsale = CrowdsaleExt(_crowdsale);
  > |        return crowdsale.startsAt() == getPricingStartsAt() && crowdsale.endsAt() == getPricingEndsAt();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1030)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestonePricing':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MilestonePricing':
    |    onlyOwner
    |    {
  > |        preicoAddresses[preicoAddress] = pricePerToken;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1003)

[33mWarning[0m for LockedEther in contract 'MintableTokenExt':
    | *
    | */
  > |contract MintableTokenExt is StandardToken, Ownable {
    |
    |    using SMathLib for uint;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(462)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(256)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(283)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |    /** List of agents that are allowed to create new tokens */
  > |    mapping (address => bool) public mintAgents;
    |
    |    event MintingAgentChanged(address addr, bool state  );
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(469)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    }
    |
  > |    mapping (address => ReservedTokensData) public reservedTokensList;
    |    address[] public reservedTokensDestinations;
    |    uint public reservedTokensDestinationsLen = 0;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(484)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    }
    |
  > |    function getReservedTokensListValInTokens(address addr) constant returns (uint inTokens) {
    |        return reservedTokensList[addr].inTokens;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(494)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    }
    |
  > |    function getReservedTokensListValInPercentageUnit(address addr) constant returns (uint inPercentageUnit) {
    |        return reservedTokensList[addr].inPercentageUnit;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(498)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    }
    |
  > |    function getReservedTokensListValInPercentageDecimals(address addr) constant returns (uint inPercentageDecimals) {
    |        return reservedTokensList[addr].inPercentageDecimals;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(502)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |     * Only callably by a crowdsale contract (mint agent).
    |     */
  > |    function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |        totalSupply = totalSupply.plus(amount);
    |        balances[receiver] = balances[receiver].plus(amount);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(517)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |     * Owner can allow a crowdsale contract to mint new tokens.
    |     */
  > |    function setMintAgent(address addr, bool state) onlyOwner canMint public {
    |        mintAgents[addr] = state;
    |        MintingAgentChanged(addr, state);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(529)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal returns (uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal returns (uint) {
    |        uint c = a + b;
    |        assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract ERC20Basic {
  > |    uint256 public totalSupply;
    |    function balanceOf(address who) public constant returns (uint256);
    |    function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |    /* Interface declaration */
  > |    function isToken() public constant returns (bool weAre) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    using SMathLib for uint;
    |
  > |    bool public mintingFinished = false;
    |
    |    /** List of agents that are allowed to create new tokens */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(466)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |    mapping (address => ReservedTokensData) public reservedTokensList;
  > |    address[] public reservedTokensDestinations;
    |    uint public reservedTokensDestinationsLen = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(485)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |    mapping (address => ReservedTokensData) public reservedTokensList;
    |    address[] public reservedTokensDestinations;
  > |    uint public reservedTokensDestinationsLen = 0;
    |
    |    function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(486)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |
    |    function transfer(address _to, uint _value) returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(250)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    function transfer(address _to, uint _value) returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |        uint _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |     */
    |    function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |        totalSupply = totalSupply.plus(amount);
    |        balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(518)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |        totalSupply = totalSupply.plus(amount);
  > |        balances[receiver] = balances[receiver].plus(amount);
    |
    |        // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(519)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |        require ((_value != 0) && (allowed[msg.sender][_spender] != 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |/**
  > | * This smart contract code is Copyright 2017 TokenMarket Ltd. For more information see https://tokenmarket.net
    | *
    | * Licensed under the Apache License, version 2.0: https://github.com/TokenMarketNet/ico/blob/master/LICENSE.txt
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |
    |    function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) onlyOwner {
  > |        reservedTokensDestinations.push(addr);
    |        reservedTokensDestinationsLen++;
    |        reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentageUnit:inPercentageUnit, inPercentageDecimals: inPercentageDecimals});
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) onlyOwner {
    |        reservedTokensDestinations.push(addr);
  > |        reservedTokensDestinationsLen++;
    |        reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentageUnit:inPercentageUnit, inPercentageDecimals: inPercentageDecimals});
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |        reservedTokensDestinations.push(addr);
    |        reservedTokensDestinationsLen++;
  > |        reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentageUnit:inPercentageUnit, inPercentageDecimals: inPercentageDecimals});
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |     */
    |    function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |        mintAgents[addr] = state;
    |        MintingAgentChanged(addr, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(530)

[33mWarning[0m for DAOConstantGas in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Pocket the money
  > |        if(!multisigWallet.send(weiAmount)) throw;
    |
    |        if (isWhiteListed) {
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1350)

[33mWarning[0m for DAOConstantGas in contract 'MintedTokenCappedCrowdsaleExt':
    |        weiRefunded = weiRefunded.plus(weiValue);
    |        Refund(msg.sender, weiValue);
  > |        if (!msg.sender.send(weiValue)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1678)

[33mWarning[0m for LockedEther in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |
  > |contract MintedTokenCappedCrowdsaleExt is CrowdsaleExt {
    |
    |    /* Maximum amount of tokens this crowdsale can sell. */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1782)

[31mViolation[0m for TODReceiver in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Pocket the money
  > |        if(!multisigWallet.send(weiAmount)) throw;
    |
    |        if (isWhiteListed) {
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1350)

[33mWarning[0m for TODReceiver in contract 'MintedTokenCappedCrowdsaleExt':
    |        weiRefunded = weiRefunded.plus(weiValue);
    |        Refund(msg.sender, weiValue);
  > |        if (!msg.sender.send(weiValue)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1678)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Account presale sales separately, so that they do not count against pricing tranches
  > |        uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |
    |        if(tokenAmount == 0) {
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1298)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |            }
    |        } else {
  > |            if(tokenAmount < token.minCap() && tokenAmountOf[receiver] == 0) {
    |                throw;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1320)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |        tokensSold = tokensSold.plus(tokenAmount);
    |
  > |        if(pricingStrategy.isPresalePurchase(receiver)) {
    |            presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1338)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Pocket the money
  > |        if(!multisigWallet.send(weiAmount)) throw;
    |
    |        if (isWhiteListed) {
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1350)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |                for (var j = num + 1; j < joinedCrowdsalesLen; j++) {
    |                    CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |                    crowdsale.updateEarlyParicipantWhitelist(msg.sender, this, tokenAmount);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1362)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
    |
  > |        uint tokenAmount = fullTokens * 10**token.decimals();
    |        uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1388)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
  > |        bytes32 hash = sha256(addr);
    |        if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |        if(customerId == 0) throw;  // UUIDv4 sanity check
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1407)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
    |        bytes32 hash = sha256(addr);
  > |        if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |        if(customerId == 0) throw;  // UUIDv4 sanity check
    |        investInternal(addr, customerId);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1408)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |        // Finalizing is optional. We only call it if we are given a finalizing agent.
    |        if(address(finalizeAgent) != 0) {
  > |            finalizeAgent.finalizeCrowdsale();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1470)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Don't allow setting bad agent
  > |        if(!finalizeAgent.isFinalizeAgent()) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1485)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        CrowdsaleExt lastCrowdsaleCntrct = CrowdsaleExt(lastCrowdsale);
  > |        if (lastCrowdsaleCntrct.finalized()) throw;
    |
    |        startsAt = time;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1576)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        CrowdsaleExt lastCrowdsaleCntrct = CrowdsaleExt(lastCrowdsale);
  > |        if (lastCrowdsaleCntrct.finalized()) throw;
    |
    |        uint num = 0;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1606)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |            for (var j = num + 1; j < joinedCrowdsalesLen; j++) {
    |                CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |                if (time > crowdsale.startsAt()) throw;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1617)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Don't allow setting bad agent
  > |        if(!pricingStrategy.isPricingStrategy()) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1634)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |        weiRefunded = weiRefunded.plus(weiValue);
    |        Refund(msg.sender, weiValue);
  > |        if (!msg.sender.send(weiValue)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1678)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function isFinalizerSane() public constant returns (bool sane) {
  > |        return finalizeAgent.isSane();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1692)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function isPricingSane() public constant returns (bool sane) {
  > |        return pricingStrategy.isSane(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1699)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |        if(finalized) return State.Finalized;
    |        else if (address(finalizeAgent) == 0) return State.Preparing;
  > |        else if (!finalizeAgent.isSane()) return State.Preparing;
    |        else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |        else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1710)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |        else if (address(finalizeAgent) == 0) return State.Preparing;
    |        else if (!finalizeAgent.isSane()) return State.Preparing;
  > |        else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |        else if (block.timestamp < startsAt) return State.PreFunding;
    |        else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1711)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    function assignTokens(address receiver, uint tokenAmount) private {
    |        CrowdsaleTokenExt mintableToken = CrowdsaleTokenExt(token);
  > |        mintableToken.mint(receiver, tokenAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1816)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        CrowdsaleExt lastCrowdsaleCntrct = CrowdsaleExt(lastCrowdsale);
  > |        if (lastCrowdsaleCntrct.finalized()) throw;
    |
    |        maximumSellableTokens = tokens;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1825)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Account presale sales separately, so that they do not count against pricing tranches
  > |        uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised - presaleWeiRaised, tokensSold, msg.sender, token.decimals());
    |
    |        if(tokenAmount == 0) {
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1298)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |            }
    |        } else {
  > |            if(tokenAmount < token.minCap() && tokenAmountOf[receiver] == 0) {
    |                throw;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |        tokensSold = tokensSold.plus(tokenAmount);
    |
  > |        if(pricingStrategy.isPresalePurchase(receiver)) {
    |            presaleWeiRaised = presaleWeiRaised.plus(weiAmount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1338)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Pocket the money
  > |        if(!multisigWallet.send(weiAmount)) throw;
    |
    |        if (isWhiteListed) {
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1350)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |                for (var j = num + 1; j < joinedCrowdsalesLen; j++) {
    |                    CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |                    crowdsale.updateEarlyParicipantWhitelist(msg.sender, this, tokenAmount);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    function preallocate(address receiver, uint fullTokens, uint weiPrice) public onlyOwner {
    |
  > |        uint tokenAmount = fullTokens * 10**token.decimals();
    |        uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1388)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
  > |        bytes32 hash = sha256(addr);
    |        if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |        if(customerId == 0) throw;  // UUIDv4 sanity check
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1407)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    function investWithSignedAddress(address addr, uint128 customerId, uint8 v, bytes32 r, bytes32 s) public payable {
    |        bytes32 hash = sha256(addr);
  > |        if (ecrecover(hash, v, r, s) != signerAddress) throw;
    |        if(customerId == 0) throw;  // UUIDv4 sanity check
    |        investInternal(addr, customerId);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1408)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |        // Finalizing is optional. We only call it if we are given a finalizing agent.
    |        if(address(finalizeAgent) != 0) {
  > |            finalizeAgent.finalizeCrowdsale();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1470)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Don't allow setting bad agent
  > |        if(!finalizeAgent.isFinalizeAgent()) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1485)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        CrowdsaleExt lastCrowdsaleCntrct = CrowdsaleExt(lastCrowdsale);
  > |        if (lastCrowdsaleCntrct.finalized()) throw;
    |
    |        startsAt = time;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1576)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        CrowdsaleExt lastCrowdsaleCntrct = CrowdsaleExt(lastCrowdsale);
  > |        if (lastCrowdsaleCntrct.finalized()) throw;
    |
    |        uint num = 0;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1606)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |            for (var j = num + 1; j < joinedCrowdsalesLen; j++) {
    |                CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |                if (time > crowdsale.startsAt()) throw;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1617)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Don't allow setting bad agent
  > |        if(!pricingStrategy.isPricingStrategy()) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1634)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function isFinalizerSane() public constant returns (bool sane) {
  > |        return finalizeAgent.isSane();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1692)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function isPricingSane() public constant returns (bool sane) {
  > |        return pricingStrategy.isSane(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1699)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |        if(finalized) return State.Finalized;
    |        else if (address(finalizeAgent) == 0) return State.Preparing;
  > |        else if (!finalizeAgent.isSane()) return State.Preparing;
    |        else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |        else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1710)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |        else if (address(finalizeAgent) == 0) return State.Preparing;
    |        else if (!finalizeAgent.isSane()) return State.Preparing;
  > |        else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |        else if (block.timestamp < startsAt) return State.PreFunding;
    |        else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1711)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    function assignTokens(address receiver, uint tokenAmount) private {
    |        CrowdsaleTokenExt mintableToken = CrowdsaleTokenExt(token);
  > |        mintableToken.mint(receiver, tokenAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1816)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        CrowdsaleExt lastCrowdsaleCntrct = CrowdsaleExt(lastCrowdsale);
  > |        if (lastCrowdsaleCntrct.finalized()) throw;
    |
    |        maximumSellableTokens = tokens;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1825)

[31mViolation[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |                joinedCrowdsales.length += 1;
    |            }
  > |            joinedCrowdsales[joinedCrowdsalesLen++] = addrs[iter];
    |            if (iter == addrs.length - 1)
    |                setLastCrowdsale(addrs[iter]);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1556)

[31mViolation[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        }
    |
  > |        endsAt = time;
    |        EndsAtChanged(endsAt);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1621)

[31mViolation[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |
  > |contract MintedTokenCappedCrowdsaleExt is CrowdsaleExt {
    |
    |    /* Maximum amount of tokens this crowdsale can sell. */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1782)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        // Update investor
  > |        investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |        tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1331)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        // Update investor
    |        investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  > |        tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
    |        // Update totals
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1332)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        }
    |
  > |        finalized = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1473)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        uint256 weiValue = investedAmountOf[msg.sender];
    |        if (weiValue == 0) throw;
  > |        investedAmountOf[msg.sender] = 0;
    |        weiRefunded = weiRefunded.plus(weiValue);
    |        Refund(msg.sender, weiValue);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1675)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    // called by the owner on emergency, triggers stopped state
    |    function halt() external onlyOwner {
  > |        halted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    // called by the owner on end of emergency, returns to normal state
    |    function unhalt() external onlyOwner onlyInEmergency {
  > |        halted = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        uint weiAmount = weiPrice * fullTokens; // This can be also 0, we give out tokens for free
    |
  > |        weiRaised = weiRaised.plus(weiAmount);
    |        tokensSold = tokensSold.plus(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1391)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        weiRaised = weiRaised.plus(weiAmount);
  > |        tokensSold = tokensSold.plus(tokenAmount);
    |
    |        investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1392)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        tokensSold = tokensSold.plus(tokenAmount);
    |
  > |        investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |        tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1394)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |        investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  > |        tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
    |        assignTokens(receiver, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1395)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function setFinalizeAgent(FinalizeAgent addr) onlyOwner {
  > |        finalizeAgent = addr;
    |
    |        // Don't allow setting bad agent
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1482)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function setRequireCustomerId(bool value) onlyOwner {
  > |        requireCustomerId = value;
    |        InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1495)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function setRequireSignedAddress(bool value, address _signerAddress) onlyOwner {
  > |        requiredSignedAddress = value;
    |        signerAddress = _signerAddress;
    |        InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1506)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    function setRequireSignedAddress(bool value, address _signerAddress) onlyOwner {
    |        requiredSignedAddress = value;
  > |        signerAddress = _signerAddress;
    |        InvestmentPolicyChanged(requireCustomerId, requiredSignedAddress, signerAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1507)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    function setEarlyParicipantWhitelist(address addr, bool status, uint minCap, uint maxCap) onlyOwner {
    |        if (!isWhiteListed) throw;
  > |        earlyParticipantWhitelist[addr] = WhiteListData({status:status, minCap:minCap, maxCap:maxCap});
    |        Whitelisted(addr, status);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1518)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        uint newMaxCap = earlyParticipantWhitelist[addr].maxCap;
    |        newMaxCap = newMaxCap.minus(tokensBought);
  > |        earlyParticipantWhitelist[addr] = WhiteListData({status:earlyParticipantWhitelist[addr].status, minCap:0, maxCap:newMaxCap});
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1535)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    function updateJoinedCrowdsales(address addr) onlyOwner {
  > |        joinedCrowdsales[joinedCrowdsalesLen++] = addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1539)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    function setLastCrowdsale(address addr) onlyOwner {
  > |        lastCrowdsale = addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1543)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    function clearJoinedCrowdsales() onlyOwner {
  > |        joinedCrowdsalesLen = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1547)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        if (lastCrowdsaleCntrct.finalized()) throw;
    |
  > |        startsAt = time;
    |        StartsAtChanged(startsAt);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1578)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |     */
    |    function setPricingStrategy(MilestonePricing _pricingStrategy) onlyOwner {
  > |        pricingStrategy = _pricingStrategy;
    |
    |        // Don't allow setting bad agent
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1631)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        }
    |
  > |        multisigWallet = addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1653)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    /** This is for manual testing of multisig wallet interaction */
    |    function setOwnerTestValue(uint val) onlyOwner {
  > |        ownerTestValue = val;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1721)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |        if (lastCrowdsaleCntrct.finalized()) throw;
    |
  > |        maximumSellableTokens = tokens;
    |        MaximumSellableTokensChanged(maximumSellableTokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(1827)

[31mViolation[0m for LockedEther in contract 'MjtToken':
    |
    |
  > |contract MjtToken is CrowdsaleTokenExt {
    |
    |    uint public ownersProductCommissionInPerc = 5;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(780)

[33mWarning[0m for UnhandledException in contract 'MjtToken':
    |
    |        // Upgrade agent reissues the tokens
  > |        upgradeAgent.upgradeFrom(msg.sender, value);
    |        Upgrade(msg.sender, upgradeAgent, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(389)

[33mWarning[0m for UnhandledException in contract 'MjtToken':
    |
    |        // Bad interface
  > |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
    |        require(upgradeAgent.originalSupply() != totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(409)

[33mWarning[0m for UnhandledException in contract 'MjtToken':
    |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
  > |        require(upgradeAgent.originalSupply() != totalSupply);
    |
    |        UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MjtToken':
    |
    |        // Upgrade agent reissues the tokens
  > |        upgradeAgent.upgradeFrom(msg.sender, value);
    |        Upgrade(msg.sender, upgradeAgent, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(389)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MjtToken':
    |
    |        // Bad interface
  > |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
    |        require(upgradeAgent.originalSupply() != totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(409)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MjtToken':
    |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
  > |        require(upgradeAgent.originalSupply() != totalSupply);
    |
    |        UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(411)

[31mViolation[0m for UnrestrictedWrite in contract 'MjtToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].minus(_value);
  > |        totalSupply = totalSupply.minus(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(669)

[31mViolation[0m for UnrestrictedWrite in contract 'MjtToken':
    |
    |
  > |contract MjtToken is CrowdsaleTokenExt {
    |
    |    uint public ownersProductCommissionInPerc = 5;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |
    |    function transfer(address _to, uint _value) returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |    function transfer(address _to, uint _value) returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |        uint _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |        require ((_value != 0) && (allowed[msg.sender][_spender] != 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |        require (value == 0);
    |
  > |        balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |        // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |
    |        // Take tokens out from circulation
  > |        totalSupply = safeSub(totalSupply, value);
    |        totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |        // Take tokens out from circulation
    |        totalSupply = safeSub(totalSupply, value);
  > |        totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |        // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].minus(_value);
    |        totalSupply = totalSupply.minus(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(668)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |/**
  > | * This smart contract code is Copyright 2017 TokenMarket Ltd. For more information see https://tokenmarket.net
    | *
    | * Licensed under the Apache License, version 2.0: https://github.com/TokenMarketNet/ico/blob/master/LICENSE.txt
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |        require(getUpgradeState() == UpgradeState.Upgrading);
    |
  > |        upgradeAgent = UpgradeAgent(agent);
    |
    |        // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |        require(master == 0x0);
    |        require(msg.sender != upgradeMaster);
  > |        upgradeMaster = master;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |
    |    function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) onlyOwner {
  > |        reservedTokensDestinations.push(addr);
    |        reservedTokensDestinationsLen++;
    |        reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentageUnit:inPercentageUnit, inPercentageDecimals: inPercentageDecimals});
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |    function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) onlyOwner {
    |        reservedTokensDestinations.push(addr);
  > |        reservedTokensDestinationsLen++;
    |        reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentageUnit:inPercentageUnit, inPercentageDecimals: inPercentageDecimals});
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |        reservedTokensDestinations.push(addr);
    |        reservedTokensDestinationsLen++;
  > |        reservedTokensList[addr] = ReservedTokensData({inTokens:inTokens, inPercentageUnit:inPercentageUnit, inPercentageDecimals: inPercentageDecimals});
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |     */
    |    function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |        totalSupply = totalSupply.plus(amount);
    |        balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(518)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |    function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |        totalSupply = totalSupply.plus(amount);
  > |        balances[receiver] = balances[receiver].plus(amount);
    |
    |        // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(519)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |     */
    |    function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |        mintAgents[addr] = state;
    |        MintingAgentChanged(addr, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(530)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |
    |        // We don't do interface check here as we might want to a normal wallet address to act as a release agent
  > |        releaseAgent = addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |     */
    |    function setTransferAgent(address addr, bool state) onlyOwner inReleaseState(false) public {
  > |        transferAgents[addr] = state;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(602)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |     */
    |    function releaseTokenTransfer() public onlyReleaseAgent {
  > |        released = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |
    |
  > |contract MjtToken is CrowdsaleTokenExt {
    |
    |    uint public ownersProductCommissionInPerc = 5;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |    function setOperatorCommission(uint _value) public onlyOwner {
    |        require(_value >= 0);
  > |        operatorProductCommissionInPerc = _value;
    |        OperatorProductCommissionChanged(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(794)

[33mWarning[0m for UnrestrictedWrite in contract 'MjtToken':
    |    function setOwnersCommission(uint _value) public onlyOwner {
    |        require(_value >= 0);
  > |        ownersProductCommissionInPerc = _value;
    |        OwnersProductCommissionChanged(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(800)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(138)

[33mWarning[0m for LockedEther in contract 'SMathLib':
    | *
    | */
  > |library SMathLib {
    |
    |    function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SMathLib':
    |library SMathLib {
    |
  > |    function times(uint a, uint b) returns (uint) {
    |        uint c = a * b;
    |        assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SMathLib':
    |    }
    |
  > |    function divides(uint a, uint b) returns (uint) {
    |        assert(b > 0);
    |        uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SMathLib':
    |    }
    |
  > |    function minus(uint a, uint b) returns (uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'SMathLib':
    |    }
    |
  > |    function plus(uint a, uint b) returns (uint) {
    |        uint c = a + b;
    |        assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(41)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |    function safeMul(uint a, uint b) internal returns (uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(52)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |    /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(233)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(256)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal returns (uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal returns (uint) {
    |        uint c = a + b;
    |        assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |    uint256 public totalSupply;
    |    function balanceOf(address who) public constant returns (uint256);
    |    function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |    /* Interface declaration */
  > |    function isToken() public constant returns (bool weAre) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function transfer(address _to, uint _value) returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(250)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint _value) returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require ((_value != 0) && (allowed[msg.sender][_spender] != 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(278)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |        // Upgrade agent reissues the tokens
  > |        upgradeAgent.upgradeFrom(msg.sender, value);
    |        Upgrade(msg.sender, upgradeAgent, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(389)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |
    |        // Bad interface
  > |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
    |        require(upgradeAgent.originalSupply() != totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(409)

[33mWarning[0m for DAO in contract 'UpgradeableToken':
    |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
  > |        require(upgradeAgent.originalSupply() != totalSupply);
    |
    |        UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(411)

[33mWarning[0m for LockedEther in contract 'UpgradeableToken':
    | * First envisioned by Golem and Lunyr projects.
    | */
  > |contract UpgradeableToken is StandardToken {
    |
    |    /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(332)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(256)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal returns (uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal returns (uint) {
    |        uint c = a + b;
    |        assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    | */
    |contract ERC20Basic {
  > |    uint256 public totalSupply;
    |    function balanceOf(address who) public constant returns (uint256);
    |    function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |    /* Interface declaration */
  > |    function isToken() public constant returns (bool weAre) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |    /** Contract / person who can set the upgrade path. This can be the same as team multisig wallet, as what it is with its default value. */
  > |    address public upgradeMaster;
    |
    |    /** The next contract where the tokens will be migrated. */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(335)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |    /** The next contract where the tokens will be migrated. */
  > |    UpgradeAgent public upgradeAgent;
    |
    |    /** How many tokens we have upgraded by now. */
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(338)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |
    |    /** How many tokens we have upgraded by now. */
  > |    uint256 public totalUpgraded;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(341)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |     * Get the state of the token upgrade.
    |     */
  > |    function getUpgradeState() public constant returns(UpgradeState) {
    |        if(!canUpgrade()) return UpgradeState.NotAllowed;
    |        else if(address(upgradeAgent) == 0x00) return UpgradeState.WaitingForAgent;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(419)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |     * This allows us to set a new owner for the upgrade mechanism.
    |     */
  > |    function setUpgradeMaster(address master) public {
    |        require(master == 0x0);
    |        require(msg.sender != upgradeMaster);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(431)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeableToken':
    |     * Child contract can enable to provide the condition when the upgrade can begun.
    |     */
  > |    function canUpgrade() public constant returns(bool) {
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(440)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |        // Upgrade agent reissues the tokens
  > |        upgradeAgent.upgradeFrom(msg.sender, value);
    |        Upgrade(msg.sender, upgradeAgent, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(389)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |
    |        // Bad interface
  > |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
    |        require(upgradeAgent.originalSupply() != totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(409)

[33mWarning[0m for UnhandledException in contract 'UpgradeableToken':
    |        require(!upgradeAgent.isUpgradeAgent());
    |        // Make sure that token supplies match in source and target
  > |        require(upgradeAgent.originalSupply() != totalSupply);
    |
    |        UpgradeAgentSet(upgradeAgent);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(411)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |    function transfer(address _to, uint _value) returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(250)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |    function transfer(address _to, uint _value) returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |        uint _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |        require (value == 0);
    |
  > |        balances[msg.sender] = safeSub(balances[msg.sender], value);
    |
    |        // Take tokens out from circulation
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(382)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |
    |        // Take tokens out from circulation
  > |        totalSupply = safeSub(totalSupply, value);
    |        totalUpgraded = safeAdd(totalUpgraded, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(385)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |        // Take tokens out from circulation
    |        totalSupply = safeSub(totalSupply, value);
  > |        totalUpgraded = safeAdd(totalUpgraded, value);
    |
    |        // Upgrade agent reissues the tokens
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(386)

[31mViolation[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |        require(getUpgradeState() == UpgradeState.Upgrading);
    |
  > |        upgradeAgent = UpgradeAgent(agent);
    |
    |        // Bad interface
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |        require ((_value != 0) && (allowed[msg.sender][_spender] != 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'UpgradeableToken':
    |        require(master == 0x0);
    |        require(msg.sender != upgradeMaster);
  > |        upgradeMaster = master;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc105c8c7f44128594e49b8300d16b718567863ec.sol(434)


