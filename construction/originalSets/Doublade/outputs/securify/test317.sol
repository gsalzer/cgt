Processing contract: /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol:Serum
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Serum':
    |
    |// Name your new coin. Make sure the constructor has the same name.
  > |contract Serum {
    |
    |    // This will be you, the minter. It is set in the constructor.
  at /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'Serum':
    |
    |    // This mapping stores everyone's balances.
  > |    mapping (address => uint) public balances;
    |
    |    // This event will track when someone sends some tokens.
  at /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'Serum':
    |    // Function to create some new coins for someone.
    |    // As the minter, only you will have access to this.
  > |    function mint(address receiver, uint amount) public {
    |        if (msg.sender != minter) return;
    |        balances[receiver] += amount;
  at /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'Serum':
    |
    |    // Function to send some coins. Anyone with coins can do this.
  > |    function send(address receiver, uint amount) public {
    |        if (balances[msg.sender] < amount) return;
    |        balances[msg.sender] -= amount;
  at /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Serum':
    |
    |    // This will be you, the minter. It is set in the constructor.
  > |    address public minter;
    |
    |    // This mapping stores everyone's balances.
  at /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Serum':
    |
    |    // This is the constructor. It runs only once, when the contract is created.
  > |    function MyCoin() public {
    |        minter = msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol(17)

[31mViolation[0m for UnrestrictedWrite in contract 'Serum':
    |    // This is the constructor. It runs only once, when the contract is created.
    |    function MyCoin() public {
  > |        minter = msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Serum':
    |    function mint(address receiver, uint amount) public {
    |        if (msg.sender != minter) return;
  > |        balances[receiver] += amount;
    |        Mint(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Serum':
    |    function send(address receiver, uint amount) public {
    |        if (balances[msg.sender] < amount) return;
  > |        balances[msg.sender] -= amount;
    |        balances[receiver] += amount;
    |        Sent(msg.sender, receiver, amount);
  at /home/jiaming/mavs_srcs/contract@0x152ed1b6f6ab3f67bf8cfa0b8b32633b11576fe8.sol(32)


