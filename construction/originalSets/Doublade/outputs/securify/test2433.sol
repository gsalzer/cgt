Processing contract: /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol:OwnedByWinsome
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol:WinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * Basic version of StandardToken, with no allowances
    | */
  > |contract BasicToken {
    |  using SafeMath for uint;
    |  event Transfer(address indexed from, address indexed to, uint value);
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(114)

[33mWarning[0m for LockedEther in contract 'OwnedByWinsome':
    |pragma solidity ^0.4.8;
    |
  > |contract OwnedByWinsome {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'OwnedByWinsome':
    |  }
    |
  > |  function allowWorker(address _new_worker) onlyOwner{
    |    allowedWorker[_new_worker] = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'OwnedByWinsome':
    |    allowedWorker[_new_worker] = true;
    |  }
  > |  function removeWorker(address _old_worker) onlyOwner{
    |    allowedWorker[_old_worker] = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'OwnedByWinsome':
    |    allowedWorker[_old_worker] = false;
    |  }
  > |  function changeOwner(address _new_owner) onlyOwner{
    |    owner = _new_owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'OwnedByWinsome':
    |contract OwnedByWinsome {
    |
  > |  address public owner;
    |  mapping (address => bool) allowedWorker;
    |
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedByWinsome':
    |
    |  function allowWorker(address _new_worker) onlyOwner{
  > |    allowedWorker[_new_worker] = true;
    |  }
    |  function removeWorker(address _old_worker) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedByWinsome':
    |  }
    |  function removeWorker(address _old_worker) onlyOwner{
  > |    allowedWorker[_old_worker] = false;
    |  }
    |  function changeOwner(address _new_owner) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedByWinsome':
    |  }
    |  function changeOwner(address _new_owner) onlyOwner{
  > |    owner = _new_owner;
    |  }
    |						    
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(21)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(44)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is BasicToken{
    |  
    |  event Approval(address indexed owner, address indexed spender, uint value);
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint _value) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(146)

[33mWarning[0m for LockedEther in contract 'WinToken':
    |
    |
  > |contract WinToken is StandardToken, OwnedByWinsome{
    |
    |  string public   name =           "Winsome.io Token";
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |
    |  function allowWorker(address _new_worker) onlyOwner{
  > |    allowedWorker[_new_worker] = true;
    |  }
    |  function removeWorker(address _old_worker) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |  }
    |  function removeWorker(address _old_worker) onlyOwner{
  > |    allowedWorker[_old_worker] = false;
    |  }
    |  function changeOwner(address _new_owner) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |  }
    |  function changeOwner(address _new_owner) onlyOwner{
  > |    owner = _new_owner;
    |  }
    |						    
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |
    |  function approve(address _spender, uint _value) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |
    |  function allowMinter(address _new_minter) onlyOwner{
  > |    allowedMinter[_new_minter] = true;
    |  }
    |  function removeMinter(address _old_minter) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'WinToken':
    |  }
    |  function removeMinter(address _old_minter) onlyOwner{
  > |    allowedMinter[_old_minter] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9e3f0fc2a9ea1ec8d9e51a7a34c20b777021b030.sol(174)


