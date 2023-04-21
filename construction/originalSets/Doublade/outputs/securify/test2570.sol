Processing contract: /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol:Multisend
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Multisend':
    |    
    |    function withdraw() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(58)

[33mWarning[0m for LockedEther in contract 'Multisend':
    |
    |
  > |contract Multisend is Ownable {
    |    
    |    function withdraw() onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(55)

[31mViolation[0m for TODAmount in contract 'Multisend':
    |    
    |    function withdraw() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(58)

[33mWarning[0m for TODReceiver in contract 'Multisend':
    |    
    |    function withdraw() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(58)

[33mWarning[0m for UnhandledException in contract 'Multisend':
    |    
    |    function withdraw() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(58)

[33mWarning[0m for UnhandledException in contract 'Multisend':
    |    onlyOwner
    |    {
  > |      ERC20(_tokenAddr).transfer(dest, value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(64)

[33mWarning[0m for UnhandledException in contract 'Multisend':
    |        uint256 i = 0;
    |        while (i < dests.length) {
  > |           ERC20(_tokenAddr).transfer(dests[i], values[i]);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(72)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Multisend':
    |    
    |    function withdraw() onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(58)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Multisend':
    |    onlyOwner
    |    {
  > |      ERC20(_tokenAddr).transfer(dest, value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(64)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Multisend':
    |        uint256 i = 0;
    |        while (i < dests.length) {
  > |           ERC20(_tokenAddr).transfer(dests[i], values[i]);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Multisend':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(33)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.19;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa83805864fa0d1db59814e23ff2c2a205534dd8c.sol(33)


