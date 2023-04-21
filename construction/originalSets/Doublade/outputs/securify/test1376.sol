Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:CoinCool
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:DateTime
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:Frozenable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:Operational
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:Releaseable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:StandardBurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(306)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(218)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |  /**
    |   * @dev Modifier throws if called by any account other than the pendingOwner.
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(240)

[33mWarning[0m for LockedEther in contract 'CoinCool':
    |    }
    |}
  > |contract CoinCool is Releaseable {
    |    string public standard = '2018061200';
    |    string public name = 'CoolToken';
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(571)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinCool':
    |    function transferOperator(address newOperator) public onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(473)

[33mWarning[0m for LockedEther in contract 'DateTime':
    |  event Transfer(address indexed from, address indexed to, uint256 value);
    |}
  > |library DateTime {
    |        /*
    |         *  Date and Time utilities for ethereum contracts
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(13)

[33mWarning[0m for LockedEther in contract 'Frozenable':
    |    }
    |}
  > |contract Frozenable is Operational, StandardBurnableToken, ReentrancyGuard {
    |    using DateTime for uint256;
    |    struct FrozenRecord {
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Frozenable':
    |    function transferOperator(address newOperator) public onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(473)

[33mWarning[0m for LockedEther in contract 'Operational':
    |    }
    |}
  > |contract Operational is Claimable {
    |    address public operator;
    |    function Operational(address _operator) public {
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(462)

[31mViolation[0m for MissingInputValidation in contract 'Operational':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |  /**
    |   * @dev Modifier throws if called by any account other than the pendingOwner.
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    |}
    |contract Operational is Claimable {
  > |    address public operator;
    |    function Operational(address _operator) public {
    |      operator = _operator;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(463)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    |      _;
    |    }
  > |    function transferOperator(address newOperator) public onlyOwner {
    |      require(newOperator != address(0));
    |      operator = newOperator;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |    function transferOperator(address newOperator) public onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(473)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(210)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    | * mark it `external`.
    | */
  > |contract ReentrancyGuard {
    |  /**
    |   * @dev We use a single lock for the whole contract.
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(421)

[33mWarning[0m for LockedEther in contract 'Releaseable':
    |    }
    |}
  > |contract Releaseable is Frozenable {
    |    using SafeMath for uint;
    |    uint256 public createTime;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'Releaseable':
    |    function transferOperator(address newOperator) public onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(473)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  /**
    |  * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(247)

[33mWarning[0m for LockedEther in contract 'StandardBurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract StandardBurnableToken is StandardToken {
    |    event Burn(address indexed burner, uint256 value);
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardBurnableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(456)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x576d318810416fb41cffc06ac507d1bd50101e82.sol(409)


