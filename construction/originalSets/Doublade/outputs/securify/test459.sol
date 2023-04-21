Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:DateTime
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:DragonReleaseableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:DragonToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:FrozenableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:Operational
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(301)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    |    event Burn(address indexed burner, uint256 value);
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(418)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(221)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(234)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |  /**
    |   * @dev Modifier throws if called by any account other than the pendingOwner.
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(222)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
    |    pendingOwner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function claimOwnership() onlyPendingOwner {
  > |    owner = pendingOwner;
    |    pendingOwner = 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
  > |    pendingOwner = 0x0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(242)

[33mWarning[0m for LockedEther in contract 'DateTime':
    |  }
    |}
  > |library DateTime {
    |        /*
    |         *  Date and Time utilities for ethereum contracts
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(43)

[33mWarning[0m for LockedEther in contract 'DragonReleaseableToken':
    |
    |}
  > |contract DragonReleaseableToken is FrozenableToken {
    |    using SafeMath for uint;
    |    using DateTime for uint256;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(477)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonReleaseableToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonReleaseableToken':
    |   */
    |  function claimOwnership() onlyPendingOwner {
  > |    owner = pendingOwner;
    |    pendingOwner = 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonReleaseableToken':
    |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
  > |    pendingOwner = 0x0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonReleaseableToken':
    |    function transferOperator(address newOperator) onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonReleaseableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonReleaseableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonReleaseableToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonReleaseableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(418)

[33mWarning[0m for LockedEther in contract 'DragonToken':
    |    }
    |}
  > |contract DragonToken is DragonReleaseableToken {
    |    string public standard = '2017111504';
    |    string public name = 'DragonToken';
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(538)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonToken':
    |   */
    |  function claimOwnership() onlyPendingOwner {
  > |    owner = pendingOwner;
    |    pendingOwner = 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonToken':
    |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
  > |    pendingOwner = 0x0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonToken':
    |    function transferOperator(address newOperator) onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(418)

[33mWarning[0m for LockedEther in contract 'Operational':
    |  }
    |}
  > |contract Operational is Claimable {
    |    address public operator;
    |    function Operational(address _operator) {
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(245)

[31mViolation[0m for MissingInputValidation in contract 'Operational':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(234)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |  /**
    |   * @dev Modifier throws if called by any account other than the pendingOwner.
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(222)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
    |    pendingOwner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    |}
    |contract Operational is Claimable {
  > |    address public operator;
    |    function Operational(address _operator) {
    |      operator = _operator;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'Operational':
    |      _;
    |    }
  > |    function transferOperator(address newOperator) onlyOwner {
    |      require(newOperator != address(0));
    |      operator = newOperator;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |    pendingOwner = newOwner;
    |  }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |   */
    |  function claimOwnership() onlyPendingOwner {
  > |    owner = pendingOwner;
    |    pendingOwner = 0x0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |  function claimOwnership() onlyPendingOwner {
    |    owner = pendingOwner;
  > |    pendingOwner = 0x0;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'Operational':
    |    function transferOperator(address newOperator) onlyOwner {
    |      require(newOperator != address(0));
  > |      operator = newOperator;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(256)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  /**
    |   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(40)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    | * mark it `external`.
    | */
  > |contract ReentrancyGuard {
    |  /**
    |   * @dev We use a single lock for the whole contract.
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(382)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(263)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1da015ea4ad2d3e5586e54b9fb0682ca3ca8a17a.sol(362)


