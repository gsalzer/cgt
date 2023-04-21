Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:LamdenTau
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:Mediator
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:Presale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:Sale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(92)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(300)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(224)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(291)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(289)

[33mWarning[0m for LockedEther in contract 'LamdenTau':
    |}
    |
  > |contract LamdenTau is MintableToken {
    |    string public constant name = "Lamden Tau";
    |    string public constant symbol = "TAU";
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'LamdenTau':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(218)

[33mWarning[0m for LockedEther in contract 'Mediator':
    |}
    |
  > |contract Mediator is Ownable {
    |    address public presale;
    |    LamdenTau public tau;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(462)

[31mViolation[0m for MissingInputValidation in contract 'Mediator':
    |    address public sale;
    |    
  > |    function setPresale(address p) public onlyOwner { presale = p; }
    |    function setTau(address t) public onlyOwner { tau = LamdenTau(t); }
    |    function setSale(address s) public onlyOwner { sale = s; }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(467)

[31mViolation[0m for MissingInputValidation in contract 'Mediator':
    |    
    |    function setPresale(address p) public onlyOwner { presale = p; }
  > |    function setTau(address t) public onlyOwner { tau = LamdenTau(t); }
    |    function setSale(address s) public onlyOwner { sale = s; }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(468)

[31mViolation[0m for MissingInputValidation in contract 'Mediator':
    |    function setPresale(address p) public onlyOwner { presale = p; }
    |    function setTau(address t) public onlyOwner { tau = LamdenTau(t); }
  > |    function setSale(address s) public onlyOwner { sale = s; }
    |    
    |    modifier onlyPresale {
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(469)

[33mWarning[0m for MissingInputValidation in contract 'Mediator':
    |
    |    //Variables
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Mediator':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    |    //    Modifiers
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Mediator':
    |     */
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Mediator':
    |    }
    |
  > |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Mediator':
    |
    |contract Mediator is Ownable {
  > |    address public presale;
    |    LamdenTau public tau;
    |    address public sale;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(463)

[33mWarning[0m for MissingInputValidation in contract 'Mediator':
    |contract Mediator is Ownable {
    |    address public presale;
  > |    LamdenTau public tau;
    |    address public sale;
    |    
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(464)

[33mWarning[0m for MissingInputValidation in contract 'Mediator':
    |    address public presale;
    |    LamdenTau public tau;
  > |    address public sale;
    |    
    |    function setPresale(address p) public onlyOwner { presale = p; }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(465)

[33mWarning[0m for MissingInputValidation in contract 'Mediator':
    |    }
    |    
  > |    function acceptToken() public onlyPresale { tau.acceptOwnership(); }
    |    function passOff() public onlySale { tau.transferOwnership(sale); }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(481)

[33mWarning[0m for MissingInputValidation in contract 'Mediator':
    |    
    |    function acceptToken() public onlyPresale { tau.acceptOwnership(); }
  > |    function passOff() public onlySale { tau.transferOwnership(sale); }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(482)

[33mWarning[0m for UnhandledException in contract 'Mediator':
    |    }
    |    
  > |    function acceptToken() public onlyPresale { tau.acceptOwnership(); }
    |    function passOff() public onlySale { tau.transferOwnership(sale); }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(481)

[33mWarning[0m for UnhandledException in contract 'Mediator':
    |    
    |    function acceptToken() public onlyPresale { tau.acceptOwnership(); }
  > |    function passOff() public onlySale { tau.transferOwnership(sale); }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(482)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mediator':
    |    }
    |    
  > |    function acceptToken() public onlyPresale { tau.acceptOwnership(); }
    |    function passOff() public onlySale { tau.transferOwnership(sale); }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Mediator':
    |    
    |    function acceptToken() public onlyPresale { tau.acceptOwnership(); }
  > |    function passOff() public onlySale { tau.transferOwnership(sale); }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'Mediator':
    |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Mediator':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Mediator':
    |    address public sale;
    |    
  > |    function setPresale(address p) public onlyOwner { presale = p; }
    |    function setTau(address t) public onlyOwner { tau = LamdenTau(t); }
    |    function setSale(address s) public onlyOwner { sale = s; }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'Mediator':
    |    
    |    function setPresale(address p) public onlyOwner { presale = p; }
  > |    function setTau(address t) public onlyOwner { tau = LamdenTau(t); }
    |    function setSale(address s) public onlyOwner { sale = s; }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'Mediator':
    |    function setPresale(address p) public onlyOwner { presale = p; }
    |    function setTau(address t) public onlyOwner { tau = LamdenTau(t); }
  > |    function setSale(address s) public onlyOwner { sale = s; }
    |    
    |    modifier onlyPresale {
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(469)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(218)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |
    |    //Variables
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |    //Variables
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    |    //    Modifiers
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     */
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(60)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(300)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(291)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(300)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |        // set the ownership to the mediator so it can pass it onto the sale contract
    |        // at the time that the sale contract is deployed
  > |        token.transferOwnership(mediator);
    |        Mediator m = Mediator(mediator);
    |        m.acceptToken();
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(401)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |        token.transferOwnership(mediator);
    |        Mediator m = Mediator(mediator);
  > |        m.acceptToken();
    |    }
    |    // * * * 
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(403)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    function allocateTokens() public onlyOwner returns(bool) {
    |        require(hasAllocated == false);
  > |        token.mint(team, teamShare);
    |        token.mint(seed, seedShare);
    |        hasAllocated = true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(437)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |        require(hasAllocated == false);
    |        token.mint(team, teamShare);
  > |        token.mint(seed, seedShare);
    |        hasAllocated = true;
    |        return hasAllocated;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(438)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    
    |    function acceptToken() public onlyOwner returns(bool) {
  > |        token.acceptOwnership();
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(444)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    function mintTokens(uint256 tokenAmount) public onlyOwner {
    |       require(!isFinalized);
  > |       token.mint(wallet, tokenAmount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |        // set the ownership to the mediator so it can pass it onto the sale contract
    |        // at the time that the sale contract is deployed
  > |        token.transferOwnership(mediator);
    |        Mediator m = Mediator(mediator);
    |        m.acceptToken();
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(401)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |        token.transferOwnership(mediator);
    |        Mediator m = Mediator(mediator);
  > |        m.acceptToken();
    |    }
    |    // * * * 
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(403)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    function allocateTokens() public onlyOwner returns(bool) {
    |        require(hasAllocated == false);
  > |        token.mint(team, teamShare);
    |        token.mint(seed, seedShare);
    |        hasAllocated = true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |        require(hasAllocated == false);
    |        token.mint(team, teamShare);
  > |        token.mint(seed, seedShare);
    |        hasAllocated = true;
    |        return hasAllocated;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(438)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    
    |    function acceptToken() public onlyOwner returns(bool) {
  > |        token.acceptOwnership();
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    function mintTokens(uint256 tokenAmount) public onlyOwner {
    |       require(!isFinalized);
  > |       token.mint(wallet, tokenAmount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(456)

[31mViolation[0m for UnrestrictedWrite in contract 'Presale':
    |    function whitelistUsers(address[] users) external onlyOwner {
    |        for (uint i = 0; i < users.length; i++) {
  > |            whitelist[users[i]] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(420)

[31mViolation[0m for UnrestrictedWrite in contract 'Presale':
    |    function unWhitelistUsers(address[] users) external onlyOwner {
    |        for (uint i = 0; i < users.length; i++) {
  > |            whitelist[users[i]] = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |      Finalized();
    |
  > |      isFinalized = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    // Contract Specific functions
    |    function assignMediator(address _m) public onlyOwner returns(bool) {
  > |        mediator = _m;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    
    |    function whitelistUser(address _a) public onlyOwner returns(bool){
  > |        whitelist[_a] = true;
    |        return whitelist[_a];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |    function unWhitelistUser(address _a) public onlyOwner returns(bool){
  > |        whitelist[_a] = false;
    |        return whitelist[_a];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |        token.mint(team, teamShare);
    |        token.mint(seed, seedShare);
  > |        hasAllocated = true;
    |        return hasAllocated;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    function changeEndTime(uint256 _e) public onlyOwner returns(uint256) {
    |        require(_e > startTime);
  > |        endTime = _e;
    |        return endTime;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(450)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.15;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(3)

[33mWarning[0m for DAOConstantGas in contract 'Sale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(300)

[33mWarning[0m for LockedEther in contract 'Sale':
    |}
    |
  > |contract Sale is CappedCrowdsale, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(485)

[33mWarning[0m for UnhandledException in contract 'Sale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(291)

[33mWarning[0m for UnhandledException in contract 'Sale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(300)

[33mWarning[0m for UnhandledException in contract 'Sale':
    |    
    |    function finalization() internal {
  > |        token.finishMinting();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(526)

[33mWarning[0m for UnhandledException in contract 'Sale':
    |    function claimToken(address _m) public onlyOwner returns(bool) {
    |        Mediator m = Mediator(_m);
  > |        m.passOff();
    |        token.acceptOwnership();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(531)

[33mWarning[0m for UnhandledException in contract 'Sale':
    |        Mediator m = Mediator(_m);
    |        m.passOff();
  > |        token.acceptOwnership();
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(532)

[33mWarning[0m for UnhandledException in contract 'Sale':
    |    function mintTokens(uint256 tokenAmount) public onlyOwner {
    |       require(!isFinalized);
  > |       token.mint(wallet, tokenAmount);
    |    }
    |    // * * *
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sale':
    |    
    |    function finalization() internal {
  > |        token.finishMinting();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(526)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sale':
    |    function claimToken(address _m) public onlyOwner returns(bool) {
    |        Mediator m = Mediator(_m);
  > |        m.passOff();
    |        token.acceptOwnership();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(531)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sale':
    |        Mediator m = Mediator(_m);
    |        m.passOff();
  > |        token.acceptOwnership();
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(532)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sale':
    |    function mintTokens(uint256 tokenAmount) public onlyOwner {
    |       require(!isFinalized);
  > |       token.mint(wallet, tokenAmount);
    |    }
    |    // * * *
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'Sale':
    |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Sale':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Sale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Sale':
    |      Finalized();
    |
  > |      isFinalized = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'Sale':
    |    function changeEndTime(uint256 _e) public onlyOwner returns(uint256) {
    |        require(_e > startTime);
  > |        endTime = _e;
    |        return endTime;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(538)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa877e7ce325ee070c47a9967658cb06bfa21fa4e.sol(181)


