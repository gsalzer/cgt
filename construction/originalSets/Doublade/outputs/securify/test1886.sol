Processing contract: /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol:GUT
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(75)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    
    |    if (backAmount > 0){
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(482)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    uint value = balances[msg.sender];
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(502)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  function transferToMultisig() public onlyOwner {
    |    require(this.balance >= softcap && now > endFinalStage2);  
  > |      wallet.transfer(this.balance);
    |  }  
    |}
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(507)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * must be owner of the token in order to be able to mint it.
    | */
  > |contract Crowdsale is Ownable {
    |  using SafeMath for uint256;
    |  // totalTokens
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(268)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |  function transferToMultisig() public onlyOwner {
    |    require(this.balance >= softcap && now > endFinalStage2);  
  > |      wallet.transfer(this.balance);
    |  }  
    |}
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(507)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |    
    |    if (backAmount > 0){
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(482)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |    
    |    if (backAmount > 0){
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(482)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |    uint value = balances[msg.sender];
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(502)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |  function transferToMultisig() public onlyOwner {
    |    require(this.balance >= softcap && now > endFinalStage2);  
  > |      wallet.transfer(this.balance);
    |  }  
    |}
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(507)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    
    |    require(tokens > 0);
  > |    token.mint(beneficiary, tokens);
    |    balances[msg.sender] = balances[msg.sender].add(msg.value);
    |    //wallet.transfer(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(477)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    
    |    if (backAmount > 0){
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(482)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(_to != address(0));
    |    require(now >= mintStart);
  > |    require(_amount <= totalTokens.sub(token.getTotalSupply()));
    |    token.mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(492)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(now >= mintStart);
    |    require(_amount <= totalTokens.sub(token.getTotalSupply()));
  > |    token.mint(_to, _amount);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(493)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint value = balances[msg.sender];
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(502)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function transferToMultisig() public onlyOwner {
    |    require(this.balance >= softcap && now > endFinalStage2);  
  > |      wallet.transfer(this.balance);
    |  }  
    |}
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(507)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    
    |    require(tokens > 0);
  > |    token.mint(beneficiary, tokens);
    |    balances[msg.sender] = balances[msg.sender].add(msg.value);
    |    //wallet.transfer(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(477)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    
    |    if (backAmount > 0){
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(482)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(_to != address(0));
    |    require(now >= mintStart);
  > |    require(_amount <= totalTokens.sub(token.getTotalSupply()));
    |    token.mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(now >= mintStart);
    |    require(_amount <= totalTokens.sub(token.getTotalSupply()));
  > |    token.mint(_to, _amount);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(493)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function transferToMultisig() public onlyOwner {
    |    require(this.balance >= softcap && now > endFinalStage2);  
  > |      wallet.transfer(this.balance);
    |  }  
    |}
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(507)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  
    |  function setRateEarlyStage1(uint _rateEarlyStage1) public {
  > |    rateEarlyStage1 = _rateEarlyStage1;
    |  }
    |  function setRateEarlyStage2(uint _rateEarlyStage2) public {
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(379)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  }
    |  function setRateEarlyStage2(uint _rateEarlyStage2) public {
  > |    rateEarlyStage2 = _rateEarlyStage2;
    |  }  
    |  function setRateEarlyStage3(uint _rateEarlyStage3) public {
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(382)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  }  
    |  function setRateEarlyStage3(uint _rateEarlyStage3) public {
  > |    rateEarlyStage3 = _rateEarlyStage3;
    |  }  
    |  function setRateEarlyStage4(uint _rateEarlyStage4) public {
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(385)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  }  
    |  function setRateEarlyStage4(uint _rateEarlyStage4) public {
  > |    rateEarlyStage4 = _rateEarlyStage4;
    |  }  
    |  
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(388)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  
    |  function setRateFinalStage1(uint _rateFinalStage1) public {
  > |    rateFinalStage1 = _rateFinalStage1;
    |  }  
    |  function setRateFinalStage2(uint _rateFinalStage2) public {
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(392)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  }  
    |  function setRateFinalStage2(uint _rateFinalStage2) public {
  > |    rateFinalStage2 = _rateFinalStage2;
    |  }   
    |  
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backAmount = msg.value.sub(weiAmount);
    |      }
  > |      totalEarlyStage = totalEarlyStage.add(tokens);
    |    }
    |    //EarlyStage2
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backAmount = msg.value.sub(weiAmount);
    |      }
  > |      totalEarlyStage = totalEarlyStage.add(tokens);
    |    }    
    |    //EarlyStage3
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backAmount = msg.value.sub(weiAmount);
    |      }
  > |      totalEarlyStage = totalEarlyStage.add(tokens);
    |    }    
    |    //EarlyStage4
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backAmount = msg.value.sub(weiAmount);
    |      }
  > |      totalEarlyStage = totalEarlyStage.add(tokens);
    |    }   
    |    //FinalStage1
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backAmount = msg.value.sub(weiAmount);
    |      }
  > |      totalFinalStage = totalFinalStage.add(tokens);
    |    }       
    |    //FinalStage2    
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backAmount = msg.value.sub(weiAmount);
    |      }
  > |      totalFinalStage = totalFinalStage.add(tokens);
    |    }        
    |    
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(tokens > 0);
    |    token.mint(beneficiary, tokens);
  > |    balances[msg.sender] = balances[msg.sender].add(msg.value);
    |    //wallet.transfer(weiAmount);
    |    
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(balances[msg.sender] > 0);
    |    uint value = balances[msg.sender];
  > |    balances[msg.sender] = 0;
    |    msg.sender.transfer(value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(183)

[33mWarning[0m for LockedEther in contract 'GUT':
    |}
    |
  > |contract GUT is Ownable, MintableToken {
    |  using SafeMath for uint256;    
    |  string public constant name = "Geekz Utility Token";
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'GUT':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(225)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(225)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(183)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(30)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x78e9a26a75918a8bcc363ce933c192a52bbb8c9f.sol(135)


