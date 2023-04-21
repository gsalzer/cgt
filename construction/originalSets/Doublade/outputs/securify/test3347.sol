Processing contract: /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol:TN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic, Ownable {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(83)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    if (backAmount > 0){
    |      balances[msg.sender] = balances[msg.sender].sub(backAmount);         
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    emit TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(410)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    uint value = balances[msg.sender];
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(420)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    address _this = this;
    |    require(totalSoldTokens >= softcap && now > endIco);  
  > |    wallet.transfer(_this.balance);
    |  } 
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(426)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * must be owner of the token in order to be able to mint it.
    | */
  > |contract Crowdsale is Ownable {
    |  using SafeMath for uint256;
    |  // soft cap
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(318)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |    address _this = this;
    |    require(totalSoldTokens >= softcap && now > endIco);  
  > |    wallet.transfer(_this.balance);
    |  } 
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(426)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |    if (backAmount > 0){
    |      balances[msg.sender] = balances[msg.sender].sub(backAmount);         
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    emit TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(410)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |    if (backAmount > 0){
    |      balances[msg.sender] = balances[msg.sender].sub(backAmount);         
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    emit TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(410)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |    uint value = balances[msg.sender];
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(420)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |    address _this = this;
    |    require(totalSoldTokens >= softcap && now > endIco);  
  > |    wallet.transfer(_this.balance);
    |  } 
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(426)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(tokens > 0);
    |    balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |    token.mint(msg.sender, tokens);
    |    if (backAmount > 0){
    |      balances[msg.sender] = balances[msg.sender].sub(backAmount);         
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(407)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    if (backAmount > 0){
    |      balances[msg.sender] = balances[msg.sender].sub(backAmount);         
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    emit TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(410)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint value = balances[msg.sender];
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(420)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    address _this = this;
    |    require(totalSoldTokens >= softcap && now > endIco);  
  > |    wallet.transfer(_this.balance);
    |  } 
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(426)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(tokens > 0);
    |    balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |    token.mint(msg.sender, tokens);
    |    if (backAmount > 0){
    |      balances[msg.sender] = balances[msg.sender].sub(backAmount);         
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(407)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    if (backAmount > 0){
    |      balances[msg.sender] = balances[msg.sender].sub(backAmount);         
  > |      msg.sender.transfer(backAmount);    
    |    }
    |    emit TokenProcurement(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    address _this = this;
    |    require(totalSoldTokens >= softcap && now > endIco);  
  > |    wallet.transfer(_this.balance);
    |  } 
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(426)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        backAmount = msg.value.sub(weiAmount);
    |      }
  > |      totalSoldTokens = totalSoldTokens.add(tokens);
    |    }        
    |    require(tokens > 0);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    }        
    |    require(tokens > 0);
  > |    balances[msg.sender] = balances[msg.sender].add(msg.value);
    |    token.mint(msg.sender, tokens);
    |    if (backAmount > 0){
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    token.mint(msg.sender, tokens);
    |    if (backAmount > 0){
  > |      balances[msg.sender] = balances[msg.sender].sub(backAmount);         
    |      msg.sender.transfer(backAmount);    
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(balances[msg.sender] > 0);
    |    uint value = balances[msg.sender];
  > |    balances[msg.sender] = 0;
    |    msg.sender.transfer(value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |  function setRateIco(uint _rateIco) public onlyOwner  {
  > |    rateIco = _rateIco;
    |  }   
    |  
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(376)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(285)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(83)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(6)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(83)

[33mWarning[0m for LockedEther in contract 'TN':
    |
    |
  > |contract TN is Ownable, MintableToken {
    |  using SafeMath for uint256;    
    |  string public constant name = "TNcoin";
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'TN':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc1fb43fbfff3ee41fa32c11ca6bf61e63a154ab.sol(285)


