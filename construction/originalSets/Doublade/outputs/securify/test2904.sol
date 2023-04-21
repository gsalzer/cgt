Processing contract: /home/jiaming/mavs_srcs/contract@0xbef75e81ba98d6bd42491650686637adaa90b86d.sol:BonusAwareCalculator
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbef75e81ba98d6bd42491650686637adaa90b86d.sol:BonusCalculator
Processing contract: /home/jiaming/mavs_srcs/contract@0xbef75e81ba98d6bd42491650686637adaa90b86d.sol:Calculator
[33mWarning[0m for LockedEther in contract 'BonusAwareCalculator':
    |}
    |
  > |contract BonusAwareCalculator is Calculator {
    |    Calculator delegate;
    |
  at /home/jiaming/mavs_srcs/contract@0xbef75e81ba98d6bd42491650686637adaa90b86d.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'BonusAwareCalculator':
    |    }
    |
  > |    function getAmount(uint value) constant returns (uint) {
    |        uint withoutBonus = delegate.getAmount(value);
    |        uint bonusPercent = bonusCalculator.getBonus();
  at /home/jiaming/mavs_srcs/contract@0xbef75e81ba98d6bd42491650686637adaa90b86d.sol(21)

[33mWarning[0m for UnhandledException in contract 'BonusAwareCalculator':
    |
    |    function getAmount(uint value) constant returns (uint) {
  > |        uint withoutBonus = delegate.getAmount(value);
    |        uint bonusPercent = bonusCalculator.getBonus();
    |        uint bonus = withoutBonus * bonusPercent / 100;
  at /home/jiaming/mavs_srcs/contract@0xbef75e81ba98d6bd42491650686637adaa90b86d.sol(22)

[33mWarning[0m for UnhandledException in contract 'BonusAwareCalculator':
    |    function getAmount(uint value) constant returns (uint) {
    |        uint withoutBonus = delegate.getAmount(value);
  > |        uint bonusPercent = bonusCalculator.getBonus();
    |        uint bonus = withoutBonus * bonusPercent / 100;
    |        return withoutBonus + bonus;
  at /home/jiaming/mavs_srcs/contract@0xbef75e81ba98d6bd42491650686637adaa90b86d.sol(23)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BonusAwareCalculator':
    |
    |    function getAmount(uint value) constant returns (uint) {
  > |        uint withoutBonus = delegate.getAmount(value);
    |        uint bonusPercent = bonusCalculator.getBonus();
    |        uint bonus = withoutBonus * bonusPercent / 100;
  at /home/jiaming/mavs_srcs/contract@0xbef75e81ba98d6bd42491650686637adaa90b86d.sol(22)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BonusAwareCalculator':
    |    function getAmount(uint value) constant returns (uint) {
    |        uint withoutBonus = delegate.getAmount(value);
  > |        uint bonusPercent = bonusCalculator.getBonus();
    |        uint bonus = withoutBonus * bonusPercent / 100;
    |        return withoutBonus + bonus;
  at /home/jiaming/mavs_srcs/contract@0xbef75e81ba98d6bd42491650686637adaa90b86d.sol(23)


