Processing contract: /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol:AirDrop
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'AirDrop':
    |      if((_address [i].balance == 0) && (this.balance >= _ethAmount))
    |      {
  > |        require(_address [i].send(_ethAmount));
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(73)

[33mWarning[0m for DAOConstantGas in contract 'AirDrop':
    |
    |  function transferEthToOnwer() onlyOwner public returns (bool) {
  > |    require(owner.send(this.balance));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(80)

[33mWarning[0m for LockedEther in contract 'AirDrop':
    |}
    |
  > |contract AirDrop is Ownable {
    |
    |  // This declares a state variable that would store the contract address
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(49)

[31mViolation[0m for TODAmount in contract 'AirDrop':
    |
    |  function transferEthToOnwer() onlyOwner public returns (bool) {
  > |    require(owner.send(this.balance));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(80)

[31mViolation[0m for TODReceiver in contract 'AirDrop':
    |
    |  function transferEthToOnwer() onlyOwner public returns (bool) {
  > |    require(owner.send(this.balance));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(80)

[33mWarning[0m for UnhandledException in contract 'AirDrop':
    |    {
    |      /* calling transfer function from contract */
  > |      tokenInstance.transfer(_address [i],_amount [i]);
    |      if((_address [i].balance == 0) && (this.balance >= _ethAmount))
    |      {
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(70)

[33mWarning[0m for UnhandledException in contract 'AirDrop':
    |      if((_address [i].balance == 0) && (this.balance >= _ethAmount))
    |      {
  > |        require(_address [i].send(_ethAmount));
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(73)

[33mWarning[0m for UnhandledException in contract 'AirDrop':
    |
    |  function transferEthToOnwer() onlyOwner public returns (bool) {
  > |    require(owner.send(this.balance));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(80)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AirDrop':
    |    {
    |      /* calling transfer function from contract */
  > |      tokenInstance.transfer(_address [i],_amount [i]);
    |      if((_address [i].balance == 0) && (this.balance >= _ethAmount))
    |      {
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(70)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AirDrop':
    |
    |  function transferEthToOnwer() onlyOwner public returns (bool) {
  > |    require(owner.send(this.balance));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'AirDrop':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(44)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2b89f45cc4ebbf11a36bdb4a4b24eada8dd30a7.sol(44)


