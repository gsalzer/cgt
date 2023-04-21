Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:Base64
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:Buffer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:CBOR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:Controllable
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:Controller
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:Date
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:ENS
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:IController
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:IOracle
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:IResolver
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:JSON
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:Oracle
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:ParseIntScientific
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:strings
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Base64':
    |
    |/// @title Base64 provides base 64 decoding functionality.
  > |contract Base64 {
    |    bytes constant BASE64_DECODE_CHAR = hex"000000000000000000000000000000000000000000000000000000000000000000000000000000000000003e003e003f3435363738393a3b3c3d00000000000000000102030405060708090a0b0c0d0e0f10111213141516171819000000003f001a1b1c1d1e1f202122232425262728292a2b2c2d2e2f30313233";
    |
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(2460)

[33mWarning[0m for LockedEther in contract 'Buffer':
    | */
    |
  > |library Buffer {
    |    struct buffer {
    |        bytes buf;
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(303)

[33mWarning[0m for LockedEther in contract 'CBOR':
    |}
    |
  > |library CBOR {
    |    using Buffer for Buffer.buffer;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(435)

[33mWarning[0m for LockedEther in contract 'Controller':
    |
    |/// @title Controller stores a list of controller addresses that can be used for authentication in other contracts.
  > |contract Controller is IController {
    |    event AddedController(address _sender, address _controller);
    |    event RemovedController(address _sender, address _controller);
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    /// @dev Add a new controller to the list of controllers.
    |    /// @param _account address to add to the list of controllers.
  > |    function addController(address _account) external onlyController {
    |        _addController(_account);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    /// @dev Remove a controller from the list of controllers.
    |    /// @param _account address to remove from the list of controllers.
  > |    function removeController(address _account) external onlyController {
    |        _removeController(_account);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |
    |    /// @return true if the provided account is a controller.
  > |    function isController(address _account) public view returns (bool) {
    |        return _isController[_account];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |    /// @return the current number of controllers.
  > |    function controllerCount() public view returns (uint) {
    |        return _controllerCount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |    /// @dev Internal-only function that adds a new controller.
  > |    function _addController(address _account) internal {
    |        require(!_isController[_account], "provided account is already a controller");
    |        _isController[_account] = true;
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |    /// @dev Internal-only function that removes an existing controller.
  > |    function _removeController(address _account) internal {
    |        require(_isController[_account], "provided account is not a controller");
    |        require(_controllerCount > 1, "cannot remove the last controller");
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'Controller':
    |    function _addController(address _account) internal {
    |        require(!_isController[_account], "provided account is already a controller");
  > |        _isController[_account] = true;
    |        _controllerCount++;
    |        emit AddedController(msg.sender, _account);
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'Controller':
    |        require(!_isController[_account], "provided account is already a controller");
    |        _isController[_account] = true;
  > |        _controllerCount++;
    |        emit AddedController(msg.sender, _account);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'Controller':
    |        require(_isController[_account], "provided account is not a controller");
    |        require(_controllerCount > 1, "cannot remove the last controller");
  > |        _isController[_account] = false;
    |        _controllerCount--;
    |        emit RemovedController(msg.sender, _account);
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'Controller':
    |        require(_controllerCount > 1, "cannot remove the last controller");
    |        _isController[_account] = false;
  > |        _controllerCount--;
    |        emit RemovedController(msg.sender, _account);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(81)

[33mWarning[0m for LockedEther in contract 'Date':
    |
    |/// @title Date provides date parsing functionality.
  > |contract Date {
    |
    |    bytes32 constant private JANUARY = keccak256("Jan");
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(172)

[33mWarning[0m for LockedEther in contract 'JSON':
    |
    |/// @title JSON provides JSON parsing functionality.
  > |contract JSON is usingOraclize{
    |    using strings for *;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(1459)

[33mWarning[0m for LockedEther in contract 'ParseIntScientific':
    |
    |/// @title ParseIntScientific provides floating point in scientific notation (e.g. e-5) parsing functionality.
  > |contract ParseIntScientific {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(1487)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(2394)

[33mWarning[0m for LockedEther in contract 'strings':
    | */
    |
  > |library strings {
    |    struct slice {
    |        uint _len;
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(1686)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    | */
    |
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xf4061630645f15bd1122614bcd71403c1f53a10f.sol(507)


