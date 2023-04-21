Processing contract: /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol:ESSENTIA
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol:ESSENTIA_ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'ESSENTIA':
    |
    |
  > |contract ESSENTIA is ESSENTIA_ERC20 {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(192)

[33mWarning[0m for UnhandledException in contract 'ESSENTIA':
    |
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ESSENTIA':
    |
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA':
    |        require(_value <= balances[msg.sender]);
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(73)

[33mWarning[0m for LockedEther in contract 'ESSENTIA_ERC20':
    |
    |
  > |contract ESSENTIA_ERC20 is Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(88)

[33mWarning[0m for UnhandledException in contract 'ESSENTIA_ERC20':
    |
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ESSENTIA_ERC20':
    |
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA_ERC20':
    |        require(_value <= balances[msg.sender]);
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA_ERC20':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA_ERC20':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA_ERC20':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA_ERC20':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA_ERC20':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'ESSENTIA_ERC20':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(73)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xcaad046898aa5dda82e4327295d093fcf80f1fad.sol(24)


