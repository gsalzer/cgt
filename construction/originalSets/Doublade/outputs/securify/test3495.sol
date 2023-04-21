Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:BuildingStatus
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:ConvertQuote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:ERC223Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:ERC223ReceivingContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:ETHPriceProvider
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:ETHPriceWatcher
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:Hold
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:OraclizeC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:PermissionManager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:Registry
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:UnityToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BuildingStatus':
    |}
    |
  > |contract BuildingStatus is Ownable {
    |  /* Observer contract  */
    |  address public observer;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(257)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |contract BuildingStatus is Ownable {
    |  /* Observer contract  */
  > |  address public observer;
    |
    |  /* Crowdsale contract */
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |
    |  /* Crowdsale contract */
  > |  address public crowdsale;
    |
    |  enum statusEnum {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(262)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |  }
    |
  > |  statusEnum public status;
    |
    |  event StatusChanged(statusEnum newStatus);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(311)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |  event StatusChanged(statusEnum newStatus);
    |
  > |  function setStatus(statusEnum newStatus) onlyCrowdsale  public {
    |      status = newStatus;
    |      StatusChanged(newStatus);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'BuildingStatus':
    |  }
    |
  > |  function changeStage(uint8 stage) public onlyObserver {
    |      if (stage==1) status = statusEnum.stage1;
    |      if (stage==2) status = statusEnum.stage2;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |
    |  function setStatus(statusEnum newStatus) onlyCrowdsale  public {
  > |      status = newStatus;
    |      StatusChanged(newStatus);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |
    |  function changeStage(uint8 stage) public onlyObserver {
  > |      if (stage==1) status = statusEnum.stage1;
    |      if (stage==2) status = statusEnum.stage2;
    |      if (stage==3) status = statusEnum.stage3;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |  function changeStage(uint8 stage) public onlyObserver {
    |      if (stage==1) status = statusEnum.stage1;
  > |      if (stage==2) status = statusEnum.stage2;
    |      if (stage==3) status = statusEnum.stage3;
    |      if (stage==4) status = statusEnum.stage4;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |      if (stage==1) status = statusEnum.stage1;
    |      if (stage==2) status = statusEnum.stage2;
  > |      if (stage==3) status = statusEnum.stage3;
    |      if (stage==4) status = statusEnum.stage4;
    |      if (stage==5) status = statusEnum.stage5;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |      if (stage==2) status = statusEnum.stage2;
    |      if (stage==3) status = statusEnum.stage3;
  > |      if (stage==4) status = statusEnum.stage4;
    |      if (stage==5) status = statusEnum.stage5;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'BuildingStatus':
    |      if (stage==3) status = statusEnum.stage3;
    |      if (stage==4) status = statusEnum.stage4;
  > |      if (stage==5) status = statusEnum.stage5;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(325)

[33mWarning[0m for DAOConstantGas in contract 'ConvertQuote':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[33mWarning[0m for LockedEther in contract 'ConvertQuote':
    |}
    |
  > |contract ConvertQuote is ETHPriceProvider {
    |  //Encrypted Query
    |  function ConvertQuote(uint _currentPrice) ETHPriceProvider("BIa/Nnj1+ipZBrrLIgpTsI6ukQTlTJMd1c0iC7zvxx+nZzq9ODgBSmCLo3Zc0sYZwD8mlruAi5DblQvt2cGsfVeCyqaxu+1lWD325kgN6o0LxrOUW9OQWn2COB3TzcRL51Q+ZLBsT955S1OJbOqsfQ4gg/l2awe2EFVuO3WTprvwKhAa8tjl2iPYU/AJ83TVP9Kpz+ugTJumlz2Y6SPBGMNcvBoRq3MlnrR2h/XdqPbh3S2bxjbSTLwyZzu2DAgVtybPO1oJETY=") payable public {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(711)

[31mViolation[0m for TODAmount in contract 'ConvertQuote':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[33mWarning[0m for TODReceiver in contract 'ConvertQuote':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[33mWarning[0m for UnhandledException in contract 'ConvertQuote':
    |      oraclize_setNetwork(networkID_auto);
    |
  > |    if(address(oraclize) != OAR.getAddress())
    |      oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(93)

[33mWarning[0m for UnhandledException in contract 'ConvertQuote':
    |
    |    if(address(oraclize) != OAR.getAddress())
  > |      oraclize = OraclizeI(OAR.getAddress());
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(94)

[33mWarning[0m for UnhandledException in contract 'ConvertQuote':
    |
    |  function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |    return oraclize.getPrice(datasource);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(148)

[33mWarning[0m for UnhandledException in contract 'ConvertQuote':
    |  }
    |  function oraclize_query(uint timestamp, string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |    uint price = oraclize.getPrice(datasource, gaslimit);
    |    if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |    return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(161)

[33mWarning[0m for UnhandledException in contract 'ConvertQuote':
    |    uint price = oraclize.getPrice(datasource, gaslimit);
    |    if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |    return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(163)

[33mWarning[0m for UnhandledException in contract 'ConvertQuote':
    |
    |  function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |    return oraclize.cbAddress();
    |  }
    |  function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(167)

[33mWarning[0m for UnhandledException in contract 'ConvertQuote':
    |  }
    |  function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |    return oraclize.setCustomGasPrice(gasPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(173)

[33mWarning[0m for UnhandledException in contract 'ConvertQuote':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[33mWarning[0m for UnhandledException in contract 'ConvertQuote':
    |  function notifyWatcher() internal {
    |    if(address(watcher) != 0x0) {
  > |      watcher.receiveEthPrice(currentPrice);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(719)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ConvertQuote':
    |      oraclize_setNetwork(networkID_auto);
    |
  > |    if(address(oraclize) != OAR.getAddress())
    |      oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ConvertQuote':
    |
    |    if(address(oraclize) != OAR.getAddress())
  > |      oraclize = OraclizeI(OAR.getAddress());
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ConvertQuote':
    |
    |  function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |    return oraclize.getPrice(datasource);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ConvertQuote':
    |  }
    |  function oraclize_query(uint timestamp, string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |    uint price = oraclize.getPrice(datasource, gaslimit);
    |    if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |    return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ConvertQuote':
    |
    |  function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |    return oraclize.cbAddress();
    |  }
    |  function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ConvertQuote':
    |  }
    |  function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |    return oraclize.setCustomGasPrice(gasPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ConvertQuote':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ConvertQuote':
    |  function notifyWatcher() internal {
    |    if(address(watcher) != 0x0) {
  > |      watcher.receiveEthPrice(currentPrice);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(719)

[31mViolation[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |
    |    if(address(oraclize) != OAR.getAddress())
  > |      oraclize = OraclizeI(OAR.getAddress());
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    require(newPrice > 0);
    |
  > |    currentPrice = newPrice;
    |
    |    notifyWatcher();
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(688)

[31mViolation[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    if (oraclize_getPrice("URL") > this.balance) {
    |      //stop if we don't have enough funds anymore
  > |      state = State.Stopped;
    |      LogOraclizeQuery("Oraclize query was NOT sent", this.balance,block.timestamp);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(697)

[31mViolation[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    } else {
    |      bytes32 queryId = oraclize_query(delay, "URL", url, gasLimit);
  > |      validIds[queryId] = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(701)

[31mViolation[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |}
    |
  > |contract ConvertQuote is ETHPriceProvider {
    |  //Encrypted Query
    |  function ConvertQuote(uint _currentPrice) ETHPriceProvider("BIa/Nnj1+ipZBrrLIgpTsI6ukQTlTJMd1c0iC7zvxx+nZzq9ODgBSmCLo3Zc0sYZwD8mlruAi5DblQvt2cGsfVeCyqaxu+1lWD325kgN6o0LxrOUW9OQWn2COB3TzcRL51Q+ZLBsT955S1OJbOqsfQ4gg/l2awe2EFVuO3WTprvwKhAa8tjl2iPYU/AJ83TVP9Kpz+ugTJumlz2Y6SPBGMNcvBoRq3MlnrR2h/XdqPbh3S2bxjbSTLwyZzu2DAgVtybPO1oJETY=") payable public {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(711)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |
    |    if(address(oraclize) != OAR.getAddress())
  > |      oraclize = OraclizeI(OAR.getAddress());
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |  function oraclize_setNetwork() internal returns(bool){
    |    if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |      OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |      oraclize_setNetworkName("eth_mainnet");
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    }
    |    if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |      OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |      oraclize_setNetworkName("eth_ropsten3");
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    }
    |    if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |      OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |      oraclize_setNetworkName("eth_kovan");
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    }
    |    if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |      OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |      oraclize_setNetworkName("eth_rinkeby");
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    }
    |    if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |      OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    }
    |    if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |      OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    }
    |    if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |      OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |  function setUpdateInterval(uint newInterval) external onlyOwner {
    |    require(newInterval > 0);
  > |    updateInterval = newInterval;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |  function setGasLimit(uint _gasLimit) external onlyOwner {
    |    require(_gasLimit > 50000);
  > |    gasLimit = _gasLimit;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(523)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |  function setOraclizeAddrResolverI(address __oar) public onlyOwner {
    |    require(__oar != 0x0);
  > |    OAR = OraclizeAddrResolverI(__oar);
    |    LogOraclizeAddrResolverI(__oar);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(534)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |  //send some funds along with the call to cover oraclize fees
    |  function startUpdate(uint startingPrice) payable onlyOwner inNewState public {
  > |    state = State.Active;
    |
    |    currentPrice = startingPrice;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(659)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |    state = State.Active;
    |
  > |    currentPrice = startingPrice;
    |    update(updateInterval);
    |    notifyWatcher();
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |
    |  function stopUpdate() external onlyOwner inActiveState {
  > |    state = State.Stopped;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(668)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |  function setWatcher(address newWatcher) external onlyOwner {
    |    require(newWatcher != 0x0);
  > |    watcher = ETHPriceWatcher(newWatcher);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |  function __callback(bytes32 myid, string result) public {
    |    require(msg.sender == oraclize_cbAddress() && validIds[myid]);
  > |    delete validIds[myid];
    |
    |    uint newPrice = parseInt(result, 2);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'ConvertQuote':
    |}
    |
  > |contract ConvertQuote is ETHPriceProvider {
    |  //Encrypted Query
    |  function ConvertQuote(uint _currentPrice) ETHPriceProvider("BIa/Nnj1+ipZBrrLIgpTsI6ukQTlTJMd1c0iC7zvxx+nZzq9ODgBSmCLo3Zc0sYZwD8mlruAi5DblQvt2cGsfVeCyqaxu+1lWD325kgN6o0LxrOUW9OQWn2COB3TzcRL51Q+ZLBsT955S1OJbOqsfQ4gg/l2awe2EFVuO3WTprvwKhAa8tjl2iPYU/AJ83TVP9Kpz+ugTJumlz2Y6SPBGMNcvBoRq3MlnrR2h/XdqPbh3S2bxjbSTLwyZzu2DAgVtybPO1oJETY=") payable public {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(711)

[31mViolation[0m for DAOConstantGas in contract 'Crowdsale':
    |
    |    uint ethContributed = registry.getContributionETH(msg.sender);
  > |    if (!msg.sender.send(ethContributed)) {
    |      ErrorSendingETH(msg.sender, ethContributed);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1457)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |      processTransaction(msg.sender, msg.value);
    |    } else {
  > |      msg.sender.transfer(msg.value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1259)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |
    |    if(totalTokens + tokens > hardCapToken) {
  > |      _contributor.transfer(_amount);
    |    } else {
    |      if (tokens > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1322)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |
    |    if (returnAmountETH != 0) {
  > |      _contributor.transfer(returnAmountETH);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1334)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    require(state == SaleState.ENDED);
    |    uint bal = this.balance;
  > |    hold.transfer(bal);
    |    hold.setInitialBalance(bal);
    |    WithdrawedEthToHold(bal);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1471)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is Pausable, ETHPriceWatcher, ERC223ReceivingContract {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1052)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |    require(state == SaleState.ENDED);
    |    uint bal = this.balance;
  > |    hold.transfer(bal);
    |    hold.setInitialBalance(bal);
    |    WithdrawedEthToHold(bal);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1471)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |
    |    uint ethContributed = registry.getContributionETH(msg.sender);
  > |    if (!msg.sender.send(ethContributed)) {
    |      ErrorSendingETH(msg.sender, ethContributed);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1457)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |
    |    if(totalTokens + tokens > hardCapToken) {
  > |      _contributor.transfer(_amount);
    |    } else {
    |      if (tokens > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1322)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |
    |    if (returnAmountETH != 0) {
  > |      _contributor.transfer(returnAmountETH);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1334)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |    require(state == SaleState.ENDED);
    |    uint bal = this.balance;
  > |    hold.transfer(bal);
    |    hold.setInitialBalance(bal);
    |    WithdrawedEthToHold(bal);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1471)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |      processTransaction(msg.sender, msg.value);
    |    } else {
  > |      msg.sender.transfer(msg.value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1259)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |
    |    uint ethContributed = registry.getContributionETH(msg.sender);
  > |    if (!msg.sender.send(ethContributed)) {
    |      ErrorSendingETH(msg.sender, ethContributed);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1457)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |
    |    if(totalTokens + tokens > hardCapToken) {
  > |      _contributor.transfer(_amount);
    |    } else {
    |      if (tokens > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1322)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |
    |    if (returnAmountETH != 0) {
  > |      _contributor.transfer(returnAmountETH);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1334)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender) || msg.sender == owner);
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1129)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |      processTransaction(msg.sender, msg.value);
    |    } else {
  > |      msg.sender.transfer(msg.value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1259)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    if (usdRaised.add(usd) >= hardCap) {
    |      state = SaleState.ENDED;
  > |      statusI.setStatus(BuildingStatus.statusEnum.preparation_works);
    |      HardCapReached(block.number);
    |      CrowdsaleEnded(block.number);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1271)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |      if (usdRaised.add(usd) >= softCap) {
    |        state = SaleState.ENDED;
  > |        statusI.setStatus(BuildingStatus.statusEnum.preparation_works);
    |        CrowdsaleEnded(block.number);
    |        return false;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1280)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |      } else {
    |        state = SaleState.REFUND;
  > |        statusI.setStatus(BuildingStatus.statusEnum.refund);
    |        CrowdsaleEnded(block.number);
    |        return false;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1285)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |    if(totalTokens + tokens > hardCapToken) {
  > |      _contributor.transfer(_amount);
    |    } else {
    |      if (tokens > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1322)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    } else {
    |      if (tokens > 0) {
  > |        registry.addContribution(_contributor, contributionAmountETH, contributionAmountUsd, tokens, ethUsdPrice);
    |        ethRaised += contributionAmountETH;
    |        totalTokens += tokens;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1325)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |    if (returnAmountETH != 0) {
  > |      _contributor.transfer(returnAmountETH);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1334)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function checkBalanceContract() internal view returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1379)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function getContributorTokens(address contrib) public view returns (uint) {
  > |    return registry.getContributionTokens(contrib);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1383)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function getContributorETH(address contrib) public view returns (uint) {
  > |    return registry.getContributionETH(contrib);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1387)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function getContributorUSD(address contrib) public view returns (uint) {
  > |    return registry.getContributionUSD(contrib);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1391)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |    for (uint cnt = 0; cnt < _numberOfReturns; cnt++) {
  > |      currentParticipantAddress = registry.getContributorByIndex(nextContributorToTransferTokens);
    |      if (currentParticipantAddress == 0x0)
    |        return;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1402)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        return;
    |
  > |      if (!hasWithdrawedTokens[currentParticipantAddress] && registry.isActiveContributor(currentParticipantAddress)) {
    |
    |        uint numberOfUNT = registry.getContributionTokens(currentParticipantAddress);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1406)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |      if (!hasWithdrawedTokens[currentParticipantAddress] && registry.isActiveContributor(currentParticipantAddress)) {
    |
  > |        uint numberOfUNT = registry.getContributionTokens(currentParticipantAddress);
    |
    |        if(token.transfer(currentParticipantAddress, numberOfUNT)) {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1408)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        uint numberOfUNT = registry.getContributionTokens(currentParticipantAddress);
    |
  > |        if(token.transfer(currentParticipantAddress, numberOfUNT)) {
    |          TokensTransfered(currentParticipantAddress, numberOfUNT);
    |          withdrawedTokens += numberOfUNT;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1410)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require((now > endDate && usdRaised >= softCap )  || ( usdRaised >= hardCap)  );
    |    require(state == SaleState.ENDED);
  > |    require(!hasWithdrawedTokens[msg.sender] && registry.isActiveContributor(msg.sender));
    |    require(getTokenBalance() >= registry.getContributionTokens(msg.sender));
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1425)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(state == SaleState.ENDED);
    |    require(!hasWithdrawedTokens[msg.sender] && registry.isActiveContributor(msg.sender));
  > |    require(getTokenBalance() >= registry.getContributionTokens(msg.sender));
    |
    |    uint numberOfUNT = registry.getContributionTokens(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1426)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(getTokenBalance() >= registry.getContributionTokens(msg.sender));
    |
  > |    uint numberOfUNT = registry.getContributionTokens(msg.sender);
    |
    |    if(token.transfer(msg.sender, numberOfUNT)) {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1428)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint numberOfUNT = registry.getContributionTokens(msg.sender);
    |
  > |    if(token.transfer(msg.sender, numberOfUNT)) {
    |      TokensTransfered(msg.sender, numberOfUNT);
    |      withdrawedTokens += numberOfUNT;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1430)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint balance = checkBalanceContract() - (totalTokens - withdrawedTokens);
    |    if(balance > 0) {
  > |      if(token.transfer(msg.sender, balance)) {
    |        TokensTransfered(msg.sender,  balance);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1442)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function refund() public whenNotPaused {
    |    require(state == SaleState.REFUND);
  > |    require(registry.getContributionETH(msg.sender) > 0);
    |    require(!hasRefunded[msg.sender]);
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1453)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(!hasRefunded[msg.sender]);
    |
  > |    uint ethContributed = registry.getContributionETH(msg.sender);
    |    if (!msg.sender.send(ethContributed)) {
    |      ErrorSendingETH(msg.sender, ethContributed);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1456)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |    uint ethContributed = registry.getContributionETH(msg.sender);
  > |    if (!msg.sender.send(ethContributed)) {
    |      ErrorSendingETH(msg.sender, ethContributed);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1457)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(state == SaleState.ENDED);
    |    uint bal = this.balance;
  > |    hold.transfer(bal);
    |    hold.setInitialBalance(bal);
    |    WithdrawedEthToHold(bal);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1471)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    uint bal = this.balance;
    |    hold.transfer(bal);
  > |    hold.setInitialBalance(bal);
    |    WithdrawedEthToHold(bal);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1472)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    require(state == SaleState.NEW);
    |
  > |    statusI.setStatus(BuildingStatus.statusEnum.crowdsale);
    |    state = SaleState.SALE;
    |    CrowdsaleStarted(block.number);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1487)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function getTokenBalance() public constant returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1498)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function getContributorAmount() public view returns (uint) {
  > |    return registry.getContributorAmount();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1518)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
  > |    registry.addContributor(_contributor, _amount, _amusd, _tokens, _quote);
    |    ethRaised += _amount;
    |    usdRaised += _amusd;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1530)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
  > |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1539)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    ethRaised -= registry.getContributionETH(_contributor);
  > |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1540)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
  > |    totalTokens -= registry.getContributionTokens(_contributor);
    |
    |    registry.editContribution(_contributor, _amount, _amusd, _tokens, _quote);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1541)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    totalTokens -= registry.getContributionTokens(_contributor);
    |
  > |    registry.editContribution(_contributor, _amount, _amusd, _tokens, _quote);
    |    ethRaised += _amount;
    |    usdRaised += _amusd;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1543)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function removeContributor(address _contributor) public onlyPermitted {
  > |    registry.removeContribution(_contributor);
    |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1552)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function removeContributor(address _contributor) public onlyPermitted {
    |    registry.removeContribution(_contributor);
  > |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1553)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    registry.removeContribution(_contributor);
    |    ethRaised -= registry.getContributionETH(_contributor);
  > |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
    |    ContributionRemoved(_contributor, ethRaised, usdRaised, totalTokens);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1554)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
  > |    totalTokens -= registry.getContributionTokens(_contributor);
    |    ContributionRemoved(_contributor, ethRaised, usdRaised, totalTokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1555)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |    uint ethContributed = registry.getContributionETH(msg.sender);
  > |    if (!msg.sender.send(ethContributed)) {
    |      ErrorSendingETH(msg.sender, ethContributed);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1457)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender) || msg.sender == owner);
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1129)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    if (usdRaised.add(usd) >= hardCap) {
    |      state = SaleState.ENDED;
  > |      statusI.setStatus(BuildingStatus.statusEnum.preparation_works);
    |      HardCapReached(block.number);
    |      CrowdsaleEnded(block.number);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |      if (usdRaised.add(usd) >= softCap) {
    |        state = SaleState.ENDED;
  > |        statusI.setStatus(BuildingStatus.statusEnum.preparation_works);
    |        CrowdsaleEnded(block.number);
    |        return false;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1280)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |      } else {
    |        state = SaleState.REFUND;
  > |        statusI.setStatus(BuildingStatus.statusEnum.refund);
    |        CrowdsaleEnded(block.number);
    |        return false;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    } else {
    |      if (tokens > 0) {
  > |        registry.addContribution(_contributor, contributionAmountETH, contributionAmountUsd, tokens, ethUsdPrice);
    |        ethRaised += contributionAmountETH;
    |        totalTokens += tokens;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1325)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |    if (returnAmountETH != 0) {
  > |      _contributor.transfer(returnAmountETH);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function checkBalanceContract() internal view returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1379)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function getContributorTokens(address contrib) public view returns (uint) {
  > |    return registry.getContributionTokens(contrib);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function getContributorETH(address contrib) public view returns (uint) {
  > |    return registry.getContributionETH(contrib);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1387)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function getContributorUSD(address contrib) public view returns (uint) {
  > |    return registry.getContributionUSD(contrib);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |    for (uint cnt = 0; cnt < _numberOfReturns; cnt++) {
  > |      currentParticipantAddress = registry.getContributorByIndex(nextContributorToTransferTokens);
    |      if (currentParticipantAddress == 0x0)
    |        return;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        return;
    |
  > |      if (!hasWithdrawedTokens[currentParticipantAddress] && registry.isActiveContributor(currentParticipantAddress)) {
    |
    |        uint numberOfUNT = registry.getContributionTokens(currentParticipantAddress);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1406)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |      if (!hasWithdrawedTokens[currentParticipantAddress] && registry.isActiveContributor(currentParticipantAddress)) {
    |
  > |        uint numberOfUNT = registry.getContributionTokens(currentParticipantAddress);
    |
    |        if(token.transfer(currentParticipantAddress, numberOfUNT)) {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1408)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        uint numberOfUNT = registry.getContributionTokens(currentParticipantAddress);
    |
  > |        if(token.transfer(currentParticipantAddress, numberOfUNT)) {
    |          TokensTransfered(currentParticipantAddress, numberOfUNT);
    |          withdrawedTokens += numberOfUNT;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require((now > endDate && usdRaised >= softCap )  || ( usdRaised >= hardCap)  );
    |    require(state == SaleState.ENDED);
  > |    require(!hasWithdrawedTokens[msg.sender] && registry.isActiveContributor(msg.sender));
    |    require(getTokenBalance() >= registry.getContributionTokens(msg.sender));
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1425)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(state == SaleState.ENDED);
    |    require(!hasWithdrawedTokens[msg.sender] && registry.isActiveContributor(msg.sender));
  > |    require(getTokenBalance() >= registry.getContributionTokens(msg.sender));
    |
    |    uint numberOfUNT = registry.getContributionTokens(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1426)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(getTokenBalance() >= registry.getContributionTokens(msg.sender));
    |
  > |    uint numberOfUNT = registry.getContributionTokens(msg.sender);
    |
    |    if(token.transfer(msg.sender, numberOfUNT)) {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint numberOfUNT = registry.getContributionTokens(msg.sender);
    |
  > |    if(token.transfer(msg.sender, numberOfUNT)) {
    |      TokensTransfered(msg.sender, numberOfUNT);
    |      withdrawedTokens += numberOfUNT;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1430)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint balance = checkBalanceContract() - (totalTokens - withdrawedTokens);
    |    if(balance > 0) {
  > |      if(token.transfer(msg.sender, balance)) {
    |        TokensTransfered(msg.sender,  balance);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function refund() public whenNotPaused {
    |    require(state == SaleState.REFUND);
  > |    require(registry.getContributionETH(msg.sender) > 0);
    |    require(!hasRefunded[msg.sender]);
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(!hasRefunded[msg.sender]);
    |
  > |    uint ethContributed = registry.getContributionETH(msg.sender);
    |    if (!msg.sender.send(ethContributed)) {
    |      ErrorSendingETH(msg.sender, ethContributed);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(state == SaleState.ENDED);
    |    uint bal = this.balance;
  > |    hold.transfer(bal);
    |    hold.setInitialBalance(bal);
    |    WithdrawedEthToHold(bal);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1471)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    uint bal = this.balance;
    |    hold.transfer(bal);
  > |    hold.setInitialBalance(bal);
    |    WithdrawedEthToHold(bal);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1472)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    require(state == SaleState.NEW);
    |
  > |    statusI.setStatus(BuildingStatus.statusEnum.crowdsale);
    |    state = SaleState.SALE;
    |    CrowdsaleStarted(block.number);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function getTokenBalance() public constant returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1498)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function getContributorAmount() public view returns (uint) {
  > |    return registry.getContributorAmount();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1518)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
  > |    registry.addContributor(_contributor, _amount, _amusd, _tokens, _quote);
    |    ethRaised += _amount;
    |    usdRaised += _amusd;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1530)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
  > |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1539)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    ethRaised -= registry.getContributionETH(_contributor);
  > |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1540)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
  > |    totalTokens -= registry.getContributionTokens(_contributor);
    |
    |    registry.editContribution(_contributor, _amount, _amusd, _tokens, _quote);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    totalTokens -= registry.getContributionTokens(_contributor);
    |
  > |    registry.editContribution(_contributor, _amount, _amusd, _tokens, _quote);
    |    ethRaised += _amount;
    |    usdRaised += _amusd;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1543)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function removeContributor(address _contributor) public onlyPermitted {
  > |    registry.removeContribution(_contributor);
    |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1552)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function removeContributor(address _contributor) public onlyPermitted {
    |    registry.removeContribution(_contributor);
  > |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    registry.removeContribution(_contributor);
    |    ethRaised -= registry.getContributionETH(_contributor);
  > |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
    |    ContributionRemoved(_contributor, ethRaised, usdRaised, totalTokens);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
  > |    totalTokens -= registry.getContributionTokens(_contributor);
    |    ContributionRemoved(_contributor, ethRaised, usdRaised, totalTokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1555)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if(token.transfer(currentParticipantAddress, numberOfUNT)) {
    |          TokensTransfered(currentParticipantAddress, numberOfUNT);
  > |          withdrawedTokens += numberOfUNT;
    |          hasWithdrawedTokens[currentParticipantAddress] = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1412)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |          TokensTransfered(currentParticipantAddress, numberOfUNT);
    |          withdrawedTokens += numberOfUNT;
  > |          hasWithdrawedTokens[currentParticipantAddress] = true;
    |        }
    |      }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1413)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |      }
    |
  > |      nextContributorToTransferTokens += 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1417)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    if(token.transfer(msg.sender, numberOfUNT)) {
    |      TokensTransfered(msg.sender, numberOfUNT);
  > |      withdrawedTokens += numberOfUNT;
    |      hasWithdrawedTokens[msg.sender] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1432)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    registry.addContributor(_contributor, _amount, _amusd, _tokens, _quote);
  > |    ethRaised += _amount;
    |    usdRaised += _amusd;
    |    totalTokens += _tokens;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1531)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    registry.addContributor(_contributor, _amount, _amusd, _tokens, _quote);
    |    ethRaised += _amount;
  > |    usdRaised += _amusd;
    |    totalTokens += _tokens;
    |    ContributionAddedManual(_contributor, ethRaised, usdRaised, totalTokens, _quote);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1532)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    ethRaised += _amount;
    |    usdRaised += _amusd;
  > |    totalTokens += _tokens;
    |    ContributionAddedManual(_contributor, ethRaised, usdRaised, totalTokens, _quote);
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1533)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
  > |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1539)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    ethRaised -= registry.getContributionETH(_contributor);
  > |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1540)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
  > |    totalTokens -= registry.getContributionTokens(_contributor);
    |
    |    registry.editContribution(_contributor, _amount, _amusd, _tokens, _quote);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1541)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    registry.editContribution(_contributor, _amount, _amusd, _tokens, _quote);
  > |    ethRaised += _amount;
    |    usdRaised += _amusd;
    |    totalTokens += _tokens;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1544)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    registry.editContribution(_contributor, _amount, _amusd, _tokens, _quote);
    |    ethRaised += _amount;
  > |    usdRaised += _amusd;
    |    totalTokens += _tokens;
    |    ContributionAdded(_contributor, ethRaised, usdRaised, totalTokens, _quote);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1545)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    ethRaised += _amount;
    |    usdRaised += _amusd;
  > |    totalTokens += _tokens;
    |    ContributionAdded(_contributor, ethRaised, usdRaised, totalTokens, _quote);
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1546)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function removeContributor(address _contributor) public onlyPermitted {
    |    registry.removeContribution(_contributor);
  > |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1553)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    registry.removeContribution(_contributor);
    |    ethRaised -= registry.getContributionETH(_contributor);
  > |    usdRaised -= registry.getContributionUSD(_contributor);
    |    totalTokens -= registry.getContributionTokens(_contributor);
    |    ContributionRemoved(_contributor, ethRaised, usdRaised, totalTokens);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1554)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    ethRaised -= registry.getContributionETH(_contributor);
    |    usdRaised -= registry.getContributionUSD(_contributor);
  > |    totalTokens -= registry.getContributionTokens(_contributor);
    |    ContributionRemoved(_contributor, ethRaised, usdRaised, totalTokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1555)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |      TokensTransfered(msg.sender, numberOfUNT);
    |      withdrawedTokens += numberOfUNT;
  > |      hasWithdrawedTokens[msg.sender] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1433)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |      ErrorSendingETH(msg.sender, ethContributed);
    |    } else {
  > |      hasRefunded[msg.sender] = true;
    |      Refunded(msg.sender, ethContributed);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1460)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(576)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(584)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setPermissionManager(address _permadr) public onlyOwner {
    |    require(_permadr != 0x0);
  > |    permissionManager = PermissionManager(_permadr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1167)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setRegistry(address _regadr) public onlyOwner {
    |    require(_regadr != 0x0);
  > |    registry = Registry(_regadr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1173)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(_tokenUSDRate > 0);
    |    uint oldTokenUSDRate = tokenUSDRate;
  > |    tokenUSDRate = _tokenUSDRate;
    |    ChangeTokenUSDRate(oldTokenUSDRate, _tokenUSDRate);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1179)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function receiveEthPrice(uint _ethUsdPrice) external onlyEthPriceProvider {
    |    require(_ethUsdPrice > 0);
  > |    ethUsdPrice = _ethUsdPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1189)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setEthPriceProvider(address provider) external onlyOwner {
    |    require(provider != 0x0);
  > |    ethPriceProvider = provider;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1194)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setHold(address holdCont) public onlyOwner {
    |    require(holdCont != 0x0);
  > |    hold = Hold(holdCont);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1200)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setToken(address tokCont) public onlyOwner {
    |    require(tokCont != 0x0);
  > |    token = UnityToken(tokCont);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1205)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setStatusI(address statI) public onlyOwner {
    |    require(statI != 0x0);
  > |    statusI = BuildingStatus(statI);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1210)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setStartDate(uint date) public onlyOwner {
    |    uint oldStartDate = startDate;
  > |    startDate = date;
    |    ManualChangeStartDate(oldStartDate, date);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1215)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setEndDate(uint date) public onlyOwner {
    |    uint oldEndDate = endDate;
  > |    endDate = date;
    |    ManualChangeEndDate(oldEndDate, date);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1221)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |  function setSoftCap(uint _softCap) public onlyOwner {
  > |    softCap = _softCap * 1 ether;
    |    SoftCapChanged();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1226)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |  function setHardCap(uint _hardCap) public onlyOwner {
  > |    hardCap = _hardCap * 1 ether;
    |    HardCapChanged();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1231)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function setMinimalContribution(uint minimumAmount) public onlyOwner {
    |    uint oldMinAmount = minimalContribution;
  > |    minimalContribution = minimumAmount;
    |    ChangeMinAmount(oldMinAmount, minimalContribution);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1237)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(_hardCapToken > 1 ether); // > 1 UNT
    |    uint oldHardCapToken = _hardCapToken;
  > |    hardCapToken = _hardCapToken;
    |    ChangeHardCapToken(oldHardCapToken, hardCapToken);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1244)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |  function newCrowdsale() public onlyOwner {
  > |    state = SaleState.NEW;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1477)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    statusI.setStatus(BuildingStatus.statusEnum.crowdsale);
  > |    state = SaleState.SALE;
    |    CrowdsaleStarted(block.number);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1488)

[33mWarning[0m for LockedEther in contract 'ERC223ReceivingContract':
    | */
    | 
  > |contract ERC223ReceivingContract {
    |
    |  struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(728)

[31mViolation[0m for MissingInputValidation in contract 'ERC223ReceivingContract':
    |   * @param _data  Transaction metadata.
    |   */
  > |  function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |    TKN memory tkn;
    |    tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(744)

[33mWarning[0m for MissingInputValidation in contract 'ERC223ReceivingContract':
    | */
    | 
  > |contract ERC223ReceivingContract {
    |
    |  struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(728)

[31mViolation[0m for DAOConstantGas in contract 'Hold':
    |        require(balReleased > 0);
    |        require(this.balance >= balReleased);
  > |        multisig.transfer(balReleased);
    |        withdrawed += balReleased;
    |        EthReleased(balReleased);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(978)

[31mViolation[0m for DAOConstantGas in contract 'Hold':
    |        require(this.balance >= n);
    |        require(getBalanceReleased() >= n);
  > |        multisig.transfer(n);
    |        withdrawed += n;
    |        EthReleased(n);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(986)

[31mViolation[0m for DAOConstantGas in contract 'Hold':
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  > |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
    |                hasWithdrawedEth[currentParticipantAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1034)

[33mWarning[0m for DAOConstantGas in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1017)

[33mWarning[0m for LockedEther in contract 'Hold':
    | * @author Vladimir Kovalchuk
    | */
  > |contract Hold is Ownable {
    |
    |    uint8 stages = 5;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(915)

[31mViolation[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function setInitialBalance(uint inBal) public {
    |        initialBalance = inBal;
    |        InitialBalanceChanged(inBal);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(969)

[31mViolation[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |  function getWithdrawed(address contrib) public onlyPermitted view returns (bool) {
    |    return hasWithdrawedEth[contrib];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1047)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |
    |    uint8 stages = 5;
  > |    uint8 public percentage;
    |    uint8 public currentStage;
    |    uint public initialBalance;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(918)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    uint8 stages = 5;
    |    uint8 public percentage;
  > |    uint8 public currentStage;
    |    uint public initialBalance;
    |    uint public withdrawed;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(919)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    uint8 public percentage;
    |    uint8 public currentStage;
  > |    uint public initialBalance;
    |    uint public withdrawed;
    |    
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(920)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    uint8 public currentStage;
    |    uint public initialBalance;
  > |    uint public withdrawed;
    |    
    |    address public multisig;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(921)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    uint public withdrawed;
    |    
  > |    address public multisig;
    |    Registry registry;
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(923)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    Registry registry;
    |
  > |    PermissionManager public permissionManager;
    |    uint nextContributorToTransferEth;
    |    address public observer;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(926)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    PermissionManager public permissionManager;
    |    uint nextContributorToTransferEth;
  > |    address public observer;
    |    uint dateDeployed;
    |    mapping(address => bool) private hasWithdrawedEth;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(928)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function setPermissionManager(address _permadr) public onlyOwner {
    |        require(_permadr != 0x0);
    |        permissionManager = PermissionManager(_permadr);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(959)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function setObserver(address observerAddr) public onlyOwner {
    |        require(observerAddr != 0x0);
    |        observer = observerAddr;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(964)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function releaseAllETH() onlyPermitted public {
    |        uint balReleased = getBalanceReleased();
    |        require(balReleased > 0);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(974)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    } 
    |
  > |    function getBalance() public view returns (uint) {
    |        return this.balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(991)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function changeStageAndReleaseETH() public onlyObserver {
    |        uint8 newStage = currentStage + 1;
    |        require(newStage <= stages);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(995)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function changeStage() public onlyObserver {
    |        uint8 newStage = currentStage + 1;
    |        require(newStage <= stages);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1003)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function getBalanceReleased() public view returns (uint) {
    |        return initialBalance * percentage * currentStage / 100 - withdrawed ;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1010)

[33mWarning[0m for MissingInputValidation in contract 'Hold':
    |    }
    |
  > |    function returnETHByOwner() public onlyOwner {
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1014)

[31mViolation[0m for TODAmount in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1017)

[31mViolation[0m for TODAmount in contract 'Hold':
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  > |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
    |                hasWithdrawedEth[currentParticipantAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1034)

[31mViolation[0m for TODReceiver in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1017)

[33mWarning[0m for TODReceiver in contract 'Hold':
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  > |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
    |                hasWithdrawedEth[currentParticipantAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1034)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |
    |    modifier onlyPermitted() {
  > |        require(permissionManager.isPermitted(msg.sender) || msg.sender == owner);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(939)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |        require(balReleased > 0);
    |        require(this.balance >= balReleased);
  > |        multisig.transfer(balReleased);
    |        withdrawed += balReleased;
    |        EthReleased(balReleased);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(978)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |        require(this.balance >= n);
    |        require(getBalanceReleased() >= n);
  > |        multisig.transfer(n);
    |        withdrawed += n;
    |        EthReleased(n);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(986)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1017)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |
    |        for (uint cnt = 0; cnt < _numberOfReturns; cnt++) {
  > |            currentParticipantAddress = registry.getContributorByIndex(nextContributorToTransferEth);
    |            if (currentParticipantAddress == 0x0) 
    |                return;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1026)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |
    |            if (!hasWithdrawedEth[currentParticipantAddress]) {
  > |                uint EthAmount = registry.getContributionETH(currentParticipantAddress);
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1031)

[33mWarning[0m for UnhandledException in contract 'Hold':
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  > |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
    |                hasWithdrawedEth[currentParticipantAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1034)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hold':
    |
    |    modifier onlyPermitted() {
  > |        require(permissionManager.isPermitted(msg.sender) || msg.sender == owner);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(939)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hold':
    |        require(now > dateDeployed + 183 days);
    |        uint balance = getBalance();
  > |        owner.transfer(getBalance());
    |        EthReturnedToOwner(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1017)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hold':
    |
    |        for (uint cnt = 0; cnt < _numberOfReturns; cnt++) {
  > |            currentParticipantAddress = registry.getContributorByIndex(nextContributorToTransferEth);
    |            if (currentParticipantAddress == 0x0) 
    |                return;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1026)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hold':
    |
    |            if (!hasWithdrawedEth[currentParticipantAddress]) {
  > |                uint EthAmount = registry.getContributionETH(currentParticipantAddress);
    |                EthAmount -=  EthAmount * (percentage / 100 * currentStage);
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1031)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |
    |    function setInitialBalance(uint inBal) public {
  > |        initialBalance = inBal;
    |        InitialBalanceChanged(inBal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(970)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |        require(this.balance >= balReleased);
    |        multisig.transfer(balReleased);
  > |        withdrawed += balReleased;
    |        EthReleased(balReleased);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(979)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |        require(getBalanceReleased() >= n);
    |        multisig.transfer(n);
  > |        withdrawed += n;
    |        EthReleased(n);
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(987)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |                currentParticipantAddress.transfer(EthAmount);
    |                EthRefunded(currentParticipantAddress, EthAmount);
  > |                hasWithdrawedEth[currentParticipantAddress] = true;
    |            }
    |            nextContributorToTransferEth += 1;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1036)

[31mViolation[0m for UnrestrictedWrite in contract 'Hold':
    |                hasWithdrawedEth[currentParticipantAddress] = true;
    |            }
  > |            nextContributorToTransferEth += 1;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1038)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |    function setPermissionManager(address _permadr) public onlyOwner {
    |        require(_permadr != 0x0);
  > |        permissionManager = PermissionManager(_permadr);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(961)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |    function setObserver(address observerAddr) public onlyOwner {
    |        require(observerAddr != 0x0);
  > |        observer = observerAddr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(966)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |        uint8 newStage = currentStage + 1;
    |        require(newStage <= stages);
  > |        currentStage = newStage;
    |        StageChanged(newStage);
    |        releaseAllETH();
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(998)

[33mWarning[0m for UnrestrictedWrite in contract 'Hold':
    |        uint8 newStage = currentStage + 1;
    |        require(newStage <= stages);
  > |        currentStage = newStage;
    |        StageChanged(newStage);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(1006)

[33mWarning[0m for DAOConstantGas in contract 'OraclizeC':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[33mWarning[0m for LockedEther in contract 'OraclizeC':
    | * @author Emil Dudnyk
    | */
  > |contract OraclizeC is Ownable, usingOraclize {
    |  uint public updateInterval = 300; //5 minutes by default
    |  uint public gasLimit = 200000; // Oraclize Gas Limit
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(483)

[31mViolation[0m for TODAmount in contract 'OraclizeC':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[33mWarning[0m for TODReceiver in contract 'OraclizeC':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[33mWarning[0m for UnhandledException in contract 'OraclizeC':
    |      oraclize_setNetwork(networkID_auto);
    |
  > |    if(address(oraclize) != OAR.getAddress())
    |      oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(93)

[33mWarning[0m for UnhandledException in contract 'OraclizeC':
    |
    |    if(address(oraclize) != OAR.getAddress())
  > |      oraclize = OraclizeI(OAR.getAddress());
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(94)

[33mWarning[0m for UnhandledException in contract 'OraclizeC':
    |  }
    |  function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |    return oraclize.setCustomGasPrice(gasPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(173)

[33mWarning[0m for UnhandledException in contract 'OraclizeC':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OraclizeC':
    |      oraclize_setNetwork(networkID_auto);
    |
  > |    if(address(oraclize) != OAR.getAddress())
    |      oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OraclizeC':
    |
    |    if(address(oraclize) != OAR.getAddress())
  > |      oraclize = OraclizeI(OAR.getAddress());
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OraclizeC':
    |  }
    |  function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |    return oraclize.setCustomGasPrice(gasPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OraclizeC':
    |  function withdraw(address receiver) external onlyOwner inStoppedState {
    |    require(receiver != 0x0);
  > |    receiver.transfer(this.balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(541)

[31mViolation[0m for UnrestrictedWrite in contract 'OraclizeC':
    | * @author Emil Dudnyk
    | */
  > |contract OraclizeC is Ownable, usingOraclize {
    |  uint public updateInterval = 300; //5 minutes by default
    |  uint public gasLimit = 200000; // Oraclize Gas Limit
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |
    |    if(address(oraclize) != OAR.getAddress())
  > |      oraclize = OraclizeI(OAR.getAddress());
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |  function oraclize_setNetwork() internal returns(bool){
    |    if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |      OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |      oraclize_setNetworkName("eth_mainnet");
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |    }
    |    if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |      OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |      oraclize_setNetworkName("eth_ropsten3");
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |    }
    |    if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |      OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |      oraclize_setNetworkName("eth_kovan");
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |    }
    |    if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |      OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |      oraclize_setNetworkName("eth_rinkeby");
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |    }
    |    if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |      OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |    }
    |    if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |      OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |    }
    |    if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |      OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    | * @author Emil Dudnyk
    | */
  > |contract OraclizeC is Ownable, usingOraclize {
    |  uint public updateInterval = 300; //5 minutes by default
    |  uint public gasLimit = 200000; // Oraclize Gas Limit
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |  function setUpdateInterval(uint newInterval) external onlyOwner {
    |    require(newInterval > 0);
  > |    updateInterval = newInterval;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |  function setGasLimit(uint _gasLimit) external onlyOwner {
    |    require(_gasLimit > 50000);
  > |    gasLimit = _gasLimit;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(523)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeC':
    |  function setOraclizeAddrResolverI(address __oar) public onlyOwner {
    |    require(__oar != 0x0);
  > |    OAR = OraclizeAddrResolverI(__oar);
    |    LogOraclizeAddrResolverI(__oar);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(534)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(252)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(549)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(553)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(575)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(583)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(576)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(584)

[33mWarning[0m for LockedEther in contract 'PermissionManager':
    | * Manager that stores permitted addresses 
    | */
  > |contract PermissionManager is Ownable {
    |    mapping (address => bool) permittedAddresses;
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(333)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    mapping (address => bool) permittedAddresses;
    |
  > |    function addAddress(address newAddress) public onlyOwner {
    |        permittedAddresses[newAddress] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(336)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function removeAddress(address remAddress) public onlyOwner {
    |        permittedAddresses[remAddress] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(340)

[31mViolation[0m for MissingInputValidation in contract 'PermissionManager':
    |    }
    |
  > |    function isPermitted(address pAddress) public view returns(bool) {
    |        if (permittedAddresses[pAddress]) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(344)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'PermissionManager':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function addAddress(address newAddress) public onlyOwner {
  > |        permittedAddresses[newAddress] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionManager':
    |
    |    function removeAddress(address remAddress) public onlyOwner {
  > |        permittedAddresses[remAddress] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(341)

[33mWarning[0m for LockedEther in contract 'Registry':
    |}
    |
  > |contract Registry is Ownable {
    |
    |  struct ContributorData {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(352)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |    uint contributionRNTB;
    |  }
  > |  mapping(address => ContributorData) public contributorList;
    |  mapping(uint => address) private contributorIndexes;
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(362)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function isActiveContributor(address contributor) public view returns(bool) {
    |    return contributorList[contributor].isActive;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(389)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function removeContribution(address contributor) public onlyPermitted {
    |    contributorList[contributor].isActive = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(393)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function setCompleted(bool compl) public onlyPermitted {
    |    completed = compl;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(397)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function addContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote ) public onlyPermitted {
    |    
    |    if (contributorList[_contributor].isActive == false) {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(401)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == true) {
    |        contributorList[_contributor].contributionETH = _amount;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(421)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    contributorList[_contributor].isActive = true;
    |    contributorList[_contributor].contributionETH = _amount;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(431)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionETH(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].contributionETH;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(443)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionUSD(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].contributionUSD;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(447)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionRNTB(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].contributionRNTB;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(451)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributionTokens(address _contributor) public view returns (uint) {
    |      return contributorList[_contributor].tokensIssued;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(455)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function addRNTBContribution(address _contributor, uint _amount) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == false) {
    |        contributorList[_contributor].isActive = true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(459)

[31mViolation[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributorByIndex(uint index) public view  returns (address) {
    |      return contributorIndexes[index];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(470)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |
    |  /* Permission manager contract */
  > |  PermissionManager public permissionManager;
    |
    |  bool public completed;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(368)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |  PermissionManager public permissionManager;
    |
  > |  bool public completed;
    |
    |  modifier onlyPermitted() {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(370)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function setPermissionManager(address _permadr) public onlyOwner {
    |    require(_permadr != 0x0);
    |    permissionManager = PermissionManager(_permadr);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(384)

[33mWarning[0m for MissingInputValidation in contract 'Registry':
    |  }
    |
  > |  function getContributorAmount() public view returns(uint) {
    |      return nextContributorIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(474)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(373)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |
    |  modifier onlyPermitted() {
  > |    require(permissionManager.isPermitted(msg.sender));
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(373)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |  function removeContribution(address contributor) public onlyPermitted {
  > |    contributorList[contributor].isActive = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(394)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |  function setCompleted(bool compl) public onlyPermitted {
  > |    completed = compl;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(398)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    
    |    if (contributorList[_contributor].isActive == false) {
  > |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(404)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    if (contributorList[_contributor].isActive == false) {
    |        contributorList[_contributor].isActive = true;
  > |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(405)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionETH = _amount;
  > |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(406)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
  > |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(407)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  > |        contributorList[_contributor].quoteUSD = _quote;
    |
    |        contributorIndexes[nextContributorIndex] = _contributor;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(408)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].quoteUSD = _quote;
    |
  > |        contributorIndexes[nextContributorIndex] = _contributor;
    |        nextContributorIndex++;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(410)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |        contributorIndexes[nextContributorIndex] = _contributor;
  > |        nextContributorIndex++;
    |    } else {
    |      contributorList[_contributor].contributionETH += _amount;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(411)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        nextContributorIndex++;
    |    } else {
  > |      contributorList[_contributor].contributionETH += _amount;
    |      contributorList[_contributor].contributionUSD += _amusd;
    |      contributorList[_contributor].tokensIssued += _tokens;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(413)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    } else {
    |      contributorList[_contributor].contributionETH += _amount;
  > |      contributorList[_contributor].contributionUSD += _amusd;
    |      contributorList[_contributor].tokensIssued += _tokens;
    |      contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(414)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |      contributorList[_contributor].contributionETH += _amount;
    |      contributorList[_contributor].contributionUSD += _amusd;
  > |      contributorList[_contributor].tokensIssued += _tokens;
    |      contributorList[_contributor].quoteUSD = _quote;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(415)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |      contributorList[_contributor].contributionUSD += _amusd;
    |      contributorList[_contributor].tokensIssued += _tokens;
  > |      contributorList[_contributor].quoteUSD = _quote;
    |    }
    |    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(416)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |  function editContribution(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == true) {
  > |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(423)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    if (contributorList[_contributor].isActive == true) {
    |        contributorList[_contributor].contributionETH = _amount;
  > |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(424)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionETH = _amount;
    |        contributorList[_contributor].contributionUSD = _amusd;
  > |        contributorList[_contributor].tokensIssued = _tokens;
    |        contributorList[_contributor].quoteUSD = _quote;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(425)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionUSD = _amusd;
    |        contributorList[_contributor].tokensIssued = _tokens;
  > |        contributorList[_contributor].quoteUSD = _quote;
    |    }
    |     ContributionEdited(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(426)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |
    |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
  > |    contributorList[_contributor].isActive = true;
    |    contributorList[_contributor].contributionETH = _amount;
    |    contributorList[_contributor].contributionUSD = _amusd;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(432)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |  function addContributor(address _contributor, uint _amount, uint _amusd, uint _tokens, uint _quote) public onlyPermitted {
    |    contributorList[_contributor].isActive = true;
  > |    contributorList[_contributor].contributionETH = _amount;
    |    contributorList[_contributor].contributionUSD = _amusd;
    |    contributorList[_contributor].tokensIssued = _tokens;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(433)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].isActive = true;
    |    contributorList[_contributor].contributionETH = _amount;
  > |    contributorList[_contributor].contributionUSD = _amusd;
    |    contributorList[_contributor].tokensIssued = _tokens;
    |    contributorList[_contributor].quoteUSD = _quote;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(434)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].contributionETH = _amount;
    |    contributorList[_contributor].contributionUSD = _amusd;
  > |    contributorList[_contributor].tokensIssued = _tokens;
    |    contributorList[_contributor].quoteUSD = _quote;
    |    contributorIndexes[nextContributorIndex] = _contributor;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(435)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].contributionUSD = _amusd;
    |    contributorList[_contributor].tokensIssued = _tokens;
  > |    contributorList[_contributor].quoteUSD = _quote;
    |    contributorIndexes[nextContributorIndex] = _contributor;
    |    nextContributorIndex++;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(436)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].tokensIssued = _tokens;
    |    contributorList[_contributor].quoteUSD = _quote;
  > |    contributorIndexes[nextContributorIndex] = _contributor;
    |    nextContributorIndex++;
    |    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(437)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    contributorList[_contributor].quoteUSD = _quote;
    |    contributorIndexes[nextContributorIndex] = _contributor;
  > |    nextContributorIndex++;
    |    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD);
    | 
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(438)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |  function addRNTBContribution(address _contributor, uint _amount) public onlyPermitted {
    |    if (contributorList[_contributor].isActive == false) {
  > |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionRNTB = _amount;
    |        contributorIndexes[nextContributorIndex] = _contributor;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(461)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |    if (contributorList[_contributor].isActive == false) {
    |        contributorList[_contributor].isActive = true;
  > |        contributorList[_contributor].contributionRNTB = _amount;
    |        contributorIndexes[nextContributorIndex] = _contributor;
    |        nextContributorIndex++;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(462)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].isActive = true;
    |        contributorList[_contributor].contributionRNTB = _amount;
  > |        contributorIndexes[nextContributorIndex] = _contributor;
    |        nextContributorIndex++;
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(463)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        contributorList[_contributor].contributionRNTB = _amount;
    |        contributorIndexes[nextContributorIndex] = _contributor;
  > |        nextContributorIndex++;
    |    } else {
    |      contributorList[_contributor].contributionETH += _amount;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(464)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |        nextContributorIndex++;
    |    } else {
  > |      contributorList[_contributor].contributionETH += _amount;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |  function setPermissionManager(address _permadr) public onlyOwner {
    |    require(_permadr != 0x0);
  > |    permissionManager = PermissionManager(_permadr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(386)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(593)

[33mWarning[0m for LockedEther in contract 'UnityToken':
    | */
    |
  > |contract UnityToken is ERC223Interface {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(784)

[33mWarning[0m for UnhandledException in contract 'UnityToken':
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |      TransferContract(msg.sender, _to, _value, _data);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(834)

[33mWarning[0m for UnhandledException in contract 'UnityToken':
    |    balances[_to] = balances[_to].add(_value);
    |    ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    TransferContract(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(896)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnityToken':
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |      TransferContract(msg.sender, _to, _value, _data);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(834)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnityToken':
    |    balances[_to] = balances[_to].add(_value);
    |    ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    TransferContract(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(896)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |        revert();
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(832)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |    if (balanceOf(msg.sender) < _value)
    |      revert();
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(882)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |    if (balanceOf(msg.sender) < _value)
    |      revert();
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(893)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |
    |  function addAllowed(address newAddress) public onlyOwner {
  > |    allowedAddresses[newAddress] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(804)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |
    |  function removeAllowed(address remAddress) public onlyOwner {
  > |    allowedAddresses[remAddress] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(808)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |  function getAddress() public returns (address _addr);
    |}
  > |contract usingOraclize {
    |  uint constant day = 60*60*24;
    |  uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xe53965850110c8333b5f3a957786d21e427b1af8.sol(70)


