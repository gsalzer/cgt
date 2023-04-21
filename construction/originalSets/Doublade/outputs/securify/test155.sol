Processing contract: /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol:LikerCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol:LockBalance
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'LikerCoin':
    |}
    |
  > |contract LikerCoin is Token, LockBalance {
    |
    |    function LikerCoin() public {
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |    function lock(address _owner) public onlyOwner returns (bool) {
    |        require(user[_owner].lock == false);
  > |        user[_owner].lock = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |    function unlock(address _owner) public onlyOwner returns (bool) {
    |        require(user[_owner].lock == true);
  > |        user[_owner].lock = false;
    |       return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |    function burn(address _to, uint256 _value) public onlyOwner returns (bool) {
    |        require(_value <= user[_to].balance);
  > |        user[_to].balance = user[_to].balance.sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(_value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |        require(_value <= user[_to].balance);
    |        user[_to].balance = user[_to].balance.sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(_value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |        validTransfer(msg.sender, _to, _value, false);
    |       
  > |        user[msg.sender].balance = user[msg.sender].balance.sub(_value);
    |        user[_to].balance = user[_to].balance.add(_value);
    |       
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |       
    |        user[msg.sender].balance = user[msg.sender].balance.sub(_value);
  > |        user[_to].balance = user[_to].balance.add(_value);
    |       
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
    |        require(_value > 0);
  > |        user[msg.sender].allowed[_spender] = _value; 
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |        require(_value <=  user[_from].allowed[msg.sender]);
    |
  > |        user[_from].balance = user[_from].balance.sub(_value);
    |        user[_to].balance = user[_to].balance.add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |
    |        user[_from].balance = user[_from].balance.sub(_value);
  > |        user[_to].balance = user[_to].balance.add(_value);
    |
    |        user[_from].allowed[msg.sender] = user[_from].allowed[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |        user[_to].balance = user[_to].balance.add(_value);
    |
  > |        user[_from].allowed[msg.sender] = user[_from].allowed[msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |        validTransfer(msg.sender, _to, _value, true);
    |
  > |        user[msg.sender].balance = user[msg.sender].balance.sub(_value);
    |        user[_to].balance = user[_to].balance.add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |
    |        user[msg.sender].balance = user[msg.sender].balance.sub(_value);
  > |        user[_to].balance = user[_to].balance.add(_value);
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |        validTransfer(_from, _to, _value, false);
    |       
  > |        user[_from].balance = user[_from].balance.sub(_value);
    |        user[_to].balance = user[_to].balance.add(_value);
    |       
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |       
    |        user[_from].balance = user[_from].balance.sub(_value);
  > |        user[_to].balance = user[_to].balance.add(_value);
    |       
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |    
    |    function finishRestore() public onlyOwner returns (bool) {
  > |        restoreFinished = true;
    |        RestoreFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |    
    |    function setLockUser(address _to, eLockType _lockType, uint256 _value, uint256 _endTime) internal {
  > |        lockUser[_to].lockType.push(uint256(_lockType));
    |        lockUser[_to].lockBalanceStandard.push(_value);
    |        lockUser[_to].startTime.push(now);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |    function setLockUser(address _to, eLockType _lockType, uint256 _value, uint256 _endTime) internal {
    |        lockUser[_to].lockType.push(uint256(_lockType));
  > |        lockUser[_to].lockBalanceStandard.push(_value);
    |        lockUser[_to].startTime.push(now);
    |        lockUser[_to].endTime.push(_endTime);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |        lockUser[_to].lockType.push(uint256(_lockType));
    |        lockUser[_to].lockBalanceStandard.push(_value);
  > |        lockUser[_to].startTime.push(now);
    |        lockUser[_to].endTime.push(_endTime);
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |        lockUser[_to].lockBalanceStandard.push(_value);
    |        lockUser[_to].startTime.push(now);
  > |        lockUser[_to].endTime.push(_endTime);
    |
    |        Lock(_to, _value, _endTime);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'LikerCoin':
    |    function clearLockUser(address _owner, uint _index) onlyOwner public {
    |        require(lockUser[_owner].endTime.length >_index);
  > |        lockUser[_owner].endTime[_index] = 0;
    |    }
    |        
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(278)

[31mViolation[0m for LockedEther in contract 'LockBalance':
    |}
    |
  > |contract LockBalance is Ownable {
    |    
    |    enum eLockType {None, Individual, GroupA, GroupB, GroupC, GroupD}
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'LockBalance':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'LockBalance':
    |}
    |
  > |contract LockBalance is Ownable {
    |    
    |    enum eLockType {None, Individual, GroupA, GroupB, GroupC, GroupD}
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'LockBalance':
    |           revert();
    |        } else {
  > |            lockInfo.lockTime.push(_second);
    |            lockInfo.lockPercent.push(_percent);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(294)

[31mViolation[0m for UnrestrictedWrite in contract 'LockBalance':
    |        } else {
    |            lockInfo.lockTime.push(_second);
  > |            lockInfo.lockPercent.push(_percent);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(295)

[31mViolation[0m for UnrestrictedWrite in contract 'LockBalance':
    |        if(isExists) {
    |            for(uint256 k = index; k < lockDate.lockTime.length - 1; k++){
  > |                lockDate.lockTime[k] = lockDate.lockTime[k + 1];
    |                lockDate.lockPercent[k] = lockDate.lockPercent[k + 1];
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'LockBalance':
    |            for(uint256 k = index; k < lockDate.lockTime.length - 1; k++){
    |                lockDate.lockTime[k] = lockDate.lockTime[k + 1];
  > |                lockDate.lockPercent[k] = lockDate.lockPercent[k + 1];
    |            }
    |            delete lockDate.lockTime[lockDate.lockTime.length - 1];
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(315)

[31mViolation[0m for UnrestrictedWrite in contract 'LockBalance':
    |                lockDate.lockPercent[k] = lockDate.lockPercent[k + 1];
    |            }
  > |            delete lockDate.lockTime[lockDate.lockTime.length - 1];
    |            lockDate.lockTime.length--;
    |            delete lockDate.lockPercent[lockDate.lockPercent.length - 1];
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(317)

[31mViolation[0m for UnrestrictedWrite in contract 'LockBalance':
    |            delete lockDate.lockTime[lockDate.lockTime.length - 1];
    |            lockDate.lockTime.length--;
  > |            delete lockDate.lockPercent[lockDate.lockPercent.length - 1];
    |            lockDate.lockPercent.length--;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'LockBalance':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'LockBalance':
    |    function clearLockUser(address _owner, uint _index) onlyOwner public {
    |        require(lockUser[_owner].endTime.length >_index);
  > |        lockUser[_owner].endTime[_index] = 0;
    |    }
    |        
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(278)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(42)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(69)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(3)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is ERC20, Pausable {
    |
    |    struct sUserInfo {
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function burn(address _to, uint256 _value) public onlyOwner returns (bool) {
    |        require(_value <= user[_to].balance);
  > |        user[_to].balance = user[_to].balance.sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(_value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <= user[_to].balance);
    |        user[_to].balance = user[_to].balance.sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(_value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        validTransfer(msg.sender, _to, _value, false);
    |       
  > |        user[msg.sender].balance = user[msg.sender].balance.sub(_value);
    |        user[_to].balance = user[_to].balance.add(_value);
    |       
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |       
    |        user[msg.sender].balance = user[msg.sender].balance.sub(_value);
  > |        user[_to].balance = user[_to].balance.add(_value);
    |       
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
    |        require(_value > 0);
  > |        user[msg.sender].allowed[_spender] = _value; 
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <=  user[_from].allowed[msg.sender]);
    |
  > |        user[_from].balance = user[_from].balance.sub(_value);
    |        user[_to].balance = user[_to].balance.add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        user[_from].balance = user[_from].balance.sub(_value);
  > |        user[_to].balance = user[_to].balance.add(_value);
    |
    |        user[_from].allowed[msg.sender] = user[_from].allowed[msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        user[_to].balance = user[_to].balance.add(_value);
    |
  > |        user[_from].allowed[msg.sender] = user[_from].allowed[msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        validTransfer(msg.sender, _to, _value, true);
    |
  > |        user[msg.sender].balance = user[msg.sender].balance.sub(_value);
    |        user[_to].balance = user[_to].balance.add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        user[msg.sender].balance = user[msg.sender].balance.sub(_value);
  > |        user[_to].balance = user[_to].balance.add(_value);
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        validTransfer(_from, _to, _value, false);
    |       
  > |        user[_from].balance = user[_from].balance.sub(_value);
    |        user[_to].balance = user[_to].balance.add(_value);
    |       
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |       
    |        user[_from].balance = user[_from].balance.sub(_value);
  > |        user[_to].balance = user[_to].balance.add(_value);
    |       
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function lock(address _owner) public onlyOwner returns (bool) {
    |        require(user[_owner].lock == false);
  > |        user[_owner].lock = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function unlock(address _owner) public onlyOwner returns (bool) {
    |        require(user[_owner].lock == true);
  > |        user[_owner].lock = false;
    |       return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    
    |    function finishRestore() public onlyOwner returns (bool) {
  > |        restoreFinished = true;
    |        RestoreFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a3f9678d6b631386c2dd3de8809b48b0d1bbd56.sol(195)


