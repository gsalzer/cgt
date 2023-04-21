Processing contract: /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol:SAKECOIN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |        TKN memory tkn;
    |        tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(104)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | *      control functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(70)

[33mWarning[0m for DAO in contract 'SAKECOIN':
    |          balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |          balances[_to] = SafeMath.add(balanceOf(_to), _value);
  > |          assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |          Transfer(msg.sender, _to, _value, _data);
    |          Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(232)

[33mWarning[0m for DAO in contract 'SAKECOIN':
    |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      ContractReceiver receiver = ContractReceiver(_to);
  > |      receiver.tokenFallback(msg.sender, _value, _data);
    |      Transfer(msg.sender, _to, _value, _data);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(304)

[33mWarning[0m for DAOConstantGas in contract 'SAKECOIN':
    |              && frozenAccount[msg.sender] == false
    |              && now > unlockUnixTime[msg.sender]);
  > |      if (msg.value > 0) owner.transfer(msg.value);
    |
    |      balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(416)

[31mViolation[0m for MissingInputValidation in contract 'SAKECOIN':
    |
    |    mapping (address => uint) balances;
  > |    mapping (address => bool) public frozenAccount;
    |    mapping (address => uint256) public unlockUnixTime;
    |
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'SAKECOIN':
    |    mapping (address => uint) balances;
    |    mapping (address => bool) public frozenAccount;
  > |    mapping (address => uint256) public unlockUnixTime;
    |
    |    event FrozenFunds(address indexed target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'SAKECOIN':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint balance) {
    |      return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'SAKECOIN':
    |      }
    |
  > |    function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
    |      distributeAmount = _unitAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(403)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    | */
    |library SafeMath {
  > |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |    }
    |
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |    }
    |
  > |    function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |    string public symbol = "SAKE";
    |    uint8 public decimals = 8;
  > |    uint256 public initialSupply = 30e9 * 1e8;
    |    uint256 public totalSupply;
    |    uint256 public distributeAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |    uint256 public initialSupply = 30e9 * 1e8;
    |    uint256 public totalSupply;
  > |    uint256 public distributeAmount = 0;
    |    bool public mintingFinished = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |    uint256 public totalSupply;
    |    uint256 public distributeAmount = 0;
  > |    bool public mintingFinished = false;
    |
    |    mapping (address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |    }
    |
  > |    function name() public view returns (string _name) {
    |        return name;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |    }
    |
  > |    function symbol() public view returns (string _symbol) {
    |        return symbol;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |    }
    |
  > |    function decimals() public view returns (uint8 _decimals) {
    |        return decimals;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |    }
    |
  > |    function totalSupply() public view returns (uint256 _totalSupply) {
    |        return totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |
    |    // assemble the given address bytecode. If bytecode exists then the _addr is a contract.
  > |    function isContract(address _addr) private view returns (bool is_contract) {
    |      uint length;
    |      assembly {
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |
    |    // function that is called when transaction target is an address
  > |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |      if (balanceOf(msg.sender) < _value) revert();
    |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(289)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |
    |    //function that is called when transaction target is a contract
  > |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |      if (balanceOf(msg.sender) < _value) revert();
    |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |     * @dev Function to stop minting new tokens.
    |     */
  > |    function finishMinting() onlyOwner canMint public returns (bool) {
    |      mintingFinished = true;
    |      MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(347)

[33mWarning[0m for MissingInputValidation in contract 'SAKECOIN':
    |     *      If distributeAmount is 0, this function doesn't work
    |     */
  > |    function autoDistribute() payable public {
    |      require(distributeAmount > 0
    |              && balanceOf(owner) >= distributeAmount
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(411)

[31mViolation[0m for TODReceiver in contract 'SAKECOIN':
    |              && frozenAccount[msg.sender] == false
    |              && now > unlockUnixTime[msg.sender]);
  > |      if (msg.value > 0) owner.transfer(msg.value);
    |
    |      balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(416)

[33mWarning[0m for UnhandledException in contract 'SAKECOIN':
    |          balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |          balances[_to] = SafeMath.add(balanceOf(_to), _value);
  > |          assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |          Transfer(msg.sender, _to, _value, _data);
    |          Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(232)

[33mWarning[0m for UnhandledException in contract 'SAKECOIN':
    |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      ContractReceiver receiver = ContractReceiver(_to);
  > |      receiver.tokenFallback(msg.sender, _value, _data);
    |      Transfer(msg.sender, _to, _value, _data);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(304)

[33mWarning[0m for UnhandledException in contract 'SAKECOIN':
    |              && frozenAccount[msg.sender] == false
    |              && now > unlockUnixTime[msg.sender]);
  > |      if (msg.value > 0) owner.transfer(msg.value);
    |
    |      balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(416)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |      for (uint i = 0; i < targets.length; i++) {
    |        require(targets[i] != 0x0);
  > |        frozenAccount[targets[i]] = isFrozen;
    |        FrozenFunds(targets[i], isFrozen);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(199)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |      for(uint i = 0; i < targets.length; i++){
    |        require(unlockUnixTime[targets[i]] < unixTimes[i]);
  > |        unlockUnixTime[targets[i]] = unixTimes[i];
    |        LockedFunds(targets[i], unixTimes[i]);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |      if(isContract(_to)) {
    |          if (balanceOf(msg.sender) < _value) revert();
  > |          balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |          balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |          assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(230)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |          if (balanceOf(msg.sender) < _value) revert();
    |          balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |          balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |          assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |          Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |      if (balanceOf(msg.sender) < _value) revert();
  > |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(291)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |      if (balanceOf(msg.sender) < _value) revert();
    |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      Transfer(msg.sender, _to, _value, _data);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(292)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |      if (balanceOf(msg.sender) < _value) revert();
  > |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |      if (balanceOf(msg.sender) < _value) revert();
    |      balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |      balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |      ContractReceiver receiver = ContractReceiver(_to);
    |      receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |              && balanceOf(_from) >= _unitAmount);
    |
  > |      balances[_from] = SafeMath.sub(balances[_from], _unitAmount);
    |      totalSupply = SafeMath.sub(totalSupply, _unitAmount);
    |      Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |
    |      balances[_from] = SafeMath.sub(balances[_from], _unitAmount);
  > |      totalSupply = SafeMath.sub(totalSupply, _unitAmount);
    |      Burn(_from, _unitAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(320)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |      require(_unitAmount > 0);
    |
  > |      totalSupply = SafeMath.add(totalSupply, _unitAmount);
    |      balances[_to] = SafeMath.add(balances[_to], _unitAmount);
    |      Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(337)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |
    |      totalSupply = SafeMath.add(totalSupply, _unitAmount);
  > |      balances[_to] = SafeMath.add(balances[_to], _unitAmount);
    |      Mint(_to, _unitAmount);
    |      Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(338)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |                && now > unlockUnixTime[addresses[i]]);
    |
  > |          balances[addresses[i]] = SafeMath.add(balances[addresses[i]], amount);
    |          Transfer(msg.sender, addresses[i], amount);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(371)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |          Transfer(msg.sender, addresses[i], amount);
    |      }
  > |      balances[msg.sender] = SafeMath.sub(balances[msg.sender], totalAmount);
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(374)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |        amounts[i] = SafeMath.mul(amounts[i], 1e8);
    |        require(balances[addresses[i]] >= amounts[i]);
  > |        balances[addresses[i]] = SafeMath.sub(balances[addresses[i]], amounts[i]);
    |        totalAmount = SafeMath.add(totalAmount, amounts[i]);
    |        Transfer(addresses[i], msg.sender, amounts[i]);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(395)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |        Transfer(addresses[i], msg.sender, amounts[i]);
    |      }
  > |        balances[msg.sender] = SafeMath.add(balances[msg.sender], totalAmount);
    |        return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(399)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |      if (msg.value > 0) owner.transfer(msg.value);
    |
  > |      balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
    |      balances[msg.sender] = SafeMath.add(balances[msg.sender], distributeAmount);
    |      Transfer(owner, msg.sender, distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(418)

[31mViolation[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |
    |      balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  > |      balances[msg.sender] = SafeMath.add(balances[msg.sender], distributeAmount);
    |      Transfer(owner, msg.sender, distributeAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |      mintingFinished = true;
    |      MintFinished();
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'SAKECOIN':
    |
    |    function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
  > |      distributeAmount = _unitAmount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(404)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4806b704779b4622f765de439b7cfebb06f8f888.sol(7)


