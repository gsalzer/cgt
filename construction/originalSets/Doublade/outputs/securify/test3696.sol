Processing contract: /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol:RoninX
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |  address public owner;
    |  address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |  }
    |
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    newOwner = _newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |  address public owner;
    |  address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |  address public owner;
  > |  address public newOwner;
    |
    |  event OwnershipTransferred(address indexed from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    newOwner = _newOwner;
    |  }
  > |  function acceptOwnership() public {
    |    require(msg.sender == newOwner);
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |  function transferOwnership(address _newOwner) public onlyOwner {
  > |    newOwner = _newOwner;
    |  }
    |  function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |  function acceptOwnership() public {
    |    require(msg.sender == newOwner);
  > |    owner = newOwner;
    |    newOwner = address(0);
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    require(msg.sender == newOwner);
    |    owner = newOwner;
  > |    newOwner = address(0);
    |    emit OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(56)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Owned {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    newOwner = _newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Owned {
  > |  address public owner;
    |  address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Owned {
    |  address public owner;
  > |  address public newOwner;
    |
    |  event OwnershipTransferred(address indexed from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    newOwner = _newOwner;
    |  }
  > |  function acceptOwnership() public {
    |    require(msg.sender == newOwner);
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function transferOwnership(address _newOwner) public onlyOwner {
  > |    newOwner = _newOwner;
    |  }
    |  function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function acceptOwnership() public {
    |    require(msg.sender == newOwner);
  > |    owner = newOwner;
    |    newOwner = address(0);
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(msg.sender == newOwner);
    |    owner = newOwner;
  > |    newOwner = address(0);
    |    emit OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(83)

[33mWarning[0m for LockedEther in contract 'RoninX':
    |}
    |
  > |contract RoninX is ERC20Interface, Owned, Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(88)

[33mWarning[0m for UnhandledException in contract 'RoninX':
    |        require(tokenAddress != address(0));
    |        require(isContract(tokenAddress));
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(257)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RoninX':
    |        require(tokenAddress != address(0));
    |        require(isContract(tokenAddress));
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(257)

[31mViolation[0m for UnrestrictedWrite in contract 'RoninX':
    |        require(allowed[from][msg.sender] > 0);
    |        require(balances[from]>0);
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'RoninX':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        _totalSupply =_totalSupply.sub(_value);
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'RoninX':
    |        require(balances[from] >= _value);
    |        require(_value <= allowed[from][msg.sender]);
  > |        balances[from] = balances[from].sub(_value);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(_value);
    |        _totalSupply = _totalSupply.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'RoninX':
    |        balances[from] = balances[from].sub(_value);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(_value);
  > |        _totalSupply = _totalSupply.sub(_value);
    |        emit Burn(from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |    require(tokens > 0);
    |    require(tokens <= balances[msg.sender]);
  > |    balances[msg.sender] = balances[msg.sender].sub(tokens);
    |    balances[to] = balances[to].add(tokens);
    |    emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |  function approve(address spender, uint256 tokens) public whenNotPaused onlyPayloadSize(2) returns (bool success) {
    |    require(spender != address(0));
  > |    allowed[msg.sender][spender] = tokens;
    |    emit Approval(msg.sender, spender, tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |        require(balances[from]>0);
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        _totalSupply =_totalSupply.sub(_value);
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |        require(_value <= allowed[from][msg.sender]);
    |        balances[from] = balances[from].sub(_value);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(_value);
    |        _totalSupply = _totalSupply.sub(_value);
    |        emit Burn(from, _value);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |
    |  function transferOwnership(address _newOwner) public onlyOwner {
  > |    newOwner = _newOwner;
    |  }
    |  function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |  function acceptOwnership() public {
    |    require(msg.sender == newOwner);
  > |    owner = newOwner;
    |    newOwner = address(0);
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |    require(msg.sender == newOwner);
    |    owner = newOwner;
  > |    newOwner = address(0);
    |    emit OwnershipTransferred(owner, newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |    require(tokens <= balances[msg.sender]);
    |    balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |    balances[to] = balances[to].add(tokens);
    |    emit Transfer(msg.sender, to, tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |        require(mintedAmount > 0);
    |        require(target != address(0));
  > |        balances[target] = balances[target].add(mintedAmount);
    |        _totalSupply = _totalSupply.add(mintedAmount);
    |        emit Transfer(owner, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'RoninX':
    |        require(target != address(0));
    |        balances[target] = balances[target].add(mintedAmount);
  > |        _totalSupply = _totalSupply.add(mintedAmount);
    |        emit Transfer(owner, target, mintedAmount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(238)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |  function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |      c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xf243b1ee8cac7a44e150cb29f633aae6d9d74987.sol(3)


