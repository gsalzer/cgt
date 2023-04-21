Processing contract: /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol:ConfigInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol:Custody
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol:CutieCoreInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol:CutiePluginBase
Processing contract: /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol:PluginInterface
[33mWarning[0m for DAOConstantGas in contract 'Custody':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(348)

[33mWarning[0m for LockedEther in contract 'Custody':
    |/// @dev Receives payments for payd features from players for Blockchain Cuties
    |/// @author https://BlockChainArchitect.io
  > |contract Custody is CutiePluginBase
    |{
    |    mapping(uint256 => uint256) public custodyFee;
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(373)

[31mViolation[0m for TODAmount in contract 'Custody':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(348)

[31mViolation[0m for TODReceiver in contract 'Custody':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(348)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |        
    |        CutieCoreInterface candidateContract = CutieCoreInterface(_coreAddress);
  > |        require(candidateContract.isCutieCore());
    |        coreContract = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(290)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(348)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |        require(custodyFee[_blockchain] > 0);
    |        require(msg.value >= custodyFee[_blockchain]);
  > |        coreContract.transferFrom(_owner, address(0x0), _cutieId);
    |
    |        emit RIP(_owner, _cutieId, _blockchain);
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(394)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |    function recoverCutie(uint40 _cutieId, address _newOwner) public onlyOperator
    |    {
  > |        coreContract.transfer(_newOwner, _cutieId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(414)

[33mWarning[0m for UnhandledException in contract 'Custody':
    |    function isUnique(uint40 _cutieId) public view returns(bool)
    |    {
  > |        uint256 genes = coreContract.getGenes(_cutieId);
    |        return ((genes / 0x100000) % 0x10) == 0x1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(429)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |        
    |        CutieCoreInterface candidateContract = CutieCoreInterface(_coreAddress);
  > |        require(candidateContract.isCutieCore());
    |        coreContract = candidateContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |        if (address(this).balance > 0)
    |        {
  > |            address(coreContract).transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(348)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |        require(custodyFee[_blockchain] > 0);
    |        require(msg.value >= custodyFee[_blockchain]);
  > |        coreContract.transferFrom(_owner, address(0x0), _cutieId);
    |
    |        emit RIP(_owner, _cutieId, _blockchain);
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |    function recoverCutie(uint40 _cutieId, address _newOwner) public onlyOperator
    |    {
  > |        coreContract.transfer(_newOwner, _cutieId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(414)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custody':
    |    function isUnique(uint40 _cutieId) public view returns(bool)
    |    {
  > |        uint256 genes = coreContract.getGenes(_cutieId);
    |        return ((genes / 0x100000) % 0x10) == 0x1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |        require(_fee <= 10000);
    |        require(msg.sender == owner);
  > |        ownerFee = _fee;
    |        
    |        CutieCoreInterface candidateContract = CutieCoreInterface(_coreAddress);
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |        CutieCoreInterface candidateContract = CutieCoreInterface(_coreAddress);
    |        require(candidateContract.isCutieCore());
  > |        coreContract = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |        require(msg.sender == owner);
    |
  > |        ownerFee = _fee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |    function setCustodyFee(uint256 _blockchain, uint256 _fee) public onlyOperator
    |    {
  > |        custodyFee[_blockchain] = _fee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |    function addToBlacklist(uint40 _cutieId) public onlyOperator
    |    {
  > |        blacklist[_cutieId] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'Custody':
    |    function setOperator(address _operator) public onlyOwner
    |    {
  > |        operatorAddress = _operator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(435)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(39)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc53a772d50974f14aed723eeae72fe736f41a074.sol(85)


