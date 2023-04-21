Processing contract: /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol:BasicStandartToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol:SONTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicStandartToken':
    |}
    |
  > |contract BasicStandartToken is IERC20 {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicStandartToken':
    |        require(_value <= _balances[msg.sender]);
    |    
  > |        _balances[msg.sender] = _balances[msg.sender].sub(_value);
    |        _balances[_to] = _balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicStandartToken':
    |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        emit Transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicStandartToken':
    |        require(spender != address(0));
    |    
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicStandartToken':
    |        require(spender != address(0));
    |    
  > |        _allowed[msg.sender][spender] = (
    |          _allowed[msg.sender][spender].add(addedValue));
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicStandartToken':
    |    
    |        if (subtractedValue > oldValue) {
  > |            _allowed[msg.sender][spender] = 0;
    |        } else {
    |            _allowed[msg.sender][spender] = oldValue.sub(subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicStandartToken':
    |            _allowed[msg.sender][spender] = 0;
    |        } else {
  > |            _allowed[msg.sender][spender] = oldValue.sub(subtractedValue);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicStandartToken':
    |
    |    
  > |        _allowed[msg.sender][spender] = (
    |          _allowed[msg.sender][spender].sub(subtractedValue));
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(207)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public _owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public _owner;
    |    
    |  event OwnershipTransferred( 
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |  
  > |  function owner() public view returns(address) {
    |    return _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function isOwner() public view returns(bool) {
    |    return msg.sender == _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |  
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    _transferOwnership(newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |  
  > |  function _transferOwnership(address newOwner) internal {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(106)

[33mWarning[0m for LockedEther in contract 'SONTToken':
    |}
    |
  > |contract SONTToken is BasicStandartToken, Ownable  {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |        require(_value <= _balances[msg.sender]);
    |    
  > |        _balances[msg.sender] = _balances[msg.sender].sub(_value);
    |        _balances[_to] = _balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |    
    |        _balances[msg.sender] = _balances[msg.sender].sub(_value);
  > |        _balances[_to] = _balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |        require(value <= _allowed[from][msg.sender]);
    |    
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |    
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        emit Transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |        require(spender != address(0));
    |    
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |        require(spender != address(0));
    |    
  > |        _allowed[msg.sender][spender] = (
    |          _allowed[msg.sender][spender].add(addedValue));
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |    
    |        if (subtractedValue > oldValue) {
  > |            _allowed[msg.sender][spender] = 0;
    |        } else {
    |            _allowed[msg.sender][spender] = oldValue.sub(subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |            _allowed[msg.sender][spender] = 0;
    |        } else {
  > |            _allowed[msg.sender][spender] = oldValue.sub(subtractedValue);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |
    |    
  > |        _allowed[msg.sender][spender] = (
    |          _allowed[msg.sender][spender].sub(subtractedValue));
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'SONTToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(106)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xd90dd9aeff7a347112dd07a892a52dd2d5627877.sol(4)


