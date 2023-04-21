Processing contract: /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol:Base
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol:IToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol:TokenTimeLock
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Base':
    |}
    |
  > |contract Base {
    |    modifier only(address allowed) {
    |        require(msg.sender == allowed);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(73)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |
    |            _mint(msg.sender, transferTokens);
  > |            beneficiary.transfer(weiAmount);
    |            Transfer(msg.sender, transferTokens);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(299)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |
    |        _mint(msg.sender, transferTokens);
  > |        beneficiary.transfer(msg.value);
    |        Transfer(msg.sender, transferTokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(353)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(133)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |
    |            _mint(msg.sender, transferTokens);
  > |            beneficiary.transfer(weiAmount);
    |            Transfer(msg.sender, transferTokens);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(299)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        require(address(lockBalances[msg.sender]) != 0);
    |
  > |        lockBalances[msg.sender].releaseFirst();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(243)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        require(address(lockBalances[msg.sender]) != 0);
    |
  > |        lockBalances[msg.sender].releaseSecond();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(252)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |            _mint(msg.sender, transferTokens);
  > |            beneficiary.transfer(weiAmount);
    |            Transfer(msg.sender, transferTokens);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(299)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |            totalFunds = totalFunds.add(weiAmount);
    |
  > |            IToken(_erc20OrEth).transferFrom(msg.sender, beneficiary, transferTokens);
    |            Transfer(msg.sender, transferTokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(313)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |        _mint(msg.sender, transferTokens);
  > |        beneficiary.transfer(msg.value);
    |        Transfer(msg.sender, transferTokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(353)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    internal
    |    {
  > |        token.mint(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(360)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    internal
    |    {
  > |        token.start();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        require(address(lockBalances[msg.sender]) != 0);
    |
  > |        lockBalances[msg.sender].releaseFirst();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        require(address(lockBalances[msg.sender]) != 0);
    |
  > |        lockBalances[msg.sender].releaseSecond();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |            _mint(msg.sender, transferTokens);
  > |            beneficiary.transfer(weiAmount);
    |            Transfer(msg.sender, transferTokens);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |            totalFunds = totalFunds.add(weiAmount);
    |
  > |            IToken(_erc20OrEth).transferFrom(msg.sender, beneficiary, transferTokens);
    |            Transfer(msg.sender, transferTokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |        _mint(msg.sender, transferTokens);
  > |        beneficiary.transfer(msg.value);
    |        Transfer(msg.sender, transferTokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(353)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    internal
    |    {
  > |        token.mint(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(360)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    internal
    |    {
  > |        token.start();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        var _locks = bitlocks;
    |        require(_locks == 0);
  > |        bitlocks = uint(-1);
    |        _;
    |        bitlocks = _locks;
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        bitlocks = uint(-1);
    |        _;
  > |        bitlocks = _locks;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(totalSaleSupply.add(totalAmount) <= MAX_SALE_SUPPLY);
    |
  > |        totalSaleSupply = totalSaleSupply.add(totalAmount);
    |
    |        TokenTimeLock tokenTimeLock = new TokenTimeLock(token, _to, _firstUnblockDate, _firstStake, _secondUnblockDate, _secondStake);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        TokenTimeLock tokenTimeLock = new TokenTimeLock(token, _to, _firstUnblockDate, _firstStake, _secondUnblockDate, _secondStake);
  > |        lockBalances[_to] = tokenTimeLock;
    |        _mint(address(tokenTimeLock), totalAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(totalSaleSupply.add(_amount) <= MAX_SALE_SUPPLY);
    |
  > |        totalSaleSupply = totalSaleSupply.add(_amount);
    |
    |        _mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            require(totalSaleSupply.add(transferTokens) <= MAX_SALE_SUPPLY);
    |
  > |            totalSaleSupply = totalSaleSupply.add(transferTokens);
    |            balances[msg.sender] = balances[msg.sender].add(weiAmount);
    |            totalFunds = totalFunds.add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |            totalSaleSupply = totalSaleSupply.add(transferTokens);
  > |            balances[msg.sender] = balances[msg.sender].add(weiAmount);
    |            totalFunds = totalFunds.add(weiAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            totalSaleSupply = totalSaleSupply.add(transferTokens);
    |            balances[msg.sender] = balances[msg.sender].add(weiAmount);
  > |            totalFunds = totalFunds.add(weiAmount);
    |
    |            _mint(msg.sender, transferTokens);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            require(totalSaleSupply.add(transferTokens) <= MAX_SALE_SUPPLY);
    |
  > |            totalSaleSupply = totalSaleSupply.add(transferTokens);
    |            balances[msg.sender] = balances[msg.sender].add(weiAmount);
    |            totalFunds = totalFunds.add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |            totalSaleSupply = totalSaleSupply.add(transferTokens);
  > |            balances[msg.sender] = balances[msg.sender].add(weiAmount);
    |            totalFunds = totalFunds.add(weiAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |            totalSaleSupply = totalSaleSupply.add(transferTokens);
    |            balances[msg.sender] = balances[msg.sender].add(weiAmount);
  > |            totalFunds = totalFunds.add(weiAmount);
    |
    |            IToken(_erc20OrEth).transferFrom(msg.sender, beneficiary, transferTokens);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(totalSaleSupply.add(_amount) <= MAX_SALE_SUPPLY);
    |
  > |        totalSaleSupply = totalSaleSupply.add(_amount);
    |
    |        _mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(totalSaleSupply.add(transferTokens) <= MAX_SALE_SUPPLY);
    |
  > |        totalSaleSupply = totalSaleSupply.add(transferTokens);
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        totalFunds = totalFunds.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        totalSaleSupply = totalSaleSupply.add(transferTokens);
  > |        balances[msg.sender] = balances[msg.sender].add(msg.value);
    |        totalFunds = totalFunds.add(msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        totalSaleSupply = totalSaleSupply.add(transferTokens);
    |        balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |        totalFunds = totalFunds.add(msg.value);
    |
    |        _mint(msg.sender, transferTokens);
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        var _locks = bitlocks;
    |        require(_locks == 0);
  > |        bitlocks = uint(-1);
    |        _;
    |        bitlocks = _locks;
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        bitlocks = uint(-1);
    |        _;
  > |        bitlocks = _locks;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    function transferOwnership(address _newOwner) only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function acceptOwnership() only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(_token != address(0));
    |
  > |        token = _token;
    |        currentPrice = tokenPrice.mul(bonus).div(bonusBase);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        token = _token;
  > |        currentPrice = tokenPrice.mul(bonus).div(bonusBase);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    only(owner)
    |    {
  > |        bonus = _bonus;
    |        currentPrice = tokenPrice.mul(bonus).div(bonusBase);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    {
    |        bonus = _bonus;
  > |        currentPrice = tokenPrice.mul(bonus).div(bonusBase);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    only(owner)
    |    {
  > |        tokenPrice = _tokenPrice;
    |        currentPrice = tokenPrice.mul(bonus).div(bonusBase);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    {
    |        tokenPrice = _tokenPrice;
  > |        currentPrice = tokenPrice.mul(bonus).div(bonusBase);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        );
    |
  > |        currentState = _newState;
    |
    |        if(_newState == State.CLOSED){
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    only(owner)
    |    {
  > |        prices[_token] = _price;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(278)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned is Base {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) only(owner) {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is Base {
    |
  > |    address public owner;
    |    address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(117)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.17;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(3)

[33mWarning[0m for LockedEther in contract 'TokenTimeLock':
    |}
    |
  > |contract TokenTimeLock {
    |    IToken public token;
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |
    |contract TokenTimeLock {
  > |    IToken public token;
    |
    |    address public beneficiary;
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |    IToken public token;
    |
  > |    address public beneficiary;
    |
    |    uint public releaseTimeFirst;
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |    address public beneficiary;
    |
  > |    uint public releaseTimeFirst;
    |    uint public amountFirst;
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |
    |    uint public releaseTimeFirst;
  > |    uint public amountFirst;
    |
    |    uint public releaseTimeSecond;
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |    uint public amountFirst;
    |
  > |    uint public releaseTimeSecond;
    |    uint public amountSecond;
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |
    |    uint public releaseTimeSecond;
  > |    uint public amountSecond;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |    }
    |
  > |    function releaseFirst() public {
    |        require(now >= releaseTimeFirst);
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |    }
    |
  > |    function releaseSecond() public {
    |        require(now >= releaseTimeSecond);
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(63)

[33mWarning[0m for UnhandledException in contract 'TokenTimeLock':
    |        require(now >= releaseTimeFirst);
    |
  > |        uint amount = token.balanceOf(this);
    |        require(amount > 0 && amount >= amountFirst);
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(57)

[33mWarning[0m for UnhandledException in contract 'TokenTimeLock':
    |        require(amount > 0 && amount >= amountFirst);
    |
  > |        token.transfer(beneficiary, amountFirst);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(60)

[33mWarning[0m for UnhandledException in contract 'TokenTimeLock':
    |        require(now >= releaseTimeSecond);
    |
  > |        uint amount = token.balanceOf(this);
    |        require(amount > 0 && amount >= amountSecond);
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(66)

[33mWarning[0m for UnhandledException in contract 'TokenTimeLock':
    |        require(amount > 0 && amount >= amountSecond);
    |
  > |        token.transfer(beneficiary, amountSecond);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimeLock':
    |        require(now >= releaseTimeFirst);
    |
  > |        uint amount = token.balanceOf(this);
    |        require(amount > 0 && amount >= amountFirst);
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(57)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimeLock':
    |        require(amount > 0 && amount >= amountFirst);
    |
  > |        token.transfer(beneficiary, amountFirst);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(60)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimeLock':
    |        require(now >= releaseTimeSecond);
    |
  > |        uint amount = token.balanceOf(this);
    |        require(amount > 0 && amount >= amountSecond);
    |
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(66)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimeLock':
    |        require(amount > 0 && amount >= amountSecond);
    |
  > |        token.transfer(beneficiary, amountSecond);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc46c275695edc95c645133124eb13601507863e4.sol(69)


