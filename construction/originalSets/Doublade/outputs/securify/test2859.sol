Processing contract: /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol:Controller
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol:IController
[33mWarning[0m for LockedEther in contract 'Controller':
    |
    |/// @title Controller stores a list of controller addresses that can be used for authentication in other contracts.
  > |contract Controller is IController {
    |    event AddedController(address _sender, address _controller);
    |    event RemovedController(address _sender, address _controller);
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    /// @dev Add a new controller to the list of controllers.
    |    /// @param _account address to add to the list of controllers.
  > |    function addController(address _account) external onlyController {
    |        _addController(_account);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    /// @dev Remove a controller from the list of controllers.
    |    /// @param _account address to remove from the list of controllers.
  > |    function removeController(address _account) external onlyController {
    |        _removeController(_account);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |
    |    /// @return true if the provided account is a controller.
  > |    function isController(address _account) public view returns (bool) {
    |        return _isController[_account];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |    /// @return the current number of controllers.
  > |    function controllerCount() public view returns (uint) {
    |        return _controllerCount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |    /// @dev Internal-only function that adds a new controller.
  > |    function _addController(address _account) internal {
    |        require(!_isController[_account], "provided account is already a controller");
    |        _isController[_account] = true;
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |    /// @dev Internal-only function that removes an existing controller.
  > |    function _removeController(address _account) internal {
    |        require(_isController[_account], "provided account is not a controller");
    |        require(_controllerCount > 1, "cannot remove the last controller");
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'Controller':
    |    function _addController(address _account) internal {
    |        require(!_isController[_account], "provided account is already a controller");
  > |        _isController[_account] = true;
    |        _controllerCount++;
    |        emit AddedController(msg.sender, _account);
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'Controller':
    |        require(!_isController[_account], "provided account is already a controller");
    |        _isController[_account] = true;
  > |        _controllerCount++;
    |        emit AddedController(msg.sender, _account);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'Controller':
    |        require(_isController[_account], "provided account is not a controller");
    |        require(_controllerCount > 1, "cannot remove the last controller");
  > |        _isController[_account] = false;
    |        _controllerCount--;
    |        emit RemovedController(msg.sender, _account);
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'Controller':
    |        require(_controllerCount > 1, "cannot remove the last controller");
    |        _isController[_account] = false;
  > |        _controllerCount--;
    |        emit RemovedController(msg.sender, _account);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbbcd532abc67903c7b41280ed1226fd85843e91.sol(81)


