Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol:SuntoshiToken
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
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(40)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(53)

[33mWarning[0m for LockedEther in contract 'SuntoshiToken':
    |}
    |
  > |contract SuntoshiToken is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(111)

[33mWarning[0m for UnhandledException in contract 'SuntoshiToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SuntoshiToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'SuntoshiToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'SuntoshiToken':
    |}
    |
  > |contract SuntoshiToken is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'SuntoshiToken':
    |            // The standard ERC 20 transferFrom functionality
    |            require(allowed[_from][msg.sender] >= _amount);
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'SuntoshiToken':
    |        require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        emit Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'SuntoshiToken':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) public onlyOwner {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'SuntoshiToken':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'SuntoshiToken':
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'SuntoshiToken':
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe6f32cf814d266b499c83ac1fb89a96ebab0dd57.sol(426)


