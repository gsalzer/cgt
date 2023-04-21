Processing contract: /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol:Oraclize
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Oraclize':
    |    function withdrawFunds(address _addr)
    |    onlyadmin {
  > |        _addr.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(99)

[33mWarning[0m for LockedEther in contract 'Oraclize':
    |pragma solidity ^0.4.11;
    |
  > |contract Oraclize {
    |    mapping (address => uint) reqc;
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(12)

[31mViolation[0m for TODAmount in contract 'Oraclize':
    |    function withdrawFunds(address _addr)
    |    onlyadmin {
  > |        _addr.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(99)

[33mWarning[0m for TODReceiver in contract 'Oraclize':
    |    function withdrawFunds(address _addr)
    |    onlyadmin {
  > |        _addr.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(99)

[33mWarning[0m for TODReceiver in contract 'Oraclize':
    |        if (msg.value >= price){
    |            uint diff = msg.value - price;
  > |            if (diff > 0) msg.sender.send(diff);
    |           _;
    |        } else throw;
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(112)

[31mViolation[0m for UnhandledException in contract 'Oraclize':
    |    function withdrawFunds(address _addr)
    |    onlyadmin {
  > |        _addr.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(99)

[31mViolation[0m for UnhandledException in contract 'Oraclize':
    |        if (msg.value >= price){
    |            uint diff = msg.value - price;
  > |            if (diff > 0) msg.sender.send(diff);
    |           _;
    |        } else throw;
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Oraclize':
    |    function withdrawFunds(address _addr)
    |    onlyadmin {
  > |        _addr.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'Oraclize':
    |/*
    |Copyright (c) 2015-2016 Oraclize SRL
  > |Copyright (c) 2016 Oraclize LTD
    |*/
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Oraclize':
    |pragma solidity ^0.4.11;
    |
  > |contract Oraclize {
    |    mapping (address => uint) reqc;
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(12)

[31mViolation[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |    function multisetProofType(uint[] _proofType, address[] _addr) onlyadmin {
  > |        for (uint i=0; i<_addr.length; i++) addr_proofType[_addr[i]] = byte(_proofType[i]);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |    function multisetCustomGasPrice(uint[] _gasPrice, address[] _addr) onlyadmin {
  > |        for (uint i=0; i<_addr.length; i++) addr_gasPrice[_addr[i]] = _gasPrice[i];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'Oraclize':
    |    onlyadmin { //0.001 usd in ether
    |        baseprice = new_baseprice;
  > |        for (uint i=0; i<dsources.length; i++) price[dsources[i]] = new_baseprice*price_multiplier[dsources[i]];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'Oraclize':
    |    onlyadmin { //0.001 usd in ether
    |        baseprice = new_baseprice;
  > |        for (uint i=0; i<dsources.length; i++) price[dsources[i]] = new_baseprice*price_multiplier[dsources[i]];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'Oraclize':
    |    function randomDS_updateSessionPubKeysHash(bytes32[] _newSessionPubKeysHash) onlyadmin {
    |        randomDS_sessionPubKeysHash.length = 0;
  > |        for (uint i=0; i<_newSessionPubKeysHash.length; i++) randomDS_sessionPubKeysHash.push(_newSessionPubKeysHash[i]);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |    function setProofType(byte _proofType) {
  > |        addr_proofType[msg.sender] = _proofType;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |    function setCustomGasPrice(uint _gasPrice) {
  > |        addr_gasPrice[msg.sender] = _gasPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |        _id = sha3(this, msg.sender, reqc[msg.sender]);
  > |        reqc[msg.sender]++;
    |        Log1(msg.sender, _id, _timestamp, _datasource, _arg, _gaslimit, addr_proofType[msg.sender], addr_gasPrice[msg.sender]);
    |        return _id;
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |        _id = sha3(this, msg.sender, reqc[msg.sender]);
  > |        reqc[msg.sender]++;
    |        Log2(msg.sender, _id, _timestamp, _datasource, _arg1, _arg2, _gaslimit, addr_proofType[msg.sender], addr_gasPrice[msg.sender]);
    |        return _id;
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |        _id = sha3(this, msg.sender, reqc[msg.sender]);
  > |        reqc[msg.sender]++;
    |        LogN(msg.sender, _id, _timestamp, _datasource, _args, _gaslimit, addr_proofType[msg.sender], addr_gasPrice[msg.sender]);
    |        return _id;
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |        _id = sha3(this, msg.sender, reqc[msg.sender]);
  > |        reqc[msg.sender]++;
    |        Log1_fnc(msg.sender, _id, _timestamp, _datasource, _arg, _fnc, _gaslimit, addr_proofType[msg.sender], addr_gasPrice[msg.sender]);
    |        return _id;
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |        _id = sha3(this, msg.sender, reqc[msg.sender]);
  > |        reqc[msg.sender]++;
    |        Log2_fnc(msg.sender, _id, _timestamp, _datasource, _arg1, _arg2, _fnc,  _gaslimit, addr_proofType[msg.sender], addr_gasPrice[msg.sender]);
    |        return _id;
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |
    |        _id = sha3(this, msg.sender, reqc[msg.sender]);
  > |        reqc[msg.sender]++;
    |        LogN_fnc(msg.sender, _id, _timestamp, _datasource, _args, _fnc, _gaslimit, addr_proofType[msg.sender], addr_gasPrice[msg.sender]);
    |        return _id;
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |pragma solidity ^0.4.11;
    |
  > |contract Oraclize {
    |    mapping (address => uint) reqc;
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(12)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |    function changeAdmin(address _newAdmin) 
    |    onlyadmin {
  > |        owner = _newAdmin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |    function addCbAddress(address newCbAddress, byte addressType, bytes proof) 
    |    onlyadmin {
  > |        cbAddresses[newCbAddress] = addressType;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |    function removeCbAddress(address newCbAddress)
    |    onlyadmin {
  > |        delete cbAddresses[newCbAddress];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |    function addDSource(string dsname, byte proofType, uint multiplier) onlyadmin {
    |        bytes32 dsname_hash = sha3(dsname, proofType);
  > |        dsources[dsources.length++] = dsname_hash;
    |        price_multiplier[dsname_hash] = multiplier;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |        bytes32 dsname_hash = sha3(dsname, proofType);
    |        dsources[dsources.length++] = dsname_hash;
  > |        price_multiplier[dsname_hash] = multiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |    function setGasPrice(uint newgasprice)
    |    onlyadmin {
  > |        gasprice = newgasprice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |    function setBasePrice(uint new_baseprice)
    |    onlyadmin { //0.001 usd in ether
  > |        baseprice = new_baseprice;
    |        for (uint i=0; i<dsources.length; i++) price[dsources[i]] = new_baseprice*price_multiplier[dsources[i]];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Oraclize':
    |    function setBasePrice(uint new_baseprice, bytes proofID)
    |    onlyadmin { //0.001 usd in ether
  > |        baseprice = new_baseprice;
    |        for (uint i=0; i<dsources.length; i++) price[dsources[i]] = new_baseprice*price_multiplier[dsources[i]];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f28b146804dba2d6f944c03528a8fdbc673df2c.sol(93)


