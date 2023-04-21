Processing contract: /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol:InbestDistribution
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol:InbestToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol:InbestTokenDistributor
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(95)

[33mWarning[0m for LockedEther in contract 'InbestDistribution':
    | * @dev Distribute Investors' and Company's tokens
    | */
  > |contract InbestDistribution is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(299)

[33mWarning[0m for UnhandledException in contract 'InbestDistribution':
    |   uint256 tokensToTransfer = newAmountClaimed.sub(allocations[_recipient].amountClaimed);
    |   allocations[_recipient].amountClaimed = newAmountClaimed;
  > |   require(IBST.transfer(_recipient, tokensToTransfer));
    |   grandTotalClaimed = grandTotalClaimed.add(tokensToTransfer);
    |   LogIBSTClaimed(_recipient, allocations[_recipient].allocationType, tokensToTransfer, newAmountClaimed, grandTotalClaimed);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(426)

[33mWarning[0m for UnhandledException in contract 'InbestDistribution':
    |   //Transfer
    |   allocations[companyWallet].amountClaimed = allocations[companyWallet].amountClaimed.add(_tokensToTransfer);
  > |   require(IBST.transfer(_recipient, _tokensToTransfer));
    |   grandTotalClaimed = grandTotalClaimed.add(_tokensToTransfer);
    |   LogIBSTClaimed(_recipient, uint8(AllocationType.COMPANY), _tokensToTransfer, allocations[companyWallet].amountClaimed, grandTotalClaimed);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(446)

[33mWarning[0m for UnhandledException in contract 'InbestDistribution':
    |    require(_token != address(IBST));
    |    ERC20 token = ERC20(_token);
  > |    require(token.transfer(_refund, _value));
    |    RefundTokens(_token, _refund, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'InbestDistribution':
    |   uint256 tokensToTransfer = newAmountClaimed.sub(allocations[_recipient].amountClaimed);
    |   allocations[_recipient].amountClaimed = newAmountClaimed;
  > |   require(IBST.transfer(_recipient, tokensToTransfer));
    |   grandTotalClaimed = grandTotalClaimed.add(tokensToTransfer);
    |   LogIBSTClaimed(_recipient, allocations[_recipient].allocationType, tokensToTransfer, newAmountClaimed, grandTotalClaimed);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(426)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'InbestDistribution':
    |   //Transfer
    |   allocations[companyWallet].amountClaimed = allocations[companyWallet].amountClaimed.add(_tokensToTransfer);
  > |   require(IBST.transfer(_recipient, _tokensToTransfer));
    |   grandTotalClaimed = grandTotalClaimed.add(_tokensToTransfer);
    |   LogIBSTClaimed(_recipient, uint8(AllocationType.COMPANY), _tokensToTransfer, allocations[companyWallet].amountClaimed, grandTotalClaimed);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(446)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'InbestDistribution':
    |    require(_token != address(IBST));
    |    ERC20 token = ERC20(_token);
  > |    require(token.transfer(_refund, _value));
    |    RefundTokens(_token, _refund, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestDistribution':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestDistribution':
    |
    |    // Allocate
  > |    AVAILABLE_PRESALE_SUPPLY = AVAILABLE_PRESALE_SUPPLY.sub(_totalAllocated);
    |    allocations[_recipient] = Allocation(uint8(AllocationType.PRESALE), startTime.add(CLIFF), startTime.add(CLIFF).add(VESTING), _totalAllocated, 0);
    |    AVAILABLE_TOTAL_SUPPLY = AVAILABLE_TOTAL_SUPPLY.sub(_totalAllocated);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestDistribution':
    |    // Allocate
    |    AVAILABLE_PRESALE_SUPPLY = AVAILABLE_PRESALE_SUPPLY.sub(_totalAllocated);
  > |    allocations[_recipient] = Allocation(uint8(AllocationType.PRESALE), startTime.add(CLIFF), startTime.add(CLIFF).add(VESTING), _totalAllocated, 0);
    |    AVAILABLE_TOTAL_SUPPLY = AVAILABLE_TOTAL_SUPPLY.sub(_totalAllocated);
    |    LogNewAllocation(_recipient, AllocationType.PRESALE, _totalAllocated, grandTotalAllocated());
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestDistribution':
    |    AVAILABLE_PRESALE_SUPPLY = AVAILABLE_PRESALE_SUPPLY.sub(_totalAllocated);
    |    allocations[_recipient] = Allocation(uint8(AllocationType.PRESALE), startTime.add(CLIFF), startTime.add(CLIFF).add(VESTING), _totalAllocated, 0);
  > |    AVAILABLE_TOTAL_SUPPLY = AVAILABLE_TOTAL_SUPPLY.sub(_totalAllocated);
    |    LogNewAllocation(_recipient, AllocationType.PRESALE, _totalAllocated, grandTotalAllocated());
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestDistribution':
    |   //Transfer
    |   uint256 tokensToTransfer = newAmountClaimed.sub(allocations[_recipient].amountClaimed);
  > |   allocations[_recipient].amountClaimed = newAmountClaimed;
    |   require(IBST.transfer(_recipient, tokensToTransfer));
    |   grandTotalClaimed = grandTotalClaimed.add(tokensToTransfer);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestDistribution':
    |   allocations[_recipient].amountClaimed = newAmountClaimed;
    |   require(IBST.transfer(_recipient, tokensToTransfer));
  > |   grandTotalClaimed = grandTotalClaimed.add(tokensToTransfer);
    |   LogIBSTClaimed(_recipient, allocations[_recipient].allocationType, tokensToTransfer, newAmountClaimed, grandTotalClaimed);
    | }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(427)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestDistribution':
    |
    |   //Transfer
  > |   allocations[companyWallet].amountClaimed = allocations[companyWallet].amountClaimed.add(_tokensToTransfer);
    |   require(IBST.transfer(_recipient, _tokensToTransfer));
    |   grandTotalClaimed = grandTotalClaimed.add(_tokensToTransfer);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestDistribution':
    |   allocations[companyWallet].amountClaimed = allocations[companyWallet].amountClaimed.add(_tokensToTransfer);
    |   require(IBST.transfer(_recipient, _tokensToTransfer));
  > |   grandTotalClaimed = grandTotalClaimed.add(_tokensToTransfer);
    |   LogIBSTClaimed(_recipient, uint8(AllocationType.COMPANY), _tokensToTransfer, allocations[companyWallet].amountClaimed, grandTotalClaimed);
    | }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestDistribution':
    |  function setAdmin(address _admin, bool _allowed) public onlyOwner {
    |    require(_admin != address(0));
  > |    admins[_admin] = _allowed;
    |     SetAdmin(msg.sender,_admin,_allowed);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(474)

[33mWarning[0m for LockedEther in contract 'InbestToken':
    | * `StandardToken` functions.
    | */
  > |contract InbestToken is StandardToken {
    |
    |  string public constant name = "Inbest Token";
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(214)

[31mViolation[0m for LockedEther in contract 'InbestTokenDistributor':
    |// File: contracts/InbestTokenDistributor.sol
    |
  > |contract InbestTokenDistributor  is Ownable {
    |  InbestDistribution public inbestDistribution;
    |  address[] public walletsToDistribute;
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(490)

[33mWarning[0m for UnhandledException in contract 'InbestTokenDistributor':
    |    uint arrayLength = walletsToDistribute.length;
    |    for (uint i=0; i < arrayLength; i++) {
  > |      inbestDistribution.transferTokens(walletsToDistribute[i]);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(510)

[33mWarning[0m for UnhandledException in contract 'InbestTokenDistributor':
    |    uint arrayLength = _addresses.length;
    |    for (uint i=0; i < arrayLength; i++) {
  > |      inbestDistribution.transferTokens(_addresses[i]);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(521)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'InbestTokenDistributor':
    |    uint arrayLength = walletsToDistribute.length;
    |    for (uint i=0; i < arrayLength; i++) {
  > |      inbestDistribution.transferTokens(walletsToDistribute[i]);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(510)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'InbestTokenDistributor':
    |    uint arrayLength = _addresses.length;
    |    for (uint i=0; i < arrayLength; i++) {
  > |      inbestDistribution.transferTokens(_addresses[i]);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(521)

[31mViolation[0m for UnrestrictedWrite in contract 'InbestTokenDistributor':
    |// File: contracts/InbestTokenDistributor.sol
    |
  > |contract InbestTokenDistributor  is Ownable {
    |  InbestDistribution public inbestDistribution;
    |  address[] public walletsToDistribute;
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(490)

[31mViolation[0m for UnrestrictedWrite in contract 'InbestTokenDistributor':
    |    for (uint i = 0; i < walletsToDistribute.length; i++){
    |      if (_removeAddress == walletsToDistribute[i]) {
  > |        walletsToDistribute[i] = walletsToDistribute[walletsToDistribute.length-1];
    |        walletsToDistribute.length--;
    |        delete walletsToDistributeMapp[_removeAddress];
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(549)

[31mViolation[0m for UnrestrictedWrite in contract 'InbestTokenDistributor':
    |        walletsToDistribute[i] = walletsToDistribute[walletsToDistribute.length-1];
    |        walletsToDistribute.length--;
  > |        delete walletsToDistributeMapp[_removeAddress];
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(551)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestTokenDistributor':
    |pragma solidity ^0.4.18;
    |
  > |// File: zeppelin-solidity/contracts/math/SafeMath.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestTokenDistributor':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestTokenDistributor':
    |    require(_newAddress != address(0));
    |    require(walletsToDistributeMapp[_newAddress] == address(0));
  > |    walletsToDistribute.push(_newAddress);
    |    walletsToDistributeMapp[_newAddress] = _newAddress;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'InbestTokenDistributor':
    |    require(walletsToDistributeMapp[_newAddress] == address(0));
    |    walletsToDistribute.push(_newAddress);
  > |    walletsToDistributeMapp[_newAddress] = _newAddress;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(533)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(257)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(287)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(9)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc88b58e72029ec8397aa57731268e4c5aec6fe5b.sol(214)


