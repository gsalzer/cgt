Processing contract: /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol:TokenTimelockController
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(112)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(9)

[33mWarning[0m for LockedEther in contract 'TokenTimelockController':
    | * @dev This contract allows to create/read/revoke TokenTimelock contracts and to claim the amounts vested.
    | **/
  > |contract TokenTimelockController is Ownable {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(157)

[33mWarning[0m for UnhandledException in contract 'TokenTimelockController':
    |    );
    |    tokenTimeLocks[_beneficiary].push(tokenLock);
  > |    require(token.transferFrom(_tokenHolder, this, _amount));
    |    
    |    emit TokenTimelockCreated(
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(268)

[33mWarning[0m for UnhandledException in contract 'TokenTimelockController':
    |    tokenTimeLocks[_beneficiary].push(tokenLock2);
    |
  > |    require(token.transferFrom(_tokenHolder, this, _amount));
    |    
    |    emit TokenTimelockCreated(
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(319)

[33mWarning[0m for UnhandledException in contract 'TokenTimelockController':
    |    TokenTimelock storage tokenLock = tokenTimeLocks[_beneficiary][_id];
    |    tokenLock.revoked = true;
  > |    require(token.transfer(owner, tokenLock.amount));
    |    emit TokenTimelockRevoked(_beneficiary);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(355)

[33mWarning[0m for UnhandledException in contract 'TokenTimelockController':
    |    require(block.timestamp >= tokenLock.releaseTime);
    |    tokenLock.released = true;
  > |    require(token.transfer(_beneficiary, tokenLock.amount));
    |    emit TokenTimelockReleased(_beneficiary, tokenLock.amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelockController':
    |    );
    |    tokenTimeLocks[_beneficiary].push(tokenLock);
  > |    require(token.transferFrom(_tokenHolder, this, _amount));
    |    
    |    emit TokenTimelockCreated(
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelockController':
    |    tokenTimeLocks[_beneficiary].push(tokenLock2);
    |
  > |    require(token.transferFrom(_tokenHolder, this, _amount));
    |    
    |    emit TokenTimelockCreated(
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelockController':
    |    TokenTimelock storage tokenLock = tokenTimeLocks[_beneficiary][_id];
    |    tokenLock.revoked = true;
  > |    require(token.transfer(owner, tokenLock.amount));
    |    emit TokenTimelockRevoked(_beneficiary);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelockController':
    |    require(block.timestamp >= tokenLock.releaseTime);
    |    tokenLock.released = true;
  > |    require(token.transfer(_beneficiary, tokenLock.amount));
    |    emit TokenTimelockReleased(_beneficiary, tokenLock.amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |pragma solidity ^0.4.23;
    |
  > |// File: openzeppelin-solidity/contracts/math/SafeMath.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    | * @dev This contract allows to create/read/revoke TokenTimelock contracts and to claim the amounts vested.
    | **/
  > |contract TokenTimelockController is Ownable {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |   */
    |  function changeBeneficiary(uint256 _id, address _newBeneficiary) external onlyWhenActivated onlyValidTokenTimelock(msg.sender, _id) {
  > |    tokenTimeLocks[_newBeneficiary].push(tokenTimeLocks[msg.sender][_id]);
    |    if (tokenTimeLocks[msg.sender].length > 1) {
    |      tokenTimeLocks[msg.sender][_id] = tokenTimeLocks[msg.sender][tokenTimeLocks[msg.sender].length.sub(1)];
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |    tokenTimeLocks[_newBeneficiary].push(tokenTimeLocks[msg.sender][_id]);
    |    if (tokenTimeLocks[msg.sender].length > 1) {
  > |      tokenTimeLocks[msg.sender][_id] = tokenTimeLocks[msg.sender][tokenTimeLocks[msg.sender].length.sub(1)];
    |      delete(tokenTimeLocks[msg.sender][tokenTimeLocks[msg.sender].length.sub(1)]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |    if (tokenTimeLocks[msg.sender].length > 1) {
    |      tokenTimeLocks[msg.sender][_id] = tokenTimeLocks[msg.sender][tokenTimeLocks[msg.sender].length.sub(1)];
  > |      delete(tokenTimeLocks[msg.sender][tokenTimeLocks[msg.sender].length.sub(1)]);
    |    }
    |    tokenTimeLocks[msg.sender].length--;
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |    // solium-disable-next-line security/no-block-members
    |    require(block.timestamp >= tokenLock.releaseTime);
  > |    tokenLock.released = true;
    |    require(token.transfer(_beneficiary, tokenLock.amount));
    |    emit TokenTimelockReleased(_beneficiary, tokenLock.amount);
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |pragma solidity ^0.4.23;
    |
  > |// File: openzeppelin-solidity/contracts/math/SafeMath.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |  function setCrowdsale(address _crowdsale) external onlyOwner {
    |    require(_crowdsale != address(0));
  > |    crowdsale = _crowdsale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |   */
    |  function activate() external onlyCrowdsale {
  > |    activated = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |      false
    |    );
  > |    tokenTimeLocks[_beneficiary].push(tokenLock);
    |    require(token.transferFrom(_tokenHolder, this, _amount));
    |    
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |      false
    |    );
  > |    tokenTimeLocks[_beneficiary].push(tokenLock1);
    |
    |    TokenTimelock memory tokenLock2 = TokenTimelock(
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |      false
    |    );
  > |    tokenTimeLocks[_beneficiary].push(tokenLock2);
    |
    |    require(token.transferFrom(_tokenHolder, this, _amount));
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTimelockController':
    |    require(!tokenTimeLocks[_beneficiary][_id].released);
    |    TokenTimelock storage tokenLock = tokenTimeLocks[_beneficiary][_id];
  > |    tokenLock.revoked = true;
    |    require(token.transfer(owner, tokenLock.amount));
    |    emit TokenTimelockRevoked(_beneficiary);
  at /home/jiaming/mavs_srcs/contract@0x070c68875132cf703417582e0d00ce773efcbaeb.sol(354)


