Processing contract: /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol:PulsarToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |
    |  address public owner;   // The owner of the contract
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |  address public owner;   // The owner of the contract
    |
    |  event OwnershipTransferred ( address indexed prev_owner, address indexed new_owner );
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership (address new_owner) onlyOwner public {
    |    require(new_owner != address(0));
    |    OwnershipTransferred(owner, new_owner);
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(new_owner != address(0));
    |    OwnershipTransferred(owner, new_owner);
  > |    owner = new_owner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(27)

[33mWarning[0m for DAOConstantGas in contract 'PulsarToken':
    |
    |    // Send ether to the seller. It's important to do this last to avoid recursion attacks.
  > |    msg.sender.transfer(_ethers);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(278)

[33mWarning[0m for DAOConstantGas in contract 'PulsarToken':
    |  function transferEthersToOwner(uint ether_value) onlyOwner external {
    |    require(this.balance >= ether_value);
  > |    msg.sender.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(342)

[33mWarning[0m for DAOConstantGas in contract 'PulsarToken':
    |
    |    // Send ether to the investor. It's important to do this last to avoid recursion attacks.
  > |    investor_address.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(418)

[33mWarning[0m for LockedEther in contract 'PulsarToken':
    |/******************************************/
    |
  > |contract PulsarToken is Ownable {
    |
    |  /******** Public constants ********/
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(38)

[33mWarning[0m for TODAmount in contract 'PulsarToken':
    |  function transferEthersToOwner(uint ether_value) onlyOwner external {
    |    require(this.balance >= ether_value);
  > |    msg.sender.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(342)

[33mWarning[0m for TODAmount in contract 'PulsarToken':
    |
    |    // Send ether to the seller. It's important to do this last to avoid recursion attacks.
  > |    msg.sender.transfer(_ethers);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(278)

[33mWarning[0m for TODAmount in contract 'PulsarToken':
    |
    |    // Send ether to the investor. It's important to do this last to avoid recursion attacks.
  > |    investor_address.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(418)

[33mWarning[0m for TODReceiver in contract 'PulsarToken':
    |
    |    // Send ether to the seller. It's important to do this last to avoid recursion attacks.
  > |    msg.sender.transfer(_ethers);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(278)

[33mWarning[0m for TODReceiver in contract 'PulsarToken':
    |  function transferEthersToOwner(uint ether_value) onlyOwner external {
    |    require(this.balance >= ether_value);
  > |    msg.sender.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(342)

[33mWarning[0m for TODReceiver in contract 'PulsarToken':
    |
    |    // Send ether to the investor. It's important to do this last to avoid recursion attacks.
  > |    investor_address.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(418)

[33mWarning[0m for UnhandledException in contract 'PulsarToken':
    |
    |    // Send ether to the seller. It's important to do this last to avoid recursion attacks.
  > |    msg.sender.transfer(_ethers);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(278)

[33mWarning[0m for UnhandledException in contract 'PulsarToken':
    |  function transferEthersToOwner(uint ether_value) onlyOwner external {
    |    require(this.balance >= ether_value);
  > |    msg.sender.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(342)

[33mWarning[0m for UnhandledException in contract 'PulsarToken':
    |
    |    // Send ether to the investor. It's important to do this last to avoid recursion attacks.
  > |    investor_address.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(418)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PulsarToken':
    |
    |    // Send ether to the seller. It's important to do this last to avoid recursion attacks.
  > |    msg.sender.transfer(_ethers);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PulsarToken':
    |  function transferEthersToOwner(uint ether_value) onlyOwner external {
    |    require(this.balance >= ether_value);
  > |    msg.sender.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(342)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PulsarToken':
    |
    |    // Send ether to the investor. It's important to do this last to avoid recursion attacks.
  > |    investor_address.transfer(ether_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |    require(balanceOf[_to] + _value > balanceOf[_to]);  // check for overflows
    |
  > |    balanceOf[_from]  -= _value;                        // subtract from the sender
    |    balanceOf[_to]    += _value;                        // add the same to the recipient
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |
    |    balanceOf[_from]  -= _value;                        // subtract from the sender
  > |    balanceOf[_to]    += _value;                        // add the same to the recipient
    |
    |    Transfer(_from, _to, _value);                       // fire the event
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |    require(new_owner != address(0));
    |    OwnershipTransferred(owner, new_owner);
  > |    owner = new_owner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |    _transfer(this, msg.sender, _tokens);                 // tranfer tokens to the investor
    |
  > |    etherAccumulator += msg.value;      // finally update the counter of received Ether
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |   */
    |  function setICOStartTime(uint start_time) onlyOwner external {
  > |    icoStartTime = start_time;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |  function setSellingPrice(uint selling_price) onlyOwner public {
    |    require(selling_price != 0);
  > |    sellingPrice = selling_price;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |    setSellingPrice(selling_price);
    |
  > |    balanceOf[this] = TOTAL_SUPPLY;
    |
    |    contractState = ContractState.ICOStarted;
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |    balanceOf[this] = TOTAL_SUPPLY;
    |
  > |    contractState = ContractState.ICOStarted;
    |    State(contractState);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |    require(contractState == ContractState.ICOStarted);
    |
  > |    contractState = ContractState.ICOStopped;
    |    State(contractState);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |   */
    |  function setTrustedSender(address trusted_address) onlyOwner external {
  > |    trustedSender = trusted_address;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |
    |    _transfer(this, recipient_address, token_value);
  > |    bountyTokens -= token_value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |  function setBuybackPrice(uint buyback_price) onlyOwner public {
    |    require(buyback_price > 0);
  > |    buybackPrice = buyback_price;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |    setBuybackPrice(buyback_price);
    |
  > |    contractState = ContractState.BuybackEnabled;
    |    State(contractState);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |      require(contractState == ContractState.BuybackEnabled);
    |
  > |      contractState = ContractState.BuybackPaused;
    |      State(contractState);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'PulsarToken':
    |      require(contractState == ContractState.BuybackPaused);
    |
  > |      contractState = ContractState.Destroyed;
    |      State(contractState);
    |
  at /home/jiaming/mavs_srcs/contract@0x5052787b0b9cec67442e2ff43d2176693377bc5a.sol(473)


