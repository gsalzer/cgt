Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:HUBRIS
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:HUBRISTOKEN
Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol:Standard
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
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(178)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(262)

[33mWarning[0m for LockedEther in contract 'HUBRIS':
    | */
    |
  > |contract HUBRIS is Ownable, Pausable, Standard, BurnableToken, HUBRISTOKEN {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(273)

[33mWarning[0m for UnhandledException in contract 'HUBRIS':
    |        require(!tokensAllocated);
    |        tokensAllocated = true;
  > |        this.transfer(TOKEN_SALE, 300000000E18); //30% of totalSupply_
    |        this.transfer(EQUITY_SHARE, 300000000E18); //30% of totalSupply_
    |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(300)

[33mWarning[0m for UnhandledException in contract 'HUBRIS':
    |        tokensAllocated = true;
    |        this.transfer(TOKEN_SALE, 300000000E18); //30% of totalSupply_
  > |        this.transfer(EQUITY_SHARE, 300000000E18); //30% of totalSupply_
    |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
    |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(301)

[33mWarning[0m for UnhandledException in contract 'HUBRIS':
    |        this.transfer(TOKEN_SALE, 300000000E18); //30% of totalSupply_
    |        this.transfer(EQUITY_SHARE, 300000000E18); //30% of totalSupply_
  > |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
    |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
    |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(302)

[33mWarning[0m for UnhandledException in contract 'HUBRIS':
    |        this.transfer(EQUITY_SHARE, 300000000E18); //30% of totalSupply_
    |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
  > |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
    |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
    |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(303)

[33mWarning[0m for UnhandledException in contract 'HUBRIS':
    |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
    |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
  > |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
    |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
    |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(304)

[33mWarning[0m for UnhandledException in contract 'HUBRIS':
    |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
    |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
  > |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
    |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
    |        this.transfer(RESERVE, 20000000E18); //2% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(305)

[33mWarning[0m for UnhandledException in contract 'HUBRIS':
    |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
    |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
  > |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
    |        this.transfer(RESERVE, 20000000E18); //2% of totalSupply_
    |        this.transfer(LEGAL, 10000000E18); //1% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(306)

[33mWarning[0m for UnhandledException in contract 'HUBRIS':
    |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
    |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
  > |        this.transfer(RESERVE, 20000000E18); //2% of totalSupply_
    |        this.transfer(LEGAL, 10000000E18); //1% of totalSupply_
    |    }
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(307)

[33mWarning[0m for UnhandledException in contract 'HUBRIS':
    |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
    |        this.transfer(RESERVE, 20000000E18); //2% of totalSupply_
  > |        this.transfer(LEGAL, 10000000E18); //1% of totalSupply_
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HUBRIS':
    |        require(!tokensAllocated);
    |        tokensAllocated = true;
  > |        this.transfer(TOKEN_SALE, 300000000E18); //30% of totalSupply_
    |        this.transfer(EQUITY_SHARE, 300000000E18); //30% of totalSupply_
    |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HUBRIS':
    |        tokensAllocated = true;
    |        this.transfer(TOKEN_SALE, 300000000E18); //30% of totalSupply_
  > |        this.transfer(EQUITY_SHARE, 300000000E18); //30% of totalSupply_
    |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
    |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HUBRIS':
    |        this.transfer(TOKEN_SALE, 300000000E18); //30% of totalSupply_
    |        this.transfer(EQUITY_SHARE, 300000000E18); //30% of totalSupply_
  > |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
    |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
    |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HUBRIS':
    |        this.transfer(EQUITY_SHARE, 300000000E18); //30% of totalSupply_
    |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
  > |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
    |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
    |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HUBRIS':
    |        this.transfer(TEAM, 150000000E18); //15% of totalSupply_
    |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
  > |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
    |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
    |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(304)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HUBRIS':
    |        this.transfer(ADVISORS, 30000000E18); //3% of totalSupply_
    |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
  > |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
    |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
    |        this.transfer(RESERVE, 20000000E18); //2% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HUBRIS':
    |        this.transfer(CUSTOMERS, 100000000E18); //10% of totalSupply_
    |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
  > |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
    |        this.transfer(RESERVE, 20000000E18); //2% of totalSupply_
    |        this.transfer(LEGAL, 10000000E18); //1% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HUBRIS':
    |        this.transfer(msg.sender, 50000000E18); //5% of totalSupply_
    |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
  > |        this.transfer(RESERVE, 20000000E18); //2% of totalSupply_
    |        this.transfer(LEGAL, 10000000E18); //1% of totalSupply_
    |    }
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HUBRIS':
    |        this.transfer(BOUNTY, 40000000E18); //4% of totalSupply_
    |        this.transfer(RESERVE, 20000000E18); //2% of totalSupply_
  > |        this.transfer(LEGAL, 10000000E18); //1% of totalSupply_
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'HUBRIS':
    |    function envokeTokenAllocation() public onlyOwner {
    |        require(!tokensAllocated);
  > |        tokensAllocated = true;
    |        this.transfer(TOKEN_SALE, 300000000E18); //30% of totalSupply_
    |        this.transfer(EQUITY_SHARE, 300000000E18); //30% of totalSupply_
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(299)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(83)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(122)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(7)

[33mWarning[0m for LockedEther in contract 'Standard':
    |}
    |
  > |contract Standard is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Standard':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x432555e5c898f83fc5f00df631bd9c2801fea289.sol(237)


