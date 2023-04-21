Processing contract: /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol:AssamToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol:Configurable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol:CrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AssamToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[33mWarning[0m for DAOConstantGas in contract 'AssamToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for LockedEther in contract 'AssamToken':
    | * @dev Contract to create the Assam Token
    | **/
  > |contract AssamToken is CrowdsaleToken {
    |    string public constant name = "Assam";
    |    string public constant symbol = "AXM";
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(327)

[31mViolation[0m for TODAmount in contract 'AssamToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for TODAmount in contract 'AssamToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(287)

[33mWarning[0m for TODAmount in contract 'AssamToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[31mViolation[0m for TODReceiver in contract 'AssamToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[31mViolation[0m for TODReceiver in contract 'AssamToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for TODReceiver in contract 'AssamToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(287)

[33mWarning[0m for UnhandledException in contract 'AssamToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(287)

[33mWarning[0m for UnhandledException in contract 'AssamToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[33mWarning[0m for UnhandledException in contract 'AssamToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AssamToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AssamToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AssamToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        require(_value <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |    
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |    
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |     **/
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |     **/
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        }
    |        
  > |        tokensSold = tokensSold.add(tokens); // Increment raised amount
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        
    |        tokensSold = tokensSold.add(tokens); // Increment raised amount
  > |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
    |            msg.sender.transfer(returnWei);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        }
    |        
  > |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        emit Transfer(address(this), msg.sender, tokens);
  > |        totalSupply_ = totalSupply_.add(tokens);
    |        owner.transfer(weiAmount);// Send money to owner
    |    }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |        // Transfer any remaining tokens
    |        if(remainingTokens > 0)
  > |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
    |        owner.transfer(address(this).balance); 
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |      require(newOwner != address(0));
    |      emit OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |    function startIco() public onlyOwner {
    |        require(currentStage != Stages.icoEnd);
  > |        currentStage = Stages.icoStart;
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'AssamToken':
    |     **/
    |    function endIco() internal {
  > |        currentStage = Stages.icoEnd;
    |        // Transfer any remaining tokens
    |        if(remainingTokens > 0)
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(307)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | **/
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(125)

[33mWarning[0m for LockedEther in contract 'Configurable':
    | * @dev Configurable varriables of the contract
    | **/
  > |contract Configurable {
    |    uint256 public constant cap = 1000000*10**18;
    |    uint256 public constant basePrice = 100*10**18; // tokens per 1 ether
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    | **/
    |contract Configurable {
  > |    uint256 public constant cap = 1000000*10**18;
    |    uint256 public constant basePrice = 100*10**18; // tokens per 1 ether
    |    uint256 public tokensSold = 0;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    |contract Configurable {
    |    uint256 public constant cap = 1000000*10**18;
  > |    uint256 public constant basePrice = 100*10**18; // tokens per 1 ether
    |    uint256 public tokensSold = 0;
    |    
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    |    uint256 public constant cap = 1000000*10**18;
    |    uint256 public constant basePrice = 100*10**18; // tokens per 1 ether
  > |    uint256 public tokensSold = 0;
    |    
    |    uint256 public constant tokenReserve = 1000000*10**18;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    |    uint256 public tokensSold = 0;
    |    
  > |    uint256 public constant tokenReserve = 1000000*10**18;
    |    uint256 public remainingTokens = 0;
    |}
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'Configurable':
    |    
    |    uint256 public constant tokenReserve = 1000000*10**18;
  > |    uint256 public remainingTokens = 0;
    |}
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(234)

[33mWarning[0m for DAOConstantGas in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[33mWarning[0m for DAOConstantGas in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for LockedEther in contract 'CrowdsaleToken':
    | * @dev Contract to preform crowd sale with token
    | **/
  > |contract CrowdsaleToken is StandardToken, Configurable, Ownable {
    |    /**
    |     * @dev enum of current crowd sale state
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(240)

[31mViolation[0m for TODAmount in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for TODAmount in contract 'CrowdsaleToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(287)

[33mWarning[0m for TODAmount in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[31mViolation[0m for TODReceiver in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[31mViolation[0m for TODReceiver in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for TODReceiver in contract 'CrowdsaleToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(287)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(287)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  > |            msg.sender.transfer(returnWei);
    |            emit Transfer(address(this), msg.sender, returnWei);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  > |        owner.transfer(weiAmount);// Send money to owner
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleToken':
    |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
  > |        owner.transfer(address(this).balance); 
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        require(_value <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |    
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |     **/
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |     **/
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        }
    |        
  > |        tokensSold = tokensSold.add(tokens); // Increment raised amount
    |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        
    |        tokensSold = tokensSold.add(tokens); // Increment raised amount
  > |        remainingTokens = cap.sub(tokensSold);
    |        if(returnWei > 0){
    |            msg.sender.transfer(returnWei);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        }
    |        
  > |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        emit Transfer(address(this), msg.sender, tokens);
    |        totalSupply_ = totalSupply_.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        balances[msg.sender] = balances[msg.sender].add(tokens);
    |        emit Transfer(address(this), msg.sender, tokens);
  > |        totalSupply_ = totalSupply_.add(tokens);
    |        owner.transfer(weiAmount);// Send money to owner
    |    }
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |        // Transfer any remaining tokens
    |        if(remainingTokens > 0)
  > |            balances[owner] = balances[owner].add(remainingTokens);
    |        // transfer any remaining ETH balance in the contract to the owner
    |        owner.transfer(address(this).balance); 
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |      require(newOwner != address(0));
    |      emit OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |    function startIco() public onlyOwner {
    |        require(currentStage != Stages.icoEnd);
  > |        currentStage = Stages.icoStart;
    |    }
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleToken':
    |     **/
    |    function endIco() internal {
  > |        currentStage = Stages.icoEnd;
    |        // Transfer any remaining tokens
    |        if(remainingTokens > 0)
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(307)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | **/
    | 
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | 
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |/**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     **/
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |      require(newOwner != address(0));
    |      emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |      require(newOwner != address(0));
    |      emit OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(77)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    /**
    |     * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(6)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    }
    |}
  > |contract StandardToken is ERC20, BasicToken {
    |    mapping (address => mapping (address => uint256)) internal allowed;
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     **/
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     **/
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x60a41dcc8d48a32dde8ef4cca4ef044e8304df38.sol(218)


