Processing contract: /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol:MigrationAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol:PitEur
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions"
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(60)

[33mWarning[0m for LockedEther in contract 'PitEur':
    |}
    |
  > |contract PitEur is Ownable, ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(83)

[33mWarning[0m for UnhandledException in contract 'PitEur':
    |    _totalSupply = _totalSupply.sub(value);
    |    totalMigrated = totalMigrated.add(value);
  > |    MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
    |    Migrate(msg.sender, migrationAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PitEur':
    |    _totalSupply = _totalSupply.sub(value);
    |    totalMigrated = totalMigrated.add(value);
  > |    MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
    |    Migrate(msg.sender, migrationAgent, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'PitEur':
    |    require(!isLocked(msg.sender));
    |    require (balances[msg.sender] >= value && value > 0);
  > |    balances[msg.sender] = balances[msg.sender].sub(value);
    |    balances[to] = balances[to].add(value);
    |    Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'PitEur':
    |    balances[from] = balances[from].sub(value);
    |    balances[to] = balances[to].add(value);
  > |    allowed[from][msg.sender] = _allowance.sub(value);
    |    Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'PitEur':
    |  function approve(address spender, uint256 value) canTrade {
    |    require((value >= 0) && (allowed[msg.sender][spender] >= 0));
  > |    allowed[msg.sender][spender] = value;
    |    Approval(msg.sender, spender, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'PitEur':
    |    require(value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] -= value;
    |    _totalSupply = _totalSupply.sub(value);
    |    totalMigrated = totalMigrated.add(value);
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PitEur':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'PitEur':
    |   */
    |  function setTradable(bool _newTradableState) onlyOwner public {
  > |    tradable = _newTradableState;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'PitEur':
    |   */
    |  function timeLock(address spender, uint256 date) public onlyOwner returns (bool) {
  > |    releaseTimes[spender] = date;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'PitEur':
    |  function setMigrationAgent(address _agent) external onlyOwner {
    |    require(migrationAgent == 0x0 && totalMigrated == 0);
  > |    migrationAgent = _agent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(235)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd58a91306f117c854e45910f313646d8520d467a.sol(3)


