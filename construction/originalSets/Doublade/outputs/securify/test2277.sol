Processing contract: /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol:GPower
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(84)

[33mWarning[0m for DAOConstantGas in contract 'GPower':
    |        }
    |        
  > |        wallet.transfer(msg.value);
    |
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(244)

[33mWarning[0m for LockedEther in contract 'GPower':
    |}
    |
  > |contract GPower is StandardToken, Ownable {
    |    string  public  constant name = "GPower";
    |    string  public  constant symbol = "GRP";
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(161)

[31mViolation[0m for TODReceiver in contract 'GPower':
    |        }
    |        
  > |        wallet.transfer(msg.value);
    |
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(244)

[33mWarning[0m for UnhandledException in contract 'GPower':
    |        }
    |        
  > |        wallet.transfer(msg.value);
    |
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(244)

[33mWarning[0m for UnhandledException in contract 'GPower':
    |    //*** EmergencyERC20Drain ***//
    |    function emergencyERC20Drain(ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GPower':
    |        }
    |        
  > |        wallet.transfer(msg.value);
    |
    |	}
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(244)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GPower':
    |    //*** EmergencyERC20Drain ***//
    |    function emergencyERC20Drain(ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |
    |    // KYBER-NOTE! code changed to comply with ERC20 standard
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |    // KYBER-NOTE! code changed to comply with ERC20 standard
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |    function burn(uint _value) onlyWhenTransferEnabled
    |        returns (bool){
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |        returns (bool){
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
    |        Transfer(msg.sender, address(0x0), _value);
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |        require(msg.value>0);
    |        require(msg.sender != 0x0);
  > |        wallet=owner;
    |        
    |        if(!stopSale){
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |            uint256 weiAmount;
    |            uint256 tokens;
  > |            wallet=owner;
    |        
    |            wallet=icoAddress;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |            wallet=owner;
    |        
  > |            wallet=icoAddress;
    |            
    |                if((icoStart+(7*24*60*60)) >= now){
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |    //*** Set CourceSale ***//
    |    function setCourceSale(uint256 value) public onlyOwner{
  > |        newCourceSale=value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |    	//*** Set Params For Sale ***//
    |	function setParamsStopSale(bool _value) public onlyOwner{
  > |	    stopSale=_value;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |	//*** Set ParamsTransfer ***//
    |	function setParamsTransfer(bool _value) public onlyOwner{
  > |	    transferEnabled=_value;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |	//*** Set ParamsICO ***//
    |    function setParamsIco(bool _value) public onlyOwner returns(bool result){
  > |        enableIco=_value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |    //*** Set ParamsICO ***//
    |    function startIco(uint _value) public onlyOwner returns(bool result){
  > |        stopSale=false;
    |        icoStart=_value;
    |        enableIco=true;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |    function startIco(uint _value) public onlyOwner returns(bool result){
    |        stopSale=false;
  > |        icoStart=_value;
    |        enableIco=true;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |        stopSale=false;
    |        icoStart=_value;
  > |        enableIco=true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'GPower':
    |    //*** Set Params For TotalSupply ***//
    |    function setParamsTotalSupply(uint256 value) public onlyOwner{
  > |        totalSupply=value;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(318)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9464e7d6dc5e8f34d162f3ca190d788f8ce8cc13.sol(144)


