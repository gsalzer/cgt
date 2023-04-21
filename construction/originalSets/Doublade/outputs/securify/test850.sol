Processing contract: /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol:ATFSToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol:Base
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol:ERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ATFSToken':
    |    }
    |}
  > |contract ATFSToken is ERC20 {
    |    using SafeMath for uint;
    |    string public name = "ATFS Token";
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |    function transfer(address _to, uint _value) public isStartedOnly returns (bool success) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |    function approve_fixed(address _spender, uint _currentValue, uint _value) public isStartedOnly returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
  > |            allowed[msg.sender][_spender] = _value;
    |            Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |    }
    |    function approve(address _spender, uint _value) public isStartedOnly returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |    }
    |    function transferOwnership(address _newOwner) public only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public only(newOwner) {
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |    function acceptOwnership() public only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |    isNotStartedOnly
    |    {
  > |        isStarted = true;
    |    }
    |    function emergencyStop()
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |    only(owner)
    |    {
  > |        isStarted = false;
    |    }
    |    //================= Crowdsale Only =================
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |    returns(bool)
    |    {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSToken':
    |    {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(159)

[33mWarning[0m for LockedEther in contract 'Base':
    |pragma solidity ^0.4.15;
  > |contract Base {
    |    modifier only(address allowed) {
    |        require(msg.sender == allowed);
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(2)

[33mWarning[0m for LockedEther in contract 'ERC20':
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |}
  > |contract ERC20 is Owned {
    |    event Transfer(address indexed _from, address indexed _to, uint _value);
    |    event Approval(address indexed _owner, address indexed _spender, uint _value);
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |        owner = msg.sender;
    |    }
  > |    function transferOwnership(address _newOwner) public only(owner) {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |        } else { return false; }
    |    }
  > |    function transferFrom(address _from, address _to, uint _value) public isStartedOnly returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |        } else { return false; }
    |    }
  > |    function balanceOf(address _owner) public constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |        return balances[_owner];
    |    }
  > |    function approve_fixed(address _spender, uint _currentValue, uint _value) public isStartedOnly returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
    |            allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |        }
    |    }
  > |    function approve(address _spender, uint _value) public isStartedOnly returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |        return true;
    |    }
  > |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |}
    |contract Owned is Base {
  > |    address public owner;
    |    address newOwner;
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    mapping (address => uint) balances;
    |    mapping (address => mapping (address => uint)) allowed;
  > |    uint public totalSupply;
    |    bool    public isStarted = false;
    |    modifier isStartedOnly() {
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    mapping (address => mapping (address => uint)) allowed;
    |    uint public totalSupply;
  > |    bool    public isStarted = false;
    |    modifier isStartedOnly() {
    |        require(isStarted);
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transfer(address _to, uint _value) public isStartedOnly returns (bool success) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function approve_fixed(address _spender, uint _currentValue, uint _value) public isStartedOnly returns (bool success) {
    |        if(allowed[msg.sender][_spender] == _currentValue){
  > |            allowed[msg.sender][_spender] = _value;
    |            Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    }
    |    function approve(address _spender, uint _value) public isStartedOnly returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    }
    |    function transferOwnership(address _newOwner) public only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public only(newOwner) {
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function acceptOwnership() public only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(62)

[33mWarning[0m for LockedEther in contract 'Owned':
    |  }
    |}
  > |contract Owned is Base {
    |    address public owner;
    |    address newOwner;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |        owner = msg.sender;
    |    }
  > |    function transferOwnership(address _newOwner) public only(owner) {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |}
    |contract Owned is Base {
  > |    address public owner;
    |    address newOwner;
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    }
    |    function transferOwnership(address _newOwner) public only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public only(newOwner) {
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() public only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(62)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x369eb6821c94a78428f7c86c768590f53950068f.sol(29)


