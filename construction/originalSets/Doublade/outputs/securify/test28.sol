Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:ERC223Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:ERC223Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:FollowCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:HoldersToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:MigrationAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:MigratoryToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(190)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |	Copy from Burnable token but only for owner
    | */
  > |contract BurnableToken is ERC223Token {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(411)

[33mWarning[0m for UnhandledException in contract 'BurnableToken':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableToken':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  > |		userWhiteListContracts[msg.sender][_addr] = f;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |		address burner = msg.sender;
  > |		balances[burner] = balances[burner].sub(_value);
    |		totalSupply_ = totalSupply_.sub(_value);
    |		Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |		address burner = msg.sender;
    |		balances[burner] = balances[burner].sub(_value);
  > |		totalSupply_ = totalSupply_.sub(_value);
    |		Burn(burner, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |	function setERC223Activated(bool _activate) public onlyOwner {
  > |		erc223Activated = _activate;
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  > |		whiteListContracts[_addr] = f;
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(340)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(142)

[33mWarning[0m for LockedEther in contract 'ERC223Token':
    |/*!	ERC223 token implementation
    | */
  > |contract ERC223Token is StandardToken, Claimable {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(321)

[33mWarning[0m for UnhandledException in contract 'ERC223Token':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC223Token':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  > |		userWhiteListContracts[msg.sender][_addr] = f;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |
    |	function setERC223Activated(bool _activate) public onlyOwner {
  > |		erc223Activated = _activate;
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  > |		whiteListContracts[_addr] = f;
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(340)

[33mWarning[0m for LockedEther in contract 'FollowCoin':
    |// File: contracts/FollowCoin.sol
    |
  > |contract FollowCoin is MigratoryToken {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(567)

[33mWarning[0m for UnhandledException in contract 'FollowCoin':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnhandledException in contract 'FollowCoin':
    |		balances[msg.sender] = balances[msg.sender].sub(value);
    |		totalSupply_ = totalSupply_.sub(value);
  > |		MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
    |		// Notify anyone listening that this migration took place
    |		Migrate(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(529)

[33mWarning[0m for UnhandledException in contract 'FollowCoin':
    |			balances[holder] = balances[holder].sub(value);
    |			totalSupply_ = totalSupply_.sub(value);
  > |			MigrationAgent(migrationAgent).migrateFrom(holder, value);
    |			// Notify anyone listening that this migration took place
    |			Migrate(holder, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FollowCoin':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FollowCoin':
    |		balances[msg.sender] = balances[msg.sender].sub(value);
    |		totalSupply_ = totalSupply_.sub(value);
  > |		MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
    |		// Notify anyone listening that this migration took place
    |		Migrate(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(529)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FollowCoin':
    |			balances[holder] = balances[holder].sub(value);
    |			totalSupply_ = totalSupply_.sub(value);
  > |			MigrationAgent(migrationAgent).migrateFrom(holder, value);
    |			// Notify anyone listening that this migration took place
    |			Migrate(holder, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |
    |	function setERC223Activated(bool _activate) public onlyOwner {
  > |		erc223Activated = _activate;
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  > |		whiteListContracts[_addr] = f;
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  > |		userWhiteListContracts[msg.sender][_addr] = f;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |
    |		address burner = msg.sender;
  > |		balances[burner] = balances[burner].sub(_value);
    |		totalSupply_ = totalSupply_.sub(_value);
    |		Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |		address burner = msg.sender;
    |		balances[burner] = balances[burner].sub(_value);
  > |		totalSupply_ = totalSupply_.sub(_value);
    |		Burn(burner, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |	function addHolder(address _addr) internal returns (bool) {
    |		if (isHolder[_addr] != true) {
  > |			holders[holders.length++] = _addr;
    |			isHolder[_addr] = true;
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |		if (isHolder[_addr] != true) {
    |			holders[holders.length++] = _addr;
  > |			isHolder[_addr] = true;
    |			return true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |	 */
    |	function setMigrationAgent(address agent) public onlyOwner {
  > |		migrationAgent = agent;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |		require(migrationAgent != 0x0);
    |		uint256 value = balances[msg.sender];
  > |		balances[msg.sender] = balances[msg.sender].sub(value);
    |		totalSupply_ = totalSupply_.sub(value);
    |		MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |		uint256 value = balances[msg.sender];
    |		balances[msg.sender] = balances[msg.sender].sub(value);
  > |		totalSupply_ = totalSupply_.sub(value);
    |		MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
    |		// Notify anyone listening that this migration took place
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(528)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |			address holder = holders[i];
    |			uint value = balances[holder];
  > |			balances[holder] = balances[holder].sub(value);
    |			totalSupply_ = totalSupply_.sub(value);
    |			MigrationAgent(migrationAgent).migrateFrom(holder, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(552)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |			uint value = balances[holder];
    |			balances[holder] = balances[holder].sub(value);
  > |			totalSupply_ = totalSupply_.sub(value);
    |			MigrationAgent(migrationAgent).migrateFrom(holder, value);
    |			// Notify anyone listening that this migration took place
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(553)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |			Migrate(holder, value);
    |		}
  > |		migrationCountComplete = count;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |// File: contracts/FollowCoin.sol
    |
  > |contract FollowCoin is MigratoryToken {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(567)

[33mWarning[0m for UnrestrictedWrite in contract 'FollowCoin':
    |	 */
    |	function setMigrationGate(address _addr) public onlyOwner {
  > |		migrationGate = _addr;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(596)

[33mWarning[0m for LockedEther in contract 'HoldersToken':
    |/*!	Functionality to keep up-to-dated list of all holders.
    | */
  > |contract HoldersToken is BurnableToken {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(438)

[33mWarning[0m for UnhandledException in contract 'HoldersToken':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HoldersToken':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  > |		userWhiteListContracts[msg.sender][_addr] = f;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |
    |		address burner = msg.sender;
  > |		balances[burner] = balances[burner].sub(_value);
    |		totalSupply_ = totalSupply_.sub(_value);
    |		Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |		address burner = msg.sender;
    |		balances[burner] = balances[burner].sub(_value);
  > |		totalSupply_ = totalSupply_.sub(_value);
    |		Burn(burner, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |/*!	Functionality to keep up-to-dated list of all holders.
    | */
  > |contract HoldersToken is BurnableToken {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |	function addHolder(address _addr) internal returns (bool) {
    |		if (isHolder[_addr] != true) {
  > |			holders[holders.length++] = _addr;
    |			isHolder[_addr] = true;
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |		if (isHolder[_addr] != true) {
    |			holders[holders.length++] = _addr;
  > |			isHolder[_addr] = true;
    |			return true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |
    |	function setERC223Activated(bool _activate) public onlyOwner {
  > |		erc223Activated = _activate;
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'HoldersToken':
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  > |		whiteListContracts[_addr] = f;
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(340)

[33mWarning[0m for LockedEther in contract 'MigratoryToken':
    |	address of new contract is known.
    | */
  > |contract MigratoryToken is HoldersToken {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(503)

[33mWarning[0m for UnhandledException in contract 'MigratoryToken':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnhandledException in contract 'MigratoryToken':
    |		balances[msg.sender] = balances[msg.sender].sub(value);
    |		totalSupply_ = totalSupply_.sub(value);
  > |		MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
    |		// Notify anyone listening that this migration took place
    |		Migrate(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(529)

[33mWarning[0m for UnhandledException in contract 'MigratoryToken':
    |			balances[holder] = balances[holder].sub(value);
    |			totalSupply_ = totalSupply_.sub(value);
  > |			MigrationAgent(migrationAgent).migrateFrom(holder, value);
    |			// Notify anyone listening that this migration took place
    |			Migrate(holder, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MigratoryToken':
    |		if (codeLength>0) {
    |			ERC223Receiver receiver = ERC223Receiver(_to);
  > |			receiver.tokenFallback(msg.sender, _value, _data);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MigratoryToken':
    |		balances[msg.sender] = balances[msg.sender].sub(value);
    |		totalSupply_ = totalSupply_.sub(value);
  > |		MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
    |		// Notify anyone listening that this migration took place
    |		Migrate(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(529)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MigratoryToken':
    |			balances[holder] = balances[holder].sub(value);
    |			totalSupply_ = totalSupply_.sub(value);
  > |			MigrationAgent(migrationAgent).migrateFrom(holder, value);
    |			// Notify anyone listening that this migration took place
    |			Migrate(holder, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  > |		userWhiteListContracts[msg.sender][_addr] = f;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |
    |		address burner = msg.sender;
  > |		balances[burner] = balances[burner].sub(_value);
    |		totalSupply_ = totalSupply_.sub(_value);
    |		Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |		address burner = msg.sender;
    |		balances[burner] = balances[burner].sub(_value);
  > |		totalSupply_ = totalSupply_.sub(_value);
    |		Burn(burner, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |	function addHolder(address _addr) internal returns (bool) {
    |		if (isHolder[_addr] != true) {
  > |			holders[holders.length++] = _addr;
    |			isHolder[_addr] = true;
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |		if (isHolder[_addr] != true) {
    |			holders[holders.length++] = _addr;
  > |			isHolder[_addr] = true;
    |			return true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |	address of new contract is known.
    | */
  > |contract MigratoryToken is HoldersToken {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(503)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |		require(migrationAgent != 0x0);
    |		uint256 value = balances[msg.sender];
  > |		balances[msg.sender] = balances[msg.sender].sub(value);
    |		totalSupply_ = totalSupply_.sub(value);
    |		MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |		uint256 value = balances[msg.sender];
    |		balances[msg.sender] = balances[msg.sender].sub(value);
  > |		totalSupply_ = totalSupply_.sub(value);
    |		MigrationAgent(migrationAgent).migrateFrom(msg.sender, value);
    |		// Notify anyone listening that this migration took place
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(528)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |			address holder = holders[i];
    |			uint value = balances[holder];
  > |			balances[holder] = balances[holder].sub(value);
    |			totalSupply_ = totalSupply_.sub(value);
    |			MigrationAgent(migrationAgent).migrateFrom(holder, value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(552)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |			uint value = balances[holder];
    |			balances[holder] = balances[holder].sub(value);
  > |			totalSupply_ = totalSupply_.sub(value);
    |			MigrationAgent(migrationAgent).migrateFrom(holder, value);
    |			// Notify anyone listening that this migration took place
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(553)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |			Migrate(holder, value);
    |		}
  > |		migrationCountComplete = count;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |  function claimOwnership() onlyPendingOwner public {
    |    OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |    OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |
    |	function setERC223Activated(bool _activate) public onlyOwner {
  > |		erc223Activated = _activate;
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |	}
    |	function setWhiteListContract(address _addr, bool f) public onlyOwner {
  > |		whiteListContracts[_addr] = f;
    |	}
    |	function setUserWhiteListContract(address _addr, bool f) public {
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'MigratoryToken':
    |	 */
    |	function setMigrationAgent(address agent) public onlyOwner {
  > |		migrationAgent = agent;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(515)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(105)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(26)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0200412995f1bafef0d3f97c4e28ac2515ec1ece.sol(309)


