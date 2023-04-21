Processing contract: /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol:HeroCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(45)

[33mWarning[0m for DAOConstantGas in contract 'HeroCoin':
    |        //reverse calculate the amount to pay out
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(payout);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(366)

[33mWarning[0m for DAOConstantGas in contract 'HeroCoin':
    |    requireState(States.Operational)
    |    {
  > |        msg.sender.transfer(_amount);
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(374)

[33mWarning[0m for LockedEther in contract 'HeroCoin':
    |}
    |
  > |contract HeroCoin is StandardToken {
    |
    |    // data structures
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(123)

[31mViolation[0m for TODAmount in contract 'HeroCoin':
    |        //reverse calculate the amount to pay out
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(payout);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(366)

[33mWarning[0m for TODAmount in contract 'HeroCoin':
    |    requireState(States.Operational)
    |    {
  > |        msg.sender.transfer(_amount);
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(374)

[33mWarning[0m for TODReceiver in contract 'HeroCoin':
    |        //reverse calculate the amount to pay out
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(payout);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(366)

[33mWarning[0m for TODReceiver in contract 'HeroCoin':
    |    requireState(States.Operational)
    |    {
  > |        msg.sender.transfer(_amount);
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(374)

[33mWarning[0m for UnhandledException in contract 'HeroCoin':
    |        //reverse calculate the amount to pay out
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(payout);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(366)

[33mWarning[0m for UnhandledException in contract 'HeroCoin':
    |    requireState(States.Operational)
    |    {
  > |        msg.sender.transfer(_amount);
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(374)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HeroCoin':
    |    requireState(States.Operational)
    |    {
  > |        msg.sender.transfer(_amount);
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        uint256 heroCoinIncrease = msg.value * ETH_HEROCOIN;
    |        balances[initialHolder] -= heroCoinIncrease;
  > |        balances[msg.sender] += heroCoinIncrease;
    |        Credited(msg.sender, balances[msg.sender], msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |    {
    |        StateTransition(state, _newState);
  > |        state = _newState;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        require(block.number + silencePeriod < _newEndBlock);
    |        require(block.number < _newEndBlock);
  > |        weiICOMinimum = _newWeiICOMinimum;
    |        weiICOMaximum = _newWeiICOMaximum;
    |        silencePeriod = _silencePeriod;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        require(block.number < _newEndBlock);
    |        weiICOMinimum = _newWeiICOMinimum;
  > |        weiICOMaximum = _newWeiICOMaximum;
    |        silencePeriod = _silencePeriod;
    |        endBlock = _newEndBlock;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        weiICOMinimum = _newWeiICOMinimum;
    |        weiICOMaximum = _newWeiICOMaximum;
  > |        silencePeriod = _silencePeriod;
    |        endBlock = _newEndBlock;
    |        // initial conversion rate of ETH_HEROCOIN set now, this is used during the Ico phase.
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        weiICOMaximum = _newWeiICOMaximum;
    |        silencePeriod = _silencePeriod;
  > |        endBlock = _newEndBlock;
    |        // initial conversion rate of ETH_HEROCOIN set now, this is used during the Ico phase.
    |        ETH_HEROCOIN = ((totalSupply * percentForSale) / 100) / weiICOMaximum;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        endBlock = _newEndBlock;
    |        // initial conversion rate of ETH_HEROCOIN set now, this is used during the Ico phase.
  > |        ETH_HEROCOIN = ((totalSupply * percentForSale) / 100) / weiICOMaximum;
    |        // check pointMultiplier
    |        moveToState(States.ValuationSet);
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        require(block.number < endBlock);
    |        require(block.number + silencePeriod < endBlock);
  > |        startAcceptingFundsBlock = block.number + silencePeriod;
    |        moveToState(States.Ico);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |    {
    |        uint256 soldcoins = this.balance * ETH_HEROCOIN;
  > |        totalSupply = soldcoins * 100 / percentForSale;
    |        balances[initialHolder] = totalSupply - soldcoins;
    |        //slashing the initial supply, so that the ico is selling 30% total
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        uint256 soldcoins = this.balance * ETH_HEROCOIN;
    |        totalSupply = soldcoins * 100 / percentForSale;
  > |        balances[initialHolder] = totalSupply - soldcoins;
    |        //slashing the initial supply, so that the ico is selling 30% total
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        //    requireState(States.Ico)
    |    {
  > |        whitelist[_whitelisted] = true;
    |        Whitelisted(_whitelisted);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        uint256 payout = balances[msg.sender] / ETH_HEROCOIN;
    |        //reverse calculate the amount to pay out
  > |        balances[msg.sender] = 0;
    |        msg.sender.transfer(payout);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        if (_value != 0) {
    |            Transfer(_sender, rakeEventPlaceholderAddress, _value);
  > |            balances[_sender] -= _value;
    |            unclaimedRakes += _value;
    |            //   calc amount of points from total:
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        if (owing != 0) {
    |            unclaimedRakes -= owing;
  > |            balances[_account] += owing;
    |            Transfer(rakeEventPlaceholderAddress, _account, owing);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |        }
    |        //also if 0 this needs to be called, since lastRakePoints need the right value
  > |        lastRakePoints[_account] = totalRakePoints;
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroCoin':
    |    function registerContest()
    |    {
  > |        contests[msg.sender] = true;
    |        ContestAnnouncement(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(492)

[33mWarning[0m for LockedEther in contract 'SafeMath':
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(1)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe477292f1b3268687a29376116b0ed27a9c76170.sol(106)


