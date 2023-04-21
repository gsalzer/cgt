Processing contract: /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(23)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |}
    |
  > |contract TokenERC20 is owned {
    |	
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |		require(_value <= balances[msg.sender]);
    |		if(!frozenAccount[msg.sender]){
  > |		    balances[msg.sender] = balances[msg.sender].sub(_value);
    |		    balances[_to] = balances[_to].add(_value);
    |		    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |		if(!frozenAccount[msg.sender]){
    |		    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |		    balances[_to] = balances[_to].add(_value);
    |		    emit Transfer(msg.sender, _to, _value);
    |		    return true;
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |		require(_value <= allowed[_from][msg.sender]);
    |		if(!frozenAccount[_from]){
  > |		    balances[_from] = balances[_from].sub(_value);
    |		    balances[_to] = balances[_to].add(_value);
    |		    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |		if(!frozenAccount[_from]){
    |		    balances[_from] = balances[_from].sub(_value);
  > |		    balances[_to] = balances[_to].add(_value);
    |		    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |		    balances[_from] = balances[_from].sub(_value);
    |		    balances[_to] = balances[_to].add(_value);
  > |		    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		    emit Transfer(_from, _to, _value);
    |		    return true;
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |		allowed[msg.sender][_spender] = _value;
    |		emit Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |	function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |		allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |		emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |		uint oldValue = allowed[msg.sender][_spender];
    |		if (_subtractedValue > oldValue) {
  > |			allowed[msg.sender][_spender] = 0;
    |		} else {
    |			allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |			allowed[msg.sender][_spender] = 0;
    |		} else {
  > |			allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |		}
    |		emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |       function burnFrom(address _from, uint256 _value) public onlyOwner returns (bool success) {
    |        require(balances[_from] >= _value);              
  > |        balances[_from] = balances[_from].sub(_value);                          
    |        balances[msg.sender] = balances[msg.sender].add(_value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balances[_from] >= _value);              
    |        balances[_from] = balances[_from].sub(_value);                          
  > |        balances[msg.sender] = balances[msg.sender].add(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(191)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x74b0f78ea4ca63e3f791bcd30fb3a3c539c808b9.sol(70)


