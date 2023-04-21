Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol:BKCToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BKCToken':
    |}
    |
  > |contract BKCToken{
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'BKCToken':
    |}
    |
  > |contract BKCToken{
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |    function addSupply(uint256 _addSupply)  onlyOwner public returns (bool){
    |        require(_addSupply>0);
  > |        balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender],_addSupply);
    |        totalSupply = SafeMath.safeAdd(totalSupply,_addSupply);
    |        emit AddSupply(msg.sender,_addSupply);
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |        require(_addSupply>0);
    |        balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender],_addSupply);
  > |        totalSupply = SafeMath.safeAdd(totalSupply,_addSupply);
    |        emit AddSupply(msg.sender,_addSupply);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |    function burnSupply(uint256 supply) onlyOwner public returns (bool){
    |        require(supply>0);
  > |        balanceOf[owner] = SafeMath.safeSub(balanceOf[owner],supply);
    |        totalSupply = SafeMath.safeSub(totalSupply,supply);
    |        emit BurnSupply(msg.sender,supply);
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |        require(supply>0);
    |        balanceOf[owner] = SafeMath.safeSub(balanceOf[owner],supply);
  > |        totalSupply = SafeMath.safeSub(totalSupply,supply);
    |        emit BurnSupply(msg.sender,supply);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |    function movePermission(address to) onlyOwner public returns (bool){
    |       require(movePermissionStat);
  > |       balanceOf[to] = SafeMath.safeAdd(balanceOf[to],balanceOf[owner]);
    |       balanceOf[owner] = 0;
    |       owner = to;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |       require(movePermissionStat);
    |       balanceOf[to] = SafeMath.safeAdd(balanceOf[to],balanceOf[owner]);
  > |       balanceOf[owner] = 0;
    |       owner = to;
    |       emit MovePermission(msg.sender,to);
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |       balanceOf[to] = SafeMath.safeAdd(balanceOf[to],balanceOf[owner]);
    |       balanceOf[owner] = 0;
  > |       owner = to;
    |       emit MovePermission(msg.sender,to);
    |       return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |        require(to != 0x0 && to != owner && _value > 0) ;
    |        /* banlanceof */
  > |        balanceOf[to] = SafeMath.safeSub(balanceOf[to],_value);
    |        freezeOf[to] = SafeMath.safeAdd(freezeOf[to],_value);
    |        emit Freeze(to,_value);
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |        /* banlanceof */
    |        balanceOf[to] = SafeMath.safeSub(balanceOf[to],_value);
  > |        freezeOf[to] = SafeMath.safeAdd(freezeOf[to],_value);
    |        emit Freeze(to,_value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |    function unFreeze(address to,uint256 _value) onlyOwner public returns (bool) {
    |       require(to != 0x0 && to != owner && _value > 0);
  > |       freezeOf[to] = SafeMath.safeSub(freezeOf[to],_value);
    |       balanceOf[to] = SafeMath.safeAdd(balanceOf[to],_value);
    |       emit Unfreeze(to,_value);
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |       require(to != 0x0 && to != owner && _value > 0);
    |       freezeOf[to] = SafeMath.safeSub(freezeOf[to],_value);
  > |       balanceOf[to] = SafeMath.safeAdd(balanceOf[to],_value);
    |       emit Unfreeze(to,_value);
    |       return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |       require (_to != 0x0 && _value > 0 ) ;
    |       require (balanceOf[msg.sender] >= _value) ;
  > |       balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);
    |       balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);
    |       emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |       require (balanceOf[msg.sender] >= _value) ;
    |       balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);
  > |       balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);
    |       emit Transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |    function approve(address _spender, uint256 _value)  public returns (bool) {
    |        require ( _spender!=0x0 && _value > 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender,_spender,_value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |        require(_to != 0x0 && _value > 0);
    |        require( !isLockTransfer && !lockOf[_from] && balanceOf[_from] >= _value && _value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |        require( !isLockTransfer && !lockOf[_from] && balanceOf[_from] >= _value && _value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |}
    |
  > |contract BKCToken{
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |    /* setter MovePermissionStat */
    |    function setMovePermissionStat(bool status) onlyOwner public {
  > |       movePermissionStat = status;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |
    |    function lockAccount(address to) onlyOwner public returns (bool){
  > |       lockOf[to] = true;
    |       return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |
    |    function unlockAccount(address to) onlyOwner public returns (bool){
  > |       lockOf[to] = false;
    |       return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |
    |    function lockTransfer() onlyOwner public returns (bool){
  > |       isLockTransfer = true;
    |       return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'BKCToken':
    |
    |    function unlockTransfer() onlyOwner public returns (bool){
  > |       isLockTransfer = false;
    |       return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(187)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |  function safeMul(uint256 a, uint256 b)  internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x2dd6cc304aa5113747ed67967a41ca0918c88dae.sol(7)


