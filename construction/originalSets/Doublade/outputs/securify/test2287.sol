Processing contract: /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol:Vault
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Vault':
    |        if (WithdrawalEnabled()) {
    |            if (amount <= this.balance) {
  > |                to.transfer(amount);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(43)

[33mWarning[0m for LockedEther in contract 'Vault':
    |pragma solidity ^0.4.10;
    |
  > |contract Vault {
    |    
    |    event Deposit(address indexed depositor, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Vault':
    |    address Owner;
    |    
  > |    mapping (address => uint) public deposits;
    |    uint Date;
    |    uint MinimumDeposit;
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'Vault':
    |    bool Locked = false;
    |    
  > |    function initVault(uint minDeposit) isOpen payable {
    |        Owner = msg.sender;
    |        Date = 0;
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Vault':
    |    function() payable { deposit(); }
    |
  > |    function SetLockDate(uint NewDate) onlyOwner {
    |        Date = NewDate;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'Vault':
    |    }
    |
  > |    function withdraw(address to, uint amount) onlyOwner {
    |        if (WithdrawalEnabled()) {
    |            if (amount <= this.balance) {
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |    }
    |
  > |    function WithdrawalEnabled() constant returns (bool) { return Date > 0 && Date <= now; }
    |
    |    function deposit() payable {
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |    function WithdrawalEnabled() constant returns (bool) { return Date > 0 && Date <= now; }
    |
  > |    function deposit() payable {
    |        if (msg.value >= MinimumDeposit) {
    |            if ((deposits[msg.sender] + msg.value) < deposits[msg.sender]) {
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Vault':
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
    |    modifier isOpen { if (!Locked) _; }
  > |    function lock() { Locked = true; }
    |}
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(50)

[33mWarning[0m for TODAmount in contract 'Vault':
    |        if (WithdrawalEnabled()) {
    |            if (amount <= this.balance) {
  > |                to.transfer(amount);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(43)

[33mWarning[0m for TODReceiver in contract 'Vault':
    |        if (WithdrawalEnabled()) {
    |            if (amount <= this.balance) {
  > |                to.transfer(amount);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(43)

[33mWarning[0m for UnhandledException in contract 'Vault':
    |        if (WithdrawalEnabled()) {
    |            if (amount <= this.balance) {
  > |                to.transfer(amount);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(43)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vault':
    |        if (WithdrawalEnabled()) {
    |            if (amount <= this.balance) {
  > |                to.transfer(amount);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'Vault':
    |    
    |    function initVault(uint minDeposit) isOpen payable {
  > |        Owner = msg.sender;
    |        Date = 0;
    |        MinimumDeposit = minDeposit;
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'Vault':
    |    function initVault(uint minDeposit) isOpen payable {
    |        Owner = msg.sender;
  > |        Date = 0;
    |        MinimumDeposit = minDeposit;
    |        deposit();
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(17)

[31mViolation[0m for UnrestrictedWrite in contract 'Vault':
    |        Owner = msg.sender;
    |        Date = 0;
  > |        MinimumDeposit = minDeposit;
    |        deposit();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'Vault':
    |                return;
    |            }
  > |            deposits[msg.sender] += msg.value;
    |        }
    |        Deposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'Vault':
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
    |    modifier isOpen { if (!Locked) _; }
  > |    function lock() { Locked = true; }
    |}
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Vault':
    |
    |    function SetLockDate(uint NewDate) onlyOwner {
  > |        Date = NewDate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Vault':
    |                return;
    |            }
  > |            deposits[msg.sender] += msg.value;
    |        }
    |        Deposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x954a36b1c1e5e42f884c4f7aa9522e6fd21b11c3.sol(35)


