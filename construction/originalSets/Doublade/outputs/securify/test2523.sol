Processing contract: /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol:Lambda
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol:LambdaLock
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol:lambdaPrivate
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Lambda':
    |
    |
  > |contract Lambda is ERC20, Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Lambda':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Lambda':
    |    require(_spender != address(0));
    |    require(allowed[msg.sender][_spender] ==_fromValue);
  > |    allowed[msg.sender][_spender] = _toValue;
    |    emit Approval(msg.sender, _spender, _toValue);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'Lambda':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Lambda':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Lambda':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Lambda':
    |
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Paused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Lambda':
    |
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpaused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(138)

[33mWarning[0m for LockedEther in contract 'LambdaLock':
    |
    |
  > |contract LambdaLock {
    |    using SafeMath for uint256;
    |    Lambda internal LambdaToken;
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(212)

[33mWarning[0m for UnhandledException in contract 'LambdaLock':
    |        
    |                    uint256 amount = cur_claim.pct*(10**18);
  > |                    require(LambdaToken.transfer(msg.sender, amount));
    |                    beneficiaryClaims[i].claimed = true;
    |                    emit Claimed(msg.sender, amount, block.timestamp);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LambdaLock':
    |        
    |                    uint256 amount = cur_claim.pct*(10**18);
  > |                    require(LambdaToken.transfer(msg.sender, amount));
    |                    beneficiaryClaims[i].claimed = true;
    |                    emit Claimed(msg.sender, amount, block.timestamp);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'LambdaLock':
    |                    uint256 amount = cur_claim.pct*(10**18);
    |                    require(LambdaToken.transfer(msg.sender, amount));
  > |                    beneficiaryClaims[i].claimed = true;
    |                    emit Claimed(msg.sender, amount, block.timestamp);
    |                }
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(248)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(110)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Paused();
    |  event Unpaused();
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpaused();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    emit Paused();
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    emit Unpaused();
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    emit Paused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    emit Unpaused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(138)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(8)

[33mWarning[0m for LockedEther in contract 'lambdaPrivate':
    |
    |
  > |contract lambdaPrivate is LambdaLock {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(266)

[33mWarning[0m for UnhandledException in contract 'lambdaPrivate':
    |        
    |                    uint256 amount = cur_claim.pct*(10**18);
  > |                    require(LambdaToken.transfer(msg.sender, amount));
    |                    beneficiaryClaims[i].claimed = true;
    |                    emit Claimed(msg.sender, amount, block.timestamp);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'lambdaPrivate':
    |        
    |                    uint256 amount = cur_claim.pct*(10**18);
  > |                    require(LambdaToken.transfer(msg.sender, amount));
    |                    beneficiaryClaims[i].claimed = true;
    |                    emit Claimed(msg.sender, amount, block.timestamp);
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'lambdaPrivate':
    |                    uint256 amount = cur_claim.pct*(10**18);
    |                    require(LambdaToken.transfer(msg.sender, amount));
  > |                    beneficiaryClaims[i].claimed = true;
    |                    emit Claimed(msg.sender, amount, block.timestamp);
    |                }
  at /home/jiaming/mavs_srcs/contract@0xa555042f07bfd19e251cc21c84c35725a47d4c66.sol(248)


