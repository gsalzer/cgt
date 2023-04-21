Processing contract: /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol:TokenContract
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
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(73)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    _;
    |  }
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(44)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(122)

[33mWarning[0m for LockedEther in contract 'TokenContract':
    |// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    |
  > |contract TokenContract is Ownable, StandardToken {
    |    string public constant name = "CarVDB";
    |    string public constant symbol = "CAR";
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |    function setIcoContract(address _icoContract) onlyOwner public {
    |        require(_icoContract != address(0));
  > |        icoContract = _icoContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |
    |    function pauseToken() public onlyOwner {
  > |      paused = true;
    |      TokenIsPaused(paused);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenContract':
    |
    |    function unpauseToken() public onlyOwner {
  > |      paused = false;
    |      TokenIsPaused(paused);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x60061c1779fbd2c1dd859ee6b5e8db8f70015a1d.sol(180)


