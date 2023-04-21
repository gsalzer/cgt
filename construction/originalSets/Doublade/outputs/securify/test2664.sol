Processing contract: /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol:C11
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol:ERC20Detailed
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol:ReentrancyGuard
Processing contract: /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'C11':
    |       _transfer(CurrentFundWallet, beneficiary, tokens);
    |       // transfer weiAmount to CurrentFundWallet
  > |       CurrentFundWallet.transfer(weiAmount);
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(574)

[33mWarning[0m for LockedEther in contract 'C11':
    | * @dev ERC20 Token 
    | */
  > |contract C11 is ERC20, ERC20Detailed, Ownable, ReentrancyGuard  {
    |   using SafeMath for uint256;
    |   
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(477)

[33mWarning[0m for TODAmount in contract 'C11':
    |       _transfer(CurrentFundWallet, beneficiary, tokens);
    |       // transfer weiAmount to CurrentFundWallet
  > |       CurrentFundWallet.transfer(weiAmount);
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(574)

[33mWarning[0m for TODReceiver in contract 'C11':
    |       _transfer(CurrentFundWallet, beneficiary, tokens);
    |       // transfer weiAmount to CurrentFundWallet
  > |       CurrentFundWallet.transfer(weiAmount);
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(574)

[33mWarning[0m for UnhandledException in contract 'C11':
    |       _transfer(CurrentFundWallet, beneficiary, tokens);
    |       // transfer weiAmount to CurrentFundWallet
  > |       CurrentFundWallet.transfer(weiAmount);
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(574)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'C11':
    |       _transfer(CurrentFundWallet, beneficiary, tokens);
    |       // transfer weiAmount to CurrentFundWallet
  > |       CurrentFundWallet.transfer(weiAmount);
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(574)

[31mViolation[0m for UnrestrictedWrite in contract 'C11':
    |     */
    |    modifier nonReentrant() {
  > |        _guardCounter += 1;
    |        uint256 localCounter = _guardCounter;
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |        require(spender != address(0));
    |        
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |        require(account != address(0));
    |
  > |        _totalSupply = _totalSupply.add(value);
    |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |
    |        _totalSupply = _totalSupply.add(value);
  > |        _balances[account] = _balances[account].add(value);
    |        emit Transfer(address(0), account, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |        require(account != address(0));
    |
  > |        _totalSupply = _totalSupply.sub(value);
    |        _balances[account] = _balances[account].sub(value);
    |        emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |
    |        _totalSupply = _totalSupply.sub(value);
  > |        _balances[account] = _balances[account].sub(value);
    |        emit Transfer(account, address(0), value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |        require(balanceOf(CurrentFundWallet) > tokens);
    |        // update state
  > |        _weiRaised = _weiRaised.add(weiAmount);
    |        // transfer tokens to beneficiary from CurrentFundWallet
    |       _transfer(CurrentFundWallet, beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |        require(account != address(0));
    |        bool currentStatus1 = status[account];
  > |       status[account] = (currentStatus1 == true) ? false : true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |    function setRate(uint256 rate) public onlyOwner  {
    |        require(rate > 1);
  > |        _rate = rate;
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(582)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |    function setX(uint256 x) public onlyOwner  {
    |        require(x >= 1);
  > |        _x = x;
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(589)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |    function setY(uint256 y) public onlyOwner  {
    |        require(y >= 1);
  > |        _y = y;
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(596)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |     */
    |    function setPositivWallet(address PositivWallet) public onlyOwner  {
  > |        _walletP = PositivWallet;
    |    } 
    |    
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(602)

[33mWarning[0m for UnrestrictedWrite in contract 'C11':
    |     */
    |    function setNegativWallet(address NegativWallet) public onlyOwner  {
  > |        _walletN = NegativWallet;
    |    } 
    |    
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(615)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | * compliant implementations may not do it.
    | */
  > |contract ERC20 is IERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |        
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(347)

[33mWarning[0m for LockedEther in contract 'ERC20Detailed':
    | * just as on Ethereum all the operations are done in wei.
    | */
  > |contract ERC20Detailed is ERC20 {
    |    string private _name;
    |    string private _symbol;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Detailed':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Detailed':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Detailed':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Detailed':
    |        require(spender != address(0));
    |        
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Detailed':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Detailed':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(347)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    int256 constant private INT256_MIN = -2**255;
    |
  at /home/jiaming/mavs_srcs/contract@0xaddd12a33d34dcf03d682abc5df3553d6b3cbd75.sol(8)


