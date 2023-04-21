Processing contract: /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol:LiTeum
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(71)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(172)

[33mWarning[0m for LockedEther in contract 'LiTeum':
    |}
    |
  > |contract LiTeum is StandardToken, BurnableToken, Ownable {
    |
    |    // Constants
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'LiTeum':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'LiTeum':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'LiTeum':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'LiTeum':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'LiTeum':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'LiTeum':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'LiTeum':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'LiTeum':
    |     */
    |    function enableTransfer() external onlyOwner {
  > |        transferEnabled = true;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'LiTeum':
    |     */
    |    function disableTransfer() external onlyOwner {
  > |        transferEnabled = false;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(247)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(125)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(27)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa303f6356eb829e035676ba0d67bbfe8a7328739.sol(71)


