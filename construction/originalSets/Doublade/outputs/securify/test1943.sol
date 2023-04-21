Processing contract: /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol:Escrow
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Escrow':
    |}
    |
  > |contract Escrow {
    |  
    |  event Deposit(uint tokens);
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Escrow':
    |  event Deposit(uint tokens);
    |  address dai_0x_address = 0x89d24A6b4CcB1B6fAA2625fE562bDD9a23260359; // ContractA Address
  > |  mapping ( address => uint256 ) public balances;
    |
    |  function deposit(uint tokens) public returns (bool success){
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'Escrow':
    |  mapping ( address => uint256 ) public balances;
    |
  > |  function deposit(uint tokens) public returns (bool success){
    |    // add the deposited tokens into existing balance 
    |    balances[msg.sender]+= tokens;
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Escrow':
    |  }
    |
  > |  function returnTokens() public {
    |    balances[msg.sender] = 0;
    |    ERC20(dai_0x_address).transfer(msg.sender, balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Escrow':
    |  }
    |
  > |  function withdraw(uint256 tokens) public {
    |        require(balances[msg.sender] >= tokens);
    |        ERC20(dai_0x_address).transfer(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(36)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |    balances[msg.sender]+= tokens;
    |    // transfer the tokens from the sender to this contract
  > |    ERC20(dai_0x_address).transferFrom(msg.sender, address(this), tokens);
    |    emit Deposit(tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(26)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |  function returnTokens() public {
    |    balances[msg.sender] = 0;
  > |    ERC20(dai_0x_address).transfer(msg.sender, balances[msg.sender]);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(33)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |  function withdraw(uint256 tokens) public {
    |        require(balances[msg.sender] >= tokens);
  > |        ERC20(dai_0x_address).transfer(msg.sender, tokens);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(38)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |    balances[msg.sender]+= tokens;
    |    // transfer the tokens from the sender to this contract
  > |    ERC20(dai_0x_address).transferFrom(msg.sender, address(this), tokens);
    |    emit Deposit(tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(26)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |  function returnTokens() public {
    |    balances[msg.sender] = 0;
  > |    ERC20(dai_0x_address).transfer(msg.sender, balances[msg.sender]);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |  function withdraw(uint256 tokens) public {
    |        require(balances[msg.sender] >= tokens);
  > |        ERC20(dai_0x_address).transfer(msg.sender, tokens);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |  function deposit(uint tokens) public returns (bool success){
    |    // add the deposited tokens into existing balance 
  > |    balances[msg.sender]+= tokens;
    |    // transfer the tokens from the sender to this contract
    |    ERC20(dai_0x_address).transferFrom(msg.sender, address(this), tokens);
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |
    |  function returnTokens() public {
  > |    balances[msg.sender] = 0;
    |    ERC20(dai_0x_address).transfer(msg.sender, balances[msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7d716461b4857f18c73bfbf68f994755ca5567eb.sol(32)


