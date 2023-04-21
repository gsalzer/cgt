Processing contract: /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol:INZEI
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    | * @dev Receiver for ERC223 tokens
    | */
  > |contract ContractReceiver {
    |
    |  struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |  }
    |
  > |  function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |    TKN memory tkn;
    |    tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | * @dev Receiver for ERC223 tokens
    | */
  > |contract ContractReceiver {
    |
    |  struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(7)

[33mWarning[0m for DAO in contract 'INZEI':
    |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(196)

[33mWarning[0m for DAO in contract 'INZEI':
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(269)

[33mWarning[0m for DAOConstantGas in contract 'INZEI':
    |            && frozenAccount[msg.sender] == false
    |            && now > unlockUnixTime[msg.sender]);
  > |    if (msg.value > 0) owner.transfer(msg.value);
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(412)

[31mViolation[0m for MissingInputValidation in contract 'INZEI':
    |  
    |  mapping (address => uint) balances;
  > |  mapping (address => bool) public frozenAccount;
    |  mapping (address => uint256) public unlockUnixTime;
    |
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'INZEI':
    |  mapping (address => uint) balances;
    |  mapping (address => bool) public frozenAccount;
  > |  mapping (address => uint256) public unlockUnixTime;
    |
    |  event FrozenFunds(address indexed target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'INZEI':
    |  }
    |
  > |  function balanceOf(address _owner) public view returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'INZEI':
    |  }
    |
  > |  function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
    |    distributeAmount = _unitAmount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(399)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  * @dev Multiplies two numbers, throws on overflow.
    |  */
  > |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
    |      return 0;
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    |  */
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  * @dev Adds two numbers, throws on overflow.
    |  */
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  string public symbol = "INZ";
    |  uint8 public decimals = 8;
  > |  uint256 public initialSupply = 3e10 * 1e8;
    |  uint256 public totalSupply;
    |  uint256 public distributeAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  uint256 public initialSupply = 3e10 * 1e8;
    |  uint256 public totalSupply;
  > |  uint256 public distributeAmount = 0;
    |  bool public mintingFinished = false;
    |  
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  uint256 public totalSupply;
    |  uint256 public distributeAmount = 0;
  > |  bool public mintingFinished = false;
    |  
    |  mapping (address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  }
    |
  > |  function name() public view returns (string _name) {
    |      return name;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  }
    |
  > |  function symbol() public view returns (string _symbol) {
    |      return symbol;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  }
    |
  > |  function decimals() public view returns (uint8 _decimals) {
    |      return decimals;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |  }
    |
  > |  function totalSupply() public view returns (uint256 _totalSupply) {
    |      return totalSupply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |
    |  // assemble the given address bytecode. If bytecode exists then the _addr is a contract.
  > |  function isContract(address _addr) private view returns (bool is_contract) {
    |    uint length;
    |    assembly {
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |
    |  // function that is called when transaction target is an address
  > |  function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |
    |  //function that is called when transaction target is a contract
  > |  function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(264)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |   * @dev Function to stop minting new tokens.
    |   */
  > |  function finishMinting() onlyOwner canMint public returns (bool) {
    |    mintingFinished = true;
    |    MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(343)

[33mWarning[0m for MissingInputValidation in contract 'INZEI':
    |   *      If distributeAmount is 0, this function doesn't work
    |   */
  > |  function autoDistribute() payable public {
    |    require(distributeAmount > 0
    |            && balanceOf(owner) >= distributeAmount
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(407)

[31mViolation[0m for TODReceiver in contract 'INZEI':
    |            && frozenAccount[msg.sender] == false
    |            && now > unlockUnixTime[msg.sender]);
  > |    if (msg.value > 0) owner.transfer(msg.value);
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(412)

[33mWarning[0m for UnhandledException in contract 'INZEI':
    |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(196)

[33mWarning[0m for UnhandledException in contract 'INZEI':
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(269)

[33mWarning[0m for UnhandledException in contract 'INZEI':
    |            && frozenAccount[msg.sender] == false
    |            && now > unlockUnixTime[msg.sender]);
  > |    if (msg.value > 0) owner.transfer(msg.value);
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(412)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |    if(isContract(_to)) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |        if (balanceOf(msg.sender) < _value) revert();
    |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(195)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |  function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(257)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |  function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(266)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
    |    receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(267)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |    for (uint i = 0; i < targets.length; i++) {
    |      require(targets[i] != 0x0);
  > |      frozenAccount[targets[i]] = isFrozen;
    |      FrozenFunds(targets[i], isFrozen);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |    for(uint i = 0; i < targets.length; i++){
    |      require(unlockUnixTime[targets[i]] < unixTimes[i]);
  > |      unlockUnixTime[targets[i]] = unixTimes[i];
    |      LockedFunds(targets[i], unixTimes[i]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |            && balanceOf(_from) >= _unitAmount);
    |
  > |    balances[_from] = SafeMath.sub(balances[_from], _unitAmount);
    |    totalSupply = SafeMath.sub(totalSupply, _unitAmount);
    |    Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(315)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |
    |    balances[_from] = SafeMath.sub(balances[_from], _unitAmount);
  > |    totalSupply = SafeMath.sub(totalSupply, _unitAmount);
    |    Burn(_from, _unitAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |    require(_unitAmount > 0);
    |
  > |    totalSupply = SafeMath.add(totalSupply, _unitAmount);
    |    balances[_to] = SafeMath.add(balances[_to], _unitAmount);
    |    Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(333)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |
    |    totalSupply = SafeMath.add(totalSupply, _unitAmount);
  > |    balances[_to] = SafeMath.add(balances[_to], _unitAmount);
    |    Mint(_to, _unitAmount);
    |    Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(334)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |              && now > unlockUnixTime[addresses[i]]);
    |
  > |      balances[addresses[i]] = SafeMath.add(balances[addresses[i]], amount);
    |      Transfer(msg.sender, addresses[i], amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(367)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |      Transfer(msg.sender, addresses[i], amount);
    |    }
  > |    balances[msg.sender] = SafeMath.sub(balances[msg.sender], totalAmount);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(370)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |      amounts[i] = SafeMath.mul(amounts[i], 1e8);
    |      require(balances[addresses[i]] >= amounts[i]);
  > |      balances[addresses[i]] = SafeMath.sub(balances[addresses[i]], amounts[i]);
    |      totalAmount = SafeMath.add(totalAmount, amounts[i]);
    |      Transfer(addresses[i], msg.sender, amounts[i]);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(391)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |      Transfer(addresses[i], msg.sender, amounts[i]);
    |    }
  > |    balances[msg.sender] = SafeMath.add(balances[msg.sender], totalAmount);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(395)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |    if (msg.value > 0) owner.transfer(msg.value);
    |    
  > |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
    |    balances[msg.sender] = SafeMath.add(balances[msg.sender], distributeAmount);
    |    Transfer(owner, msg.sender, distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(414)

[31mViolation[0m for UnrestrictedWrite in contract 'INZEI':
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  > |    balances[msg.sender] = SafeMath.add(balances[msg.sender], distributeAmount);
    |    Transfer(owner, msg.sender, distributeAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'INZEI':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'INZEI':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'INZEI':
    |
    |  function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
  > |    distributeAmount = _unitAmount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(400)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(67)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  /**
    |  * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x319a1af29df98435b251dfb4c56277b621703018.sol(76)


