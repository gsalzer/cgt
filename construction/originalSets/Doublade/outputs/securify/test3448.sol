Processing contract: /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol:APRInflationToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol:DelegateCallToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'APRInflationToken':
    |}
    |
  > |contract APRInflationToken is StandardToken, Ownable {
    |  // Constants used in calculations
    |  uint256 constant RATE_DECIMALS = 7;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'APRInflationToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'APRInflationToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'APRInflationToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'APRInflationToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'APRInflationToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'APRInflationToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'APRInflationToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(233)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(129)

[33mWarning[0m for LockedEther in contract 'DelegateCallToken':
    |}
    |
  > |contract DelegateCallToken is APRInflationToken {
    |  string public name    = 'DelegateCallToken';
    |  string public symbol  = 'DCT';
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'DelegateCallToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'DelegateCallToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'DelegateCallToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'DelegateCallToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'DelegateCallToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'DelegateCallToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'DelegateCallToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(233)

[33mWarning[0m for LockedEther in contract 'Math':
    |pragma solidity ^0.4.13;
    |
  > |library Math {
    |  function max64(uint64 a, uint64 b) internal pure returns (uint64) {
    |    return a >= b ? a : b;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(3)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(21)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe24ce380cc7298548e4c26404cb3b517f95c21bb.sol(233)


