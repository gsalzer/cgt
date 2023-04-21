Processing contract: /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol:Bidding
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Bidding':
    |        pendingReturns[msg.sender] -= amount;
    |
  > |        msg.sender.transfer(amount);
    |        emit Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(164)

[33mWarning[0m for DAOConstantGas in contract 'Bidding':
    |    function withdrawEthFromBalance() external onlyOwner
    |    {
  > |        owner.transfer(address(this).balance - totalReturns);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(242)

[33mWarning[0m for LockedEther in contract 'Bidding':
    |/// @title BlockchainCuties bidding auction
    |/// @author https://BlockChainArchitect.io
  > |contract Bidding is Pausable
    |{
    |    struct Auction
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(98)

[31mViolation[0m for TODAmount in contract 'Bidding':
    |    function withdrawEthFromBalance() external onlyOwner
    |    {
  > |        owner.transfer(address(this).balance - totalReturns);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(242)

[31mViolation[0m for TODReceiver in contract 'Bidding':
    |    function withdrawEthFromBalance() external onlyOwner
    |    {
  > |        owner.transfer(address(this).balance - totalReturns);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(242)

[33mWarning[0m for TODReceiver in contract 'Bidding':
    |        pendingReturns[msg.sender] -= amount;
    |
  > |        msg.sender.transfer(amount);
    |        emit Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(164)

[33mWarning[0m for UnhandledException in contract 'Bidding':
    |        pendingReturns[msg.sender] -= amount;
    |
  > |        msg.sender.transfer(amount);
    |        emit Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(164)

[33mWarning[0m for UnhandledException in contract 'Bidding':
    |            if (!isContract(prevBidder)) // do not allow auto withdraw for contracts
    |            {
  > |                if (prevBidder.send(returnValue))
    |                {
    |                    return; // sent ok, no need to keep returned money on contract
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(224)

[33mWarning[0m for UnhandledException in contract 'Bidding':
    |    function withdrawEthFromBalance() external onlyOwner
    |    {
  > |        owner.transfer(address(this).balance - totalReturns);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bidding':
    |    function withdrawEthFromBalance() external onlyOwner
    |    {
  > |        owner.transfer(address(this).balance - totalReturns);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'Bidding':
    |        // before `send` returns.
    |
  > |        totalReturns -= amount;
    |        pendingReturns[msg.sender] -= amount;
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'Bidding':
    |        uint256 bank = useFromPendingReturn;
    |        pendingReturns[msg.sender] -= bank;
  > |        totalReturns -= bank;
    |
    |        uint256 currentBid = bank + msg.value;
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |
    |        totalReturns -= amount;
  > |        pendingReturns[msg.sender] -= amount;
    |
    |        msg.sender.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |
    |        uint256 bank = useFromPendingReturn;
  > |        pendingReturns[msg.sender] -= bank;
    |        totalReturns -= bank;
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(10)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |    function finish(uint16 auction) public onlyOperator
    |    {
  > |        auctions[auction].timeEnd = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |    function addAuction(uint40 _startTime, uint40 _duration, uint128 _startPrice) public onlyOperator
    |    {
  > |        auctions.push(Auction(_startPrice, address(0), _startTime + _duration, 0, _startTime));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |    function setOperator(address _operator) public onlyOwner
    |    {
  > |        operatorAddress = _operator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |    function setMinBid(uint _minBid) public onlyOwner
    |    {
  > |        minBid = _minBid;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'Bidding':
    |    function setMinTime(uint40 _minTime) public onlyOwner
    |    {
  > |        minTime = _minTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(257)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(44)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbd047bfd52545b946264f00ebfbb01091412c033.sol(90)


