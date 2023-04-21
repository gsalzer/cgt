Processing contract: /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol:CreatorEnabled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol:Gold
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol:GoldFee
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol:GoldmintMigration
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol:IGoldFee
Processing contract: /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol:IMNTP
Processing contract: /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol:StdToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CreatorEnabled':
    |}
    |
  > |contract CreatorEnabled {
    |     address public creator = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'CreatorEnabled':
    |     modifier onlyCreator() { require(msg.sender==creator); _; }
    |
  > |     function changeCreator(address _to) public onlyCreator {
    |          creator = _to;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'CreatorEnabled':
    |
    |contract CreatorEnabled {
  > |     address public creator = 0x0;
    |
    |     modifier onlyCreator() { require(msg.sender==creator); _; }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'CreatorEnabled':
    |
    |     function changeCreator(address _to) public onlyCreator {
  > |          creator = _to;
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(29)

[33mWarning[0m for LockedEther in contract 'Gold':
    |}
    |
  > |contract Gold is StdToken, CreatorEnabled {
    |// Fields:
    |     string public constant name = "Goldmint GOLD Token";
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(156)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     modifier onlyCreator() { require(msg.sender==creator); _; }
    |
  > |     function changeCreator(address _to) public onlyCreator {
    |          creator = _to;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |contract StdToken is SafeMath {
    |// Fields:
  > |     mapping(address => uint256) public balances;
    |     mapping (address => mapping (address => uint256)) internal allowed;
    |     uint public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function balanceOf(address _owner) constant returns (uint256) {
    |          return balances[_owner];
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function allowance(address _owner, address _spender) constant returns (uint256) {
    |          return allowed[_owner][_spender];
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function setCreator(address _address) public onlyCreator {
    |         creator = _address;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |    function lockContract(bool _contractLocked) public onlyCreator {
    |         contractLocked = _contractLocked;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function setStorageControllerContractAddress(address _address) public onlyCreator {
    |          storageControllerAddress = _address;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function setMigrationContractAddress(address _migrationAddress) public onlyCreator {
    |          migrationAddress = _migrationAddress;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(208)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function setGoldmintTeamAddress(address _teamAddress) public onlyCreator {
    |          goldmintTeamAddress = _teamAddress;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(212)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function setGoldFeeAddress(address _goldFeeAddress) public onlyCreator {
    |          goldFee = IGoldFee(_goldFeeAddress);
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |     
  > |     function issueTokens(address _who, uint _tokens) public onlyCreatorOrStorageController {
    |          require(!contractLocked);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function burnTokens(address _who, uint _tokens) public onlyMigrationOrStorageController {
    |          require(!contractLocked);
    |          balances[_who] = safeSub(balances[_who],_tokens);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(230)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function lockTransfer(bool _lock) public onlyMigration {
    |          transfersLocked = _lock;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(250)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function transfer(address _to, uint256 _value) public onlyIfUnlocked onlyPayloadSize(2 * 32) returns(bool) {
    |
    |          uint yourCurrentMntpBalance = mntpToken.balanceOf(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(254)

[31mViolation[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function transferFrom(address _from, address _to, uint256 _value) public onlyIfUnlocked returns(bool) {
    |
    |          uint yourCurrentMntpBalance = mntpToken.balanceOf(_from);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function safeSub(uint a, uint b) internal returns (uint) {
    |          assert(b <= a);
    |          return a - b;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function safeAdd(uint a, uint b) internal returns (uint) {
    |          uint c = a + b;
    |          assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |
    |contract CreatorEnabled {
  > |     address public creator = 0x0;
    |
    |     modifier onlyCreator() { require(msg.sender==creator); _; }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     mapping(address => uint256) public balances;
    |     mapping (address => mapping (address => uint256)) internal allowed;
  > |     uint public totalSupply = 0;
    |
    |// Events:
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |
    |// Functions:
  > |     function transfer(address _to, uint256 _value) onlyPayloadSize(2 * 32) returns(bool) {
    |          require(0x0!=_to);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function transferFrom(address _from, address _to, uint256 _value) returns(bool) {
    |          require(0x0!=_to);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |contract Gold is StdToken, CreatorEnabled {
    |// Fields:
  > |     string public constant name = "Goldmint GOLD Token";
    |     string public constant symbol = "GOLD";
    |     uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |// Fields:
    |     string public constant name = "Goldmint GOLD Token";
  > |     string public constant symbol = "GOLD";
    |     uint8 public constant decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     string public constant name = "Goldmint GOLD Token";
    |     string public constant symbol = "GOLD";
  > |     uint8 public constant decimals = 18;
    |
    |     // this is used to send fees (that is then distributed as rewards)
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |
    |     // this is used to send fees (that is then distributed as rewards)
  > |     address public migrationAddress = 0x0;
    |     address public storageControllerAddress = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     // this is used to send fees (that is then distributed as rewards)
    |     address public migrationAddress = 0x0;
  > |     address public storageControllerAddress = 0x0;
    |
    |     address public goldmintTeamAddress = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     address public storageControllerAddress = 0x0;
    |
  > |     address public goldmintTeamAddress = 0x0;
    |     IMNTP public mntpToken;
    |     IGoldFee public goldFee;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |
    |     address public goldmintTeamAddress = 0x0;
  > |     IMNTP public mntpToken;
    |     IGoldFee public goldFee;
    |     
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     address public goldmintTeamAddress = 0x0;
    |     IMNTP public mntpToken;
  > |     IGoldFee public goldFee;
    |     
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     
    |
  > |     bool public transfersLocked = false;
    |     bool public contractLocked = false;
    |     bool public migrationStarted = false;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |
    |     bool public transfersLocked = false;
  > |     bool public contractLocked = false;
    |     bool public migrationStarted = false;
    |     bool public migrationFinished = false;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     bool public transfersLocked = false;
    |     bool public contractLocked = false;
  > |     bool public migrationStarted = false;
    |     bool public migrationFinished = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     bool public contractLocked = false;
    |     bool public migrationStarted = false;
  > |     bool public migrationFinished = false;
    |
    |     uint public totalIssued = 0;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     bool public migrationFinished = false;
    |
  > |     uint public totalIssued = 0;
    |     uint public totalBurnt = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |
    |     uint public totalIssued = 0;
  > |     uint public totalBurnt = 0;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |
    |     // there is no way to revert that
  > |     function startMigration() public onlyMigration {
    |          require(false == migrationStarted);
    |          migrationStarted = true;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |
    |     // there is no way to revert that
  > |     function finishMigration() public onlyMigration {
    |          require(true == migrationStarted);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |
    |
  > |     function getTotalIssued() public constant returns (uint) {
    |          return totalIssued; 
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(330)

[33mWarning[0m for MissingInputValidation in contract 'Gold':
    |     }
    |
  > |     function getTotalBurnt() public constant returns (uint) {
    |          return totalBurnt; 
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(334)

[33mWarning[0m for UnhandledException in contract 'Gold':
    |     function transfer(address _to, uint256 _value) public onlyIfUnlocked onlyPayloadSize(2 * 32) returns(bool) {
    |
  > |          uint yourCurrentMntpBalance = mntpToken.balanceOf(msg.sender);
    |
    |          // you can transfer if fee is ZERO 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(256)

[33mWarning[0m for UnhandledException in contract 'Gold':
    |
    |          // you can transfer if fee is ZERO 
  > |          uint fee = goldFee.calculateFee(migrationStarted, migrationFinished, yourCurrentMntpBalance, _value);
    |          uint sendThis = _value;
    |          if (0 != fee) { 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(259)

[33mWarning[0m for UnhandledException in contract 'Gold':
    |     function transferFrom(address _from, address _to, uint256 _value) public onlyIfUnlocked returns(bool) {
    |
  > |          uint yourCurrentMntpBalance = mntpToken.balanceOf(_from);
    |
    |          uint fee = goldFee.calculateFee(migrationStarted, migrationFinished, yourCurrentMntpBalance, _value);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(284)

[33mWarning[0m for UnhandledException in contract 'Gold':
    |          uint yourCurrentMntpBalance = mntpToken.balanceOf(_from);
    |
  > |          uint fee = goldFee.calculateFee(migrationStarted, migrationFinished, yourCurrentMntpBalance, _value);
    |          if (0 != fee) { 
    |               // 1.Transfer fee
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Gold':
    |     function transfer(address _to, uint256 _value) public onlyIfUnlocked onlyPayloadSize(2 * 32) returns(bool) {
    |
  > |          uint yourCurrentMntpBalance = mntpToken.balanceOf(msg.sender);
    |
    |          // you can transfer if fee is ZERO 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Gold':
    |
    |          // you can transfer if fee is ZERO 
  > |          uint fee = goldFee.calculateFee(migrationStarted, migrationFinished, yourCurrentMntpBalance, _value);
    |          uint sendThis = _value;
    |          if (0 != fee) { 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Gold':
    |     function transferFrom(address _from, address _to, uint256 _value) public onlyIfUnlocked returns(bool) {
    |
  > |          uint yourCurrentMntpBalance = mntpToken.balanceOf(_from);
    |
    |          uint fee = goldFee.calculateFee(migrationStarted, migrationFinished, yourCurrentMntpBalance, _value);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Gold':
    |          uint yourCurrentMntpBalance = mntpToken.balanceOf(_from);
    |
  > |          uint fee = goldFee.calculateFee(migrationStarted, migrationFinished, yourCurrentMntpBalance, _value);
    |          if (0 != fee) { 
    |               // 1.Transfer fee
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(286)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |          require(0x0!=_to);
    |
  > |          balances[msg.sender] = safeSub(balances[msg.sender],_value);
    |          balances[_to] = safeAdd(balances[_to],_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |
    |          balances[msg.sender] = safeSub(balances[msg.sender],_value);
  > |          balances[_to] = safeAdd(balances[_to],_value);
    |
    |          Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |          require(0x0!=_to);
    |
  > |          balances[_to] = safeAdd(balances[_to],_value);
    |          balances[_from] = safeSub(balances[_from],_value);
    |          allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_value);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |
    |          balances[_to] = safeAdd(balances[_to],_value);
  > |          balances[_from] = safeSub(balances[_from],_value);
    |          allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |          balances[_to] = safeAdd(balances[_to],_value);
    |          balances[_from] = safeSub(balances[_from],_value);
  > |          allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_value);
    |
    |          Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |          require(!contractLocked);
    |
  > |          balances[_who] = safeAdd(balances[_who],_tokens);
    |          totalSupply = safeAdd(totalSupply,_tokens);
    |          totalIssued = safeAdd(totalIssued,_tokens);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |
    |          balances[_who] = safeAdd(balances[_who],_tokens);
  > |          totalSupply = safeAdd(totalSupply,_tokens);
    |          totalIssued = safeAdd(totalIssued,_tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |          balances[_who] = safeAdd(balances[_who],_tokens);
    |          totalSupply = safeAdd(totalSupply,_tokens);
  > |          totalIssued = safeAdd(totalIssued,_tokens);
    |
    |          Transfer(0x0, _who, _tokens);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |     function burnTokens(address _who, uint _tokens) public onlyMigrationOrStorageController {
    |          require(!contractLocked);
  > |          balances[_who] = safeSub(balances[_who],_tokens);
    |          totalSupply = safeSub(totalSupply,_tokens);
    |          totalBurnt = safeAdd(totalBurnt,_tokens);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(232)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |          require(!contractLocked);
    |          balances[_who] = safeSub(balances[_who],_tokens);
  > |          totalSupply = safeSub(totalSupply,_tokens);
    |          totalBurnt = safeAdd(totalBurnt,_tokens);
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(233)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |          balances[_who] = safeSub(balances[_who],_tokens);
    |          totalSupply = safeSub(totalSupply,_tokens);
  > |          totalBurnt = safeAdd(totalBurnt,_tokens);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |          require(0x0!=_to);
    |
  > |          balances[migrationAddress] = safeSub(balances[migrationAddress],_value);
    |          balances[_to] = safeAdd(balances[_to],_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |
    |          balances[migrationAddress] = safeSub(balances[migrationAddress],_value);
  > |          balances[_to] = safeAdd(balances[_to],_value);
    |
    |          Transfer(migrationAddress, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |          uint totalReward = balances[migrationAddress];
    |
  > |          balances[_to] = safeAdd(balances[_to],totalReward);
    |          balances[migrationAddress] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'Gold':
    |
    |          balances[_to] = safeAdd(balances[_to],totalReward);
  > |          balances[migrationAddress] = 0;
    |
    |          Transfer(migrationAddress, _to, totalReward);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |          require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |          allowed[msg.sender][_spender] = _value;
    |          Approval(msg.sender, _spender, _value);
    |          return true;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |
    |     function changeCreator(address _to) public onlyCreator {
  > |          creator = _to;
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |
    |     function setCreator(address _address) public onlyCreator {
  > |         creator = _address;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |
    |    function lockContract(bool _contractLocked) public onlyCreator {
  > |         contractLocked = _contractLocked;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |
    |     function setStorageControllerContractAddress(address _address) public onlyCreator {
  > |          storageControllerAddress = _address;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |
    |     function setMigrationContractAddress(address _migrationAddress) public onlyCreator {
  > |          migrationAddress = _migrationAddress;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |
    |     function setGoldmintTeamAddress(address _teamAddress) public onlyCreator {
  > |          goldmintTeamAddress = _teamAddress;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |
    |     function setGoldFeeAddress(address _goldFeeAddress) public onlyCreator {
  > |          goldFee = IGoldFee(_goldFeeAddress);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |     function startMigration() public onlyMigration {
    |          require(false == migrationStarted);
  > |          migrationStarted = true;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |          require(true == migrationStarted);
    |
  > |          migrationFinished = true;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'Gold':
    |
    |     function lockTransfer(bool _lock) public onlyMigration {
  > |          transfersLocked = _lock;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(251)

[33mWarning[0m for LockedEther in contract 'GoldFee':
    |}
    |
  > |contract GoldFee is CreatorEnabled {
    |// Functions: 
    |     function GoldFee() {
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldFee':
    |
    |     function changeCreator(address _to) public onlyCreator {
  > |          creator = _to;
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(29)

[31mViolation[0m for LockedEther in contract 'GoldmintMigration':
    |}
    |
  > |contract GoldmintMigration is CreatorEnabled {
    |// Fields:
    |     IMNTP public mntpToken;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(348)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |
    |     function lockMntpTransfers(bool _lock) public onlyCreator {
  > |          mntpToken.lockTransfer(_lock);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(418)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |
    |     function lockGoldTransfers(bool _lock) public onlyCreator {
  > |          goldToken.lockTransfer(_lock);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(422)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |          if (State.Init == state) {
    |               // 1 - change fees
  > |               goldToken.startMigration();
    |               
    |               // 2 - store the current values 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(432)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |               
    |               // 2 - store the current values 
  > |               migrationRewardTotal = goldToken.balanceOf(this);
    |               migrationStartedTime = uint64(now);
    |               mntpToMigrateTotal = mntpToken.totalSupply();
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(435)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |               migrationRewardTotal = goldToken.balanceOf(this);
    |               migrationStartedTime = uint64(now);
  > |               mntpToMigrateTotal = mntpToken.totalSupply();
    |          }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(437)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |
    |          if (State.MigrationStarted == state) {
  > |               goldToken.finishMigration();
    |               migrationFinishedTime = uint64(now);
    |          }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(455)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |
    |          // 1 - calculate current reward
  > |          uint myBalance = mntpToken.balanceOf(msg.sender);
    |          require(0!=myBalance);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(477)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |
    |          // 2 - pay the reward to our user
  > |          goldToken.transferRewardWithoutFee(msg.sender, myReward);
    |
    |          // 3 - burn tokens 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(484)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |          // setIcoContractAddress(migrationContractAddress)
    |          // of the mntpToken
  > |          mntpToken.burnTokens(msg.sender,myBalance);
    |
    |          // save tuple 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(492)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |
    |          // 1 - get balance
  > |          uint myBalance = goldToken.balanceOf(msg.sender);
    |          require(0!=myBalance);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(538)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |          // WARNING: burn will reduce totalSupply
    |          // 
  > |          goldToken.burnTokens(msg.sender,myBalance);
    |
    |          // save tuple 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(544)

[33mWarning[0m for UnhandledException in contract 'GoldmintMigration':
    |          }
    |
  > |          uint myCurrentMntpBalance = mntpToken.balanceOf(_of);
    |          if (0 == myCurrentMntpBalance) {
    |               return 0;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(592)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |
    |     function lockMntpTransfers(bool _lock) public onlyCreator {
  > |          mntpToken.lockTransfer(_lock);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(418)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |
    |     function lockGoldTransfers(bool _lock) public onlyCreator {
  > |          goldToken.lockTransfer(_lock);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |          if (State.Init == state) {
    |               // 1 - change fees
  > |               goldToken.startMigration();
    |               
    |               // 2 - store the current values 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(432)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |               
    |               // 2 - store the current values 
  > |               migrationRewardTotal = goldToken.balanceOf(this);
    |               migrationStartedTime = uint64(now);
    |               mntpToMigrateTotal = mntpToken.totalSupply();
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(435)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |               migrationRewardTotal = goldToken.balanceOf(this);
    |               migrationStartedTime = uint64(now);
  > |               mntpToMigrateTotal = mntpToken.totalSupply();
    |          }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |
    |          if (State.MigrationStarted == state) {
  > |               goldToken.finishMigration();
    |               migrationFinishedTime = uint64(now);
    |          }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(455)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |
    |          // 1 - calculate current reward
  > |          uint myBalance = mntpToken.balanceOf(msg.sender);
    |          require(0!=myBalance);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(477)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |
    |          // 2 - pay the reward to our user
  > |          goldToken.transferRewardWithoutFee(msg.sender, myReward);
    |
    |          // 3 - burn tokens 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |          // setIcoContractAddress(migrationContractAddress)
    |          // of the mntpToken
  > |          mntpToken.burnTokens(msg.sender,myBalance);
    |
    |          // save tuple 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |
    |          // 1 - get balance
  > |          uint myBalance = goldToken.balanceOf(msg.sender);
    |          require(0!=myBalance);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(538)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |          // WARNING: burn will reduce totalSupply
    |          // 
  > |          goldToken.burnTokens(msg.sender,myBalance);
    |
    |          // save tuple 
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoldmintMigration':
    |          }
    |
  > |          uint myCurrentMntpBalance = mntpToken.balanceOf(_of);
    |          if (0 == myCurrentMntpBalance) {
    |               return 0;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(592)

[31mViolation[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |}
    |
  > |contract GoldmintMigration is CreatorEnabled {
    |// Fields:
    |     IMNTP public mntpToken;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(348)

[31mViolation[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |          mig.comment = '';
    |
  > |          goldMigrations[goldMigrationsCount + 1] = mig;
    |          goldMigrationIndexes[msg.sender] = goldMigrationsCount + 1;
    |          goldMigrationsCount++;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |
    |          mntpMigrations[mntpMigrationsCount + 1] = mig;
  > |          mntpMigrationIndexes[msg.sender] = mntpMigrationsCount + 1;
    |          mntpMigrationsCount++;
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |
    |          goldMigrations[goldMigrationsCount + 1] = mig;
  > |          goldMigrationIndexes[msg.sender] = goldMigrationsCount + 1;
    |          goldMigrationsCount++;
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |
    |     function changeCreator(address _to) public onlyCreator {
  > |          creator = _to;
    |     }
    |}
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |}
    |
  > |contract GoldmintMigration is CreatorEnabled {
    |// Fields:
    |     IMNTP public mntpToken;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |               
    |               // 2 - store the current values 
  > |               migrationRewardTotal = goldToken.balanceOf(this);
    |               migrationStartedTime = uint64(now);
    |               mntpToMigrateTotal = mntpToken.totalSupply();
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |               // 2 - store the current values 
    |               migrationRewardTotal = goldToken.balanceOf(this);
  > |               migrationStartedTime = uint64(now);
    |               mntpToMigrateTotal = mntpToken.totalSupply();
    |          }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |               migrationRewardTotal = goldToken.balanceOf(this);
    |               migrationStartedTime = uint64(now);
  > |               mntpToMigrateTotal = mntpToken.totalSupply();
    |          }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |          }
    |
  > |          state = State.MigrationStarted;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |          require((state == State.MigrationStarted) || (state == State.MigrationFinished));
    |
  > |          state = State.MigrationPaused;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |          if (State.MigrationStarted == state) {
    |               goldToken.finishMigration();
  > |               migrationFinishedTime = uint64(now);
    |          }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |          }
    |
  > |          state = State.MigrationFinished;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |          require(index > 0);
    |
  > |          mntpMigrations[index].migrated = _isMigrated; 
    |          mntpMigrations[index].comment = _comment; 
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'GoldmintMigration':
    |          require(index > 0);
    |
  > |          goldMigrations[index].migrated = _isMigrated; 
    |          goldMigrations[index].comment = _comment; 
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(574)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |// Turn the usage of callcode
  > |contract SafeMath {
    |     function safeMul(uint a, uint b) internal returns (uint) {
    |          uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(4)

[33mWarning[0m for LockedEther in contract 'StdToken':
    |
    |// ERC20 standard
  > |contract StdToken is SafeMath {
    |// Fields:
    |     mapping(address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StdToken':
    |contract StdToken is SafeMath {
    |// Fields:
  > |     mapping(address => uint256) public balances;
    |     mapping (address => mapping (address => uint256)) internal allowed;
    |     uint public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'StdToken':
    |     }
    |
  > |     function balanceOf(address _owner) constant returns (uint256) {
    |          return balances[_owner];
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'StdToken':
    |     }
    |
  > |     function allowance(address _owner, address _spender) constant returns (uint256) {
    |          return allowed[_owner][_spender];
    |     }
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'StdToken':
    |     }
    |
  > |     function safeSub(uint a, uint b) internal returns (uint) {
    |          assert(b <= a);
    |          return a - b;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'StdToken':
    |     }
    |
  > |     function safeAdd(uint a, uint b) internal returns (uint) {
    |          uint c = a + b;
    |          assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'StdToken':
    |     mapping(address => uint256) public balances;
    |     mapping (address => mapping (address => uint256)) internal allowed;
  > |     uint public totalSupply = 0;
    |
    |// Events:
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |          require(0x0!=_to);
    |
  > |          balances[msg.sender] = safeSub(balances[msg.sender],_value);
    |          balances[_to] = safeAdd(balances[_to],_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |
    |          balances[msg.sender] = safeSub(balances[msg.sender],_value);
  > |          balances[_to] = safeAdd(balances[_to],_value);
    |
    |          Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |          require(0x0!=_to);
    |
  > |          balances[_to] = safeAdd(balances[_to],_value);
    |          balances[_from] = safeSub(balances[_from],_value);
    |          allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_value);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |
    |          balances[_to] = safeAdd(balances[_to],_value);
  > |          balances[_from] = safeSub(balances[_from],_value);
    |          allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |          balances[_to] = safeAdd(balances[_to],_value);
    |          balances[_from] = safeSub(balances[_from],_value);
  > |          allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_value);
    |
    |          Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StdToken':
    |          require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |          allowed[msg.sender][_spender] = _value;
    |          Approval(msg.sender, _spender, _value);
    |          return true;
  at /home/jiaming/mavs_srcs/contract@0x567e0fd483c9891d574d975a9944006c0794a602.sol(77)


