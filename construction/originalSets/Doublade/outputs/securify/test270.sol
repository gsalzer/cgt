Processing contract: /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol:Configurable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol:ZHVGToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | **/
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(131)

[33mWarning[0m for LockedEther in contract 'Configurable':
    | * @dev Configurable varriables of the contract
    | **/
  > |contract Configurable {
    |    uint256 public constant cap = 1000000*10**18;
    |    uint256 public constant basePrice = 100*10**18; // tokens per 1 ether
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    | **/
    |contract Configurable {
  > |    uint256 public constant cap = 1000000*10**18;
    |    uint256 public constant basePrice = 100*10**18; // tokens per 1 ether
    |    uint256 public tokensSold = 0;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    |contract Configurable {
    |    uint256 public constant cap = 1000000*10**18;
  > |    uint256 public constant basePrice = 100*10**18; // tokens per 1 ether
    |    uint256 public tokensSold = 0;
    |    
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    |    uint256 public constant cap = 1000000*10**18;
    |    uint256 public constant basePrice = 100*10**18; // tokens per 1 ether
  > |    uint256 public tokensSold = 0;
    |    
    |    uint256 public constant tokenReserve = 1000000*10**18;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(239)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    |    uint256 public tokensSold = 0;
    |    
  > |    uint256 public constant tokenReserve = 1000000*10**18;
    |    uint256 public remainingTokens = 0;
    |}
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(241)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    |    
    |    uint256 public constant tokenReserve = 1000000*10**18;
  > |    uint256 public remainingTokens = 0;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(242)

[33mWarning[0m for DAOConstantGas in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[33mWarning[0m for DAOConstantGas in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for LockedEther in contract 'CrowdsaleToken':
    | * @dev Contract to preform crowd sale with token
    | **/
  > |contract CrowdsaleToken is StandardToken, Configurable, Ownable {
    |    /**
    |     * @dev enum of current crowd sale state
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(249)

[31mViolation[0m for TODAmount in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for TODAmount in contract 'CrowdsaleToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(296)

[33mWarning[0m for TODAmount in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[31mViolation[0m for TODReceiver in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[31mViolation[0m for TODReceiver in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for TODReceiver in contract 'CrowdsaleToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(296)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(296)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        require(_value <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |    
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |     **/
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |     **/
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        }
    |        
  > |        tokensSold = tokensSold.add(tokens); // Increment raised amount
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        
    |        tokensSold = tokensSold.add(tokens); // Increment raised amount
  > |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
    |            msg.sender.transfer(returnWei);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        }
    |        
  > |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        emit Transfer(address(this), msg.sender, tokens);
  > |        totalSupply_ = totalSupply_.add(tokens);
    |        owner.transfer(weiAmount);// Send money to owner
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        // Transfer any remaining tokens
    |        if(remainingTokens > 0)
  > |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
    |        owner.transfer(address(this).balance); 
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      require(newOwner != address(0));
    |      emit OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    function startIco() public onlyOwner {
    |        require(currentStage != Stages.icoEnd);
  > |        currentStage = Stages.icoStart;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |     **/
    |    function endIco() internal {
  > |        currentStage = Stages.icoEnd;
    |        // Transfer any remaining tokens
    |        if(remainingTokens > 0)
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(318)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | **/
    | 
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | 
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     **/
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |      require(newOwner != address(0));
    |      emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |      require(newOwner != address(0));
    |      emit OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(80)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    /**
    |     * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |    mapping (address => mapping (address => uint256)) internal allowed;
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     **/
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     **/
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(225)

[33mWarning[0m for DAOConstantGas in contract 'ZHVGToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[33mWarning[0m for DAOConstantGas in contract 'ZHVGToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for LockedEther in contract 'ZHVGToken':
    | * @dev Contract to create the Kimera Token
    | **/
  > |contract ZHVGToken is CrowdsaleToken {
    |    string public constant name = "ZHVG-Token";
    |    string public constant symbol = "ZHVG";
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(340)

[31mViolation[0m for TODAmount in contract 'ZHVGToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for TODAmount in contract 'ZHVGToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(296)

[33mWarning[0m for TODAmount in contract 'ZHVGToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[31mViolation[0m for TODReceiver in contract 'ZHVGToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[31mViolation[0m for TODReceiver in contract 'ZHVGToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for TODReceiver in contract 'ZHVGToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(296)

[33mWarning[0m for UnhandledException in contract 'ZHVGToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(296)

[33mWarning[0m for UnhandledException in contract 'ZHVGToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[33mWarning[0m for UnhandledException in contract 'ZHVGToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZHVGToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZHVGToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZHVGToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        require(_value <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |    
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |    
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |     **/
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |     **/
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        }
    |        
  > |        tokensSold = tokensSold.add(tokens); // Increment raised amount
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        
    |        tokensSold = tokensSold.add(tokens); // Increment raised amount
  > |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
    |            msg.sender.transfer(returnWei);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        }
    |        
  > |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        emit Transfer(address(this), msg.sender, tokens);
  > |        totalSupply_ = totalSupply_.add(tokens);
    |        owner.transfer(weiAmount);// Send money to owner
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |        // Transfer any remaining tokens
    |        if(remainingTokens > 0)
  > |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
    |        owner.transfer(address(this).balance); 
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |      require(newOwner != address(0));
    |      emit OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |    function startIco() public onlyOwner {
    |        require(currentStage != Stages.icoEnd);
  > |        currentStage = Stages.icoStart;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'ZHVGToken':
    |     **/
    |    function endIco() internal {
  > |        currentStage = Stages.icoEnd;
    |        // Transfer any remaining tokens
    |        if(remainingTokens > 0)
  at /home/jiaming/mavs_srcs/contract@0x1282adc3920f7926392d7ebeb44522d0296ae977.sol(318)


