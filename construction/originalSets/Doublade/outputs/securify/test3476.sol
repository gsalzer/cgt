Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:ColuLocalCurrency
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:CurrencyFactory
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:ERC223Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:ERC677
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:EllipseMarketMaker
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:IEllipseMarketMaker
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:MarketMaker
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:Standard223Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:Standard677Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol:TokenOwnable
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |/// @title Basic ERC20 token contract implementation.
    |/// @dev Based on OpenZeppelin's StandardToken.
  > |contract BasicToken is ERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_to != address(0));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |        uint256 _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        require(_to != address(0));
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        balances[_to] = balances[_to].add(_value);
    |
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(197)

[31mViolation[0m for LockedEther in contract 'ColuLocalCurrency':
    |/// @title Colu Local Currency contract.
    |/// @author Rotem Lev.
  > |contract ColuLocalCurrency is Ownable, Standard677Token, TokenHolder {
    |    using SafeMath for uint256;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(277)

[33mWarning[0m for UnhandledException in contract 'ColuLocalCurrency':
    |  function contractFallback(address _to, uint _value, bytes _data) private returns (bool) {
    |    ERC223Receiver receiver = ERC223Receiver(_to);
  > |    require(receiver.tokenFallback(msg.sender, _value, _data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(246)

[33mWarning[0m for UnhandledException in contract 'ColuLocalCurrency':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) public onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ColuLocalCurrency':
    |  function contractFallback(address _to, uint _value, bytes _data) private returns (bool) {
    |    ERC223Receiver receiver = ERC223Receiver(_to);
  > |    require(receiver.tokenFallback(msg.sender, _value, _data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ColuLocalCurrency':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) public onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(269)

[31mViolation[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |        require(_to != address(0));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |        uint256 _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(195)

[31mViolation[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |/// @title Colu Local Currency contract.
    |/// @author Rotem Lev.
  > |contract ColuLocalCurrency is Ownable, Standard677Token, TokenHolder {
    |    using SafeMath for uint256;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        require(_to != address(0));
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |        balances[_to] = balances[_to].add(_value);
    |
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |        require(_newOwnerCandidate != address(0));
    |
  > |        newOwnerCandidate = _newOwnerCandidate;
    |
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |        address previousOwner = owner;
    |
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = address(0);
    |
    |        OwnershipTransferred(previousOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'ColuLocalCurrency':
    |/// @title Colu Local Currency contract.
    |/// @author Rotem Lev.
  > |contract ColuLocalCurrency is Ownable, Standard677Token, TokenHolder {
    |    using SafeMath for uint256;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(277)

[33mWarning[0m for LockedEther in contract 'CurrencyFactory':
    |/// @title Colu Local Currency + Market Maker factory contract.
    |/// @author Rotem Lev.
  > |contract CurrencyFactory is Standard223Receiver, TokenHolder {
    |
    |  struct CurrencyStruct {
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(514)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) public onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(269)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  /// @param _token address address of the CC token.
    |  modifier marketClosed(address _token) {
  > |  	require(!MarketMaker(currencyMap[_token].mmAddress).isOpenForPublic());
    |  	_;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(551)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	EllipseMarketMaker newMarketMaker = new EllipseMarketMaker(mmLibAddress, clnAddress, subToken);
    |  	//set allowance
  > |  	require(subToken.transfer(newMarketMaker, _totalSupply));
    |  	require(IEllipseMarketMaker(newMarketMaker).initializeAfterTransfer());
    |  	currencyMap[subToken] = CurrencyStruct({ name: _name, decimals: _decimals, totalSupply: _totalSupply, mmAddress: newMarketMaker, owner: msg.sender});
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(588)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	//set allowance
    |  	require(subToken.transfer(newMarketMaker, _totalSupply));
  > |  	require(IEllipseMarketMaker(newMarketMaker).initializeAfterTransfer());
    |  	currencyMap[subToken] = CurrencyStruct({ name: _name, decimals: _decimals, totalSupply: _totalSupply, mmAddress: newMarketMaker, owner: msg.sender});
    |    tokens.push(subToken);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(589)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	require(_clnAmount > 0);
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
  > |  	require(ERC20(clnAddress).transferFrom(msg.sender, this, _clnAmount));
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, _clnAmount));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, _clnAmount, _token);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(619)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
    |  	require(ERC20(clnAddress).transferFrom(msg.sender, this, _clnAmount));
  > |  	require(ERC20(clnAddress).approve(marketMakerAddress, _clnAmount));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, _clnAmount, _token);
    |    require(ERC20(_token).transfer(msg.sender, _subTokenAmount));
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(620)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	require(ERC20(clnAddress).transferFrom(msg.sender, this, _clnAmount));
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, _clnAmount));
  > |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, _clnAmount, _token);
    |    require(ERC20(_token).transfer(msg.sender, _subTokenAmount));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(621)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, _clnAmount));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, _clnAmount, _token);
  > |    require(ERC20(_token).transfer(msg.sender, _subTokenAmount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(622)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |                                  returns (uint256 _subTokenAmount) {
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
  > |  	require(ERC20(clnAddress).approve(marketMakerAddress, tkn.value));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, tkn.value, _token);
    |    require(ERC20(_token).transfer(tkn.sender, _subTokenAmount));
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(634)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, tkn.value));
  > |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, tkn.value, _token);
    |    require(ERC20(_token).transfer(tkn.sender, _subTokenAmount));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(635)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, tkn.value));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, tkn.value, _token);
  > |    require(ERC20(_token).transfer(tkn.sender, _subTokenAmount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(636)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |                                     returns (uint256 _clnTokenAmount) {
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
  > |  	require(ERC20(_token).transferFrom(msg.sender, this, _ccAmount));
    |  	require(ERC20(_token).approve(marketMakerAddress, _ccAmount));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(_token, _ccAmount, clnAddress);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(648)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
    |  	require(ERC20(_token).transferFrom(msg.sender, this, _ccAmount));
  > |  	require(ERC20(_token).approve(marketMakerAddress, _ccAmount));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(_token, _ccAmount, clnAddress);
    |  	require(ERC20(clnAddress).transfer(msg.sender, _clnTokenAmount));
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(649)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	require(ERC20(_token).transferFrom(msg.sender, this, _ccAmount));
    |  	require(ERC20(_token).approve(marketMakerAddress, _ccAmount));
  > |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(_token, _ccAmount, clnAddress);
    |  	require(ERC20(clnAddress).transfer(msg.sender, _clnTokenAmount));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(650)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	require(ERC20(_token).approve(marketMakerAddress, _ccAmount));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(_token, _ccAmount, clnAddress);
  > |  	require(ERC20(clnAddress).transfer(msg.sender, _clnTokenAmount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(651)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |                                    returns (uint256 _clnTokenAmount) {
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(msg.sender);
  > |  	require(ERC20(msg.sender).approve(marketMakerAddress, tkn.value));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(msg.sender, tkn.value, clnAddress);
    |  	require(ERC20(clnAddress).transfer(tkn.sender, _clnTokenAmount));
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(661)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(msg.sender);
    |  	require(ERC20(msg.sender).approve(marketMakerAddress, tkn.value));
  > |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(msg.sender, tkn.value, clnAddress);
    |  	require(ERC20(clnAddress).transfer(tkn.sender, _clnTokenAmount));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(662)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	require(ERC20(msg.sender).approve(marketMakerAddress, tkn.value));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(msg.sender, tkn.value, clnAddress);
  > |  	require(ERC20(clnAddress).transfer(tkn.sender, _clnTokenAmount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(663)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |                      returns (bool) {
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
  > |  	require(MarketMaker(marketMakerAddress).openForPublicTrade());
    |  	Ownable(marketMakerAddress).requestOwnershipTransfer(msg.sender);
    |    Ownable(_token).requestOwnershipTransfer(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(673)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
    |  	require(MarketMaker(marketMakerAddress).openForPublicTrade());
  > |  	Ownable(marketMakerAddress).requestOwnershipTransfer(msg.sender);
    |    Ownable(_token).requestOwnershipTransfer(msg.sender);
    |  	MarketOpen(marketMakerAddress);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(674)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |  	require(MarketMaker(marketMakerAddress).openForPublicTrade());
    |  	Ownable(marketMakerAddress).requestOwnershipTransfer(msg.sender);
  > |    Ownable(_token).requestOwnershipTransfer(msg.sender);
    |  	MarketOpen(marketMakerAddress);
    |  	return true;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(675)

[33mWarning[0m for UnhandledException in contract 'CurrencyFactory':
    |                              marketClosed(_token)
    |                              returns (bool) {
  > |    ColuLocalCurrency(_token).setTokenURI(_tokenURI);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(693)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) public onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  /// @param _token address address of the CC token.
    |  modifier marketClosed(address _token) {
  > |  	require(!MarketMaker(currencyMap[_token].mmAddress).isOpenForPublic());
    |  	_;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(551)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	EllipseMarketMaker newMarketMaker = new EllipseMarketMaker(mmLibAddress, clnAddress, subToken);
    |  	//set allowance
  > |  	require(subToken.transfer(newMarketMaker, _totalSupply));
    |  	require(IEllipseMarketMaker(newMarketMaker).initializeAfterTransfer());
    |  	currencyMap[subToken] = CurrencyStruct({ name: _name, decimals: _decimals, totalSupply: _totalSupply, mmAddress: newMarketMaker, owner: msg.sender});
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(588)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	//set allowance
    |  	require(subToken.transfer(newMarketMaker, _totalSupply));
  > |  	require(IEllipseMarketMaker(newMarketMaker).initializeAfterTransfer());
    |  	currencyMap[subToken] = CurrencyStruct({ name: _name, decimals: _decimals, totalSupply: _totalSupply, mmAddress: newMarketMaker, owner: msg.sender});
    |    tokens.push(subToken);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(589)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	require(_clnAmount > 0);
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
  > |  	require(ERC20(clnAddress).transferFrom(msg.sender, this, _clnAmount));
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, _clnAmount));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, _clnAmount, _token);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(619)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
    |  	require(ERC20(clnAddress).transferFrom(msg.sender, this, _clnAmount));
  > |  	require(ERC20(clnAddress).approve(marketMakerAddress, _clnAmount));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, _clnAmount, _token);
    |    require(ERC20(_token).transfer(msg.sender, _subTokenAmount));
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(620)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	require(ERC20(clnAddress).transferFrom(msg.sender, this, _clnAmount));
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, _clnAmount));
  > |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, _clnAmount, _token);
    |    require(ERC20(_token).transfer(msg.sender, _subTokenAmount));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(621)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, _clnAmount));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, _clnAmount, _token);
  > |    require(ERC20(_token).transfer(msg.sender, _subTokenAmount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(622)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |                                  returns (uint256 _subTokenAmount) {
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
  > |  	require(ERC20(clnAddress).approve(marketMakerAddress, tkn.value));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, tkn.value, _token);
    |    require(ERC20(_token).transfer(tkn.sender, _subTokenAmount));
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(634)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, tkn.value));
  > |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, tkn.value, _token);
    |    require(ERC20(_token).transfer(tkn.sender, _subTokenAmount));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(635)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	require(ERC20(clnAddress).approve(marketMakerAddress, tkn.value));
    |  	_subTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(clnAddress, tkn.value, _token);
  > |    require(ERC20(_token).transfer(tkn.sender, _subTokenAmount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(636)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |                                     returns (uint256 _clnTokenAmount) {
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
  > |  	require(ERC20(_token).transferFrom(msg.sender, this, _ccAmount));
    |  	require(ERC20(_token).approve(marketMakerAddress, _ccAmount));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(_token, _ccAmount, clnAddress);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(648)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
    |  	require(ERC20(_token).transferFrom(msg.sender, this, _ccAmount));
  > |  	require(ERC20(_token).approve(marketMakerAddress, _ccAmount));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(_token, _ccAmount, clnAddress);
    |  	require(ERC20(clnAddress).transfer(msg.sender, _clnTokenAmount));
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(649)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	require(ERC20(_token).transferFrom(msg.sender, this, _ccAmount));
    |  	require(ERC20(_token).approve(marketMakerAddress, _ccAmount));
  > |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(_token, _ccAmount, clnAddress);
    |  	require(ERC20(clnAddress).transfer(msg.sender, _clnTokenAmount));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(650)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	require(ERC20(_token).approve(marketMakerAddress, _ccAmount));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(_token, _ccAmount, clnAddress);
  > |  	require(ERC20(clnAddress).transfer(msg.sender, _clnTokenAmount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(651)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |                                    returns (uint256 _clnTokenAmount) {
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(msg.sender);
  > |  	require(ERC20(msg.sender).approve(marketMakerAddress, tkn.value));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(msg.sender, tkn.value, clnAddress);
    |  	require(ERC20(clnAddress).transfer(tkn.sender, _clnTokenAmount));
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(661)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(msg.sender);
    |  	require(ERC20(msg.sender).approve(marketMakerAddress, tkn.value));
  > |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(msg.sender, tkn.value, clnAddress);
    |  	require(ERC20(clnAddress).transfer(tkn.sender, _clnTokenAmount));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(662)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	require(ERC20(msg.sender).approve(marketMakerAddress, tkn.value));
    |  	_clnTokenAmount = IEllipseMarketMaker(marketMakerAddress).change(msg.sender, tkn.value, clnAddress);
  > |  	require(ERC20(clnAddress).transfer(tkn.sender, _clnTokenAmount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(663)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |                      returns (bool) {
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
  > |  	require(MarketMaker(marketMakerAddress).openForPublicTrade());
    |  	Ownable(marketMakerAddress).requestOwnershipTransfer(msg.sender);
    |    Ownable(_token).requestOwnershipTransfer(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(673)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	address marketMakerAddress = getMarketMakerAddressFromToken(_token);
    |  	require(MarketMaker(marketMakerAddress).openForPublicTrade());
  > |  	Ownable(marketMakerAddress).requestOwnershipTransfer(msg.sender);
    |    Ownable(_token).requestOwnershipTransfer(msg.sender);
    |  	MarketOpen(marketMakerAddress);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(674)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |  	require(MarketMaker(marketMakerAddress).openForPublicTrade());
    |  	Ownable(marketMakerAddress).requestOwnershipTransfer(msg.sender);
  > |    Ownable(_token).requestOwnershipTransfer(msg.sender);
    |  	MarketOpen(marketMakerAddress);
    |  	return true;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(675)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrencyFactory':
    |                              marketClosed(_token)
    |                              returns (bool) {
  > |    ColuLocalCurrency(_token).setTokenURI(_tokenURI);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(693)

[31mViolation[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |pragma solidity ^0.4.18;
    |
  > |// File: contracts/Ownable.sol
    |
    |/// @title Ownable
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |  	require(subToken.transfer(newMarketMaker, _totalSupply));
    |  	require(IEllipseMarketMaker(newMarketMaker).initializeAfterTransfer());
  > |  	currencyMap[subToken] = CurrencyStruct({ name: _name, decimals: _decimals, totalSupply: _totalSupply, mmAddress: newMarketMaker, owner: msg.sender});
    |    tokens.push(subToken);
    |  	TokenCreated(subToken, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(590)

[31mViolation[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |  	require(IEllipseMarketMaker(newMarketMaker).initializeAfterTransfer());
    |  	currencyMap[subToken] = CurrencyStruct({ name: _name, decimals: _decimals, totalSupply: _totalSupply, mmAddress: newMarketMaker, owner: msg.sender});
  > |    tokens.push(subToken);
    |  	TokenCreated(subToken, msg.sender);
    |  	return subToken;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(591)

[33mWarning[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |    // Problem: This will do a sstore which is expensive gas wise. Find a way to keep it in memory.
    |    // Solution: Remove the the data
  > |    tkn = Tkn(msg.sender, _sender, _value);
    |    __isTokenFallback = true;
    |    if (!address(this).delegatecall(_data)) {
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |    // Solution: Remove the the data
    |    tkn = Tkn(msg.sender, _sender, _value);
  > |    __isTokenFallback = true;
    |    if (!address(this).delegatecall(_data)) {
    |      __isTokenFallback = false;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |    __isTokenFallback = true;
    |    if (!address(this).delegatecall(_data)) {
  > |      __isTokenFallback = false;
    |      return false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |    // avoid doing an overwrite to .token, which would be more expensive
    |    // makes accessing .tkn values outside tokenPayable functions unsafe
  > |    __isTokenFallback = false;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |        require(_newOwnerCandidate != address(0));
    |
  > |        newOwnerCandidate = _newOwnerCandidate;
    |
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |        address previousOwner = owner;
    |
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'CurrencyFactory':
    |
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = address(0);
    |
    |        OwnershipTransferred(previousOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(48)

[33mWarning[0m for LockedEther in contract 'EllipseMarketMaker':
    |/// @dev market maker, using ellipse equation.
    |/// @author Tal Beja.
  > |contract EllipseMarketMaker is TokenOwnable {
    |
    |  // precision for price representation (as in ether or tokens).
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'EllipseMarketMaker':
    |    // Problem: This will do a sstore which is expensive gas wise. Find a way to keep it in memory.
    |    // Solution: Remove the the data
  > |    tkn = Tkn(msg.sender, _sender, _value);
    |    __isTokenFallback = true;
    |    if (!address(this).delegatecall(_data)) {
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'EllipseMarketMaker':
    |    // Solution: Remove the the data
    |    tkn = Tkn(msg.sender, _sender, _value);
  > |    __isTokenFallback = true;
    |    if (!address(this).delegatecall(_data)) {
    |      __isTokenFallback = false;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'EllipseMarketMaker':
    |    __isTokenFallback = true;
    |    if (!address(this).delegatecall(_data)) {
  > |      __isTokenFallback = false;
    |      return false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'EllipseMarketMaker':
    |    // avoid doing an overwrite to .token, which would be more expensive
    |    // makes accessing .tkn values outside tokenPayable functions unsafe
  > |    __isTokenFallback = false;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'EllipseMarketMaker':
    |        require(_newOwnerCandidate != address(0));
    |
  > |        newOwnerCandidate = _newOwnerCandidate;
    |
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'EllipseMarketMaker':
    |        address previousOwner = owner;
    |
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'EllipseMarketMaker':
    |
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = address(0);
    |
    |        OwnershipTransferred(previousOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(48)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |/// @dev Based on OpenZeppelin's Ownable.
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwnerCandidate;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Proposes to transfer control of the contract to a newOwnerCandidate.
    |    /// @param _newOwnerCandidate address The address to transfer ownership to.
  > |    function requestOwnershipTransfer(address _newOwnerCandidate) external onlyOwner {
    |        require(_newOwnerCandidate != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |    /// @dev Accept ownership transfer. This method needs to be called by the perviously proposed owner.
  > |    function acceptOwnership() external onlyOwnerCandidate {
    |        address previousOwner = owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwnerCandidate != address(0));
    |
  > |        newOwnerCandidate = _newOwnerCandidate;
    |
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        address previousOwner = owner;
    |
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = address(0);
    |
    |        OwnershipTransferred(previousOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(48)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |/// @title Math operations with safety checks
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(57)

[33mWarning[0m for LockedEther in contract 'Standard677Token':
    |/// @title Standard677Token implentation, base on https://github.com/ethereum/EIPs/issues/677
    |
  > |contract Standard677Token is ERC677, BasicToken {
    |
    |  /// @dev ERC223 safe token transfer from one address to another
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(226)

[33mWarning[0m for UnhandledException in contract 'Standard677Token':
    |  function contractFallback(address _to, uint _value, bytes _data) private returns (bool) {
    |    ERC223Receiver receiver = ERC223Receiver(_to);
  > |    require(receiver.tokenFallback(msg.sender, _value, _data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Standard677Token':
    |  function contractFallback(address _to, uint _value, bytes _data) private returns (bool) {
    |    ERC223Receiver receiver = ERC223Receiver(_to);
  > |    require(receiver.tokenFallback(msg.sender, _value, _data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'Standard677Token':
    |        require(_to != address(0));
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'Standard677Token':
    |        uint256 _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'Standard677Token':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard677Token':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard677Token':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        require(_to != address(0));
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard677Token':
    |        balances[_to] = balances[_to].add(_value);
    |
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(197)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |
    |/// @title Token holder contract.
  > |contract TokenHolder is Ownable {
    |    /// @dev Allow the owner to transfer out any accidentally sent ERC20 tokens.
    |    /// @param _tokenAddress address The address of the ERC20 contract.
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(264)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |    /// @param _tokenAddress address The address of the ERC20 contract.
    |    /// @param _amount uint256 The amount of tokens to be transferred.
  > |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) public onlyOwner returns (bool success) {
    |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |    /// @dev Proposes to transfer control of the contract to a newOwnerCandidate.
    |    /// @param _newOwnerCandidate address The address to transfer ownership to.
  > |    function requestOwnershipTransfer(address _newOwnerCandidate) external onlyOwner {
    |        require(_newOwnerCandidate != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |
    |    /// @dev Accept ownership transfer. This method needs to be called by the perviously proposed owner.
  > |    function acceptOwnership() external onlyOwnerCandidate {
    |        address previousOwner = owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(44)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) public onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) public onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(_newOwnerCandidate != address(0));
    |
  > |        newOwnerCandidate = _newOwnerCandidate;
    |
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        address previousOwner = owner;
    |
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = address(0);
    |
    |        OwnershipTransferred(previousOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xe3e3bed21fc39d0915f66509ed0aac05db6d6454.sol(48)


