Processing contract: /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol:BatchedPayments
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BatchedPayments':
    |    //withdraw any eth inside
    |    function withdraw() public onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(67)

[33mWarning[0m for LockedEther in contract 'BatchedPayments':
    |The owner calls the multisend method to send out payments
    |*/
  > |contract BatchedPayments is Ownable {
    |
    |    mapping(bytes32 => bool) successfulPayments;
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(56)

[31mViolation[0m for TODAmount in contract 'BatchedPayments':
    |    //withdraw any eth inside
    |    function withdraw() public onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(67)

[33mWarning[0m for TODReceiver in contract 'BatchedPayments':
    |    //withdraw any eth inside
    |    function withdraw() public onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(67)

[33mWarning[0m for UnhandledException in contract 'BatchedPayments':
    |    //withdraw any eth inside
    |    function withdraw() public onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(67)

[33mWarning[0m for UnhandledException in contract 'BatchedPayments':
    |    returns (bool)
    |    {
  > |     return ERC20(_tokenAddr).transfer(dest, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(74)

[33mWarning[0m for UnhandledException in contract 'BatchedPayments':
    |        uint256 i = 0;
    |        while (i < dests.length) {
  > |           require(ERC20(_tokenAddr).transfer(dests[i], values[i]));
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BatchedPayments':
    |    //withdraw any eth inside
    |    function withdraw() public onlyOwner {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(67)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BatchedPayments':
    |    returns (bool)
    |    {
  > |     return ERC20(_tokenAddr).transfer(dest, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BatchedPayments':
    |        uint256 i = 0;
    |        while (i < dests.length) {
  > |           require(ERC20(_tokenAddr).transfer(dests[i], values[i]));
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'BatchedPayments':
    |        }
    |
  > |        successfulPayments[paymentId] = true;
    |
    |        return (i);
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BatchedPayments':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(31)

[33mWarning[0m for LockedEther in contract 'Ownable':
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4a41e561e0463ee46504542c82ef8de9a6164d71.sol(31)


