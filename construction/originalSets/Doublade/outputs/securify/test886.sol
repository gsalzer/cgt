Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:BonusToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:DateTime
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:KuaiMintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:KuaiToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:Operational
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(293)

[33mWarning[0m for LockedEther in contract 'BonusToken':
    |    }
    |}
  > |contract BonusToken is BurnableToken, Operational {
    |    using SafeMath for uint;
    |    using DateTime for uint256;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |    // Check is not needed because sub(_allowance, _value) will already throw if this condition is not met
    |    // require (_value <= _allowance);
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |    // require (_value <= _allowance);
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |   */
    |  function claimOwnership() onlyPendingOwner {
  > |    owner = pendingOwner;
    |    pendingOwner = 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
  > |    pendingOwner = 0x0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'BonusToken':
    |    function transferOperator(address newOperator) onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(251)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    |    event Burn(address indexed burner, uint256 value);
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // Check is not needed because sub(_allowance, _value) will already throw if this condition is not met
    |    // require (_value <= _allowance);
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // require (_value <= _allowance);
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(410)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |  /**
    |   * @dev Modifier throws if called by any account other than the pendingOwner.
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
    |    pendingOwner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function claimOwnership() onlyPendingOwner {
  > |    owner = pendingOwner;
    |    pendingOwner = 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
  > |    pendingOwner = 0x0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(237)

[33mWarning[0m for LockedEther in contract 'DateTime':
    |  event Transfer(address indexed from, address indexed to, uint256 value);
    |}
  > |library DateTime {
    |        /*
    |         *  Date and Time utilities for ethereum contracts
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(13)

[33mWarning[0m for LockedEther in contract 'KuaiMintableToken':
    |    }
    |}
  > |contract KuaiMintableToken is BonusToken {
    |    uint256 public standardDailyLimit; // maximum amount of token can mint per day
    |    uint256 public dailyLimitLeft = standardDecimals.mul(1000000); // daily limit left
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |    // Check is not needed because sub(_allowance, _value) will already throw if this condition is not met
    |    // require (_value <= _allowance);
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |    // require (_value <= _allowance);
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |   */
    |  function claimOwnership() onlyPendingOwner {
  > |    owner = pendingOwner;
    |    pendingOwner = 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
  > |    pendingOwner = 0x0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |    function transferOperator(address newOperator) onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiMintableToken':
    |    // set standard daily limit
    |    function setDailyLimit(uint256 _dailyLimit) onlyOwner returns(bool){
  > |        standardDailyLimit = _dailyLimit;
    |        SetDailyLimit(msg.sender, now);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(480)

[33mWarning[0m for LockedEther in contract 'KuaiToken':
    |    }
    |}
  > |contract KuaiToken is KuaiMintableToken {
    |    string public standard = '2018011001';
    |    string public name = 'KuaiToken';
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |    // Check is not needed because sub(_allowance, _value) will already throw if this condition is not met
    |    // require (_value <= _allowance);
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |    // require (_value <= _allowance);
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |   */
    |  function claimOwnership() onlyPendingOwner {
  > |    owner = pendingOwner;
    |    pendingOwner = 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
  > |    pendingOwner = 0x0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |    function transferOperator(address newOperator) onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'KuaiToken':
    |    // set standard daily limit
    |    function setDailyLimit(uint256 _dailyLimit) onlyOwner returns(bool){
  > |        standardDailyLimit = _dailyLimit;
    |        SetDailyLimit(msg.sender, now);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(480)

[33mWarning[0m for LockedEther in contract 'Operational':
    |  }
    |}
  > |contract Operational is Claimable {
    |    address public operator;
    |    function Operational(address _operator) {
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(240)

[31mViolation[0m for MissingInputValidation in contract 'Operational':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |  /**
    |   * @dev Modifier throws if called by any account other than the pendingOwner.
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
    |    pendingOwner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    |}
    |contract Operational is Claimable {
  > |    address public operator;
    |    function Operational(address _operator) {
    |      operator = _operator;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(241)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    |      _;
    |    }
  > |    function transferOperator(address newOperator) onlyOwner {
    |      require(newOperator != address(0));
    |      operator = newOperator;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |   */
    |  function claimOwnership() onlyPendingOwner {
  > |    owner = pendingOwner;
    |    pendingOwner = 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
  > |    pendingOwner = 0x0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |    function transferOperator(address newOperator) onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(251)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(208)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    | * mark it `external`.
    | */
  > |contract ReentrancyGuard {
    |  /**
    |   * @dev We use a single lock for the whole contract.
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(373)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(258)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x38b03fe09d0a47bcbe7f80bd0441f9f83821437b.sol(353)


