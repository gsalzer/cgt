Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:DetailedToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:KeyValueStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:Proxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:StorageConsumer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:StorageStateful
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:TokenDelegate
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:TokenVersion1
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:TokenVersion2
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:TokenVersion3
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'DetailedToken':
    |}
    |
  > |contract DetailedToken {
    |  string public name;
    |  string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'DetailedToken':
    |
    |contract DetailedToken {
  > |  string public name;
    |  string public symbol;
    |  uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'DetailedToken':
    |contract DetailedToken {
    |  string public name;
  > |  string public symbol;
    |  uint8 public decimals;
    |  uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'DetailedToken':
    |  string public name;
    |  string public symbol;
  > |  uint8 public decimals;
    |  uint256 public totalSupply;
    |}
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'DetailedToken':
    |  string public symbol;
    |  uint8 public decimals;
  > |  uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(195)

[33mWarning[0m for LockedEther in contract 'KeyValueStorage':
    |}
    |
  > |contract KeyValueStorage {
    |
    |  mapping(address => mapping(bytes32 => uint256)) _uintStorage;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'KeyValueStorage':
    |  /**** Get Methods ***********/
    |
  > |  function getAddress(bytes32 key) public view returns (address) {
    |      return _addressStorage[msg.sender][key];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(206)

[31mViolation[0m for MissingInputValidation in contract 'KeyValueStorage':
    |  }
    |
  > |  function getUint(bytes32 key) public view returns (uint) {
    |      return _uintStorage[msg.sender][key];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(210)

[31mViolation[0m for MissingInputValidation in contract 'KeyValueStorage':
    |  }
    |
  > |  function getBool(bytes32 key) public view returns (bool) {
    |      return _boolStorage[msg.sender][key];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'KeyValueStorage':
    |  /**** Set Methods ***********/
    |
  > |  function setAddress(bytes32 key, address value) public {
    |    _addressStorage[msg.sender][key] = value;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'KeyValueStorage':
    |  }
    |
  > |  function setUint(bytes32 key, uint value) public {
    |      _uintStorage[msg.sender][key] = value;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(224)

[31mViolation[0m for MissingInputValidation in contract 'KeyValueStorage':
    |  }
    |
  > |  function setBool(bytes32 key, bool value) public {
    |      _boolStorage[msg.sender][key] = value;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'KeyValueStorage':
    |  /**** Delete Methods ***********/
    |
  > |  function deleteAddress(bytes32 key) public {
    |      delete _addressStorage[msg.sender][key];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'KeyValueStorage':
    |  }
    |
  > |  function deleteUint(bytes32 key) public {
    |      delete _uintStorage[msg.sender][key];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(238)

[31mViolation[0m for MissingInputValidation in contract 'KeyValueStorage':
    |  }
    |
  > |  function deleteBool(bytes32 key) public {
    |      delete _boolStorage[msg.sender][key];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'KeyValueStorage':
    |
    |  function setAddress(bytes32 key, address value) public {
  > |    _addressStorage[msg.sender][key] = value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'KeyValueStorage':
    |
    |  function setUint(bytes32 key, uint value) public {
  > |      _uintStorage[msg.sender][key] = value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'KeyValueStorage':
    |
    |  function setBool(bytes32 key, bool value) public {
  > |      _boolStorage[msg.sender][key] = value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'KeyValueStorage':
    |
    |  function deleteAddress(bytes32 key) public {
  > |      delete _addressStorage[msg.sender][key];
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'KeyValueStorage':
    |
    |  function deleteUint(bytes32 key) public {
  > |      delete _uintStorage[msg.sender][key];
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'KeyValueStorage':
    |
    |  function deleteBool(bytes32 key) public {
  > |      delete _boolStorage[msg.sender][key];
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(243)

[33mWarning[0m for LockedEther in contract 'Proxy':
    |}
    |
  > |contract Proxy is Ownable {
    |
    |  event Upgraded(address indexed implementation);
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |     * @return the address of the owner.
    |     */
  > |    function owner() public view returns (address) {
    |        return _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |     * @return true if `msg.sender` is the owner of the contract.
    |     */
  > |    function isOwner() public view returns (bool) {
    |        return msg.sender == _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |     * modifier anymore.
    |     */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
    |        _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        _transferOwnership(newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function _transferOwnership(address newOwner) internal {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |  address internal _implementation;
    |
  > |  function implementation() public view returns (address) {
    |    return _implementation;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |  }
    |
  > |  function upgradeTo(address impl) public onlyOwner {
    |    require(_implementation != impl);
    |    _implementation = impl;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'Proxy':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |  function upgradeTo(address impl) public onlyOwner {
    |    require(_implementation != impl);
  > |    _implementation = impl;
    |    emit Upgraded(impl);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(260)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    int256 constant private INT256_MIN = -2**255;
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(78)

[33mWarning[0m for LockedEther in contract 'StorageConsumer':
    |}
    |
  > |contract StorageConsumer is StorageStateful {
    |
    |  constructor(KeyValueStorage storage_) public {
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(288)

[33mWarning[0m for LockedEther in contract 'StorageStateful':
    |}
    |
  > |contract StorageStateful {
    |
    |  KeyValueStorage _storage;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(282)

[33mWarning[0m for LockedEther in contract 'TokenDelegate':
    |}
    |
  > |contract TokenDelegate is StorageStateful {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(318)

[31mViolation[0m for MissingInputValidation in contract 'TokenDelegate':
    |  using SafeMath for uint256;
    |
  > |  function balanceOf(address owner) public view returns (uint256 balance) {
    |    return getBalance(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(321)

[31mViolation[0m for MissingInputValidation in contract 'TokenDelegate':
    |  }
    |
  > |  function getBalance(address balanceHolder) public view returns (uint256) {
    |    return _storage.getUint(keccak256("balances", balanceHolder));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(325)

[33mWarning[0m for MissingInputValidation in contract 'TokenDelegate':
    |  }
    |
  > |  function totalSupply() public view returns (uint256) {
    |    return _storage.getUint("totalSupply");
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(329)

[33mWarning[0m for UnhandledException in contract 'TokenDelegate':
    |
    |  function getBalance(address balanceHolder) public view returns (uint256) {
  > |    return _storage.getUint(keccak256("balances", balanceHolder));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(326)

[33mWarning[0m for UnhandledException in contract 'TokenDelegate':
    |
    |  function totalSupply() public view returns (uint256) {
  > |    return _storage.getUint("totalSupply");
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(330)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDelegate':
    |
    |  function getBalance(address balanceHolder) public view returns (uint256) {
  > |    return _storage.getUint(keccak256("balances", balanceHolder));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDelegate':
    |
    |  function totalSupply() public view returns (uint256) {
  > |    return _storage.getUint("totalSupply");
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(330)

[33mWarning[0m for LockedEther in contract 'TokenVersion1':
    |
    |
  > |contract TokenVersion1 is StorageConsumer, Proxy, DetailedToken {
    |
    |  constructor(KeyValueStorage storage_)
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |     * @return the address of the owner.
    |     */
  > |    function owner() public view returns (address) {
    |        return _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |     * @return true if `msg.sender` is the owner of the contract.
    |     */
  > |    function isOwner() public view returns (bool) {
    |        return msg.sender == _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |     * modifier anymore.
    |     */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
    |        _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        _transferOwnership(newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function _transferOwnership(address newOwner) internal {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |
    |contract DetailedToken {
  > |  string public name;
    |  string public symbol;
    |  uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |contract DetailedToken {
    |  string public name;
  > |  string public symbol;
    |  uint8 public decimals;
    |  uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |  string public name;
    |  string public symbol;
  > |  uint8 public decimals;
    |  uint256 public totalSupply;
    |}
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |  string public symbol;
    |  uint8 public decimals;
  > |  uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |  address internal _implementation;
    |
  > |  function implementation() public view returns (address) {
    |    return _implementation;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'TokenVersion1':
    |  }
    |
  > |  function upgradeTo(address impl) public onlyOwner {
    |    require(_implementation != impl);
    |    _implementation = impl;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenVersion1':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVersion1':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVersion1':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVersion1':
    |  function upgradeTo(address impl) public onlyOwner {
    |    require(_implementation != impl);
  > |    _implementation = impl;
    |    emit Upgraded(impl);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(260)

[33mWarning[0m for LockedEther in contract 'TokenVersion2':
    |}
    |
  > |contract TokenVersion2 is TokenDelegate {
    |    
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(355)

[33mWarning[0m for UnhandledException in contract 'TokenVersion2':
    |
    |  function getBalance(address balanceHolder) public view returns (uint256) {
  > |    return _storage.getUint(keccak256("balances", balanceHolder));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(326)

[33mWarning[0m for UnhandledException in contract 'TokenVersion2':
    |
    |  function totalSupply() public view returns (uint256) {
  > |    return _storage.getUint("totalSupply");
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(330)

[33mWarning[0m for UnhandledException in contract 'TokenVersion2':
    |  
    |  function subSupply(uint256 amount) internal {
  > |      _storage.setUint("totalSupply", totalSupply().sub(amount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(338)

[33mWarning[0m for UnhandledException in contract 'TokenVersion2':
    |
    |  function setBalance(address balanceHolder, uint256 amount) internal {
  > |    _storage.setUint(keccak256("balances", balanceHolder), amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(350)

[33mWarning[0m for UnhandledException in contract 'TokenVersion2':
    |      tokenRecipient spender = tokenRecipient(_spender);
    |      if (approve(_spender, _value)) {
  > |          spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVersion2':
    |
    |  function getBalance(address balanceHolder) public view returns (uint256) {
  > |    return _storage.getUint(keccak256("balances", balanceHolder));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVersion2':
    |
    |  function totalSupply() public view returns (uint256) {
  > |    return _storage.getUint("totalSupply");
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(330)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVersion2':
    |  
    |  function subSupply(uint256 amount) internal {
  > |      _storage.setUint("totalSupply", totalSupply().sub(amount));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(338)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVersion2':
    |
    |  function setBalance(address balanceHolder, uint256 amount) internal {
  > |    _storage.setUint(keccak256("balances", balanceHolder), amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(350)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVersion2':
    |      tokenRecipient spender = tokenRecipient(_spender);
    |      if (approve(_spender, _value)) {
  > |          spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVersion2':
    |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |      require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |      allowance[_from][msg.sender] -= _value;
    |      _transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVersion2':
    |  function approve(address _spender, uint256 _value) public
    |      returns (bool success) {
  > |      allowance[msg.sender][_spender] = _value;
    |      emit Approval(msg.sender, _spender, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVersion2':
    |      require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |      subBalance(_from, _value);                          // Subtract from the targeted balance
  > |      allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |      
    |      subSupply(_value);                                  // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xfb918ca8543aefcb1754a656d3985b4fc4036860.sol(473)


