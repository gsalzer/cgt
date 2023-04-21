Processing contract: /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol:LYToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol:StandardToken
[33mWarning[0m for LockedEther in contract 'Controlled':
    | 
    |//代币的控制合约
  > |contract Controlled is Owned{
    | 
    |	//创世vip
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    | 
    |	//设置transferEnabled值
  > |    function enableTransfer(bool _enable) public onlyOwner returns (bool success){
    |        transferEnabled=_enable;
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    | 
    |	//设置lockFlag值
  > |    function disableLock(bool _enable) public onlyOwner returns (bool success){
    |        lockFlag=_enable;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    | 
    |	//设置vip用户
  > |    function setExclude(address _addr,bool _enable) public onlyOwner returns (bool success){
    |        exclude[_addr]=_enable;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    | 
    |	//解锁_addr用户
  > |    function removeLock(address _addr) public onlyOwner returns (bool success){
    |        locked[_addr]=false;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    | 
    |	//权力所有者
  > |    address public owner;
    | 
    |	//合约创建的时候执行，执行合约的人是第一个owner
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    | 
    |    //现任owner把所有权交给新的owner(需要新的owner调用acceptOwnership方法才会生效)
  > |    function changeOwner(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    | 
    |    //新的owner接受所有权,权力交替正式生效
  > |    function acceptOwnership() public{
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    | 
    |    // 控制代币是否可以交易，true代表可以(exclude里的账户不受此限制，具体实现在下面的transferAllowed里)
  > |    bool public transferEnabled = true;
    | 
    |    // 是否启用账户锁定功能，true代表启用
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    | 
    |	// 把_addr加到锁定账户里，拉黑名单。。。
  > |    function addLock(address _addr) public onlyOwner returns (bool success){
    |        require(_addr!=msg.sender);
    |        locked[_addr]=true;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    function changeOwner(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |	//设置transferEnabled值
    |    function enableTransfer(bool _enable) public onlyOwner returns (bool success){
  > |        transferEnabled=_enable;
    |		return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |	//设置lockFlag值
    |    function disableLock(bool _enable) public onlyOwner returns (bool success){
  > |        lockFlag=_enable;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    function addLock(address _addr) public onlyOwner returns (bool success){
    |        require(_addr!=msg.sender);
  > |        locked[_addr]=true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |	//设置vip用户
    |    function setExclude(address _addr,bool _enable) public onlyOwner returns (bool success){
  > |        exclude[_addr]=_enable;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |	//解锁_addr用户
    |    function removeLock(address _addr) public onlyOwner returns (bool success){
  > |        locked[_addr]=false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(141)

[33mWarning[0m for LockedEther in contract 'LYToken':
    | 
    |//端午节，代币离骚
  > |contract LYToken is StandardToken,Controlled {
    | 
    |	//账户集合
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |		require(_value <= balanceOf[msg.sender]);
    | 
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    | 
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |    function changeOwner(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |	//设置transferEnabled值
    |    function enableTransfer(bool _enable) public onlyOwner returns (bool success){
  > |        transferEnabled=_enable;
    |		return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |	//设置lockFlag值
    |    function disableLock(bool _enable) public onlyOwner returns (bool success){
  > |        lockFlag=_enable;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |    function addLock(address _addr) public onlyOwner returns (bool success){
    |        require(_addr!=msg.sender);
  > |        locked[_addr]=true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |	//设置vip用户
    |    function setExclude(address _addr,bool _enable) public onlyOwner returns (bool success){
  > |        exclude[_addr]=_enable;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LYToken':
    |	//解锁_addr用户
    |    function removeLock(address _addr) public onlyOwner returns (bool success){
  > |        locked[_addr]=false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(141)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |//设置代币控制合约的管理员
  > |contract Owned {
    | 
    |    // modifier(条件)，表示必须是权力所有者才能do something，类似administrator的意思
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    | 
    |	//权力所有者
  > |    address public owner;
    | 
    |	//合约创建的时候执行，执行合约的人是第一个owner
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    | 
    |    //现任owner把所有权交给新的owner(需要新的owner调用acceptOwnership方法才会生效)
  > |    function changeOwner(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    | 
    |    //新的owner接受所有权,权力交替正式生效
  > |    function acceptOwnership() public{
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function changeOwner(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |   防止整数溢出问题
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5b58fa4a59f6b7b175711a0a62989c57c4bb30fe.sol(7)


