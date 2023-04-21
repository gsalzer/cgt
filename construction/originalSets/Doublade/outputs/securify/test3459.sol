Processing contract: /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol:RandoCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(94)

[33mWarning[0m for DAOConstantGas in contract 'RandoCoin':
    |
    |        revenue = amount.mul(sellPrice);
  > |        msg.sender.transfer(revenue);
    |        
    |        Transfer(msg.sender, this, amount);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(305)

[33mWarning[0m for LockedEther in contract 'RandoCoin':
    |}
    |
  > |contract RandoCoin is StandardToken {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(221)

[33mWarning[0m for TODReceiver in contract 'RandoCoin':
    |
    |        revenue = amount.mul(sellPrice);
  > |        msg.sender.transfer(revenue);
    |        
    |        Transfer(msg.sender, this, amount);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(305)

[33mWarning[0m for UnhandledException in contract 'RandoCoin':
    |
    |        revenue = amount.mul(sellPrice);
  > |        msg.sender.transfer(revenue);
    |        
    |        Transfer(msg.sender, this, amount);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'RandoCoin':
    |    function sell(uint amount) public requireNotExpired requireCooldown returns (uint revenue){
    |        require(balances[msg.sender] >= amount);
  > |        balances[this] += amount;
    |        balances[msg.sender] -= amount;
    |
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        // I know this isn't good but
    |        // Open challenge if a miner can break this
  > |        sellPrice = shittyRand(0);
    |        buyPrice = shittyRand(1);
    |        
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(331)

[31mViolation[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        // Open challenge if a miner can break this
    |        sellPrice = shittyRand(0);
  > |        buyPrice = shittyRand(1);
    |        
    |        // Set minimum prices to avoid miniscule amounts
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(332)

[31mViolation[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        // Set minimum prices to avoid miniscule amounts
    |        if (sellPrice < PRICE_MIN) {
  > |            sellPrice = PRICE_MIN;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(336)

[31mViolation[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        
    |        if (buyPrice < PRICE_MIN) {
  > |            buyPrice = PRICE_MIN;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(340)

[31mViolation[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        SellPriceChanged(sellPrice);
    |
  > |        oldPriceChangeBlock = priceChangeBlock;
    |        priceChangeBlock = block.number + BLOCK_WAIT_TIME;
    |        
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(346)

[31mViolation[0m for UnrestrictedWrite in contract 'RandoCoin':
    |
    |        oldPriceChangeBlock = priceChangeBlock;
  > |        priceChangeBlock = block.number + BLOCK_WAIT_TIME;
    |        
    |        // Reward the person who refreshed priceChangeBlock 0.1 RAND
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'RandoCoin':
    |    // until a block which gave favorable prices.
    |    function waitMoreTime() internal {
  > |        priceChangeBlock = block.number + BLOCK_WAIT_TIME;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |  function increaseApproval(address _spender, uint _addedValue) public
    |returns (bool) {
  > |    allowed[msg.sender][_spender] =
    |allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        amount = msg.value / buyPrice;
    |        require(balances[this] >= amount);
  > |        balances[msg.sender] = balances[msg.sender].add(amount);
    |        balances[this] = balances[this].sub(amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        require(balances[msg.sender] >= amount);
    |        balances[this] += amount;
  > |        balances[msg.sender] -= amount;
    |
    |        revenue = amount.mul(sellPrice);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        uint reward = 100;
    |        if (balances[this] > reward) {
  > |            balances[msg.sender] = balances[msg.sender].add(reward);
    |            balances[this] = balances[this].sub(reward);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        
    |        // Initial prices in wei per rando
  > |        buyPrice = PRICE_MID;
    |        sellPrice = PRICE_MID;
    |        
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        // Initial prices in wei per rando
    |        buyPrice = PRICE_MID;
  > |        sellPrice = PRICE_MID;
    |        
    |        // First time change is roughly 1 hr (250 blocks)
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        // First time change is roughly 1 hr (250 blocks)
    |        // This gives more time for people to invest in the initial price
  > |        oldPriceChangeBlock = block.number;
    |        priceChangeBlock = block.number + INIT_BLOCK_WAIT;
    |        isInitialized = true;
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        // This gives more time for people to invest in the initial price
    |        oldPriceChangeBlock = block.number;
  > |        priceChangeBlock = block.number + INIT_BLOCK_WAIT;
    |        isInitialized = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'RandoCoin':
    |        oldPriceChangeBlock = block.number;
    |        priceChangeBlock = block.number + INIT_BLOCK_WAIT;
  > |        isInitialized = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(286)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval(address _spender, uint _addedValue) public
    |returns (bool) {
  > |    allowed[msg.sender][_spender] =
    |allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe2c78ad6bbbd5bda29b98d47fef86975787cdbc4.sol(213)


