Processing contract: /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol:CybereitsTeamLock
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol:CybereitsToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CybereitsTeamLock':
    |}
    |
  > |contract CybereitsTeamLock {
    |
    |    event Unlock(address from, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(157)

[31mViolation[0m for MissingInputValidation in contract 'CybereitsTeamLock':
    |    }
    |
  > |    function unlock(address unlockAddr) external returns (bool) {
    |        require(allocations[unlockAddr] != 0);
    |        require(now >= frozen[unlockAddr]);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(191)

[33mWarning[0m for UnhandledException in contract 'CybereitsTeamLock':
    |
    |        var amount = allocations[unlockAddr];
  > |        assert(cre.transfer(unlockAddr, amount));
    |        allocations[unlockAddr] = 0;
    |        Unlock(unlockAddr, amount);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CybereitsTeamLock':
    |
    |        var amount = allocations[unlockAddr];
  > |        assert(cre.transfer(unlockAddr, amount));
    |        allocations[unlockAddr] = 0;
    |        Unlock(unlockAddr, amount);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'CybereitsTeamLock':
    |        var amount = allocations[unlockAddr];
    |        assert(cre.transfer(unlockAddr, amount));
  > |        allocations[unlockAddr] = 0;
    |        Unlock(unlockAddr, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(197)

[33mWarning[0m for LockedEther in contract 'CybereitsToken':
    |}
    |
  > |contract CybereitsToken is Token, Ownable {
    |    string public name = "Cybereits Token";
    |    string public symbol = "CRE";
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'CybereitsToken':
    |    require(balances[_to] < balances[_to].add(_value));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'CybereitsToken':
    |        assert(approvals[from][msg.sender] >= value);
    |        
  > |        approvals[from][msg.sender] = approvals[from][msg.sender].sub(value);
    |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'CybereitsToken':
    |
    |  function approve(address spender, uint256 value) public returns (bool) {
  > |        approvals[msg.sender][spender] = value;
    |        Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'CybereitsToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(48)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(48)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(3)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is ERC20 {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(balances[_to] < balances[_to].add(_value));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        assert(approvals[from][msg.sender] >= value);
    |        
  > |        approvals[from][msg.sender] = approvals[from][msg.sender].sub(value);
    |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |  function approve(address spender, uint256 value) public returns (bool) {
  > |        approvals[msg.sender][spender] = value;
    |        Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61f33da40594cec1e3dc900faf99f861d01e2e7d.sol(108)


