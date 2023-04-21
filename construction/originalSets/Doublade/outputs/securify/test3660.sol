Processing contract: /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol:DexAlpha
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol:SaferMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |
    |  using SaferMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |    balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(173)

[31mViolation[0m for LockedEther in contract 'DexAlpha':
    |
    |
  > |contract DexAlpha is StandardToken, Ownable {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(359)

[31mViolation[0m for UnrestrictedWrite in contract 'DexAlpha':
    |  function incNonce() {
    |
  > |    nonce += 1;
    |
    |    if(nonce > 100) {
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(387)

[31mViolation[0m for UnrestrictedWrite in contract 'DexAlpha':
    |    if(nonce > 100) {
    |
  > |        nonce = 0;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(391)

[31mViolation[0m for UnrestrictedWrite in contract 'DexAlpha':
    |      if(recipient != NULL_ADDRESS) {
    |
  > |        balances[owner] -= amt;
    |
    |        balances[recipient] += amt;
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(425)

[31mViolation[0m for UnrestrictedWrite in contract 'DexAlpha':
    |        balances[owner] -= amt;
    |
  > |        balances[recipient] += amt;
    |
    |        Transfer(owner, recipient, amt);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(427)

[33mWarning[0m for UnrestrictedWrite in contract 'DexAlpha':
    |    // SafeMath.sub will throw if there is not enough balance.
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |    balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'DexAlpha':
    |    balances[_to] = balances[_to].add(_value);
    |
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'DexAlpha':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |
  > |    allowed[msg.sender][_spender] = _value;
    |
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'DexAlpha':
    |  function increaseApproval (address _spender, uint _addedValue) returns (bool success) {
    |
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'DexAlpha':
    |    if (_subtractedValue > oldValue) {
    |
  > |      allowed[msg.sender][_spender] = 0;
    |
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'DexAlpha':
    |    } else {
    |
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'DexAlpha':
    |    OwnershipTransferred(owner, newOwner);
    |
  > |    owner = newOwner;
    |
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(89)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   */
    |
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |
    |    require(newOwner != address(0));
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    OwnershipTransferred(owner, newOwner);
    |
  > |    owner = newOwner;
    |
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(89)

[33mWarning[0m for LockedEther in contract 'SaferMath':
    |
    |
  > |library SaferMath {
    |
    |  function mulX(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(97)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |    balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |
  > |    allowed[msg.sender][_spender] = _value;
    |
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue) returns (bool success) {
    |
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if (_subtractedValue > oldValue) {
    |
  > |      allowed[msg.sender][_spender] = 0;
    |
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    } else {
    |
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf001f36acb8a11158eae0983b6bc24ae0c7239dd.sol(345)


