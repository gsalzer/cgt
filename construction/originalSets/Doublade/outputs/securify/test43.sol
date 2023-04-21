Processing contract: /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol:FUToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FUToken':
    |    mapping (address => mapping (address => uint256)) allowed;
    |}
  > |contract FUToken is StandardToken, Owned {
    |    // metadata
    |    string public constant name = "Fuel of Token";
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'FUToken':
    |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'FUToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'FUToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'FUToken':
    |        require ((_value==0) || (allowed[msg.sender][_spender] ==0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'FUToken':
    |    ///  an unowned neutral vault, however that cannot be undone
    |    function changeOwner(address _newOwner) onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'FUToken':
    |
    |    function setDisabled(bool flag) external onlyOwner {
  > |        disabled = flag;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(142)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    /// @dev `owner` is the only address that can call a function with this
    |    /// modifier
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    /// @param _newOwner The address of the new owner. 0x0 can be used to create
    |    ///  an unowned neutral vault, however that cannot be undone
  > |    function changeOwner(address _newOwner) onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    address public owner;
    |
    |    /// @notice The Constructor assigns the message sender to be `owner`
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    address public newOwner;
    |
    |    /// @notice `owner` can step down and assign some other address to this role
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() {
    |        if (msg.sender == newOwner) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    ///  an unowned neutral vault, however that cannot be undone
    |    function changeOwner(address _newOwner) onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(67)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    }
    |}
  > |contract StandardToken is ERC20Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |}
    |contract StandardToken is ERC20Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) allowed;
    |}
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(12)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require ((_value==0) || (allowed[msg.sender][_spender] ==0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x027971a9609345ba6f2fa5b0f671cceba5d6ea54.sol(111)


