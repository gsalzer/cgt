Processing contract: /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol:IcxToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol:Lockable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol:Migrations
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IcxToken':
    |// ICON ICX Token
    |/// @author DongOk Ryu - <pop@theloop.co.kr>
  > |contract IcxToken is ERC20, Lockable {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'IcxToken':
    |        require( _balances[msg.sender] >= value );
    |
  > |        _balances[msg.sender] = _balances[msg.sender].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        Transfer( msg.sender, to, value );
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'IcxToken':
    |        require( _approvals[from][msg.sender] >= value );
    |        // transfer and return true
  > |        _approvals[from][msg.sender] = _approvals[from][msg.sender].sub(value);
    |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'IcxToken':
    |    checkLock
    |    returns (bool success) {
  > |        _approvals[msg.sender][spender] = value;
    |        Approval( msg.sender, spender, value );
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'IcxToken':
    |        require( _balances[msg.sender] >= tokensAmount );
    |
  > |        _balances[msg.sender] = _balances[msg.sender].sub(tokensAmount);
    |        _supply = _supply.sub(tokensAmount);
    |        TokenBurned(msg.sender, tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'IcxToken':
    |    {
    |        require(owner != target);
  > |        lockaddress[target] = status;
    |        Locked(target, status);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'IcxToken':
    |    isOwner
    |    {
  > |        unlockaddress[target] = status;
    |        Unlocked(target, status);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'IcxToken':
    |    external
    |    onlyFromWallet {
  > |        tokenTransfer = true;
    |        TokenTransfer();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'IcxToken':
    |    external
    |    onlyFromWallet {
  > |        tokenTransfer = false;
    |        TokenTransfer();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(249)

[33mWarning[0m for LockedEther in contract 'Lockable':
    |}
    |
  > |contract Lockable {
    |    uint public creationTime;
    |    bool public lock;
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |    bool public tokenTransfer;
    |    address public owner;
  > |    mapping( address => bool ) public unlockaddress;
    |    mapping( address => bool ) public lockaddress;
    |
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |    address public owner;
    |    mapping( address => bool ) public unlockaddress;
  > |    mapping( address => bool ) public lockaddress;
    |
    |    event Locked(address lockaddress,bool status);
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |
    |    // Lock Address
  > |    function lockAddress(address target, bool status)
    |    external
    |    isOwner
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |
    |    // UnLock Address
  > |    function unlockAddress(address target, bool status)
    |    external
    |    isOwner
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |
    |contract Lockable {
  > |    uint public creationTime;
    |    bool public lock;
    |    bool public tokenTransfer;
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |contract Lockable {
    |    uint public creationTime;
  > |    bool public lock;
    |    bool public tokenTransfer;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    uint public creationTime;
    |    bool public lock;
  > |    bool public tokenTransfer;
    |    address public owner;
    |    mapping( address => bool ) public unlockaddress;
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    bool public lock;
    |    bool public tokenTransfer;
  > |    address public owner;
    |    mapping( address => bool ) public unlockaddress;
    |    mapping( address => bool ) public lockaddress;
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |    {
    |        require(owner != target);
  > |        lockaddress[target] = status;
    |        Locked(target, status);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |    isOwner
    |    {
  > |        unlockaddress[target] = status;
    |        Unlocked(target, status);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(95)

[33mWarning[0m for LockedEther in contract 'Migrations':
    |pragma solidity ^0.4.11;
    |
  > |contract Migrations {
    |  address public owner;
    |  uint public last_completed_migration;
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Migrations':
    |  }
    |
  > |  function setCompleted(uint completed) restricted {
    |    last_completed_migration = completed;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Migrations':
    |
    |contract Migrations {
  > |  address public owner;
    |  uint public last_completed_migration;
    |
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Migrations':
    |contract Migrations {
    |  address public owner;
  > |  uint public last_completed_migration;
    |
    |  modifier restricted() {
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Migrations':
    |  }
    |
  > |  function upgrade(address new_address) restricted {
    |    Migrations upgraded = Migrations(new_address);
    |    upgraded.setCompleted(last_completed_migration);
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(19)

[33mWarning[0m for UnhandledException in contract 'Migrations':
    |  function upgrade(address new_address) restricted {
    |    Migrations upgraded = Migrations(new_address);
  > |    upgraded.setCompleted(last_completed_migration);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(21)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Migrations':
    |  function upgrade(address new_address) restricted {
    |    Migrations upgraded = Migrations(new_address);
  > |    upgraded.setCompleted(last_completed_migration);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'Migrations':
    |
    |  function setCompleted(uint completed) restricted {
  > |    last_completed_migration = completed;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(16)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xb5a5f22694352c15b00323844ad545abb2b11028.sol(100)


