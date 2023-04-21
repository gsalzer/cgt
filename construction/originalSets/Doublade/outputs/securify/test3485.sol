Processing contract: /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol:CharitySpace
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol:CharitySpaceToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'CharitySpace':
    |    
    |    assert(charitySpaceToken.transfer(msg.sender, _tokensToTransfer));
  > |    assert(donationsAddress.send(msg.value));
    |    
    |    ReceivedETH(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(288)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpace':
    |  }
    |  
  > |  function setup(address _charitySpaceToken) public onlyBy(owner) {
    |    require(started == false);
    |    require(setuped == false);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(215)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpace':
    |  // Confirm donation in BTC, BCH (BCC), LTC, DASH
    |  // All donation has txid from foregin blockchain. In the end of ico we transfer all donations to single address (will be written down on project site) for each block chain. You may easly check that this method was used only to confirm real transactions.
  > |  function manuallyConfirmDonation(address donatorAddress, uint256 tokens, uint256 altValue, string altCurrency, string altTx) public onlyBy(owner) respectTimeFrame {
    |    uint256 _remainingTokens = tokens;
    |    uint256 _tokens = 0;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(295)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |.*/
    |
  > |contract CharitySpace {
    |  
    |  struct Tier {
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  
    |  // Public variables
  > |  CharitySpaceToken public charitySpaceToken;
    |  address public owner;
    |  address public donationsAddress;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  // Public variables
    |  CharitySpaceToken public charitySpaceToken;
  > |  address public owner;
    |  address public donationsAddress;
    |  uint public startDate;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  CharitySpaceToken public charitySpaceToken;
    |  address public owner;
  > |  address public donationsAddress;
    |  uint public startDate;
    |  uint public endDate;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  address public owner;
    |  address public donationsAddress;
  > |  uint public startDate;
    |  uint public endDate;
    |  uint public preIcoEndDate;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  address public donationsAddress;
    |  uint public startDate;
  > |  uint public endDate;
    |  uint public preIcoEndDate;
    |  uint256 public tokensSold = 0;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  uint public startDate;
    |  uint public endDate;
  > |  uint public preIcoEndDate;
    |  uint256 public tokensSold = 0;
    |  bool public setuped = false;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  uint public endDate;
    |  uint public preIcoEndDate;
  > |  uint256 public tokensSold = 0;
    |  bool public setuped = false;
    |  bool public started = false;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  uint public preIcoEndDate;
    |  uint256 public tokensSold = 0;
  > |  bool public setuped = false;
    |  bool public started = false;
    |  bool public live = false;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  uint256 public tokensSold = 0;
    |  bool public setuped = false;
  > |  bool public started = false;
    |  bool public live = false;
    |  uint public preIcoMaxLasts = 7 days;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  bool public setuped = false;
    |  bool public started = false;
  > |  bool public live = false;
    |  uint public preIcoMaxLasts = 7 days;
    |  // Ico tiers variables
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  bool public started = false;
    |  bool public live = false;
  > |  uint public preIcoMaxLasts = 7 days;
    |  // Ico tiers variables
    |  Tier[] public tiers;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  uint public preIcoMaxLasts = 7 days;
    |  // Ico tiers variables
  > |  Tier[] public tiers;
    |  
    |  // Alt currencies hash
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  
    |  // Start CharitySPACE ico!
  > |  function start() public onlyBy(owner) {
    |    require(started == false);
    |    startDate = now;            
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  }
    |  
  > |  function end() public onlyBy(owner) {
    |    require(started == true);
    |    require(live == true);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpace':
    |  }
    |  
  > |  function receiveDonation() public payable respectTimeFrame {
    |    uint256 _value = msg.value;
    |    uint256 _tokensToTransfer = 0;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(249)

[33mWarning[0m for UnhandledException in contract 'CharitySpace':
    |    require(live == true);
    |    require(now > endDate);
  > |    charitySpaceToken.destroyUnsoldTokens();
    |    live = false;
    |    started = true;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(244)

[33mWarning[0m for UnhandledException in contract 'CharitySpace':
    |    tokensSold += _tokensToTransfer;
    |    
  > |    assert(charitySpaceToken.transfer(msg.sender, _tokensToTransfer));
    |    assert(donationsAddress.send(msg.value));
    |    
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(287)

[33mWarning[0m for UnhandledException in contract 'CharitySpace':
    |    
    |    assert(charitySpaceToken.transfer(msg.sender, _tokensToTransfer));
  > |    assert(donationsAddress.send(msg.value));
    |    
    |    ReceivedETH(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(288)

[33mWarning[0m for UnhandledException in contract 'CharitySpace':
    |    assert(_remainingTokens == 0); //to no abuse method when no tokens available. 
    |    tokensSold += tokens;
  > |    assert(charitySpaceToken.transfer(donatorAddress, tokens));
    |    
    |    bytes32 altCurrencyHash = keccak256(altCurrency);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CharitySpace':
    |    require(live == true);
    |    require(now > endDate);
  > |    charitySpaceToken.destroyUnsoldTokens();
    |    live = false;
    |    started = true;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(244)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CharitySpace':
    |    tokensSold += _tokensToTransfer;
    |    
  > |    assert(charitySpaceToken.transfer(msg.sender, _tokensToTransfer));
    |    assert(donationsAddress.send(msg.value));
    |    
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CharitySpace':
    |    assert(_remainingTokens == 0); //to no abuse method when no tokens available. 
    |    tokensSold += tokens;
  > |    assert(charitySpaceToken.transfer(donatorAddress, tokens));
    |    
    |    bytes32 altCurrencyHash = keccak256(altCurrency);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(324)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpace':
    |        _value = 0;
    |      }
  > |      tiers[0].tokensSold += _tokens;
    |      _tokensToTransfer += _tokens;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpace':
    |            _value = 0;
    |          }
  > |          tiers[i].tokensSold += _tokens;
    |          _tokensToTransfer += _tokens;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(276)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    assert(_value == 0);  // Yes, you can't donate 100000 ETH and receive all tokens.
    |    
  > |    tokensSold += _tokensToTransfer;
    |    
    |    assert(charitySpaceToken.transfer(msg.sender, _tokensToTransfer));
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpace':
    |            _tokens = _remainingTokens;
    |          }
  > |          tiers[i].tokensSold += _tokens;
    |          _remainingTokens -= _tokens;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
  > |// Abstract contract for the full ERC 20 Token standard
    |// https://github.com/ethereum/EIPs/issues/20
    |
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    require(started == false);
    |    require(setuped == false);
  > |    charitySpaceToken = CharitySpaceToken(_charitySpaceToken);
    |    Tier memory preico = Tier(2500000 * 10**18, 0, 0.0007 * 10**18);
    |    Tier memory tier1 = Tier(3000000 * 10**18, 0, 0.001 * 10**18);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    Tier memory tier2 = Tier(3500000 * 10**18, 0, 0.0015 * 10**18);
    |    Tier memory tier3 = Tier(7000000 * 10**18, 0, 0.002 * 10**18);
  > |    tiers.push(preico);
    |    tiers.push(tier1);
    |    tiers.push(tier2);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    Tier memory tier3 = Tier(7000000 * 10**18, 0, 0.002 * 10**18);
    |    tiers.push(preico);
  > |    tiers.push(tier1);
    |    tiers.push(tier2);
    |    tiers.push(tier3);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    tiers.push(preico);
    |    tiers.push(tier1);
  > |    tiers.push(tier2);
    |    tiers.push(tier3);
    |    setuped = true;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    tiers.push(tier1);
    |    tiers.push(tier2);
  > |    tiers.push(tier3);
    |    setuped = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    tiers.push(tier2);
    |    tiers.push(tier3);
  > |    setuped = true;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |  function start() public onlyBy(owner) {
    |    require(started == false);
  > |    startDate = now;            
    |    endDate = now + 30 days + 2 hours; // ico duration + backup time
    |    preIcoEndDate = now + preIcoMaxLasts;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    require(started == false);
    |    startDate = now;            
  > |    endDate = now + 30 days + 2 hours; // ico duration + backup time
    |    preIcoEndDate = now + preIcoMaxLasts;
    |    live = true;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    startDate = now;            
    |    endDate = now + 30 days + 2 hours; // ico duration + backup time
  > |    preIcoEndDate = now + preIcoMaxLasts;
    |    live = true;
    |    started = true;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    endDate = now + 30 days + 2 hours; // ico duration + backup time
    |    preIcoEndDate = now + preIcoMaxLasts;
  > |    live = true;
    |    started = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    preIcoEndDate = now + preIcoMaxLasts;
    |    live = true;
  > |    started = true;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    require(now > endDate);
    |    charitySpaceToken.destroyUnsoldTokens();
  > |    live = false;
    |    started = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    charitySpaceToken.destroyUnsoldTokens();
    |    live = false;
  > |    started = true;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |        _tokens = _remainingTokens;
    |      }
  > |      tiers[0].tokensSold += _tokens;
    |      _remainingTokens -= _tokens;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpace':
    |    
    |    assert(_remainingTokens == 0); //to no abuse method when no tokens available. 
  > |    tokensSold += tokens;
    |    assert(charitySpaceToken.transfer(donatorAddress, tokens));
    |    
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(323)

[33mWarning[0m for LockedEther in contract 'CharitySpaceToken':
    |.*/
    |
  > |contract CharitySpaceToken is StandardToken {
    |
    |  /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    }
    |
  > |    function balanceOf(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender)
    |    view public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |
    |  /* Public variables of the token */
  > |  string public name;                   //fancy name: eg Simon Bucks
    |  uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |  string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |  /* Public variables of the token */
    |  string public name;                   //fancy name: eg Simon Bucks
  > |  uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |  string public symbol;                 //An identifier: eg SBX
    |
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |  string public name;                   //fancy name: eg Simon Bucks
    |  uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |  string public symbol;                 //An identifier: eg SBX
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |  string public symbol;                 //An identifier: eg SBX
    |
  > |  address public owner;
    |  address private icoAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'CharitySpaceToken':
    |  }
    |
  > |  function destroyUnsoldTokens() public {
    |    require(msg.sender == icoAddress || msg.sender == owner);
    |    uint256 value = balances[icoAddress];
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |    require(msg.sender == icoAddress || msg.sender == owner);
    |    uint256 value = balances[icoAddress];
  > |    totalSupply -= value;
    |    balances[icoAddress] = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'CharitySpaceToken':
    |    uint256 value = balances[icoAddress];
    |    totalSupply -= value;
  > |    balances[icoAddress] = 0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(158)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |.*/
    |
  > |contract StandardToken is Token {
    |
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender)
    |    view public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(17)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe47b4f1c5fe38e758eca40252c0a18e5b12d8710.sol(95)


