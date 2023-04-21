Processing contract: /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol:SecureDeposit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol:TokenVault
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
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    address Owner = msg.sender;
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
  > |    function transferOwnership(address to) public onlyOwner { Owner = to; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    address Owner = msg.sender;
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
  > |    function transferOwnership(address to) public onlyOwner { Owner = to; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(16)

[33mWarning[0m for DAOConstantGas in contract 'SecureDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(68)

[33mWarning[0m for LockedEther in contract 'SecureDeposit':
    |
    |// store ether & tokens for a period of time
  > |contract SecureDeposit is TokenVault {
    |    
    |    event Deposit(address indexed depositor, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(27)

[33mWarning[0m for TODAmount in contract 'SecureDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(68)

[33mWarning[0m for TODReceiver in contract 'SecureDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(68)

[33mWarning[0m for UnhandledException in contract 'SecureDeposit':
    |contract TokenVault is Ownable {
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
  > |        return Token(token).transfer(to, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(22)

[33mWarning[0m for UnhandledException in contract 'SecureDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(68)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SecureDeposit':
    |contract TokenVault is Ownable {
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
  > |        return Token(token).transfer(to, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(22)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SecureDeposit':
    |            uint max = Deposits[msg.sender];
    |            if (max > 0 && amount <= max) {
  > |                to.transfer(amount);
    |                Withdrawal(to, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'SecureDeposit':
    |
    |    function initWallet() payable open {
  > |        Owner = msg.sender;
    |        minDeposit = 1 ether;
    |        Locked = false;
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'SecureDeposit':
    |    function initWallet() payable open {
    |        Owner = msg.sender;
  > |        minDeposit = 1 ether;
    |        Locked = false;
    |        deposit();
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'SecureDeposit':
    |        Owner = msg.sender;
    |        minDeposit = 1 ether;
  > |        Locked = false;
    |        deposit();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'SecureDeposit':
    |
    |    function setRelease(uint newDate) public { 
  > |        Date = newDate;
    |        OpenDate(Date);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'SecureDeposit':
    |    }
    |
  > |    function lock() public { Locked = true; } address owner;
    |    modifier open { if (!Locked) _; owner = msg.sender; }
    |    function kill() public { require(this.balance == 0); selfdestruct(Owner); }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'SecureDeposit':
    |
    |    function lock() public { Locked = true; } address owner;
  > |    modifier open { if (!Locked) _; owner = msg.sender; }
    |    function kill() public { require(this.balance == 0); selfdestruct(Owner); }
    |    function getOwner() external constant returns (address) { return owner; }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'SecureDeposit':
    |    address Owner = msg.sender;
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
  > |    function transferOwnership(address to) public onlyOwner { Owner = to; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'SecureDeposit':
    |        if (msg.value > 0) {
    |            if (msg.value >= MinimumDeposit())
  > |                Deposits[msg.sender] += msg.value;
    |            Deposit(msg.sender, msg.value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(54)

[33mWarning[0m for LockedEther in contract 'TokenVault':
    |
    |// tokens are withdrawable
  > |contract TokenVault is Ownable {
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
    |        return Token(token).transfer(to, amount);
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(20)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |contract TokenVault is Ownable {
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
  > |        return Token(token).transfer(to, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(22)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |contract TokenVault is Ownable {
    |    function withdrawTokenTo(address token, address to, uint amount) public onlyOwner returns (bool) {
  > |        return Token(token).transfer(to, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    address Owner = msg.sender;
    |    modifier onlyOwner { if (msg.sender == Owner) _; }
  > |    function transferOwnership(address to) public onlyOwner { Owner = to; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x660fcb0834b1293117d472d65186534acf75af4f.sol(16)


