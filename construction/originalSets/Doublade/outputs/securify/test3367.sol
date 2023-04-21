Processing contract: /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol:FlyDropToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Claimable':
    |}
    |
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(105)

[31mViolation[0m for LockedEther in contract 'FlyDropToken':
    |}
    |
  > |contract FlyDropToken is Claimable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(109)

[33mWarning[0m for UnhandledException in contract 'FlyDropToken':
    |    function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public {
    |        // erc20tk = ERC20(_token);
  > |        require(erc20tk.transferFrom(_from, this, _value)); // transfer tokens to this contract
    |        approveRecords.push(_extraData);
    |        emit ReceiveApproval(_from, _value, _token, _extraData);
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(127)

[33mWarning[0m for UnhandledException in contract 'FlyDropToken':
    |        uint256 i = 0;
    |        for (; i < _destAddrs.length; i = i.add(1)) {
  > |            if (!erc20tk.transfer(_destAddrs[i], _values[i])) {
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(143)

[33mWarning[0m for UnhandledException in contract 'FlyDropToken':
    |        uint256 i = 0;
    |        for (; i < _destAddrs.length; i = i.add(1)) {
  > |            if (!erc20tk.transferFrom(_from, _destAddrs[i], _values[i])) {
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlyDropToken':
    |    function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public {
    |        // erc20tk = ERC20(_token);
  > |        require(erc20tk.transferFrom(_from, this, _value)); // transfer tokens to this contract
    |        approveRecords.push(_extraData);
    |        emit ReceiveApproval(_from, _value, _token, _extraData);
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlyDropToken':
    |        uint256 i = 0;
    |        for (; i < _destAddrs.length; i = i.add(1)) {
  > |            if (!erc20tk.transfer(_destAddrs[i], _values[i])) {
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlyDropToken':
    |        uint256 i = 0;
    |        for (; i < _destAddrs.length; i = i.add(1)) {
  > |            if (!erc20tk.transferFrom(_from, _destAddrs[i], _values[i])) {
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'FlyDropToken':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'FlyDropToken':
    |}
    |
  > |contract FlyDropToken is Claimable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'FlyDropToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'FlyDropToken':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'FlyDropToken':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'FlyDropToken':
    |
    |    function changERC20(address _token) onlyOwner public {
  > |        erc20tk = ERC20(_token);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(152)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xdd2ae0d3c3f7c3e29f6814b788a579589902a550.sol(3)


