Processing contract: /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol:Escrow
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
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Escrow':
    |  event Deposit(uint tokens);
    |  address dai_0x_address = 0x89d24A6b4CcB1B6fAA2625fE562bDD9a23260359; // ContractA Address
  > |  mapping ( address => uint256 ) public balances;
    |
    |  function deposit(uint tokens) public returns (bool success){
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'Escrow':
    |  mapping ( address => uint256 ) public balances;
    |
  > |  function deposit(uint tokens) public returns (bool success){
    |    // add the deposited tokens into existing balance 
    |    balances[msg.sender]+= tokens;
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Escrow':
    |  }
    |  
  > |  function reallocate(address to, uint256 tokens) public {
    |        require(balances[msg.sender] >= tokens, "Insufficient balance.");
    |        balances[msg.sender] -= tokens;
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Escrow':
    |  }
    |
  > |  function withdraw(uint256 tokens) public {
    |        require(balances[msg.sender] >= tokens, "Insufficient balance.");
    |        balances[msg.sender] -= tokens;
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(31)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |    balances[msg.sender]+= tokens;
    |    // transfer the tokens from the sender to this contract
  > |    ERC20(dai_0x_address).transferFrom(msg.sender, address(this), tokens);
    |    emit Deposit(tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(26)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |        require(balances[msg.sender] >= tokens, "Insufficient balance.");
    |        balances[msg.sender] -= tokens;
  > |        ERC20(dai_0x_address).transfer(msg.sender, tokens);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |    balances[msg.sender]+= tokens;
    |    // transfer the tokens from the sender to this contract
  > |    ERC20(dai_0x_address).transferFrom(msg.sender, address(this), tokens);
    |    emit Deposit(tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(26)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |        require(balances[msg.sender] >= tokens, "Insufficient balance.");
    |        balances[msg.sender] -= tokens;
  > |        ERC20(dai_0x_address).transfer(msg.sender, tokens);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'Escrow':
    |        require(balances[msg.sender] >= tokens, "Insufficient balance.");
    |        balances[msg.sender] -= tokens;
  > |        balances[to] += tokens;
    |   }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |  function deposit(uint tokens) public returns (bool success){
    |    // add the deposited tokens into existing balance 
  > |    balances[msg.sender]+= tokens;
    |    // transfer the tokens from the sender to this contract
    |    ERC20(dai_0x_address).transferFrom(msg.sender, address(this), tokens);
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |  function withdraw(uint256 tokens) public {
    |        require(balances[msg.sender] >= tokens, "Insufficient balance.");
  > |        balances[msg.sender] -= tokens;
    |        ERC20(dai_0x_address).transfer(msg.sender, tokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |  function reallocate(address to, uint256 tokens) public {
    |        require(balances[msg.sender] >= tokens, "Insufficient balance.");
  > |        balances[msg.sender] -= tokens;
    |        balances[to] += tokens;
    |   }
  at /home/jiaming/mavs_srcs/contract@0x4c1547be2c6f77c514840041b5a53d32f69e2c64.sol(39)


