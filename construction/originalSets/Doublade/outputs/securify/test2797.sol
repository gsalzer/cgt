Processing contract: /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol:PonziSeller
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol:PonziTokenMinInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'PonziSeller':
    |    // transfer eth to ref if needed
    |    if (refWeiAmount > 0) {
  > |      refAddr.transfer(refWeiAmount);
    |      emit RewardRef(refAddr, refWeiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(170)

[33mWarning[0m for DAOConstantGas in contract 'PonziSeller':
    |    uint256 amountWei = address(this).balance;
    |    require(amountWei > 0);
  > |    msg.sender.transfer(amountWei);
    |    assert(address(this).balance < amountWei);
    |    emit WithdrawalETH(msg.sender, amountWei);
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(183)

[33mWarning[0m for LockedEther in contract 'PonziSeller':
    |
    |
  > |contract PonziSeller {
    |  using SafeMath for uint256;
    |  enum AccessRank {
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(47)

[31mViolation[0m for TODAmount in contract 'PonziSeller':
    |    uint256 amountWei = address(this).balance;
    |    require(amountWei > 0);
  > |    msg.sender.transfer(amountWei);
    |    assert(address(this).balance < amountWei);
    |    emit WithdrawalETH(msg.sender, amountWei);
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(183)

[33mWarning[0m for TODAmount in contract 'PonziSeller':
    |    // transfer eth to ref if needed
    |    if (refWeiAmount > 0) {
  > |      refAddr.transfer(refWeiAmount);
    |      emit RewardRef(refAddr, refWeiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(170)

[33mWarning[0m for TODReceiver in contract 'PonziSeller':
    |    // transfer eth to ref if needed
    |    if (refWeiAmount > 0) {
  > |      refAddr.transfer(refWeiAmount);
    |      emit RewardRef(refAddr, refWeiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(170)

[33mWarning[0m for TODReceiver in contract 'PonziSeller':
    |    uint256 amountWei = address(this).balance;
    |    require(amountWei > 0);
  > |    msg.sender.transfer(amountWei);
    |    assert(address(this).balance < amountWei);
    |    emit WithdrawalETH(msg.sender, amountWei);
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(183)

[33mWarning[0m for UnhandledException in contract 'PonziSeller':
    |    }
    |    // transfer ponzi to sender
  > |    require(m_ponzi.transfer(msg.sender, senderPonziAmount));
    |    // transfer eth to ref if needed
    |    if (refWeiAmount > 0) {
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(167)

[33mWarning[0m for UnhandledException in contract 'PonziSeller':
    |    // transfer eth to ref if needed
    |    if (refWeiAmount > 0) {
  > |      refAddr.transfer(refWeiAmount);
    |      emit RewardRef(refAddr, refWeiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(170)

[33mWarning[0m for UnhandledException in contract 'PonziSeller':
    |
    |  function availablePonzi() public view returns (uint256) {
  > |    return m_ponzi.balanceOf(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(177)

[33mWarning[0m for UnhandledException in contract 'PonziSeller':
    |    uint256 amountWei = address(this).balance;
    |    require(amountWei > 0);
  > |    msg.sender.transfer(amountWei);
    |    assert(address(this).balance < amountWei);
    |    emit WithdrawalETH(msg.sender, amountWei);
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(183)

[33mWarning[0m for UnhandledException in contract 'PonziSeller':
    |    uint256 pt = availablePonzi();
    |    require(pt > 0 && amount > 0 && pt >= amount);
  > |    require(m_ponzi.transfer(msg.sender, amount));
    |    assert(availablePonzi() < pt);
    |    emit WithdrawalPonzi(msg.sender, pt);
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PonziSeller':
    |    }
    |    // transfer ponzi to sender
  > |    require(m_ponzi.transfer(msg.sender, senderPonziAmount));
    |    // transfer eth to ref if needed
    |    if (refWeiAmount > 0) {
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PonziSeller':
    |    // transfer eth to ref if needed
    |    if (refWeiAmount > 0) {
  > |      refAddr.transfer(refWeiAmount);
    |      emit RewardRef(refAddr, refWeiAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PonziSeller':
    |
    |  function availablePonzi() public view returns (uint256) {
  > |    return m_ponzi.balanceOf(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PonziSeller':
    |    uint256 pt = availablePonzi();
    |    require(pt > 0 && amount > 0 && pt >= amount);
  > |    require(m_ponzi.transfer(msg.sender, amount));
    |    assert(availablePonzi() < pt);
    |    emit WithdrawalPonzi(msg.sender, pt);
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(191)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |// see: https://github.com/OpenZeppelin/zeppelin-solidity/blob/master/contracts/math/SafeMath.sol
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xb7e253fd6a3bbb018ce6aa041514b21f0e68a9c8.sol(10)


