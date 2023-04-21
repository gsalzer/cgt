Processing contract: /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol:Lockable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol:YeedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Lockable':
    |    @author DongOk Peter Ryu - <odin@yggdrash.io>
    |*/
  > |contract Lockable {
    |    uint public creationTime;
    |    bool public lock;
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |    bool public tokenTransfer;
    |    address public owner;
  > |    mapping( address => bool ) public unlockaddress;
    |    // lockaddress List
    |    mapping( address => bool ) public lockaddress;
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |    mapping( address => bool ) public unlockaddress;
    |    // lockaddress List
  > |    mapping( address => bool ) public lockaddress;
    |
    |    // LOCK EVENT
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |
    |    // Lock Address
  > |    function lockAddress(address target, bool status)
    |    external
    |    isOwner
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |
    |    // UnLock Address
  > |    function unlockAddress(address target, bool status)
    |    external
    |    isOwner
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |*/
    |contract Lockable {
  > |    uint public creationTime;
    |    bool public lock;
    |    bool public tokenTransfer;
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |contract Lockable {
    |    uint public creationTime;
  > |    bool public lock;
    |    bool public tokenTransfer;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    uint public creationTime;
    |    bool public lock;
  > |    bool public tokenTransfer;
    |    address public owner;
    |    mapping( address => bool ) public unlockaddress;
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    bool public lock;
    |    bool public tokenTransfer;
  > |    address public owner;
    |    mapping( address => bool ) public unlockaddress;
    |    // lockaddress List
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |    {
    |        require(owner != target);
  > |        lockaddress[target] = status;
    |        Locked(target, status);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |    isOwner
    |    {
  > |        unlockaddress[target] = status;
    |        Unlocked(target, status);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(83)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(88)

[33mWarning[0m for LockedEther in contract 'YeedToken':
    |    @author DongOk Peter Ryu - <odin@yggdrash.io>
    |*/
  > |contract YeedToken is ERC20, Lockable {
    |
    |    // ADD INFORMATION
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'YeedToken':
    |        require( _balances[msg.sender] >= value );
    |
  > |        _balances[msg.sender] = _balances[msg.sender].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        Transfer( msg.sender, to, value );
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'YeedToken':
    |        require( _approvals[from][msg.sender] >= value );
    |        // transfer and return true
  > |        _approvals[from][msg.sender] = _approvals[from][msg.sender].sub(value);
    |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'YeedToken':
    |    checkLock
    |    returns (bool success) {
  > |        _approvals[msg.sender][spender] = value;
    |        Approval( msg.sender, spender, value );
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'YeedToken':
    |        require( _balances[msg.sender] >= tokensAmount );
    |
  > |        _balances[msg.sender] = _balances[msg.sender].sub(tokensAmount);
    |        _supply = _supply.sub(tokensAmount);
    |        TokenBurned(msg.sender, tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'YeedToken':
    |    {
    |        require(owner != target);
  > |        lockaddress[target] = status;
    |        Locked(target, status);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'YeedToken':
    |    isOwner
    |    {
  > |        unlockaddress[target] = status;
    |        Unlocked(target, status);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'YeedToken':
    |    onlyFromWallet
    |    {
  > |        tokenTransfer = true;
    |        TokenTransfer();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'YeedToken':
    |    onlyFromWallet
    |    {
  > |        tokenTransfer = false;
    |        TokenTransfer();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f7a4bac3315b5082f793161a22e26666d22717f.sol(244)


