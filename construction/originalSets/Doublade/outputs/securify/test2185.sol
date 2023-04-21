Processing contract: /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol:BubbleToneToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BubbleToneToken':
    | *   @dev Universal Bonus Token contract
    | */
  > |contract BubbleToneToken is ERC20 {
    |    using SafeMath for uint;
    |    string public name = "Universal Bonus Token | t.me/bubbletonebot";
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(67)

[33mWarning[0m for UnhandledException in contract 'BubbleToneToken':
    |        onlyOwner 
    |        returns (bool success) {
  > |        return ERC20(_token).transfer(owner, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BubbleToneToken':
    |        onlyOwner 
    |        returns (bool success) {
  > |        return ERC20(_token).transfer(owner, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'BubbleToneToken':
    |        require(!tokensAreFrozen);
    |        require(_to != address(0) && _to != address(this));
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'BubbleToneToken':
    |        require(!tokensAreFrozen);
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'BubbleToneToken':
    |    function approve(address _spender, uint _amount) public returns (bool) {
    |        require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BubbleToneToken':
    |    function addManager(address _manager) onlyOwner external {
    |        require(!isManager[_manager]);
  > |        isManager[_manager] = true;
    |        ManagerAdded(_manager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BubbleToneToken':
    |    function removeManager(address _manager) onlyOwner external {
    |        require(isManager[_manager]);
  > |        isManager[_manager] = false;
    |        ManagerRemoved(_manager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'BubbleToneToken':
    |    */
    |    function unfreeze() external onlyOwner {
  > |       tokensAreFrozen = false;
    |       Defrosted(now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BubbleToneToken':
    |    */
    |    function freeze() external onlyOwner {
  > |       tokensAreFrozen = true;
    |       Frosted(now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(228)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |
    |  function mul(uint a, uint b) internal constant returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x8e4fbe2673e154fe9399166e03e18f87a5754420.sol(10)


