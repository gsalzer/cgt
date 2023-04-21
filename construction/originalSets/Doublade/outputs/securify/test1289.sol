Processing contract: /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol:C3Coin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'C3Coin':
    |
    |
  > |contract C3Coin is ERC223, Ownable {
    |    using SafeMath for uint;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(133)

[33mWarning[0m for UnhandledException in contract 'C3Coin':
    |    if(isContract(_to)) {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |    }
    |        
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'C3Coin':
    |    if(isContract(_to)) {
    |        ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |    }
    |        
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'C3Coin':
    |     require(_value <= balances[msg.sender] && balances[_to] + _value >= balances[_to]);
    |     require(!isContract(_to));
  > |     balances[msg.sender] = balances[msg.sender].sub(_value);
    |     balances[_to] = balances[_to].add(_value);
    |     emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'C3Coin':
    |     require(!isContract(_to));
    |     balances[msg.sender] = balances[msg.sender].sub(_value);
  > |     balances[_to] = balances[_to].add(_value);
    |     emit Transfer(msg.sender, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'C3Coin':
    |    }
    |        
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit ERC223Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'C3Coin':
    |        
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit ERC223Transfer(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'C3Coin':
    |    require(icoContract != address(0));
    |    require(_value <= balances[msg.sender] && balances[icoContract] + _value >= balances[icoContract]); 
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[icoContract] = balances[icoContract].add(_value);
    |    emit Sell(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'C3Coin':
    |    require(_value <= balances[msg.sender] && balances[icoContract] + _value >= balances[icoContract]); 
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[icoContract] = balances[icoContract].add(_value);
    |    emit Sell(msg.sender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'C3Coin':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'C3Coin':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'C3Coin':
    |  function setIcoContract(address _icoContract) public onlyOwner {
    |    if (_icoContract != address(0)) {
  > |      icoContract = _icoContract;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(242)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(128)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x51105d34c48d53a7b2e848b85333d07a6a5c3035.sol(40)


