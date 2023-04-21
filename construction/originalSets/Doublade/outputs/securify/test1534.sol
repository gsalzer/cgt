Processing contract: /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol:BRM
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol:Owner
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol:Token
[33mWarning[0m for LockedEther in contract 'BRM':
    |
    |}
  > |contract BRM is Owner, StandardToken, SafeMath {
    |	string public constant name = "BrahmaOS";
    |	string public constant symbol = "BRM";
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_to] + _value < balances[_to]) revert(); // Check for overflows
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'BRM':
    |	/// @param _newOwner The address of the new owner. 0x0 can be used to create
    |	///  an unowned neutral vault, however that cannot be undone
  > |	function changeOwner(address _newOwner) public onlyOwner {
    |		newOwner = _newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |	}
    |
  > |	address public owner;
    |
    |	/// @notice The Constructor assigns the message sender to be `owner`
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |	}
    |
  > |	address public newOwner;
    |
    |	/// @notice `owner` can step down and assign some other address to this role
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |
    |
  > |	function acceptOwnership() public {
    |		if (msg.sender == newOwner) {
    |			owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |}
    |contract BRM is Owner, StandardToken, SafeMath {
  > |	string public constant name = "BrahmaOS";
    |	string public constant symbol = "BRM";
    |	uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |contract BRM is Owner, StandardToken, SafeMath {
    |	string public constant name = "BrahmaOS";
  > |	string public constant symbol = "BRM";
    |	uint256 public constant decimals = 18;
    |	string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |	string public constant name = "BrahmaOS";
    |	string public constant symbol = "BRM";
  > |	uint256 public constant decimals = 18;
    |	string public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |	string public constant symbol = "BRM";
    |	uint256 public constant decimals = 18;
  > |	string public version = "1.0";
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'BRM':
    |
    |
  > |	uint256 public constant total = 3 * 10**9 * 10**decimals;
    |
    |	function BRM() {
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'BRM':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'BRM':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'BRM':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'BRM':
    |	function acceptOwnership() public {
    |		if (msg.sender == newOwner) {
  > |			owner = newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'BRM':
    |	///  an unowned neutral vault, however that cannot be undone
    |	function changeOwner(address _newOwner) public onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(118)

[33mWarning[0m for LockedEther in contract 'Owner':
    |
    |}
  > |contract Owner {
    |
    |	/// @dev `owner` is the only address that can call a function with this
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'Owner':
    |	/// @param _newOwner The address of the new owner. 0x0 can be used to create
    |	///  an unowned neutral vault, however that cannot be undone
  > |	function changeOwner(address _newOwner) public onlyOwner {
    |		newOwner = _newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'Owner':
    |	}
    |
  > |	address public owner;
    |
    |	/// @notice The Constructor assigns the message sender to be `owner`
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Owner':
    |	}
    |
  > |	address public newOwner;
    |
    |	/// @notice `owner` can step down and assign some other address to this role
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Owner':
    |
    |
  > |	function acceptOwnership() public {
    |		if (msg.sender == newOwner) {
    |			owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Owner':
    |	function acceptOwnership() public {
    |		if (msg.sender == newOwner) {
  > |			owner = newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Owner':
    |	///  an unowned neutral vault, however that cannot be undone
    |	function changeOwner(address _newOwner) public onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(118)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    }
    |}
  > |contract SafeMath {
    |
    |    /* function assert(bool assertion) internal { */
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(65)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_to] + _value < balances[_to]) revert(); // Check for overflows
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61d1641b26394849af829eb8313f35de2716a713.sol(50)


