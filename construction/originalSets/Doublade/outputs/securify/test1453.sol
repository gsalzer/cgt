Processing contract: /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol:LoveToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol:PiaoPiaoToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.24;
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |pragma solidity ^0.4.24;
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(14)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(17)

[33mWarning[0m for LockedEther in contract 'PiaoPiaoToken':
    |}
    |
  > |contract PiaoPiaoToken is LoveToken {
    |    mapping (address => uint256) balances;
    |    string public name;                   
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'PiaoPiaoToken':
    |}
    |
  > |contract PiaoPiaoToken is LoveToken {
    |    mapping (address => uint256) balances;
    |    string public name;                   
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'PiaoPiaoToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'PiaoPiaoToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'PiaoPiaoToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'PiaoPiaoToken':
    |}
    |
  > |contract PiaoPiaoToken is LoveToken {
    |    mapping (address => uint256) balances;
    |    string public name;                   
  at /home/jiaming/mavs_srcs/contract@0x5c591aaa5b18d6411b01c9e6862b155f0433a6c2.sol(28)


