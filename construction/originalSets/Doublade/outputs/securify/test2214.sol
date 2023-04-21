Processing contract: /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol:StandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol:TWOPercent
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol:sMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TWOPercent':
    | */
    |
  > |contract TWOPercent is StandardToken, owned {
    |    uint public INITIAL_SUPPLY = 2000000000;
    |	string public name = 'TWOPercent';
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |
    |
  > |library sMath {
    |    function multiply(uint256 a, uint256 b) internal pure returns(uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |    
    |    function transferCrowdOwner(address newCrowdOwner) onlyOwner public {
  > |        crowdOwner = newCrowdOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns(bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].plus(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.subtract(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |    
    |    function setLockForAddr(address _address, uint _startLock, uint _endLock) onlyOwner public {
  > |        lockForAddrs[_address] = lockForAddr(_startLock, _endLock);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |
    |        if(balances[_from] >= _value) {
  > |            balances[_from] = balances[_from].subtract(_value);    
    |        } else {
    |            if(getLockStartForAddr(_from) > 0) {
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |                    uint twiceValue = _value.subtract(firstValue);
    |                    
  > |                    balances_crowd[_from] = balances_crowd[_from].subtract(firstValue);
    |                    balances[_from] = balances[_from].subtract(twiceValue);
    |                }else {
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |                    
    |                    balances_crowd[_from] = balances_crowd[_from].subtract(firstValue);
  > |                    balances[_from] = balances[_from].subtract(twiceValue);
    |                }else {
    |                    emit LockEvent(_from, _to, getLockStartForAddr(_from), getLockEndForAddr(_from), _value);
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |        }
    |        
  > |        if(msg.sender == crowdOwner)  balances_crowd[_to] = balances_crowd[_to].plus(_value);
    |        else balances[_to] = balances[_to].plus(_value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |        
    |        if(msg.sender == crowdOwner)  balances_crowd[_to] = balances_crowd[_to].plus(_value);
  > |        else balances[_to] = balances[_to].plus(_value);
    |        
    |        addTransForAddrs(_from, _to, 1, _value, balances[_from], balances_crowd[_from]);
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balances[target] = balances[target].plus(mintedAmount);
    |        totalSupply_ = totalSupply_.plus(mintedAmount);
    |        emit Transfer(address(0), address(this), mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balances[target] = balances[target].plus(mintedAmount);
  > |        totalSupply_ = totalSupply_.plus(mintedAmount);
    |        emit Transfer(address(0), address(this), mintedAmount);
    |        emit Transfer(address(this), target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |    function burn(uint256 _value) public returns(bool success) {
    |        require(balances[msg.sender] >= _value); // Check if the sender has enough
  > |        balances[msg.sender] = balances[msg.sender].subtract(_value); // Subtract from the sender
    |        totalSupply_ = totalSupply_.subtract(_value); // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |        require(balances[msg.sender] >= _value); // Check if the sender has enough
    |        balances[msg.sender] = balances[msg.sender].subtract(_value); // Subtract from the sender
  > |        totalSupply_ = totalSupply_.subtract(_value); // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |
    |    function frozenAllChange(bool stop) onlyOwner public {
  > |        frozenAll = stop;
    |        emit FrozenAll(frozenAll);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |        
    |    function addTransForAddrs(address _fromAddr, address _toAddr, uint8 _status, uint256 _amount, uint256 _balances, uint256 _balances_crowd) internal {
  > |        transForAddrs[_fromAddr].push(transForAddr(_fromAddr, _toAddr, _status, _amount, _balances, _balances_crowd, now));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |    function approve(address _spender, uint256 _value) public returns(bool) {
    |        require(!frozenAccount[_spender]); 
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |        require(!frozenAccount[_to]); 
    |
  > |        balances[_from] = balances[_from].subtract(_value);
    |        balances[_to] = balances[_to].plus(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].subtract(_value);
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |
    |        balances[_from] = balances[_from].subtract(_value);
  > |        balances[_to] = balances[_to].plus(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].subtract(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'TWOPercent':
    |        balances[_from] = balances[_from].subtract(_value);
    |        balances[_to] = balances[_to].plus(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].subtract(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(343)

[33mWarning[0m for LockedEther in contract 'owned':
    |
    |
  > |contract owned {
    |    address public owner;
    |    address public crowdOwner;
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |    
  > |    function transferCrowdOwner(address newCrowdOwner) onlyOwner public {
    |        crowdOwner = newCrowdOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |    address public crowdOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |contract owned {
    |    address public owner;
  > |    address public crowdOwner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    
    |    function transferCrowdOwner(address newCrowdOwner) onlyOwner public {
  > |        crowdOwner = newCrowdOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(55)

[33mWarning[0m for LockedEther in contract 'sMath':
    |
    |
  > |library sMath {
    |    function multiply(uint256 a, uint256 b) internal pure returns(uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x900f1fa183b983db490f8d68ec8273b8af427672.sol(4)


