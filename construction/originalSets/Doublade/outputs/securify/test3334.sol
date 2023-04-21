Processing contract: /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol:PLST
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(144)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(85)

[33mWarning[0m for DAOConstantGas in contract 'PLST':
    |    function safeWithdrawal(uint _value ) onlyOwner public {
    |       if (_value == 0) 
  > |           owner.transfer(address(this).balance);
    |       else
    |           owner.transfer(_value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(304)

[33mWarning[0m for DAOConstantGas in contract 'PLST':
    |           owner.transfer(address(this).balance);
    |       else
  > |           owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(306)

[33mWarning[0m for LockedEther in contract 'PLST':
    | 
    |*/
  > |contract PLST is StandardToken, Ownable {
    |    // Constants
    |    string  public constant name = "philosafe token";
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(262)

[31mViolation[0m for TODAmount in contract 'PLST':
    |    function safeWithdrawal(uint _value ) onlyOwner public {
    |       if (_value == 0) 
  > |           owner.transfer(address(this).balance);
    |       else
    |           owner.transfer(_value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(304)

[33mWarning[0m for TODAmount in contract 'PLST':
    |           owner.transfer(address(this).balance);
    |       else
  > |           owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(306)

[31mViolation[0m for TODReceiver in contract 'PLST':
    |    function safeWithdrawal(uint _value ) onlyOwner public {
    |       if (_value == 0) 
  > |           owner.transfer(address(this).balance);
    |       else
    |           owner.transfer(_value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(304)

[31mViolation[0m for TODReceiver in contract 'PLST':
    |           owner.transfer(address(this).balance);
    |       else
  > |           owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(306)

[33mWarning[0m for UnhandledException in contract 'PLST':
    |    function safeWithdrawal(uint _value ) onlyOwner public {
    |       if (_value == 0) 
  > |           owner.transfer(address(this).balance);
    |       else
    |           owner.transfer(_value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(304)

[33mWarning[0m for UnhandledException in contract 'PLST':
    |           owner.transfer(address(this).balance);
    |       else
  > |           owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PLST':
    |    function safeWithdrawal(uint _value ) onlyOwner public {
    |       if (_value == 0) 
  > |           owner.transfer(address(this).balance);
    |       else
    |           owner.transfer(_value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(304)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PLST':
    |           owner.transfer(address(this).balance);
    |       else
  > |           owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |        require (balances[_to] + _value > balances[_to]); // Check for overflows
    |   
  > |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the sender
    |        balances[_to] = balances[_to].add(_value);                            // Add the same to the recipient
    |         
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |   
    |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the sender
  > |        balances[_to] = balances[_to].add(_value);                            // Add the same to the recipient
    |         
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |        require(!crowdsaleClosed);
    |        uint amount = msg.value ;               // calculates the amount
  > |        amountRaised = amountRaised.add(amount);
    |        _transfer(owner, msg.sender, amount.mul(buyPrice)); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |
    |        for(uint j = 0; j < _recipients.length; j++){
  > |            balances[_recipients[j]] = balances[_recipients[j]].add(_values[j]);
    |            Transfer(msg.sender, _recipients[j], _values[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(total);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |
    |    function setPrices(bool closebuy, uint256 newBuyPrice) onlyOwner public {
  > |        crowdsaleClosed = closebuy;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'PLST':
    |    function setPrices(bool closebuy, uint256 newBuyPrice) onlyOwner public {
    |        crowdsaleClosed = closebuy;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(291)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdb4f60edf67f58d8ba32d29afe1dc43de24fdd63.sol(249)


