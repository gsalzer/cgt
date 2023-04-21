Processing contract: /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol:PariMutuel
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(23)

[33mWarning[0m for DAOConstantGas in contract 'PariMutuel':
    |    require(!refunded[msg.sender]);
    |    refunded[msg.sender] = true;
  > |    msg.sender.transfer(totalWageredForAddress(msg.sender));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(135)

[33mWarning[0m for DAOConstantGas in contract 'PariMutuel':
    |    require(!hasWithdrawnRake);
    |    hasWithdrawnRake = true;
  > |    owner.transfer(totalRake());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(141)

[33mWarning[0m for DAOConstantGas in contract 'PariMutuel':
    |    uint256 winnings = payoutForWagerAndOutcome(wager, winningOutcome);
    |    balancesForOutcome[uint8(winningOutcome)][msg.sender] = 0;
  > |    msg.sender.transfer(winnings);
    |    Withdrawal(msg.sender, winnings);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(149)

[33mWarning[0m for LockedEther in contract 'PariMutuel':
    |}
    |
  > |contract PariMutuel is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(35)

[33mWarning[0m for TODAmount in contract 'PariMutuel':
    |    require(!refunded[msg.sender]);
    |    refunded[msg.sender] = true;
  > |    msg.sender.transfer(totalWageredForAddress(msg.sender));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(135)

[33mWarning[0m for TODAmount in contract 'PariMutuel':
    |    require(!hasWithdrawnRake);
    |    hasWithdrawnRake = true;
  > |    owner.transfer(totalRake());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(141)

[33mWarning[0m for TODAmount in contract 'PariMutuel':
    |    uint256 winnings = payoutForWagerAndOutcome(wager, winningOutcome);
    |    balancesForOutcome[uint8(winningOutcome)][msg.sender] = 0;
  > |    msg.sender.transfer(winnings);
    |    Withdrawal(msg.sender, winnings);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(149)

[33mWarning[0m for TODReceiver in contract 'PariMutuel':
    |    uint256 winnings = payoutForWagerAndOutcome(wager, winningOutcome);
    |    balancesForOutcome[uint8(winningOutcome)][msg.sender] = 0;
  > |    msg.sender.transfer(winnings);
    |    Withdrawal(msg.sender, winnings);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(149)

[33mWarning[0m for UnhandledException in contract 'PariMutuel':
    |    require(!refunded[msg.sender]);
    |    refunded[msg.sender] = true;
  > |    msg.sender.transfer(totalWageredForAddress(msg.sender));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(135)

[33mWarning[0m for UnhandledException in contract 'PariMutuel':
    |    require(!hasWithdrawnRake);
    |    hasWithdrawnRake = true;
  > |    owner.transfer(totalRake());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(141)

[33mWarning[0m for UnhandledException in contract 'PariMutuel':
    |    uint256 winnings = payoutForWagerAndOutcome(wager, winningOutcome);
    |    balancesForOutcome[uint8(winningOutcome)][msg.sender] = 0;
  > |    msg.sender.transfer(winnings);
    |    Withdrawal(msg.sender, winnings);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'PariMutuel':
    |  function bet(Outcome outcome) external payable requireState(State.PreEvent) {
    |    require(msg.value >= minBetAmount);
  > |    balancesForOutcome[uint8(outcome)][msg.sender] = balancesForOutcome[uint8(outcome)][msg.sender].add(msg.value);
    |    totalForOutcome[uint8(outcome)] = totalForOutcome[uint8(outcome)].add(msg.value);
    |    BetPlaced(msg.sender, msg.value, outcome);
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'PariMutuel':
    |
    |  function startEvent() external onlyOwner requireState(State.PreEvent) {
  > |    state = State.DuringEvent;
    |    StateChanged(state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'PariMutuel':
    |
    |  function declareWinningOutcome(Outcome outcome) external onlyOwner requireState(State.DuringEvent) {
  > |    state = State.PostEvent;
    |    StateChanged(state);
    |    winningOutcome = outcome;
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'PariMutuel':
    |    state = State.PostEvent;
    |    StateChanged(state);
  > |    winningOutcome = outcome;
    |    WinningOutcomeDeclared(outcome);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'PariMutuel':
    |  // if there's a draw or a bug in the contract
    |  function refundEverybody() external onlyOwner {
  > |    state = State.Refunding;
    |    StateChanged(state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'PariMutuel':
    |  function getRefunded() external requireState(State.Refunding) {
    |    require(!refunded[msg.sender]);
  > |    refunded[msg.sender] = true;
    |    msg.sender.transfer(totalWageredForAddress(msg.sender));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'PariMutuel':
    |  function withdrawRake() external onlyOwner requireState(State.PostEvent) {
    |    require(!hasWithdrawnRake);
  > |    hasWithdrawnRake = true;
    |    owner.transfer(totalRake());
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'PariMutuel':
    |    require(wager > 0);
    |    uint256 winnings = payoutForWagerAndOutcome(wager, winningOutcome);
  > |    balancesForOutcome[uint8(winningOutcome)][msg.sender] = 0;
    |    msg.sender.transfer(winnings);
    |    Withdrawal(msg.sender, winnings);
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(148)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.14;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xf4b8ccc5734ed7d2d8beb5fddd223d25e55748bc.sol(3)


