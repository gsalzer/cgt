Processing contract: /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol:SuperWalletToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.19;
  > |contract Owned {
    |    /// @dev `owner` is the only address that can call a function with this
    |    /// modifier
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    /// @param _newOwner The address of the new owner. 0x0 can be used to create
    |    ///  an unowned neutral vault, however that cannot be undone
  > |    function changeOwner(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    address public owner;
    |
    |    /// @notice The Constructor assigns the message sender to be `owner`
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    address public newOwner;
    |
    |    /// @notice `owner` can step down and assign some other address to this role
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    ///  an unowned neutral vault, however that cannot be undone
    |    function changeOwner(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(23)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |/*  ERC 20 token */
  > |contract StandardToken is ERC20Token {
    |    
    |    mapping (address => uint256) internal balances;
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function transfer(address _to, uint256 _value) public returns (bool success) 
    |    {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) 
    |    {
    |        require(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |        allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender],_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |    
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = sub(balances[_from],_value);
    |        balances[_to] = add(balances[_to],_value);
    |        allowed[_from][msg.sender] = sub(allowed[_from][msg.sender],_value);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        balances[_from] = sub(balances[_from],_value);
  > |        balances[_to] = add(balances[_to],_value);
    |        allowed[_from][msg.sender] = sub(allowed[_from][msg.sender],_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = sub(balances[_from],_value);
    |        balances[_to] = add(balances[_to],_value);
  > |        allowed[_from][msg.sender] = sub(allowed[_from][msg.sender],_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender],_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = sub(oldValue,_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require ((_value==0) || (allowed[msg.sender][_spender] ==0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = sub(oldValue,_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(150)

[33mWarning[0m for LockedEther in contract 'SuperWalletToken':
    |}
    |
  > |contract SuperWalletToken is StandardToken, Owned
    |{
    |    // metadata
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperWalletToken':
    |    function acceptOwnership() public {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperWalletToken':
    |    {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperWalletToken':
    |        balances[_from] = sub(balances[_from],_value);
    |        balances[_to] = add(balances[_to],_value);
  > |        allowed[_from][msg.sender] = sub(allowed[_from][msg.sender],_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperWalletToken':
    |        require ((_value==0) || (allowed[msg.sender][_spender] ==0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperWalletToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = add(allowed[msg.sender][_spender],_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperWalletToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = sub(oldValue,_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperWalletToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = sub(oldValue,_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperWalletToken':
    |    ///  an unowned neutral vault, however that cannot be undone
    |    function changeOwner(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperWalletToken':
    |    //在数据迁移时,需要先停止ATM交易
    |    function setDisabled(bool flag) external onlyOwner {
  > |        disabled = flag;
    |    }
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xae66d00496aaa25418f829140bb259163c06986e.sol(182)


