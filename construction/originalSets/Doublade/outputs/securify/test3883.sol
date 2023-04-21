Processing contract: /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol:NeuroDAO
Processing contract: /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol:PresaleBREMP
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is owned {
    |
    |    uint constant totalTokens    = 25000000;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    
    |    uint                         public totalSupply;
  > |    mapping (address => uint256) public balanceOf;
    |    address                      public neurodao;
    |    uint                         public etherPrice;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint                         public etherPrice;
    |
  > |    mapping (address => bool)    public holders;
    |    mapping (uint => address)    public holdersIter;
    |    uint                         public numberOfHolders;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    mapping (address => bool)    public holders;
  > |    mapping (uint => address)    public holdersIter;
    |    uint                         public numberOfHolders;
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint                         public collectedNDAO;
    |    
  > |    mapping (address => bool)    public gotBonus;
    |    
    |    enum State {Disabled, Presale, Bonuses, Enabled}
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    }
    |
  > |    function setEtherPrice(uint _etherPrice) public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
    |        etherPrice = _etherPrice;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    }
    |
  > |    function startPresale(address _presaleOwner) public onlyOwner {
    |        require(state == State.Disabled);
    |        presaleOwner = _presaleOwner;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract owned {
    |
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    address public owner;
  > |    address public newOwner;
    |
    |    function owned() payable {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    }
    |
  > |    function changeOwner(address _owner) onlyOwner public {
    |        require(_owner != 0);
    |        newOwner = _owner;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    }
    |    
  > |    function confirmOwner() public {
    |        require(newOwner == msg.sender);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint constant totalLimitUSD  = 500000;
    |    
  > |    uint                         public totalSupply;
    |    mapping (address => uint256) public balanceOf;
    |    address                      public neurodao;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint                         public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  > |    address                      public neurodao;
    |    uint                         public etherPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    mapping (address => uint256) public balanceOf;
    |    address                      public neurodao;
  > |    uint                         public etherPrice;
    |
    |    mapping (address => bool)    public holders;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    mapping (address => bool)    public holders;
    |    mapping (uint => address)    public holdersIter;
  > |    uint                         public numberOfHolders;
    |    
    |    uint                         public collectedUSD;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint                         public numberOfHolders;
    |    
  > |    uint                         public collectedUSD;
    |    address                      public presaleOwner;
    |    uint                         public collectedNDAO;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    
    |    uint                         public collectedUSD;
  > |    address                      public presaleOwner;
    |    uint                         public collectedNDAO;
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint                         public collectedUSD;
    |    address                      public presaleOwner;
  > |    uint                         public collectedNDAO;
    |    
    |    mapping (address => bool)    public gotBonus;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    
    |    enum State {Disabled, Presale, Bonuses, Enabled}
  > |    State                        public state;
    |
    |    modifier enabledState {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    }
    |    
  > |    function startBonuses() public onlyOwner {
    |        require(state == State.Presale);
    |        state = State.Bonuses;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    }
    |    
  > |    function finishCrowdsale() public onlyOwner {
    |        require(state == State.Bonuses);
    |        state = State.Enabled;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function changeOwner(address _owner) onlyOwner public {
    |        require(_owner != 0);
  > |        newOwner = _owner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function confirmOwner() public {
    |        require(newOwner == msg.sender);
  > |        owner = newOwner;
    |        delete newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(newOwner == msg.sender);
    |        owner = newOwner;
  > |        delete newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function setEtherPrice(uint _etherPrice) public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
  > |        etherPrice = _etherPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function startPresale(address _presaleOwner) public onlyOwner {
    |        require(state == State.Disabled);
  > |        presaleOwner = _presaleOwner;
    |        state = State.Presale;
    |        NewState(state);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(state == State.Disabled);
    |        presaleOwner = _presaleOwner;
  > |        state = State.Presale;
    |        NewState(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function startBonuses() public onlyOwner {
    |        require(state == State.Presale);
  > |        state = State.Bonuses;
    |        NewState(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function finishCrowdsale() public onlyOwner {
    |        require(state == State.Bonuses);
  > |        state = State.Enabled;
    |        NewState(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(116)

[31mViolation[0m for DAOConstantGas in contract 'PresaleBREMP':
    |                valueUSD = totalLimitUSD - collectedUSD;
    |                valueWei = valueUSD * 1 ether / etherPrice;
  > |                require(msg.sender.call.gas(3000000).value(msg.value - valueWei)());
    |                collectedUSD = totalLimitUSD;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(131)

[33mWarning[0m for DAOConstantGas in contract 'PresaleBREMP':
    |    function withdraw() public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(238)

[33mWarning[0m for DAOConstantGas in contract 'PresaleBREMP':
    |    
    |    function killMe() public onlyOwner {
  > |        presaleOwner.transfer(this.balance);
    |        selfdestruct(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(242)

[33mWarning[0m for LockedEther in contract 'PresaleBREMP':
    |}
    |
  > |contract PresaleBREMP is Token {
    |    
    |    function PresaleBREMP(address _neurodao, uint _etherPrice)
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(231)

[31mViolation[0m for TODAmount in contract 'PresaleBREMP':
    |                valueUSD = totalLimitUSD - collectedUSD;
    |                valueWei = valueUSD * 1 ether / etherPrice;
  > |                require(msg.sender.call.gas(3000000).value(msg.value - valueWei)());
    |                collectedUSD = totalLimitUSD;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(131)

[31mViolation[0m for TODAmount in contract 'PresaleBREMP':
    |    function withdraw() public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(238)

[31mViolation[0m for TODAmount in contract 'PresaleBREMP':
    |    
    |    function killMe() public onlyOwner {
  > |        presaleOwner.transfer(this.balance);
    |        selfdestruct(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(242)

[31mViolation[0m for TODReceiver in contract 'PresaleBREMP':
    |    
    |    function killMe() public onlyOwner {
  > |        presaleOwner.transfer(this.balance);
    |        selfdestruct(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(242)

[33mWarning[0m for TODReceiver in contract 'PresaleBREMP':
    |                valueUSD = totalLimitUSD - collectedUSD;
    |                valueWei = valueUSD * 1 ether / etherPrice;
  > |                require(msg.sender.call.gas(3000000).value(msg.value - valueWei)());
    |                collectedUSD = totalLimitUSD;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(131)

[33mWarning[0m for TODReceiver in contract 'PresaleBREMP':
    |    function withdraw() public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(238)

[33mWarning[0m for UnhandledException in contract 'PresaleBREMP':
    |                valueUSD = totalLimitUSD - collectedUSD;
    |                valueWei = valueUSD * 1 ether / etherPrice;
  > |                require(msg.sender.call.gas(3000000).value(msg.value - valueWei)());
    |                collectedUSD = totalLimitUSD;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(131)

[33mWarning[0m for UnhandledException in contract 'PresaleBREMP':
    |            }
    |            tokens = valueUSD * 100 / centsForToken;
  > |            if (NeuroDAO(neurodao).balanceOf(msg.sender) >= 1000) {
    |                collectedNDAO += tokens;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(147)

[33mWarning[0m for UnhandledException in contract 'PresaleBREMP':
    |            require(gotBonus[msg.sender] != true);
    |            gotBonus[msg.sender] = true;
  > |            uint freezedBalance = NeuroDAO(neurodao).freezedBalanceOf(msg.sender);
    |            if (freezedBalance >= 1000) {
    |                tokens = (neurodaoTokens / 10) * freezedBalance / 21000000 + (9 * neurodaoTokens / 10) * balanceOf[msg.sender] / collectedNDAO;                
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(154)

[33mWarning[0m for UnhandledException in contract 'PresaleBREMP':
    |    function withdraw() public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(238)

[33mWarning[0m for UnhandledException in contract 'PresaleBREMP':
    |    
    |    function killMe() public onlyOwner {
  > |        presaleOwner.transfer(this.balance);
    |        selfdestruct(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresaleBREMP':
    |            }
    |            tokens = valueUSD * 100 / centsForToken;
  > |            if (NeuroDAO(neurodao).balanceOf(msg.sender) >= 1000) {
    |                collectedNDAO += tokens;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresaleBREMP':
    |            require(gotBonus[msg.sender] != true);
    |            gotBonus[msg.sender] = true;
  > |            uint freezedBalance = NeuroDAO(neurodao).freezedBalanceOf(msg.sender);
    |            if (freezedBalance >= 1000) {
    |                tokens = (neurodaoTokens / 10) * freezedBalance / 21000000 + (9 * neurodaoTokens / 10) * balanceOf[msg.sender] / collectedNDAO;                
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresaleBREMP':
    |    function withdraw() public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PresaleBREMP':
    |    
    |    function killMe() public onlyOwner {
  > |        presaleOwner.transfer(this.balance);
    |        selfdestruct(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |                valueWei = valueUSD * 1 ether / etherPrice;
    |                require(msg.sender.call.gas(3000000).value(msg.value - valueWei)());
  > |                collectedUSD = totalLimitUSD;
    |            } else {
    |                collectedUSD += valueUSD;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |                collectedUSD = totalLimitUSD;
    |            } else {
  > |                collectedUSD += valueUSD;
    |            }
    |            uint centsForToken;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |            tokens = valueUSD * 100 / centsForToken;
    |            if (NeuroDAO(neurodao).balanceOf(msg.sender) >= 1000) {
  > |                collectedNDAO += tokens;
    |            }
    |            tokensSource = this;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        if (holders[_to] != true) {
  > |            holders[_to] = true;
    |            holdersIter[numberOfHolders++] = _to;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        if (holders[_to] != true) {
    |            holders[_to] = true;
  > |            holdersIter[numberOfHolders++] = _to;
    |        }
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        }
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        require(allowed[_from][msg.sender] >= _value);
    |        if (holders[_to] != true) {
  > |            holders[_to] = true;
    |            holdersIter[numberOfHolders++] = _to;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        if (holders[_to] != true) {
    |            holders[_to] = true;
  > |            holdersIter[numberOfHolders++] = _to;
    |        }
    |        balanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |            holdersIter[numberOfHolders++] = _to;
    |        }
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        }
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        } else if (state == State.Bonuses) {
    |            require(gotBonus[msg.sender] != true);
  > |            gotBonus[msg.sender] = true;
    |            uint freezedBalance = NeuroDAO(neurodao).freezedBalanceOf(msg.sender);
    |            if (freezedBalance >= 1000) {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        require(balanceOf[tokensSource] >= tokens);        
    |        if (holders[msg.sender] != true) {
  > |            holders[msg.sender] = true;
    |            holdersIter[numberOfHolders++] = msg.sender;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |            holdersIter[numberOfHolders++] = msg.sender;
    |        }
  > |        balanceOf[msg.sender] += tokens;
    |        balanceOf[tokensSource] -= tokens;
    |        Transfer(tokensSource, msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |            holdersIter[numberOfHolders++] = _to;
    |        }
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |
    |    function approve(address _spender, uint _value) public enabledState {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |    function changeOwner(address _owner) onlyOwner public {
    |        require(_owner != 0);
  > |        newOwner = _owner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |    function confirmOwner() public {
    |        require(newOwner == msg.sender);
  > |        owner = newOwner;
    |        delete newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        require(newOwner == msg.sender);
    |        owner = newOwner;
  > |        delete newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |    function setEtherPrice(uint _etherPrice) public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
  > |        etherPrice = _etherPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |    function startPresale(address _presaleOwner) public onlyOwner {
    |        require(state == State.Disabled);
  > |        presaleOwner = _presaleOwner;
    |        state = State.Presale;
    |        NewState(state);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |        require(state == State.Disabled);
    |        presaleOwner = _presaleOwner;
  > |        state = State.Presale;
    |        NewState(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |    function startBonuses() public onlyOwner {
    |        require(state == State.Presale);
  > |        state = State.Bonuses;
    |        NewState(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'PresaleBREMP':
    |    function finishCrowdsale() public onlyOwner {
    |        require(state == State.Bonuses);
  > |        state = State.Enabled;
    |        NewState(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(116)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is Crowdsale {
    |    
    |    string  public standard    = 'Token 0.1';
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    
    |    uint                         public totalSupply;
  > |    mapping (address => uint256) public balanceOf;
    |    address                      public neurodao;
    |    uint                         public etherPrice;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    uint                         public etherPrice;
    |
  > |    mapping (address => bool)    public holders;
    |    mapping (uint => address)    public holdersIter;
    |    uint                         public numberOfHolders;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |
    |    mapping (address => bool)    public holders;
  > |    mapping (uint => address)    public holdersIter;
    |    uint                         public numberOfHolders;
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    uint                         public collectedNDAO;
    |    
  > |    mapping (address => bool)    public gotBonus;
    |    
    |    enum State {Disabled, Presale, Bonuses, Enabled}
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function setEtherPrice(uint _etherPrice) public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
    |        etherPrice = _etherPrice;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function startPresale(address _presaleOwner) public onlyOwner {
    |        require(state == State.Disabled);
    |        presaleOwner = _presaleOwner;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    uint8   public decimals    = 0;
    |
  > |    mapping (address => mapping (address => uint)) public allowed;
    |    event Approval(address indexed owner, address indexed spender, uint value);
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |        payable Crowdsale(_neurodao, _etherPrice) {}
    |
  > |    function transfer(address _to, uint256 _value)
    |        public enabledState onlyPayloadSize(2 * 32) {
    |        require(balanceOf[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint _value)
    |        public enabledState onlyPayloadSize(3 * 32) {
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function approve(address _spender, uint _value) public enabledState {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant enabledState
    |        returns (uint remaining) {
    |        return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract owned {
    |
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |    address public owner;
  > |    address public newOwner;
    |
    |    function owned() payable {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function changeOwner(address _owner) onlyOwner public {
    |        require(_owner != 0);
    |        newOwner = _owner;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |    
  > |    function confirmOwner() public {
    |        require(newOwner == msg.sender);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint constant totalLimitUSD  = 500000;
    |    
  > |    uint                         public totalSupply;
    |    mapping (address => uint256) public balanceOf;
    |    address                      public neurodao;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint                         public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  > |    address                      public neurodao;
    |    uint                         public etherPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    mapping (address => uint256) public balanceOf;
    |    address                      public neurodao;
  > |    uint                         public etherPrice;
    |
    |    mapping (address => bool)    public holders;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    mapping (address => bool)    public holders;
    |    mapping (uint => address)    public holdersIter;
  > |    uint                         public numberOfHolders;
    |    
    |    uint                         public collectedUSD;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint                         public numberOfHolders;
    |    
  > |    uint                         public collectedUSD;
    |    address                      public presaleOwner;
    |    uint                         public collectedNDAO;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    
    |    uint                         public collectedUSD;
  > |    address                      public presaleOwner;
    |    uint                         public collectedNDAO;
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint                         public collectedUSD;
    |    address                      public presaleOwner;
  > |    uint                         public collectedNDAO;
    |    
    |    mapping (address => bool)    public gotBonus;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    
    |    enum State {Disabled, Presale, Bonuses, Enabled}
  > |    State                        public state;
    |
    |    modifier enabledState {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |    
  > |    function startBonuses() public onlyOwner {
    |        require(state == State.Presale);
    |        state = State.Bonuses;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |    
  > |    function finishCrowdsale() public onlyOwner {
    |        require(state == State.Bonuses);
    |        state = State.Enabled;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token is Crowdsale {
    |    
  > |    string  public standard    = 'Token 0.1';
    |    string  public name        = 'BREMP';
    |    string  public symbol      = "BREMP";
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    
    |    string  public standard    = 'Token 0.1';
  > |    string  public name        = 'BREMP';
    |    string  public symbol      = "BREMP";
    |    uint8   public decimals    = 0;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string  public standard    = 'Token 0.1';
    |    string  public name        = 'BREMP';
  > |    string  public symbol      = "BREMP";
    |    uint8   public decimals    = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string  public name        = 'BREMP';
    |    string  public symbol      = "BREMP";
  > |    uint8   public decimals    = 0;
    |
    |    mapping (address => mapping (address => uint)) public allowed;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        if (holders[_to] != true) {
  > |            holders[_to] = true;
    |            holdersIter[numberOfHolders++] = _to;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        if (holders[_to] != true) {
    |            holders[_to] = true;
  > |            holdersIter[numberOfHolders++] = _to;
    |        }
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        }
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(allowed[_from][msg.sender] >= _value);
    |        if (holders[_to] != true) {
  > |            holders[_to] = true;
    |            holdersIter[numberOfHolders++] = _to;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        if (holders[_to] != true) {
    |            holders[_to] = true;
  > |            holdersIter[numberOfHolders++] = _to;
    |        }
    |        balanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |            holdersIter[numberOfHolders++] = _to;
    |        }
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        }
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            holdersIter[numberOfHolders++] = _to;
    |        }
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function approve(address _spender, uint _value) public enabledState {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function changeOwner(address _owner) onlyOwner public {
    |        require(_owner != 0);
  > |        newOwner = _owner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function confirmOwner() public {
    |        require(newOwner == msg.sender);
  > |        owner = newOwner;
    |        delete newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(newOwner == msg.sender);
    |        owner = newOwner;
  > |        delete newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function setEtherPrice(uint _etherPrice) public {
    |        require(presaleOwner == msg.sender || owner == msg.sender);
  > |        etherPrice = _etherPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function startPresale(address _presaleOwner) public onlyOwner {
    |        require(state == State.Disabled);
  > |        presaleOwner = _presaleOwner;
    |        state = State.Presale;
    |        NewState(state);
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(state == State.Disabled);
    |        presaleOwner = _presaleOwner;
  > |        state = State.Presale;
    |        NewState(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function startBonuses() public onlyOwner {
    |        require(state == State.Presale);
  > |        state = State.Bonuses;
    |        NewState(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function finishCrowdsale() public onlyOwner {
    |        require(state == State.Bonuses);
  > |        state = State.Enabled;
    |        NewState(state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(116)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |contract owned {
    |
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |    address public owner;
  > |    address public newOwner;
    |
    |    function owned() payable {
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function changeOwner(address _owner) onlyOwner public {
    |        require(_owner != 0);
    |        newOwner = _owner;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |    }
    |    
  > |    function confirmOwner() public {
    |        require(newOwner == msg.sender);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    function changeOwner(address _owner) onlyOwner public {
    |        require(_owner != 0);
  > |        newOwner = _owner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    function confirmOwner() public {
    |        require(newOwner == msg.sender);
  > |        owner = newOwner;
    |        delete newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |        require(newOwner == msg.sender);
    |        owner = newOwner;
  > |        delete newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfffb790342fbb071f972b23884c97185f4166805.sol(51)


