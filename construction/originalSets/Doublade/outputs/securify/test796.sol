Processing contract: /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol:WrapperLock
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
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(45)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(156)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(78)

[33mWarning[0m for LockedEther in contract 'WrapperLock':
    |*/
    |
  > |contract WrapperLock is BasicToken, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(167)

[33mWarning[0m for UnhandledException in contract 'WrapperLock':
    |        require(_forTime >= 1);
    |        require(now + _forTime * 1 hours >= depositLock[msg.sender]);
  > |        require(ERC20(originalToken).transferFrom(msg.sender, this, _value));
    |        balances[msg.sender] = balances[msg.sender].add(_value);
    |        depositLock[msg.sender] = now + _forTime * 1 hours;
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(194)

[33mWarning[0m for UnhandledException in contract 'WrapperLock':
    |        if (now > depositLock[msg.sender]) {
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
  > |            success = ERC20(originalToken).transfer(msg.sender, _value);
    |        } else {
    |            require(block.number < signatureValidUntilBlock);
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(214)

[33mWarning[0m for UnhandledException in contract 'WrapperLock':
    |            require(isValidSignature(keccak256(msg.sender, address(this), signatureValidUntilBlock), v, r, s));
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
  > |            success = ERC20(originalToken).transfer(msg.sender, _value);
    |        }
    |        require(success);
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(219)

[33mWarning[0m for UnhandledException in contract 'WrapperLock':
    |        returns (bool)
    |    {
  > |        return isSigner[ecrecover(
    |            keccak256("\x19Ethereum Signed Message:\n32", hash),
    |            v,
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WrapperLock':
    |        require(_forTime >= 1);
    |        require(now + _forTime * 1 hours >= depositLock[msg.sender]);
  > |        require(ERC20(originalToken).transferFrom(msg.sender, this, _value));
    |        balances[msg.sender] = balances[msg.sender].add(_value);
    |        depositLock[msg.sender] = now + _forTime * 1 hours;
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WrapperLock':
    |        if (now > depositLock[msg.sender]) {
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
  > |            success = ERC20(originalToken).transfer(msg.sender, _value);
    |        } else {
    |            require(block.number < signatureValidUntilBlock);
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WrapperLock':
    |            require(isValidSignature(keccak256(msg.sender, address(this), signatureValidUntilBlock), v, r, s));
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
  > |            success = ERC20(originalToken).transfer(msg.sender, _value);
    |        }
    |        require(success);
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WrapperLock':
    |        returns (bool)
    |    {
  > |        return isSigner[ecrecover(
    |            keccak256("\x19Ethereum Signed Message:\n32", hash),
    |            v,
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'WrapperLock':
    |    function addSigner(address _newSigner) public {
    |        require(isSigner[msg.sender]);
  > |        isSigner[_newSigner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'WrapperLock':
    |        require(now + _forTime * 1 hours >= depositLock[msg.sender]);
    |        require(ERC20(originalToken).transferFrom(msg.sender, this, _value));
  > |        balances[msg.sender] = balances[msg.sender].add(_value);
    |        depositLock[msg.sender] = now + _forTime * 1 hours;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'WrapperLock':
    |        require(ERC20(originalToken).transferFrom(msg.sender, this, _value));
    |        balances[msg.sender] = balances[msg.sender].add(_value);
  > |        depositLock[msg.sender] = now + _forTime * 1 hours;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'WrapperLock':
    |        require(balanceOf(msg.sender) >= _value);
    |        if (now > depositLock[msg.sender]) {
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            success = ERC20(originalToken).transfer(msg.sender, _value);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'WrapperLock':
    |            require(block.number < signatureValidUntilBlock);
    |            require(isValidSignature(keccak256(msg.sender, address(this), signatureValidUntilBlock), v, r, s));
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            success = ERC20(originalToken).transfer(msg.sender, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'WrapperLock':
    |        require(_to == owner || _from == owner);
    |        assert(msg.sender == TRANSFER_PROXY);
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'WrapperLock':
    |        assert(msg.sender == TRANSFER_PROXY);
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'WrapperLock':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x328b6e9d6dc8908a860623a037f80ec5f501f4dc.sol(156)


