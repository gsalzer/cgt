Processing contract: /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol:ILuckyblock
Processing contract: /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol:Luckyblock
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol:RBAC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol:Superuser
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Luckyblock':
    |      uint256 balance = _luckyblockEarn.earnEtherCount.add(payExcess);
    |      if (balance > 0){
  > |        msg.sender.transfer(balance);
    |      }
    |    } else if (payExcess > 0) {
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(781)

[33mWarning[0m for DAOConstantGas in contract 'Luckyblock':
    |      }
    |    } else if (payExcess > 0) {
  > |      msg.sender.transfer(payExcess);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(784)

[33mWarning[0m for DAOConstantGas in contract 'Luckyblock':
    |  function withdrawEth(address to, uint256 balance) external onlySuperuser {
    |    if (balance == uint256(0x0)) {
  > |      to.transfer(address(this).balance);
    |      emit WithdrawEth(to, address(this).balance);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(804)

[33mWarning[0m for DAOConstantGas in contract 'Luckyblock':
    |      emit WithdrawEth(to, address(this).balance);
    |    } else {
  > |      to.transfer(balance);
    |      emit WithdrawEth(to, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(807)

[33mWarning[0m for LockedEther in contract 'Luckyblock':
    |  function allowance(address tokenOwner, address spender) public view returns (uint);
    |}
  > |contract Luckyblock is Superuser, Pausable, ILuckyblock {
    |
    |  using SafeMath for *;
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(561)

[31mViolation[0m for TODAmount in contract 'Luckyblock':
    |  function withdrawEth(address to, uint256 balance) external onlySuperuser {
    |    if (balance == uint256(0x0)) {
  > |      to.transfer(address(this).balance);
    |      emit WithdrawEth(to, address(this).balance);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(804)

[33mWarning[0m for TODReceiver in contract 'Luckyblock':
    |      uint256 balance = _luckyblockEarn.earnEtherCount.add(payExcess);
    |      if (balance > 0){
  > |        msg.sender.transfer(balance);
    |      }
    |    } else if (payExcess > 0) {
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(781)

[33mWarning[0m for TODReceiver in contract 'Luckyblock':
    |      }
    |    } else if (payExcess > 0) {
  > |      msg.sender.transfer(payExcess);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(784)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |        // check sender's erc20 balance 
    |        require(
  > |          ERC20Interface(
    |            _luckyblockSpend.spendTokenAddresses[i]
    |          ).balanceOf(address(msg.sender)) >= _luckyblockSpend.spendTokenCount[i]
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(727)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |
    |        require(
  > |          ERC20Interface(
    |            _luckyblockSpend.spendTokenAddresses[i]
    |          ).allowance(address(msg.sender), address(this)) >= _luckyblockSpend.spendTokenCount[i]
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(733)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |
    |        // transfer erc20 token
  > |        ERC20Interface(_luckyblockSpend.spendTokenAddresses[i])
    |          .transferFrom(msg.sender, address(this), _luckyblockSpend.spendTokenCount[i]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(739)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |        uint256 earnTokenCount = _luckyblockEarn.earnTokenCount[j];
    |        require(
  > |          ERC20Interface(_luckyblockEarn.earnTokenAddresses[j])
    |          .balanceOf(address(this)) >= earnTokenCount
    |        );
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(751)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |        != address(0x0)){
    |        if (_random + _luckyblockEarn.earnTokenProbability[k] >= 100) {
  > |          ERC20Interface(_luckyblockEarn.earnTokenAddresses[k])
    |            .transfer(msg.sender, _luckyblockEarn.earnTokenCount[k]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(769)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |      uint256 balance = _luckyblockEarn.earnEtherCount.add(payExcess);
    |      if (balance > 0){
  > |        msg.sender.transfer(balance);
    |      }
    |    } else if (payExcess > 0) {
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(781)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |      }
    |    } else if (payExcess > 0) {
  > |      msg.sender.transfer(payExcess);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(784)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |    ERC20Interface erc20 = ERC20Interface(contractAddress);
    |    if (balance == uint256(0x0)){
  > |      erc20.transfer(to, erc20.balanceOf(address(this)));
    |      emit WithdrawToken(contractAddress, to, erc20.balanceOf(address(this)));
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(794)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |    if (balance == uint256(0x0)){
    |      erc20.transfer(to, erc20.balanceOf(address(this)));
  > |      emit WithdrawToken(contractAddress, to, erc20.balanceOf(address(this)));
    |    } else {
    |      erc20.transfer(to, balance);
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(795)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |      emit WithdrawToken(contractAddress, to, erc20.balanceOf(address(this)));
    |    } else {
  > |      erc20.transfer(to, balance);
    |      emit WithdrawToken(contractAddress, to, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(797)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |  function withdrawEth(address to, uint256 balance) external onlySuperuser {
    |    if (balance == uint256(0x0)) {
  > |      to.transfer(address(this).balance);
    |      emit WithdrawEth(to, address(this).balance);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(804)

[33mWarning[0m for UnhandledException in contract 'Luckyblock':
    |      emit WithdrawEth(to, address(this).balance);
    |    } else {
  > |      to.transfer(balance);
    |      emit WithdrawEth(to, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(807)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Luckyblock':
    |        // check sender's erc20 balance 
    |        require(
  > |          ERC20Interface(
    |            _luckyblockSpend.spendTokenAddresses[i]
    |          ).balanceOf(address(msg.sender)) >= _luckyblockSpend.spendTokenCount[i]
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(727)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Luckyblock':
    |
    |        require(
  > |          ERC20Interface(
    |            _luckyblockSpend.spendTokenAddresses[i]
    |          ).allowance(address(msg.sender), address(this)) >= _luckyblockSpend.spendTokenCount[i]
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(733)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Luckyblock':
    |
    |        // transfer erc20 token
  > |        ERC20Interface(_luckyblockSpend.spendTokenAddresses[i])
    |          .transferFrom(msg.sender, address(this), _luckyblockSpend.spendTokenCount[i]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(739)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Luckyblock':
    |        uint256 earnTokenCount = _luckyblockEarn.earnTokenCount[j];
    |        require(
  > |          ERC20Interface(_luckyblockEarn.earnTokenAddresses[j])
    |          .balanceOf(address(this)) >= earnTokenCount
    |        );
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(751)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Luckyblock':
    |        != address(0x0)){
    |        if (_random + _luckyblockEarn.earnTokenProbability[k] >= 100) {
  > |          ERC20Interface(_luckyblockEarn.earnTokenAddresses[k])
    |            .transfer(msg.sender, _luckyblockEarn.earnTokenCount[k]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(769)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Luckyblock':
    |    ERC20Interface erc20 = ERC20Interface(contractAddress);
    |    if (balance == uint256(0x0)){
  > |      erc20.transfer(to, erc20.balanceOf(address(this)));
    |      emit WithdrawToken(contractAddress, to, erc20.balanceOf(address(this)));
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(794)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Luckyblock':
    |    if (balance == uint256(0x0)){
    |      erc20.transfer(to, erc20.balanceOf(address(this)));
  > |      emit WithdrawToken(contractAddress, to, erc20.balanceOf(address(this)));
    |    } else {
    |      erc20.transfer(to, balance);
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(795)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Luckyblock':
    |      emit WithdrawToken(contractAddress, to, erc20.balanceOf(address(this)));
    |    } else {
  > |      erc20.transfer(to, balance);
    |      emit WithdrawToken(contractAddress, to, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(797)

[33mWarning[0m for UnrestrictedWrite in contract 'Luckyblock':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Luckyblock':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Luckyblock':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Luckyblock':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Luckyblock':
    |  function allowance(address tokenOwner, address spender) public view returns (uint);
    |}
  > |contract Luckyblock is Superuser, Pausable, ILuckyblock {
    |
    |  using SafeMath for *;
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(561)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(85)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(130)

[31mViolation[0m for LockedEther in contract 'RBAC':
    | * for you to write your own implementation of this interface using Enums or similar.
    | */
  > |contract RBAC {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(201)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * See RBAC.sol for example usage.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(143)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title SafeMath
    | */
  > |library SafeMath {
    |  /**
    |  * @dev Integer division of two numbers, truncating the quotient.
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(357)

[31mViolation[0m for LockedEther in contract 'Superuser':
    | * A superuser can transfer his role to a new address.
    | */
  > |contract Superuser is Ownable, RBAC {
    |  string public constant ROLE_SUPERUSER = "superuser";
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'Superuser':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Superuser':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x448e0209610a9064c776ae0255ad71ef49d58d0a.sol(85)


