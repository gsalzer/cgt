Processing contract: /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol:Fundraiser
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Fundraiser':
    |      signer1_proposal.action = Action.None;
    |      signer2_proposal.action = Action.None;
  > |      signer1_proposal.destination.transfer(signer1_proposal.amount);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(113)

[33mWarning[0m for DAOConstantGas in contract 'Fundraiser':
    |        && signer1_proposal.destination == signer2_proposal.destination) {
    |      accept = false;
  > |      signer1_proposal.destination.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(122)

[33mWarning[0m for LockedEther in contract 'Fundraiser':
    |pragma solidity ^0.4.0;
    |
  > |contract Fundraiser {
    |
    |  /* State */
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Fundraiser':
    |                 );
    |
  > |  function Contribute(bytes24 tezos_pkh_and_chksum) payable {
    |    // Don't accept contributions if fundraiser closed
    |    if (!accept) { throw; }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Fundraiser':
    |  /* Entry points for signers */
    |
  > |  function Withdraw(address proposed_destination,
    |                    uint256 proposed_amount) {
    |    /* check amount */
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'Fundraiser':
    |  }
    |
  > |  function Close(address proposed_destination) {
    |    /* update action */
    |    if (msg.sender == signer1) {
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Fundraiser':
    |  }
    |
  > |  function Open() {
    |    /* update action */
    |    if (msg.sender == signer1) {
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Fundraiser':
    |  }
    |
  > |  function MaybePerformWithdraw() internal {
    |    if (signer1_proposal.action == Action.Withdraw
    |        && signer2_proposal.action == Action.Withdraw
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Fundraiser':
    |  }
    |
  > |  function MaybePerformClose() internal {
    |    if (signer1_proposal.action == Action.Close
    |        && signer2_proposal.action == Action.Close
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'Fundraiser':
    |  }
    |
  > |  function MaybePerformOpen() internal {
    |    if (signer1_proposal.action == Action.Open
    |        && signer2_proposal.action == Action.Open) {
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(126)

[31mViolation[0m for TODAmount in contract 'Fundraiser':
    |      signer1_proposal.action = Action.None;
    |      signer2_proposal.action = Action.None;
  > |      signer1_proposal.destination.transfer(signer1_proposal.amount);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(113)

[31mViolation[0m for TODAmount in contract 'Fundraiser':
    |        && signer1_proposal.destination == signer2_proposal.destination) {
    |      accept = false;
  > |      signer1_proposal.destination.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(122)

[31mViolation[0m for TODReceiver in contract 'Fundraiser':
    |      signer1_proposal.action = Action.None;
    |      signer2_proposal.action = Action.None;
  > |      signer1_proposal.destination.transfer(signer1_proposal.amount);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(113)

[31mViolation[0m for TODReceiver in contract 'Fundraiser':
    |        && signer1_proposal.destination == signer2_proposal.destination) {
    |      accept = false;
  > |      signer1_proposal.destination.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(122)

[33mWarning[0m for UnhandledException in contract 'Fundraiser':
    |    /* shift left 20 bytes to extract checksum */
    |    bytes4 expected_chksum = bytes4(tezos_pkh_and_chksum << 160);
  > |    bytes4 chksum = bytes4(sha256(sha256(tezos_pk_hash)));
    |    /* revert transaction if the checksum cannot be verified */
    |    if (chksum != expected_chksum) { throw; }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(56)

[33mWarning[0m for UnhandledException in contract 'Fundraiser':
    |      signer1_proposal.action = Action.None;
    |      signer2_proposal.action = Action.None;
  > |      signer1_proposal.destination.transfer(signer1_proposal.amount);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(113)

[33mWarning[0m for UnhandledException in contract 'Fundraiser':
    |        && signer1_proposal.destination == signer2_proposal.destination) {
    |      accept = false;
  > |      signer1_proposal.destination.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Fundraiser':
    |    /* shift left 20 bytes to extract checksum */
    |    bytes4 expected_chksum = bytes4(tezos_pkh_and_chksum << 160);
  > |    bytes4 chksum = bytes4(sha256(sha256(tezos_pk_hash)));
    |    /* revert transaction if the checksum cannot be verified */
    |    if (chksum != expected_chksum) { throw; }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Fundraiser':
    |      signer1_proposal.action = Action.None;
    |      signer2_proposal.action = Action.None;
  > |      signer1_proposal.destination.transfer(signer1_proposal.amount);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Fundraiser':
    |        && signer1_proposal.destination == signer2_proposal.destination) {
    |      accept = false;
  > |      signer1_proposal.destination.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'Fundraiser':
    |        && signer1_proposal.amount == signer2_proposal.amount
    |        && signer1_proposal.destination == signer2_proposal.destination) {
  > |      signer1_proposal.action = Action.None;
    |      signer2_proposal.action = Action.None;
    |      signer1_proposal.destination.transfer(signer1_proposal.amount);
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'Fundraiser':
    |        && signer1_proposal.destination == signer2_proposal.destination) {
    |      signer1_proposal.action = Action.None;
  > |      signer2_proposal.action = Action.None;
    |      signer1_proposal.destination.transfer(signer1_proposal.amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'Fundraiser':
    |        && signer2_proposal.action == Action.Close
    |        && signer1_proposal.destination == signer2_proposal.destination) {
  > |      accept = false;
    |      signer1_proposal.destination.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'Fundraiser':
    |    if (signer1_proposal.action == Action.Open
    |        && signer2_proposal.action == Action.Open) {
  > |      accept = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |    /* update action */
    |    if (msg.sender == signer1) {
  > |      signer1_proposal.action = Action.Withdraw;
    |      signer1_proposal.destination = proposed_destination;
    |      signer1_proposal.amount = proposed_amount;
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |    if (msg.sender == signer1) {
    |      signer1_proposal.action = Action.Withdraw;
  > |      signer1_proposal.destination = proposed_destination;
    |      signer1_proposal.amount = proposed_amount;
    |    } else if (msg.sender == signer2) {
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |      signer1_proposal.action = Action.Withdraw;
    |      signer1_proposal.destination = proposed_destination;
  > |      signer1_proposal.amount = proposed_amount;
    |    } else if (msg.sender == signer2) {
    |      signer2_proposal.action = Action.Withdraw;
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |      signer1_proposal.amount = proposed_amount;
    |    } else if (msg.sender == signer2) {
  > |      signer2_proposal.action = Action.Withdraw;
    |      signer2_proposal.destination = proposed_destination;
    |      signer2_proposal.amount = proposed_amount;
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |    } else if (msg.sender == signer2) {
    |      signer2_proposal.action = Action.Withdraw;
  > |      signer2_proposal.destination = proposed_destination;
    |      signer2_proposal.amount = proposed_amount;
    |    } else { throw; }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |      signer2_proposal.action = Action.Withdraw;
    |      signer2_proposal.destination = proposed_destination;
  > |      signer2_proposal.amount = proposed_amount;
    |    } else { throw; }
    |    /* perform action */
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |    /* update action */
    |    if (msg.sender == signer1) {
  > |      signer1_proposal.action = Action.Close;
    |      signer1_proposal.destination = proposed_destination;
    |    } else if (msg.sender == signer2) {
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |    if (msg.sender == signer1) {
    |      signer1_proposal.action = Action.Close;
  > |      signer1_proposal.destination = proposed_destination;
    |    } else if (msg.sender == signer2) {
    |      signer2_proposal.action = Action.Close;
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |      signer1_proposal.destination = proposed_destination;
    |    } else if (msg.sender == signer2) {
  > |      signer2_proposal.action = Action.Close;
    |      signer2_proposal.destination = proposed_destination;
    |    } else { throw; }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |    } else if (msg.sender == signer2) {
    |      signer2_proposal.action = Action.Close;
  > |      signer2_proposal.destination = proposed_destination;
    |    } else { throw; }
    |    /* perform action */
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |    /* update action */
    |    if (msg.sender == signer1) {
  > |      signer1_proposal.action = Action.Open;
    |    } else if (msg.sender == signer2) {
    |      signer2_proposal.action = Action.Open;
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |      signer1_proposal.action = Action.Open;
    |    } else if (msg.sender == signer2) {
  > |      signer2_proposal.action = Action.Open;
    |    } else { throw; }
    |    /* perform action */
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |        && signer1_proposal.amount == signer2_proposal.amount
    |        && signer1_proposal.destination == signer2_proposal.destination) {
  > |      signer1_proposal.action = Action.None;
    |      signer2_proposal.action = Action.None;
    |      signer1_proposal.destination.transfer(signer1_proposal.amount);
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |        && signer1_proposal.destination == signer2_proposal.destination) {
    |      signer1_proposal.action = Action.None;
  > |      signer2_proposal.action = Action.None;
    |      signer1_proposal.destination.transfer(signer1_proposal.amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |        && signer2_proposal.action == Action.Close
    |        && signer1_proposal.destination == signer2_proposal.destination) {
  > |      accept = false;
    |      signer1_proposal.destination.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Fundraiser':
    |    if (signer1_proposal.action == Action.Open
    |        && signer2_proposal.action == Action.Open) {
  > |      accept = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc20b371ec6c7e911df545ea56bb9397f1272317.sol(129)


