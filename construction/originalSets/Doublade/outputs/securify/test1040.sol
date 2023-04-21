Processing contract: /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol:CGCXMarchMassLock
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'CGCXMarchMassLock':
    | * beneficiary to extract the tokens after a given release time
    | */
  > |contract CGCXMarchMassLock is Ownable {
    |  using SafeERC20 for ERC20;
    |
  at /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol(119)

[33mWarning[0m for UnhandledException in contract 'CGCXMarchMassLock':
    |library SafeERC20 {
    |  function safeTransfer(ERC20 token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CGCXMarchMassLock':
    |library SafeERC20 {
    |  function safeTransfer(ERC20 token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'CGCXMarchMassLock':
    |  function submit(address[] _addresses, uint256[] _amounts) public onlyOwner {
    |    for (uint256 i = 0; i < _addresses.length; i++) {
  > |      lockups[_addresses[i]] = _amounts[i];
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'CGCXMarchMassLock':
    |    require(amount > 0);
    |    token.safeTransfer(_beneficiary, amount);
  > |    lockups[_beneficiary] = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'CGCXMarchMassLock':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'CGCXMarchMassLock':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol(68)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    |
    |
  > |library SafeERC20 {
    |  function safeTransfer(ERC20 token, address to, uint256 value) internal {
    |    require(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x4216d6d06dff18651bb224dfd046e780768340da.sol(92)


