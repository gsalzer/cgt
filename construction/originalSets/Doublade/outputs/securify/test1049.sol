Processing contract: /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol:PlayerBook
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'NameFilter':
    |// File: contracts\utils\NameFilter.sol
    |
  > |library NameFilter {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(5)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(119)

[33mWarning[0m for DAOConstantGas in contract 'PlayerBook':
    |    function withdrawBalance(address _to) public onlyOwner {
    |      uint _amount = address(this).balance;
  > |      _to.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(184)

[33mWarning[0m for LockedEther in contract 'PlayerBook':
    |// File: contracts\PlayerBook.sol
    |
  > |contract PlayerBook is Ownable {
    |    using NameFilter for string;
    |
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(126)

[31mViolation[0m for TODAmount in contract 'PlayerBook':
    |    function withdrawBalance(address _to) public onlyOwner {
    |      uint _amount = address(this).balance;
  > |      _to.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(184)

[33mWarning[0m for TODReceiver in contract 'PlayerBook':
    |    function withdrawBalance(address _to) public onlyOwner {
    |      uint _amount = address(this).balance;
  > |      _to.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(184)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |    function withdrawBalance(address _to) public onlyOwner {
    |      uint _amount = address(this).balance;
  > |      _to.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |    function withdrawBalance(address _to) public onlyOwner {
    |      uint _amount = address(this).balance;
  > |      _to.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |pragma solidity ^0.4.24;
    |
  > |// File: contracts\utils\NameFilter.sol
    |
    |library NameFilter {
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |// File: contracts\PlayerBook.sol
    |
  > |contract PlayerBook is Ownable {
    |    using NameFilter for string;
    |
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x42c280319a20540d596e25d5355db8a2bfbac63f.sol(119)


