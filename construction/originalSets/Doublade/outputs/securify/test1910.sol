Processing contract: /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol:Airdroster
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Airdroster':
    |}
    |
  > |contract Airdroster is ERC20, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdroster':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdroster':
    |}
    |
  > |contract Airdroster is ERC20, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdroster':
    |
    |    function transfer(address _to, uint256 _value) onlyPayloadSize(2 * 32) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdroster':
    |        if(transferIns[msg.sender].length > 0) delete transferIns[msg.sender];
    |        uint64 _now = uint64(now);
  > |        transferIns[msg.sender].push(transferInStruct(uint128(balances[msg.sender]),_now));
    |        transferIns[_to].push(transferInStruct(uint128(_value),_now));
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdroster':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        if(transferIns[_from].length > 0) delete transferIns[_from];
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdroster':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdroster':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(total);
    |        if(transferIns[msg.sender].length > 0) delete transferIns[msg.sender];
    |        if(balances[msg.sender] > 0) transferIns[msg.sender].push(transferInStruct(uint128(balances[msg.sender]),_now));
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdroster':
    |        balances[msg.sender] = balances[msg.sender].sub(total);
    |        if(transferIns[msg.sender].length > 0) delete transferIns[msg.sender];
  > |        if(balances[msg.sender] > 0) transferIns[msg.sender].push(transferInStruct(uint128(balances[msg.sender]),_now));
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(147)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(30)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7a4033a93885247a4292988a3c0c0e3c1cf55721.sol(3)


