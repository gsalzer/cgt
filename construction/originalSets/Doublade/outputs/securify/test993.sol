Processing contract: /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol:SafeDeposit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol:TokenVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address Owner = msg.sender;
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    address Owner = msg.sender;
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
  > |    function transferOwnership(address to) public onlyOwner { Owner = to; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    address Owner = msg.sender;
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
  > |    function transferOwnership(address to) public onlyOwner { Owner = to; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(17)

[33mWarning[0m for DAOConstantGas in contract 'SafeDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(80)

[33mWarning[0m for LockedEther in contract 'SafeDeposit':
    |
    |// store ether & tokens for a period of time
  > |contract SafeDeposit is TokenVault {
    |    
    |    event Deposit(address indexed depositor, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(39)

[33mWarning[0m for TODAmount in contract 'SafeDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(80)

[33mWarning[0m for TODReceiver in contract 'SafeDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(80)

[33mWarning[0m for UnhandledException in contract 'SafeDeposit':
    |
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
  > |        return Token(token).transfer(to, amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(24)

[33mWarning[0m for UnhandledException in contract 'SafeDeposit':
    |    function withdrawToken(address token) public returns (bool) {
    |        address self = address(this);
  > |        return withdrawTokenTo(token, msg.sender, Token(token).balanceOf(self));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(29)

[33mWarning[0m for UnhandledException in contract 'SafeDeposit':
    |    function emtpyTo(address token, address to) public returns (bool) {
    |        address self = address(this);
  > |        return withdrawTokenTo(token, to, Token(token).balanceOf(self));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(34)

[33mWarning[0m for UnhandledException in contract 'SafeDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(80)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SafeDeposit':
    |
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
  > |        return Token(token).transfer(to, amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(24)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SafeDeposit':
    |    function withdrawToken(address token) public returns (bool) {
    |        address self = address(this);
  > |        return withdrawTokenTo(token, msg.sender, Token(token).balanceOf(self));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(29)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SafeDeposit':
    |    function emtpyTo(address token, address to) public returns (bool) {
    |        address self = address(this);
  > |        return withdrawTokenTo(token, to, Token(token).balanceOf(self));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SafeDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'SafeDeposit':
    |
    |    function init() payable open {
  > |        Owner = msg.sender;
    |        minDeposit = 1 ether;
    |        Locked = false;
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'SafeDeposit':
    |    function init() payable open {
    |        Owner = msg.sender;
  > |        minDeposit = 1 ether;
    |        Locked = false;
    |        deposit();
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'SafeDeposit':
    |        Owner = msg.sender;
    |        minDeposit = 1 ether;
  > |        Locked = false;
    |        deposit();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'SafeDeposit':
    |
    |    function setRelease(uint newDate) public { 
  > |        Date = newDate;
    |        OpenDate(Date);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'SafeDeposit':
    |    }
    |
  > |    function lock() public { Locked = true; } address owner;
    |    modifier open { if (!Locked) _; owner = msg.sender; }
    |    function kill() public { require(this.balance == 0); selfdestruct(Owner); }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'SafeDeposit':
    |
    |    function lock() public { Locked = true; } address owner;
  > |    modifier open { if (!Locked) _; owner = msg.sender; }
    |    function kill() public { require(this.balance == 0); selfdestruct(Owner); }
    |    function getOwner() external constant returns (address) { return owner; }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeDeposit':
    |    address Owner = msg.sender;
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
  > |    function transferOwnership(address to) public onlyOwner { Owner = to; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeDeposit':
    |        if (msg.value > 0) {
    |            if (msg.value >= MinimumDeposit())
  > |                Deposits[msg.sender] += msg.value;
    |            Deposit(msg.sender, msg.value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(66)

[33mWarning[0m for LockedEther in contract 'TokenVault':
    |
    |// tokens are withdrawable
  > |contract TokenVault is Ownable {
    |
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(21)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
  > |        return Token(token).transfer(to, amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(24)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |    function withdrawToken(address token) public returns (bool) {
    |        address self = address(this);
  > |        return withdrawTokenTo(token, msg.sender, Token(token).balanceOf(self));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(29)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |    function emtpyTo(address token, address to) public returns (bool) {
    |        address self = address(this);
  > |        return withdrawTokenTo(token, to, Token(token).balanceOf(self));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
  > |        return Token(token).transfer(to, amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(24)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |    function withdrawToken(address token) public returns (bool) {
    |        address self = address(this);
  > |        return withdrawTokenTo(token, msg.sender, Token(token).balanceOf(self));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(29)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |    function emtpyTo(address token, address to) public returns (bool) {
    |        address self = address(this);
  > |        return withdrawTokenTo(token, to, Token(token).balanceOf(self));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    address Owner = msg.sender;
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
  > |    function transferOwnership(address to) public onlyOwner { Owner = to; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x3e365d13828c398d1bd1694adce8998fd0139ba3.sol(17)


