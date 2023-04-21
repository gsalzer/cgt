Processing contract: /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol:TBCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |       * functions, this simplifies the implementation of "user permissions". 
    |          */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |          */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        * @param newOwner The address to transfer ownership to. 
    |             */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(66)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    * @dev Math operations with safety checks that throw on error
    |       */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |            * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    |               */
  > |contract StandardToken {
    |  using SafeMath for uint256;
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    else require( now > endDate ); //Lock coin
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    else require( now > endDate ); //Lock coin
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(150)

[33mWarning[0m for DAOConstantGas in contract 'TBCoin':
    |
    |        // Forward the fund to fund collection wallet.
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(291)

[33mWarning[0m for LockedEther in contract 'TBCoin':
    |}
    |
  > |contract TBCoin is StandardToken, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(168)

[31mViolation[0m for TODReceiver in contract 'TBCoin':
    |
    |        // Forward the fund to fund collection wallet.
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(291)

[33mWarning[0m for UnhandledException in contract 'TBCoin':
    |
    |        // Forward the fund to fund collection wallet.
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TBCoin':
    |
    |        // Forward the fund to fund collection wallet.
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |    else require( now > endDate ); //Lock coin
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |    else require( now > endDate ); //Lock coin
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |    else require( now > endDate ); //Lock coin
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |        require(_totalSupply > _saleCap);
    |
  > |        startDate = _start;
    |        endDate = _end;
    |        saleCap = _saleCap;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |
    |        startDate = _start;
  > |        endDate = _end;
    |        saleCap = _saleCap;
    |        wallet = _wallet;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |        startDate = _start;
    |        endDate = _end;
  > |        saleCap = _saleCap;
    |        wallet = _wallet;
    |        totalSupply = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |        endDate = _end;
    |        saleCap = _saleCap;
  > |        wallet = _wallet;
    |        totalSupply = _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |        saleCap = _saleCap;
    |        wallet = _wallet;
  > |        totalSupply = _totalSupply;
    |
    |        balances[wallet] = _totalSupply.sub(saleCap);
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |        totalSupply = _totalSupply;
    |
  > |        balances[wallet] = _totalSupply.sub(saleCap);
    |        balances[0xb1] = saleCap;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |
    |        balances[wallet] = _totalSupply.sub(saleCap);
  > |        balances[0xb1] = saleCap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |
    |        // Transfer
  > |        balances[wallet] = balances[wallet].sub(amount);
    |        balances[buyer] = balances[buyer].add(amount);
    |        PreICOTokenPushed(buyer, amount);
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |        // Transfer
    |        balances[wallet] = balances[wallet].sub(amount);
  > |        balances[buyer] = balances[buyer].add(amount);
    |        PreICOTokenPushed(buyer, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |
    |        // Transfer
  > |        balances[0xb1] = balances[0xb1].sub(amount);
    |        balances[sender] = balances[sender].add(amount);
    |        TokenPurchase(sender, weiAmount, amount);
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |        // Transfer
    |        balances[0xb1] = balances[0xb1].sub(amount);
  > |        balances[sender] = balances[sender].add(amount);
    |        TokenPurchase(sender, weiAmount, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |
    |        // Update state.
  > |        weiRaised = updatedWeiRaised;
    |
    |        // Forward the fund to fund collection wallet.
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |
    |        // Transfer the rest of token to TB team
  > |        balances[wallet] = balances[wallet].add(balances[0xb1]);
    |        balances[0xb1] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |        // Transfer the rest of token to TB team
    |        balances[wallet] = balances[wallet].add(balances[0xb1]);
  > |        balances[0xb1] = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TBCoin':
    |        require(buyer != wallet);
    |
  > |        preICO_address[ buyer ] = true;
    |
    |        // Transfer
  at /home/jiaming/mavs_srcs/contract@0xc2ac61bc8645e5571b433b2af6110dbd2f094d05.sol(260)


