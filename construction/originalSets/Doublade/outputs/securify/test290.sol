Processing contract: /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol:Custodial
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Custodial':
    |      updateCapital ();
    |      if (_value <= capital) {
  > |        if (client.send (_value)) {
    |          Withdrawal (_value);
    |          capital -= _value;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(99)

[31mViolation[0m for DAOConstantGas in contract 'Custodial':
    |    updateCapital ();
    |    if (capital > 0) {
  > |      if (client.send (capital)) {
    |        Withdrawal (capital);
    |        capital = 0;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(120)

[33mWarning[0m for DAOConstantGas in contract 'Custodial':
    |    uint256 _value = this.balance - getCapital (now);
    |    if (_value > 0) {
  > |      return advisor.send (_value);
    |    } else return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(142)

[33mWarning[0m for DAOConstantGas in contract 'Custodial':
    |    if (capital > 0) throw;
    |    if (this.balance > 0) {
  > |      if (!advisor.send (this.balance)) {
    |        // Ignore error
    |      }
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(155)

[33mWarning[0m for LockedEther in contract 'Custodial':
    | * Custodial Smart Contract that that charges fee for keeping ether.
    | */
  > |contract Custodial {
    |  uint256 constant TWO_128 = 0x100000000000000000000000000000000; // 2^128
    |  uint256 constant TWO_127 = 0x80000000000000000000000000000000; // 2^127
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(10)

[31mViolation[0m for TODAmount in contract 'Custodial':
    |    updateCapital ();
    |    if (capital > 0) {
  > |      if (client.send (capital)) {
    |        Withdrawal (capital);
    |        capital = 0;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(120)

[31mViolation[0m for TODAmount in contract 'Custodial':
    |    uint256 _value = this.balance - getCapital (now);
    |    if (_value > 0) {
  > |      return advisor.send (_value);
    |    } else return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(142)

[31mViolation[0m for TODAmount in contract 'Custodial':
    |    if (capital > 0) throw;
    |    if (this.balance > 0) {
  > |      if (!advisor.send (this.balance)) {
    |        // Ignore error
    |      }
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(155)

[33mWarning[0m for TODAmount in contract 'Custodial':
    |      updateCapital ();
    |      if (_value <= capital) {
  > |        if (client.send (_value)) {
    |          Withdrawal (_value);
    |          capital -= _value;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(99)

[31mViolation[0m for UnhandledException in contract 'Custodial':
    |    uint256 _value = this.balance - getCapital (now);
    |    if (_value > 0) {
  > |      return advisor.send (_value);
    |    } else return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(142)

[31mViolation[0m for UnhandledException in contract 'Custodial':
    |    if (capital > 0) throw;
    |    if (this.balance > 0) {
  > |      if (!advisor.send (this.balance)) {
    |        // Ignore error
    |      }
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(155)

[33mWarning[0m for UnhandledException in contract 'Custodial':
    |      updateCapital ();
    |      if (_value <= capital) {
  > |        if (client.send (_value)) {
    |          Withdrawal (_value);
    |          capital -= _value;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(99)

[33mWarning[0m for UnhandledException in contract 'Custodial':
    |    updateCapital ();
    |    if (capital > 0) {
  > |      if (client.send (capital)) {
    |        Withdrawal (capital);
    |        capital = 0;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custodial':
    |      updateCapital ();
    |      if (_value <= capital) {
  > |        if (client.send (_value)) {
    |          Withdrawal (_value);
    |          capital -= _value;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custodial':
    |    updateCapital ();
    |    if (capital > 0) {
  > |      if (client.send (capital)) {
    |        Withdrawal (capital);
    |        capital = 0;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custodial':
    |    uint256 _value = this.balance - getCapital (now);
    |    if (_value > 0) {
  > |      return advisor.send (_value);
    |    } else return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Custodial':
    |    if (capital > 0) throw;
    |    if (this.balance > 0) {
  > |      if (!advisor.send (this.balance)) {
    |        // Ignore error
    |      }
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Custodial':
    |      if (msg.value >= TWO_128 - capital)
    |        throw; // Capital should never exceed 2^128 Wei
  > |      capital += msg.value;
    |      Deposit (msg.sender, msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Custodial':
    |        if (client.send (_value)) {
    |          Withdrawal (_value);
  > |          capital -= _value;
    |          return true;
    |        } else return false;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Custodial':
    |      if (client.send (capital)) {
    |        Withdrawal (capital);
  > |        capital = 0;
    |        return true;
    |      } else return false;
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Custodial':
    |      capital = mul (capital, pow (feeFactor, now - capitalTimestamp));
    |    }
  > |    capitalTimestamp = now;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x13f1a73dc70fcaa8d62f2e54470b2432c3155a2e.sol(170)


