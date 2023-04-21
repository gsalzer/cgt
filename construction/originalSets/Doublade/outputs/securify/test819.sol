Processing contract: /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol:Ludcoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(150)

[33mWarning[0m for DAOConstantGas in contract 'Ludcoin':
    |    function forwardFundsToWallet() internal {
    |        // immediately send Ether to wallet address, propagates exception if execution fails        
  > |        walletETH.transfer(msg.value); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(320)

[33mWarning[0m for LockedEther in contract 'Ludcoin':
    |}
    |
  > |contract Ludcoin is StandardToken {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(232)

[33mWarning[0m for UnhandledException in contract 'Ludcoin':
    |    function forwardFundsToWallet() internal {
    |        // immediately send Ether to wallet address, propagates exception if execution fails        
  > |        walletETH.transfer(msg.value); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ludcoin':
    |    function forwardFundsToWallet() internal {
    |        // immediately send Ether to wallet address, propagates exception if execution fails        
  > |        walletETH.transfer(msg.value); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |  
    |  function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |  
    |  function increaseApproval (address _spender, uint _addedValue) public whenNotPaused returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        
    |        assignTokens(msg.sender, amount);
  > |        totalRaised = totalRaised.add(msg.value);
    |        forwardFundsToWallet();
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        }
    |        
  > |        balances[tokenSale] = balances[tokenSale].sub(amountTotal);   
    |        balances[recipient] = balances[recipient].add(amountTotal);
    |        tokensSold = tokensSold.add(amountTotal);        
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        
    |        balances[tokenSale] = balances[tokenSale].sub(amountTotal);   
  > |        balances[recipient] = balances[recipient].add(amountTotal);
    |        tokensSold = tokensSold.add(amountTotal);        
    |       
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        balances[tokenSale] = balances[tokenSale].sub(amountTotal);   
    |        balances[recipient] = balances[recipient].add(amountTotal);
  > |        tokensSold = tokensSold.add(amountTotal);        
    |       
    |        //test token sold, if it was sold more than the total available right total token total
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        if (tokensSold > totalTokenToSale) {
    |            uint256 diferenceTotalSale = totalTokenToSale.sub(tokensSold);
  > |            totalTokenToSale = tokensSold;
    |            totalSupply = tokensSold.add(diferenceTotalSale);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |            uint256 diferenceTotalSale = totalTokenToSale.sub(tokensSold);
    |            totalTokenToSale = tokensSold;
  > |            totalSupply = tokensSold.add(diferenceTotalSale);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        //send tokens 
    |        balances[contractAddress] = 0;
  > |        balances[walletTeam] = balances[walletTeam].add(amount);
    |        balances[walletAdvisors] = balances[walletAdvisors].add(amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        balances[contractAddress] = 0;
    |        balances[walletTeam] = balances[walletTeam].add(amount);
  > |        balances[walletAdvisors] = balances[walletAdvisors].add(amount);
    |        
    |        emit Transfer(contractAddress, walletTeam, amount);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
    |    }   
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |    function setRate(uint256 _rate) public onlyOwner { 
    |        require(_rate > 0);               
  > |        rate = _rate;        
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        require(_icoStage >= 0); 
    |        require(_icoStage <= 4);             
  > |        icoStage = _icoStage;        
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |
    |    function setPauseEmergence() public onlyOwner {        
  > |        pauseEmergence = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |
    |    function setUnPauseEmergence() public onlyOwner {        
  > |        pauseEmergence = false;
    |    }   
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'Ludcoin':
    |        
    |        //send tokens 
  > |        balances[contractAddress] = 0;
    |        balances[walletTeam] = balances[walletTeam].add(amount);
    |        balances[walletAdvisors] = balances[walletAdvisors].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(377)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(47)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(106)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken, Pausable {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  
    |  function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  
    |  function increaseApproval (address _spender, uint _addedValue) public whenNotPaused returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x34b4b86ce533fdd5531a2350236c3f348fabce20.sol(90)


