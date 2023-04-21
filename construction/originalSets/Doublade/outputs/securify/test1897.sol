Processing contract: /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol:BurCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(152)

[33mWarning[0m for UnhandledException in contract 'BasicToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(206)

[33mWarning[0m for UnhandledException in contract 'BasicToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(62)

[33mWarning[0m for LockedEther in contract 'BurCoin':
    |
    |
  > |contract BurCoin is BurnableToken {
    |
    |    string public constant name = "Buratino Coin";
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(369)

[33mWarning[0m for UnhandledException in contract 'BurCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(206)

[33mWarning[0m for UnhandledException in contract 'BurCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
    |        if(codeLength>0) {
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
    |        if(codeLength>0) {
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |
    |    function refund(address _from, uint256 _value) onlyOwner saleIsOn public returns(bool) {
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[owner] = balances[owner].add(_value);
    |        emit Transfer(_from, owner, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |    function refund(address _from, uint256 _value) onlyOwner saleIsOn public returns(bool) {
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[owner] = balances[owner].add(_value);
    |        emit Transfer(_from, owner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'BurCoin':
    |
    |    function stopSale() onlyOwner saleIsOn public returns(bool) {
  > |        transferable = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(400)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(344)

[33mWarning[0m for UnhandledException in contract 'BurnableToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(206)

[33mWarning[0m for UnhandledException in contract 'BurnableToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
    |        if(codeLength>0) {
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
    |        if(codeLength>0) {
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(62)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(62)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(71)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(253)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(206)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7976af0ae2124a0771d5287aa16017b3f9dd43a4.sol(62)


