Processing contract: /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol:Delegable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol:Oracle
Processing contract: /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol:RipioOracle
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Delegable':
    |
    |
  > |contract Delegable is Ownable {
    |    mapping(address => DelegateLog) public delegates;
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'Delegable':
    |
    |contract Delegable is Ownable {
  > |    mapping(address => DelegateLog) public delegates;
    |
    |    struct DelegateLog {
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Delegable':
    |        @return true if at the timestamp the delegate existed
    |    */
  > |    function wasDelegate(address _address, uint256 timestamp) public view returns (bool) {
    |        DelegateLog memory delegateLog = delegates[_address];
    |        return timestamp >= delegateLog.started && delegateLog.started != 0 && (delegateLog.ended == 0 || timestamp < delegateLog.ended);
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'Delegable':
    |        @return true if the delegate is active
    |    */
  > |    function isDelegate(address _address) public view returns (bool) {
    |        DelegateLog memory delegateLog = delegates[_address];
    |        return delegateLog.started != 0 && delegateLog.ended == 0;
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'Delegable':
    |        @param _address Address of the worker
    |    */
  > |    function addDelegate(address _address) public onlyOwner returns (bool) {
    |        DelegateLog storage delegateLog = delegates[_address];
    |        require(delegateLog.started == 0);
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'Delegable':
    |        @param _address Address of the worker to remove
    |    */
  > |    function removeDelegate(address _address) public onlyOwner returns (bool) {
    |        DelegateLog storage delegateLog = delegates[_address];
    |        require(delegateLog.started != 0 && delegateLog.ended == 0);
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Delegable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Delegable':
    |        @param _to Address of the new owner
    |    */
  > |    function transferTo(address _to) public onlyOwner returns (bool) {
    |        require(_to != address(0));
    |        owner = _to;
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Delegable':
    |
    |
  > |contract Delegable is Ownable {
    |    mapping(address => DelegateLog) public delegates;
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Delegable':
    |    function transferTo(address _to) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        owner = _to;
    |        return true;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Delegable':
    |        DelegateLog storage delegateLog = delegates[_address];
    |        require(delegateLog.started == 0);
  > |        delegateLog.started = block.timestamp;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Delegable':
    |        DelegateLog storage delegateLog = delegates[_address];
    |        require(delegateLog.started != 0 && delegateLog.ended == 0);
  > |        delegateLog.ended = block.timestamp;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(90)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.19;
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        @param _to Address of the new owner
    |    */
  > |    function transferTo(address _to) public onlyOwner returns (bool) {
    |        require(_to != address(0));
    |        owner = _to;
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferTo(address _to) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        owner = _to;
    |        return true;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(22)

[33mWarning[0m for DAO in contract 'RipioOracle':
    |    */
    |    function sendTransaction(address to, uint256 value, bytes data) public onlyOwner returns (bool) {
  > |        return to.call.value(value)(data);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(257)

[33mWarning[0m for LockedEther in contract 'RipioOracle':
    |
    |
  > |contract RipioOracle is Oracle, Delegable {
    |    uint256 public expiration = 15 minutes;
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(164)

[31mViolation[0m for UnhandledException in contract 'RipioOracle':
    |    */
    |    function sendTransaction(address to, uint256 value, bytes data) public onlyOwner returns (bool) {
  > |        return to.call.value(value)(data);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(257)

[33mWarning[0m for UnhandledException in contract 'RipioOracle':
    |    function getRate(bytes32 currency, bytes data) public returns (uint256, uint256) {
    |        if (fallback != address(0)) {
  > |            return Oracle(fallback).getRate(currency, data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(274)

[33mWarning[0m for UnhandledException in contract 'RipioOracle':
    |            
    |            bytes32 _hash = keccak256(this, currency, rate, decimals, timestamp);
  > |            address signer = ecrecover(keccak256("\x19Ethereum Signed Message:\n32", _hash),v,r,s);
    |
    |            require(isDelegate(signer));
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RipioOracle':
    |    function getRate(bytes32 currency, bytes data) public returns (uint256, uint256) {
    |        if (fallback != address(0)) {
  > |            return Oracle(fallback).getRate(currency, data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(274)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RipioOracle':
    |            
    |            bytes32 _hash = keccak256(this, currency, rate, decimals, timestamp);
  > |            address signer = ecrecover(keccak256("\x19Ethereum Signed Message:\n32", _hash),v,r,s);
    |
    |            require(isDelegate(signer));
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'RipioOracle':
    |
    |
  > |contract RipioOracle is Oracle, Delegable {
    |    uint256 public expiration = 15 minutes;
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'RipioOracle':
    |            require(isDelegate(signer));
    |
  > |            cache[currency] = RateCache(timestamp, rate, decimals);
    |
    |            return (rate, decimals);
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'RipioOracle':
    |pragma solidity ^0.4.19;
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'RipioOracle':
    |    function transferTo(address _to) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        owner = _to;
    |        return true;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'RipioOracle':
    |        DelegateLog storage delegateLog = delegates[_address];
    |        require(delegateLog.started == 0);
  > |        delegateLog.started = block.timestamp;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'RipioOracle':
    |        DelegateLog storage delegateLog = delegates[_address];
    |        require(delegateLog.started != 0 && delegateLog.ended == 0);
  > |        delegateLog.ended = block.timestamp;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'RipioOracle':
    |        bytes32 currency = encodeCurrency(ticker);
    |        NewSymbol(currency);
  > |        supported[currency] = true;
    |        currencies.push(currency);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'RipioOracle':
    |        NewSymbol(currency);
    |        supported[currency] = true;
  > |        currencies.push(currency);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'RipioOracle':
    |
    |
  > |contract RipioOracle is Oracle, Delegable {
    |    uint256 public expiration = 15 minutes;
    |
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'RipioOracle':
    |    */
    |    function setExpirationTime(uint256 time) public onlyOwner returns (bool) {
  > |        expiration = time;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'RipioOracle':
    |    */
    |    function setFallback(address _fallback) public onlyOwner returns (bool) {
  > |        fallback = _fallback;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x22222c1944efcc38ca46489f96c3a372c4db74e6.sol(225)


