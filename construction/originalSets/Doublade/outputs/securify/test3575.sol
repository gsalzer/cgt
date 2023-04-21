Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:AddressSetLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:IPredictionMarket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:MultiOwnable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:PredictionMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:Question
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:strings
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressSetLib':
    |}
    |
  > |library AddressSetLib {
    |
    |    struct AddressSet {
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1704)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |pragma solidity ^0.4.15;
    |
  > |//////////////////////////////////////////////////////////
    |//
    |// Developer: www.crystal-ball.app
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |}
    |
  > |library AddressSetLib {
    |
    |    struct AddressSet {
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1704)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |        if (self.exists[value])
    |            return false;
  > |        self.values[index] = value;
    |        self.exists[value] = true;
    |        self.indices[value] = index;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1735)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |            return false;
    |        self.values[index] = value;
  > |        self.exists[value] = true;
    |        self.indices[value] = index;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1736)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |        self.values[index] = value;
    |        self.exists[value] = true;
  > |        self.indices[value] = index;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1737)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |        if (self.exists[value])
    |            return false;
  > |        self.indices[value] = self.values.length;
    |        self.values.push(value);
    |        self.exists[value] = true;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1746)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |            return false;
    |        self.indices[value] = self.values.length;
  > |        self.values.push(value);
    |        self.exists[value] = true;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1747)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |        self.indices[value] = self.values.length;
    |        self.values.push(value);
  > |        self.exists[value] = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1748)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |        if (index != self.values.length - 1) {
    |            address lastValue = last(self);
  > |            self.exists[lastValue] = false;
    |            set(self, index, lastValue);
    |            self.indices[lastValue] = index;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1770)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |            self.exists[lastValue] = false;
    |            set(self, index, lastValue);
  > |            self.indices[lastValue] = index;
    |        }
    |        self.values.length -= 1;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1772)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |        self.values.length -= 1;
    |
  > |        delete self.indices[value];
    |        delete self.exists[value];
    |
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1776)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressSetLib':
    |
    |        delete self.indices[value];
  > |        delete self.exists[value];
    |
    |        return value;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1777)

[33mWarning[0m for LockedEther in contract 'IPredictionMarket':
    |}
    |
  > |contract IPredictionMarket {
    |    mapping(address => bool) public isAdmin;
    |}
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1851)

[31mViolation[0m for MissingInputValidation in contract 'IPredictionMarket':
    |
    |contract IPredictionMarket {
  > |    mapping(address => bool) public isAdmin;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1852)

[33mWarning[0m for LockedEther in contract 'MultiOwnable':
    |}
    |
  > |contract MultiOwnable
    |{
    |    mapping(address => bool) public isAdmin;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1830)

[31mViolation[0m for MissingInputValidation in contract 'MultiOwnable':
    |contract MultiOwnable
    |{
  > |    mapping(address => bool) public isAdmin;
    |
    |    event LogAddAdmin(address whoAdded, address newAdmin);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1832)

[31mViolation[0m for MissingInputValidation in contract 'MultiOwnable':
    |    event LogAddAdmin(address whoAdded, address newAdmin);
    |
  > |    function addAdmin(address admin) public onlyAdmin returns (bool ok)
    |    {
    |        require(isAdmin[admin] == false);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1836)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |    {
    |        require(isAdmin[admin] == false);
  > |        isAdmin[admin] = true;
    |
    |        LogAddAdmin(msg.sender, admin);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1839)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1817)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1818)

[33mWarning[0m for LockedEther in contract 'PredictionMarket':
    |}
    |
  > |contract PredictionMarket is MultiOwnable
    |{
    |    using AddressSetLib for AddressSetLib.AddressSet;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(2055)

[31mViolation[0m for UnrestrictedWrite in contract 'PredictionMarket':
    |    {
    |        require(isAdmin[admin] == false);
  > |        isAdmin[admin] = true;
    |
    |        LogAddAdmin(msg.sender, admin);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1839)

[31mViolation[0m for UnrestrictedWrite in contract 'PredictionMarket':
    |        bytes32 questionID = keccak256(questionStr);
    |        require(questionHasBeenAsked[questionID] == false);
  > |        questionHasBeenAsked[questionID] = true;
    |
    |        Question question = new Question(msg.sender, questionStr, betDeadline, finalizeStartTime, queryStr);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(2083)

[33mWarning[0m for DAO in contract 'Question':
    |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
  > |        return oraclize.query.value(price)(0, datasource, arg);
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(118)

[31mViolation[0m for DAOConstantGas in contract 'Question':
    |            if (totalFunds < 10 ether) {
    |                devCut = totalFunds.safeMul(5).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1954)

[31mViolation[0m for DAOConstantGas in contract 'Question':
    |            else if (totalFunds < 50 ether) {
    |                devCut = totalFunds.safeMul(4).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1959)

[31mViolation[0m for DAOConstantGas in contract 'Question':
    |            else {
    |                devCut = totalFunds.safeMul(3).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1964)

[33mWarning[0m for DAOConstantGas in contract 'Question':
    |        uint withdrawAmount = totalFunds.safeMul(betFunds).safeDiv(winningVoteFunds);
    |
  > |        msg.sender.transfer(withdrawAmount);
    |
    |        LogWithdraw(msg.sender, withdrawAmount);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1990)

[33mWarning[0m for LockedEther in contract 'Question':
    |}
    |
  > |contract Question is Ownable, usingOraclize
    |{
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1855)

[31mViolation[0m for TODAmount in contract 'Question':
    |            if (totalFunds < 10 ether) {
    |                devCut = totalFunds.safeMul(5).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1954)

[31mViolation[0m for TODAmount in contract 'Question':
    |            else if (totalFunds < 50 ether) {
    |                devCut = totalFunds.safeMul(4).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1959)

[31mViolation[0m for TODAmount in contract 'Question':
    |            else {
    |                devCut = totalFunds.safeMul(3).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1964)

[33mWarning[0m for TODAmount in contract 'Question':
    |        uint withdrawAmount = totalFunds.safeMul(betFunds).safeDiv(winningVoteFunds);
    |
  > |        msg.sender.transfer(withdrawAmount);
    |
    |        LogWithdraw(msg.sender, withdrawAmount);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1990)

[31mViolation[0m for TODReceiver in contract 'Question':
    |            if (totalFunds < 10 ether) {
    |                devCut = totalFunds.safeMul(5).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1954)

[31mViolation[0m for TODReceiver in contract 'Question':
    |            else if (totalFunds < 50 ether) {
    |                devCut = totalFunds.safeMul(4).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1959)

[31mViolation[0m for TODReceiver in contract 'Question':
    |            else {
    |                devCut = totalFunds.safeMul(3).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1964)

[33mWarning[0m for TODReceiver in contract 'Question':
    |        uint withdrawAmount = totalFunds.safeMul(betFunds).safeDiv(winningVoteFunds);
    |
  > |        msg.sender.transfer(withdrawAmount);
    |
    |        LogWithdraw(msg.sender, withdrawAmount);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1990)

[33mWarning[0m for UnhandledException in contract 'Question':
    |    modifier oraclizeAPI {
    |        if((address(OAR)==0)||(getCodeSize(address(OAR))==0)) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(52)

[33mWarning[0m for UnhandledException in contract 'Question':
    |
    |    function oraclize_query(string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(0, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(116)

[33mWarning[0m for UnhandledException in contract 'Question':
    |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
  > |        return oraclize.query.value(price)(0, datasource, arg);
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(118)

[33mWarning[0m for UnhandledException in contract 'Question':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(489)

[33mWarning[0m for UnhandledException in contract 'Question':
    |            if (totalFunds < 10 ether) {
    |                devCut = totalFunds.safeMul(5).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1954)

[33mWarning[0m for UnhandledException in contract 'Question':
    |            else if (totalFunds < 50 ether) {
    |                devCut = totalFunds.safeMul(4).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1959)

[33mWarning[0m for UnhandledException in contract 'Question':
    |            else {
    |                devCut = totalFunds.safeMul(3).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1964)

[33mWarning[0m for UnhandledException in contract 'Question':
    |        uint withdrawAmount = totalFunds.safeMul(betFunds).safeDiv(winningVoteFunds);
    |
  > |        msg.sender.transfer(withdrawAmount);
    |
    |        LogWithdraw(msg.sender, withdrawAmount);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1990)

[33mWarning[0m for UnhandledException in contract 'Question':
    |    modifier onlyAdmin {
    |        IPredictionMarket mkt = IPredictionMarket(owner);
  > |        require(mkt.isAdmin(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(2050)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Question':
    |    modifier oraclizeAPI {
    |        if((address(OAR)==0)||(getCodeSize(address(OAR))==0)) oraclize_setNetwork(networkID_auto);
  > |        oraclize = OraclizeI(OAR.getAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(52)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Question':
    |
    |    function oraclize_query(string datasource, string arg) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource);
    |        if (price > 1 ether + tx.gasprice*200000) return 0; // unexpectedly high price
    |        return oraclize.query.value(price)(0, datasource, arg);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Question':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(489)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Question':
    |            if (totalFunds < 10 ether) {
    |                devCut = totalFunds.safeMul(5).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1954)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Question':
    |            else if (totalFunds < 50 ether) {
    |                devCut = totalFunds.safeMul(4).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1959)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Question':
    |            else {
    |                devCut = totalFunds.safeMul(3).safeDiv(100);
  > |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1964)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Question':
    |        uint withdrawAmount = totalFunds.safeMul(betFunds).safeDiv(winningVoteFunds);
    |
  > |        msg.sender.transfer(withdrawAmount);
    |
    |        LogWithdraw(msg.sender, withdrawAmount);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1990)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Question':
    |    modifier onlyAdmin {
    |        IPredictionMarket mkt = IPredictionMarket(owner);
  > |        require(mkt.isAdmin(msg.sender));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(2050)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |}
    |
  > |contract Question is Ownable, usingOraclize
    |{
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1855)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |        Vote betVote;
    |        if (yesOrNo == 3) {
  > |            winFunds = winFunds.safeAdd(msg.value);
    |            betVote = Vote.Win;
    |        } else if (yesOrNo == 1) {
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1920)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |            betVote = Vote.Win;
    |        } else if (yesOrNo == 1) {
  > |            tieFunds = tieFunds.safeAdd(msg.value);
    |            betVote = Vote.Tie;
    |        } else if (yesOrNo == 0) {
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1923)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |            betVote = Vote.Tie;
    |        } else if (yesOrNo == 0) {
  > |            loseFunds = loseFunds.safeAdd(msg.value);
    |            betVote = Vote.Lose;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1926)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |        }
    |
  > |        bets[msg.sender].bettor = msg.sender;
    |        bets[msg.sender].vote[uint(betVote)] = bets[msg.sender].vote[uint(betVote)].safeAdd(msg.value);
    |        bets[msg.sender].amount = bets[msg.sender].amount.safeAdd(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1930)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |
    |        bets[msg.sender].bettor = msg.sender;
  > |        bets[msg.sender].vote[uint(betVote)] = bets[msg.sender].vote[uint(betVote)].safeAdd(msg.value);
    |        bets[msg.sender].amount = bets[msg.sender].amount.safeAdd(msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1931)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |        bets[msg.sender].bettor = msg.sender;
    |        bets[msg.sender].vote[uint(betVote)] = bets[msg.sender].vote[uint(betVote)].safeAdd(msg.value);
  > |        bets[msg.sender].amount = bets[msg.sender].amount.safeAdd(msg.value);
    |
    |        LogBet(msg.sender, betVote, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1932)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |        require(theBet.withdrawn == false);
    |
  > |        theBet.withdrawn = true;
    |
    |        uint totalFunds = winFunds.safeAdd(tieFunds).safeAdd(loseFunds);
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1947)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |        if (firstWithdraw) {
    |            if (totalFunds < 10 ether) {
  > |                devCut = totalFunds.safeMul(5).safeDiv(100);
    |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1953)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |                devCut = totalFunds.safeMul(5).safeDiv(100);
    |                devCutReceiver.transfer(devCut);
  > |                firstWithdraw = false;
    |            }
    |            else if (totalFunds < 50 ether) {
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1955)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |            }
    |            else if (totalFunds < 50 ether) {
  > |                devCut = totalFunds.safeMul(4).safeDiv(100);
    |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1958)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |                devCut = totalFunds.safeMul(4).safeDiv(100);
    |                devCutReceiver.transfer(devCut);
  > |                firstWithdraw = false;
    |            }
    |            else {
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1960)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |            }
    |            else {
  > |                devCut = totalFunds.safeMul(3).safeDiv(100);
    |                devCutReceiver.transfer(devCut);
    |                firstWithdraw = false;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1963)

[33mWarning[0m for UnrestrictedWrite in contract 'Question':
    |                devCut = totalFunds.safeMul(3).safeDiv(100);
    |                devCutReceiver.transfer(devCut);
  > |                firstWithdraw = false;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1965)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function safeMul(uint a, uint b) internal returns (uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(1678)

[33mWarning[0m for LockedEther in contract 'strings':
    |// </ORACLIZE_API>
    |
  > |library strings {
    |    struct slice {
    |        uint _len;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(997)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    function getAddress() returns (address _addr);
    |}
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xea13bfa584e6d7e4c8409a1178805a367821e2f6.sol(31)


