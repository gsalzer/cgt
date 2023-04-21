Processing contract: /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol:BancorBuyer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol:IMultiToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'BancorBuyer':
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        uint256 tokenBalance = token.balanceOf(this);
  > |        require(_exchange.call.value(_value)(_data));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token]
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(186)

[31mViolation[0m for DAOConstantGas in contract 'BancorBuyer':
    |    function withdraw(address _to, uint256 _value, address[] _tokens, uint256[] _tokenValues) external {
    |        if (_value > 0) {
  > |            _to.transfer(_value);
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(137)

[33mWarning[0m for LockedEther in contract 'BancorBuyer':
    |
    |
  > |contract BancorBuyer {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(107)

[33mWarning[0m for TODAmount in contract 'BancorBuyer':
    |    function withdraw(address _to, uint256 _value, address[] _tokens, uint256[] _tokenValues) external {
    |        if (_value > 0) {
  > |            _to.transfer(_value);
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(137)

[33mWarning[0m for TODReceiver in contract 'BancorBuyer':
    |    function withdraw(address _to, uint256 _value, address[] _tokens, uint256[] _tokenValues) external {
    |        if (_value > 0) {
  > |            _to.transfer(_value);
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(137)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |
    |    function sumWeightOfMultiToken(IMultiToken mtkn) public view returns(uint256 sumWeight) {
  > |        for (uint i = mtkn.changeableTokenCount(); i > 0; i--) {
    |            sumWeight += mtkn.weights(mtkn.tokens(i - 1));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(114)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |    function sumWeightOfMultiToken(IMultiToken mtkn) public view returns(uint256 sumWeight) {
    |        for (uint i = mtkn.changeableTokenCount(); i > 0; i--) {
  > |            sumWeight += mtkn.weights(mtkn.tokens(i - 1));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(115)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |            uint256 tokenValue = _tokenValues[i];
    |
  > |            uint256 balance = token.balanceOf(this);
    |            token.transferFrom(msg.sender, this, tokenValue);
    |            require(token.balanceOf(this) == balance.add(tokenValue));
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(128)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |
    |            uint256 balance = token.balanceOf(this);
  > |            token.transferFrom(msg.sender, this, tokenValue);
    |            require(token.balanceOf(this) == balance.add(tokenValue));
    |            tokenBalances[_beneficiary][token] = tokenBalances[_beneficiary][token].add(tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(129)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |            uint256 balance = token.balanceOf(this);
    |            token.transferFrom(msg.sender, this, tokenValue);
  > |            require(token.balanceOf(this) == balance.add(tokenValue));
    |            tokenBalances[_beneficiary][token] = tokenBalances[_beneficiary][token].add(tokenValue);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(130)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |    function withdraw(address _to, uint256 _value, address[] _tokens, uint256[] _tokenValues) external {
    |        if (_value > 0) {
  > |            _to.transfer(_value);
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(137)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |            uint256 tokenValue = _tokenValues[i];
    |
  > |            uint256 tokenBalance = token.balanceOf(this);
    |            token.transfer(_to, tokenValue);
    |            require(token.balanceOf(this) == tokenBalance.sub(tokenValue));
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(145)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |
    |            uint256 tokenBalance = token.balanceOf(this);
  > |            token.transfer(_to, tokenValue);
    |            require(token.balanceOf(this) == tokenBalance.sub(tokenValue));
    |            tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token].sub(tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(146)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |            uint256 tokenBalance = token.balanceOf(this);
    |            token.transfer(_to, tokenValue);
  > |            require(token.balanceOf(this) == tokenBalance.sub(tokenValue));
    |            tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token].sub(tokenValue);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(147)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |    {
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |        uint256 tokenBalance = token.balanceOf(this);
    |        require(_exchange.call.value(_value)(_data));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(185)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        uint256 tokenBalance = token.balanceOf(this);
  > |        require(_exchange.call.value(_value)(_data));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token]
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(186)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token]
  > |            .add(token.balanceOf(this).sub(tokenBalance));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(189)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |    {
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(202)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |    {
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(216)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
  > |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(217)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |    {
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
    |        this.buyOne(ERC20(_tokens[2]), _exchanges[2], _values[2], _data3);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(232)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
  > |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
    |        this.buyOne(ERC20(_tokens[2]), _exchanges[2], _values[2], _data3);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(233)

[33mWarning[0m for UnhandledException in contract 'BancorBuyer':
    |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
  > |        this.buyOne(ERC20(_tokens[2]), _exchanges[2], _values[2], _data3);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |
    |    function sumWeightOfMultiToken(IMultiToken mtkn) public view returns(uint256 sumWeight) {
  > |        for (uint i = mtkn.changeableTokenCount(); i > 0; i--) {
    |            sumWeight += mtkn.weights(mtkn.tokens(i - 1));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |    function sumWeightOfMultiToken(IMultiToken mtkn) public view returns(uint256 sumWeight) {
    |        for (uint i = mtkn.changeableTokenCount(); i > 0; i--) {
  > |            sumWeight += mtkn.weights(mtkn.tokens(i - 1));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |            uint256 tokenValue = _tokenValues[i];
    |
  > |            uint256 balance = token.balanceOf(this);
    |            token.transferFrom(msg.sender, this, tokenValue);
    |            require(token.balanceOf(this) == balance.add(tokenValue));
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |
    |            uint256 balance = token.balanceOf(this);
  > |            token.transferFrom(msg.sender, this, tokenValue);
    |            require(token.balanceOf(this) == balance.add(tokenValue));
    |            tokenBalances[_beneficiary][token] = tokenBalances[_beneficiary][token].add(tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(129)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |            uint256 balance = token.balanceOf(this);
    |            token.transferFrom(msg.sender, this, tokenValue);
  > |            require(token.balanceOf(this) == balance.add(tokenValue));
    |            tokenBalances[_beneficiary][token] = tokenBalances[_beneficiary][token].add(tokenValue);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(130)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |            uint256 tokenValue = _tokenValues[i];
    |
  > |            uint256 tokenBalance = token.balanceOf(this);
    |            token.transfer(_to, tokenValue);
    |            require(token.balanceOf(this) == tokenBalance.sub(tokenValue));
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |
    |            uint256 tokenBalance = token.balanceOf(this);
  > |            token.transfer(_to, tokenValue);
    |            require(token.balanceOf(this) == tokenBalance.sub(tokenValue));
    |            tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token].sub(tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |            uint256 tokenBalance = token.balanceOf(this);
    |            token.transfer(_to, tokenValue);
  > |            require(token.balanceOf(this) == tokenBalance.sub(tokenValue));
    |            tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token].sub(tokenValue);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |    {
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |        uint256 tokenBalance = token.balanceOf(this);
    |        require(_exchange.call.value(_value)(_data));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token]
  > |            .add(token.balanceOf(this).sub(tokenBalance));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |    {
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |    {
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
  > |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |    {
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
    |        this.buyOne(ERC20(_tokens[2]), _exchanges[2], _values[2], _data3);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(232)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
  > |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
    |        this.buyOne(ERC20(_tokens[2]), _exchanges[2], _values[2], _data3);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(233)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorBuyer':
    |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
  > |        this.buyOne(ERC20(_tokens[2]), _exchanges[2], _values[2], _data3);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorBuyer':
    |        if (_value > 0) {
    |            _to.transfer(_value);
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorBuyer':
    |            token.transfer(_to, tokenValue);
    |            require(token.balanceOf(this) == tokenBalance.sub(tokenValue));
  > |            tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token].sub(tokenValue);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorBuyer':
    |        public
    |    {
  > |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        uint256 tokenBalance = token.balanceOf(this);
    |        require(_exchange.call.value(_value)(_data));
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorBuyer':
    |        uint256 tokenBalance = token.balanceOf(this);
    |        require(_exchange.call.value(_value)(_data));
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token]
    |            .add(token.balanceOf(this).sub(tokenBalance));
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorBuyer':
    |        require(_exchange.call.value(_value)(_data));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        tokenBalances[msg.sender][token] = tokenBalances[msg.sender][token]
    |            .add(token.balanceOf(this).sub(tokenBalance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorBuyer':
    |        public
    |    {
  > |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorBuyer':
    |        public
    |    {
  > |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorBuyer':
    |        public
    |    {
  > |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        this.buyOne(ERC20(_tokens[0]), _exchanges[0], _values[0], _data1);
    |        this.buyOne(ERC20(_tokens[1]), _exchanges[1], _values[1], _data2);
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(231)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x87902f1b5d50d1f71a17bc2ea613d38510e9aa67.sol(10)


