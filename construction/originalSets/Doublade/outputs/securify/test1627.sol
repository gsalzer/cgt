Processing contract: /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol:BlackAndWhite
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BlackAndWhite':
    |
    |    function sendFunds(address _beneficiary, uint amount) private {
  > |        if (_beneficiary.send(amount)) {
    |            emit Payment(_beneficiary, amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(210)

[33mWarning[0m for LockedEther in contract 'BlackAndWhite':
    |}
    |
  > |contract BlackAndWhite is Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(63)

[33mWarning[0m for TODAmount in contract 'BlackAndWhite':
    |
    |    function sendFunds(address _beneficiary, uint amount) private {
  > |        if (_beneficiary.send(amount)) {
    |            emit Payment(_beneficiary, amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(210)

[33mWarning[0m for TODReceiver in contract 'BlackAndWhite':
    |
    |    function sendFunds(address _beneficiary, uint amount) private {
  > |        if (_beneficiary.send(amount)) {
    |            emit Payment(_beneficiary, amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(210)

[33mWarning[0m for UnhandledException in contract 'BlackAndWhite':
    |
    |    function sendFunds(address _beneficiary, uint amount) private {
  > |        if (_beneficiary.send(amount)) {
    |            emit Payment(_beneficiary, amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BlackAndWhite':
    |
    |    function sendFunds(address _beneficiary, uint amount) private {
  > |        if (_beneficiary.send(amount)) {
    |            emit Payment(_beneficiary, amount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |
    |    function setBotAddress(address newAddress) external onlyOwner {
  > |        botAddress = newAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |        Bet storage bet = bets[betId];
    |        require (bet.gambler == address(0));
  > |        betId = betId.add(1);
    |        uint amount = msg.value;
    |        require(amount == betAmount);
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |        possibleWinAmount = getWinAmount(amount);
    |
  > |        lockedInBets = lockedInBets.add(possibleWinAmount);
    |
    |        require (lockedInBets <= address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |        emit Commit(msg.sender, betId.sub(1), option);
    |
  > |        bet.amount = amount;
    |        bet.option = option;
    |        bet.placeBlockNumber = uint40(block.number);
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |
    |        bet.amount = amount;
  > |        bet.option = option;
    |        bet.placeBlockNumber = uint40(block.number);
    |        bet.gambler = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |        bet.amount = amount;
    |        bet.option = option;
  > |        bet.placeBlockNumber = uint40(block.number);
    |        bet.gambler = msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |        bet.option = option;
    |        bet.placeBlockNumber = uint40(block.number);
  > |        bet.gambler = msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |        require (amount != 0, "Bet should be in an 'active' state");
    |
  > |        bet.amount = 0;
    |
    |        uint possibleWinAmount = getWinAmount(amount);
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |        }
    |
  > |        teamBalance = teamBalance.add(beneficiaryPercent(amount));
    |        lockedInBets -= possibleWinAmount;
    |
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |
    |        teamBalance = teamBalance.add(beneficiaryPercent(amount));
  > |        lockedInBets -= possibleWinAmount;
    |
    |        sendFunds(gambler, winAmount);
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |        winAmount = getWinAmount(amount);
    |
  > |        lockedInBets -= uint128(winAmount);
    |
    |        sendFunds(bet.gambler, amount);
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |
    |    function setPrice(uint newPrice) public onlyOwner {
  > |        betAmount = newPrice;
    |        emit NewPrice(newPrice);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackAndWhite':
    |
    |    function setMinAmount(uint amount) public onlyOwner{
  > |        minAmount = amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(229)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |*/
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        _transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function _transferOwnership(address _newOwner) internal {
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(31)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
  at /home/jiaming/mavs_srcs/contract@0x675821e8e9c4a14611e1851b2614f4ece718c43a.sol(35)


