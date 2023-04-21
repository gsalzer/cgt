Processing contract: /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol:Authorized
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol:AuthorizedList
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol:References
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol:main
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Authorized':
    |}
    |
  > |contract Authorized is AuthorizedList {
    |
    |    /// @dev Set the initial permission for the contract creator
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'Authorized':
    |    /// @param _address Boolean value, true if authorized, false otherwise
    |    /// @param _authorization key for specific authorization
  > |    function isAuthorized(address _address, bytes32 _authorization) public view returns (bool) {
    |
    |       return authorized[_address][_authorization];
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Authorized':
    |    /// @param _address Boolean value, true if authorized, false otherwise
    |    /// @param _authorization key for specific authorization
  > |    function toggleAuthorization(address _address, bytes32 _authorization) public ifAuthorized(msg.sender, PRESIDENT) {
    |
    |       /// Prevent inadvertent self locking out, cannot change own authority
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorized':
    |       /// No need for lower level authorization to linger
    |       if (_authorization == PRESIDENT && !authorized[_address][PRESIDENT])
  > |           authorized[_address][STAFF_MEMBER] = false;
    |
    |       authorized[_address][_authorization] = !authorized[_address][_authorization];
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorized':
    |           authorized[_address][STAFF_MEMBER] = false;
    |
  > |       authorized[_address][_authorization] = !authorized[_address][_authorization];
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(77)

[33mWarning[0m for LockedEther in contract 'AuthorizedList':
    |}
    |
  > |contract AuthorizedList {
    |
    |    bytes32 constant PRESIDENT = keccak256("Republics President!");
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(25)

[33mWarning[0m for LockedEther in contract 'References':
    |pragma solidity ^0.4.23;
    |
  > |contract References {
    |
    |  mapping (bytes32 => address) internal references;
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(19)

[33mWarning[0m for LockedEther in contract 'main':
    |}
    |
  > |contract main is References, AuthorizedList, Authorized {
    |
    |  event LogicUpgrade(address indexed _oldbiz, address indexed _newbiz);
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'main':
    |    /// @param _address Boolean value, true if authorized, false otherwise
    |    /// @param _authorization key for specific authorization
  > |    function isAuthorized(address _address, bytes32 _authorization) public view returns (bool) {
    |
    |       return authorized[_address][_authorization];
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'main':
    |  /// @dev Retrieve contract address at _key location, mostly for convenience
    |  /// @return Contract address or 0x0 if it does not exist
  > |  function getReference(bytes32 _key) external view ifAuthorized(msg.sender, PRESIDENT) returns(address) {
    |
    |      return references[_key];
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'main':
    |    /// @param _address Boolean value, true if authorized, false otherwise
    |    /// @param _authorization key for specific authorization
  > |    function toggleAuthorization(address _address, bytes32 _authorization) public ifAuthorized(msg.sender, PRESIDENT) {
    |
    |       /// Prevent inadvertent self locking out, cannot change own authority
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'main':
    |  /// @param _address Address to set
    |  /// @param _key bytes32 key location
  > |  function setReference(address _address, bytes32 _key) external ifAuthorized(msg.sender, PRESIDENT) {
    |
    |     require(_address != address(0), "setReference: Unexpectedly _address is 0x0");
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'main':
    |
    |     if (references[_key] != address(0))
  > |          delete references[_key];
    |
    |     references[_key] = _address;
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'main':
    |          delete references[_key];
    |
  > |     references[_key] = _address;
    |
    |  }
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'main':
    |       /// No need for lower level authorization to linger
    |       if (_authorization == PRESIDENT && !authorized[_address][PRESIDENT])
  > |           authorized[_address][STAFF_MEMBER] = false;
    |
    |       authorized[_address][_authorization] = !authorized[_address][_authorization];
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'main':
    |           authorized[_address][STAFF_MEMBER] = false;
    |
  > |       authorized[_address][_authorization] = !authorized[_address][_authorization];
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x682664463c7e9b9182f9b6a8172f374785825c12.sol(77)


