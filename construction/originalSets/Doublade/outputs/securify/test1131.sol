Processing contract: /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol:ConfigInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol:CutieCoreInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol:CutiePluginBase
Processing contract: /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol:CutieReward
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol:PluginInterface
[33mWarning[0m for DAOConstantGas in contract 'CutieReward':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(348)

[33mWarning[0m for LockedEther in contract 'CutieReward':
    |/// @title Item effect for Blockchain Cuties
    |/// @author https://BlockChainArchitect.io
  > |contract CutieReward is CutiePluginBase
    |{
    |    address public operatorAddress;
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(373)

[31mViolation[0m for TODAmount in contract 'CutieReward':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(348)

[31mViolation[0m for TODReceiver in contract 'CutieReward':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(348)

[33mWarning[0m for UnhandledException in contract 'CutieReward':
    |        
    |        CutieCoreInterface candidateContract = CutieCoreInterface(_coreAddress);
  > |        require(candidateContract.isCutieCore());
    |        coreContract = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(290)

[33mWarning[0m for UnhandledException in contract 'CutieReward':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(348)

[33mWarning[0m for UnhandledException in contract 'CutieReward':
    |        require(msg.sender == operatorAddress);
    |
  > |        coreContract.changeGeneration(cutieId, generation);
    |        ConfigInterface config = coreContract.config();
    |        uint16 cooldownIndex = config.getCooldownIndexFromGeneration(generation);
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(401)

[33mWarning[0m for UnhandledException in contract 'CutieReward':
    |
    |        coreContract.changeGeneration(cutieId, generation);
  > |        ConfigInterface config = coreContract.config();
    |        uint16 cooldownIndex = config.getCooldownIndexFromGeneration(generation);
    |        coreContract.changeCooldownIndex(cutieId, cooldownIndex);
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(402)

[33mWarning[0m for UnhandledException in contract 'CutieReward':
    |        coreContract.changeGeneration(cutieId, generation);
    |        ConfigInterface config = coreContract.config();
  > |        uint16 cooldownIndex = config.getCooldownIndexFromGeneration(generation);
    |        coreContract.changeCooldownIndex(cutieId, cooldownIndex);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(403)

[33mWarning[0m for UnhandledException in contract 'CutieReward':
    |        ConfigInterface config = coreContract.config();
    |        uint16 cooldownIndex = config.getCooldownIndexFromGeneration(generation);
  > |        coreContract.changeCooldownIndex(cutieId, cooldownIndex);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(404)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CutieReward':
    |        
    |        CutieCoreInterface candidateContract = CutieCoreInterface(_coreAddress);
  > |        require(candidateContract.isCutieCore());
    |        coreContract = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CutieReward':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(348)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CutieReward':
    |        require(msg.sender == operatorAddress);
    |
  > |        coreContract.changeGeneration(cutieId, generation);
    |        ConfigInterface config = coreContract.config();
    |        uint16 cooldownIndex = config.getCooldownIndexFromGeneration(generation);
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(401)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CutieReward':
    |
    |        coreContract.changeGeneration(cutieId, generation);
  > |        ConfigInterface config = coreContract.config();
    |        uint16 cooldownIndex = config.getCooldownIndexFromGeneration(generation);
    |        coreContract.changeCooldownIndex(cutieId, cooldownIndex);
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CutieReward':
    |        coreContract.changeGeneration(cutieId, generation);
    |        ConfigInterface config = coreContract.config();
  > |        uint16 cooldownIndex = config.getCooldownIndexFromGeneration(generation);
    |        coreContract.changeCooldownIndex(cutieId, cooldownIndex);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(403)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CutieReward':
    |        ConfigInterface config = coreContract.config();
    |        uint16 cooldownIndex = config.getCooldownIndexFromGeneration(generation);
  > |        coreContract.changeCooldownIndex(cutieId, cooldownIndex);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'CutieReward':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'CutieReward':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'CutieReward':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'CutieReward':
    |        require(_fee <= 10000);
    |        require(msg.sender == owner);
  > |        ownerFee = _fee;
    |        
    |        CutieCoreInterface candidateContract = CutieCoreInterface(_coreAddress);
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'CutieReward':
    |        CutieCoreInterface candidateContract = CutieCoreInterface(_coreAddress);
    |        require(candidateContract.isCutieCore());
  > |        coreContract = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'CutieReward':
    |        require(msg.sender == owner);
    |
  > |        ownerFee = _fee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'CutieReward':
    |    function setOperator(address _newOperator) external onlyOwner
    |    {
  > |        operatorAddress = _newOperator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(392)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(39)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x476179f1d00109415059e8236b5e605084ec485a.sol(85)


