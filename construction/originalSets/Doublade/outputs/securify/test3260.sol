Processing contract: /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol:BrokerImp
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol:DestroyableMultiOwner
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol:MultiOwnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol:Token
[31mViolation[0m for DAOConstantGas in contract 'BrokerImp':
    |		uint256 brokerCommission = total.sub(_value);
    |		if (!ethSent[_beneficiary]) {
  > |			_beneficiary.transfer(ethReward);
    |			ethSent[_beneficiary] = true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(196)

[33mWarning[0m for LockedEther in contract 'BrokerImp':
    |}
    |
  > |contract BrokerImp is DestroyableMultiOwner {
    |	using SafeMath for uint256;
    |	
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(146)

[31mViolation[0m for TODAmount in contract 'BrokerImp':
    |		uint256 brokerCommission = total.sub(_value);
    |		if (!ethSent[_beneficiary]) {
  > |			_beneficiary.transfer(ethReward);
    |			ethSent[_beneficiary] = true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(196)

[33mWarning[0m for TODReceiver in contract 'BrokerImp':
    |		uint256 brokerCommission = total.sub(_value);
    |		if (!ethSent[_beneficiary]) {
  > |			_beneficiary.transfer(ethReward);
    |			ethSent[_beneficiary] = true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(196)

[33mWarning[0m for UnhandledException in contract 'BrokerImp':
    |		uint256 brokerCommission = total.sub(_value);
    |		if (!ethSent[_beneficiary]) {
  > |			_beneficiary.transfer(ethReward);
    |			ethSent[_beneficiary] = true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(196)

[33mWarning[0m for UnhandledException in contract 'BrokerImp':
    |		}
    |		return (
  > |		token.transferFrom(pool, broker, brokerCommission) &&
    |		token.transferFrom(pool, _beneficiary, _value)
    |		);
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(200)

[33mWarning[0m for UnhandledException in contract 'BrokerImp':
    |		return (
    |		token.transferFrom(pool, broker, brokerCommission) &&
  > |		token.transferFrom(pool, _beneficiary, _value)
    |		);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BrokerImp':
    |		}
    |		return (
  > |		token.transferFrom(pool, broker, brokerCommission) &&
    |		token.transferFrom(pool, _beneficiary, _value)
    |		);
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BrokerImp':
    |		return (
    |		token.transferFrom(pool, broker, brokerCommission) &&
  > |		token.transferFrom(pool, _beneficiary, _value)
    |		);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |pragma solidity ^0.4.21;
    |/**
  > | * Changes by https://www.docademic.com/
    | */
    |
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |	notNull(_owner)
    |	{
  > |		isOwner[_owner] = true;
    |		owners.push(_owner);
    |		emit OwnerAddition(_owner);
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |	{
    |		isOwner[_owner] = true;
  > |		owners.push(_owner);
    |		emit OwnerAddition(_owner);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |	ownerExists(_owner)
    |	{
  > |		isOwner[_owner] = false;
    |		for (uint i = 0; i < owners.length - 1; i++)
    |			if (owners[i] == _owner) {
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |		for (uint i = 0; i < owners.length - 1; i++)
    |			if (owners[i] == _owner) {
  > |				owners[i] = owners[owners.length - 1];
    |				break;
    |			}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |}
    |
  > |contract BrokerImp is DestroyableMultiOwner {
    |	using SafeMath for uint256;
    |	
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |		if (!ethSent[_beneficiary]) {
    |			_beneficiary.transfer(ethReward);
  > |			ethSent[_beneficiary] = true;
    |		}
    |		return (
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |	function changeCommission(uint256 _commission) public onlyOwner {
    |		emit CommissionChanged(commission, _commission);
  > |		commission = _commission;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |	function changeEthReward(uint256 _ethReward) public onlyOwner {
    |		emit EthRewardChanged(ethReward, _ethReward);
  > |		ethReward = _ethReward;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |	function changeBroker(address _broker) public onlyOwner {
    |		emit BrokerChanged(broker, _broker);
  > |		broker = _broker;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'BrokerImp':
    |	function changePool(address _pool) public onlyOwner {
    |		emit PoolChanged(pool, _pool);
  > |		pool = _pool;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(238)

[31mViolation[0m for LockedEther in contract 'DestroyableMultiOwner':
    |}
    |
  > |contract DestroyableMultiOwner is MultiOwnable {
    |	/**
    |	 * @notice Allows to destroy the contract and return the tokens to the owner.
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'DestroyableMultiOwner':
    |pragma solidity ^0.4.21;
    |/**
  > | * Changes by https://www.docademic.com/
    | */
    |
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'DestroyableMultiOwner':
    |	notNull(_owner)
    |	{
  > |		isOwner[_owner] = true;
    |		owners.push(_owner);
    |		emit OwnerAddition(_owner);
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'DestroyableMultiOwner':
    |	{
    |		isOwner[_owner] = true;
  > |		owners.push(_owner);
    |		emit OwnerAddition(_owner);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'DestroyableMultiOwner':
    |	ownerExists(_owner)
    |	{
  > |		isOwner[_owner] = false;
    |		for (uint i = 0; i < owners.length - 1; i++)
    |			if (owners[i] == _owner) {
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'DestroyableMultiOwner':
    |		for (uint i = 0; i < owners.length - 1; i++)
    |			if (owners[i] == _owner) {
  > |				owners[i] = owners[owners.length - 1];
    |				break;
    |			}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'DestroyableMultiOwner':
    |}
    |
  > |contract DestroyableMultiOwner is MultiOwnable {
    |	/**
    |	 * @notice Allows to destroy the contract and return the tokens to the owner.
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(133)

[31mViolation[0m for LockedEther in contract 'MultiOwnable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract MultiOwnable {
    |	
    |	address[] public owners;
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |pragma solidity ^0.4.21;
    |/**
  > | * Changes by https://www.docademic.com/
    | */
    |
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiOwnable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract MultiOwnable {
    |	
    |	address[] public owners;
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |	notNull(_owner)
    |	{
  > |		isOwner[_owner] = true;
    |		owners.push(_owner);
    |		emit OwnerAddition(_owner);
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |	{
    |		isOwner[_owner] = true;
  > |		owners.push(_owner);
    |		emit OwnerAddition(_owner);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |	ownerExists(_owner)
    |	{
  > |		isOwner[_owner] = false;
    |		for (uint i = 0; i < owners.length - 1; i++)
    |			if (owners[i] == _owner) {
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |		for (uint i = 0; i < owners.length - 1; i++)
    |			if (owners[i] == _owner) {
  > |				owners[i] = owners[owners.length - 1];
    |				break;
    |			}
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(124)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |		if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd5586ef251b2fbe32a03f226868e581c9f1aa261.sol(10)


