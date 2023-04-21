Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol:ERC918Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol:MintHelper
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'MintHelper':
    |    public onlyOwner
    |    {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(200)

[33mWarning[0m for LockedEther in contract 'MintHelper':
    |The owner calls the multisend method to send out payments
    |*/
  > |contract MintHelper is Ownable {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(109)

[31mViolation[0m for TODAmount in contract 'MintHelper':
    |    public onlyOwner
    |    {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(200)

[33mWarning[0m for TODReceiver in contract 'MintHelper':
    |    public onlyOwner
    |    {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(200)

[33mWarning[0m for UnhandledException in contract 'MintHelper':
    |    {
    |      //identify the rewards that will be won and how to split them up
  > |      uint totalReward = ERC918Interface(mintableToken).getMiningReward();
    |
    |      uint minterReward = totalReward.mul(minterFeePercent).div(100);
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(178)

[33mWarning[0m for UnhandledException in contract 'MintHelper':
    |
    |      // get paid in new tokens
  > |      require(ERC918Interface(mintableToken).mint(nonce, challenge_digest));
    |
    |      //transfer the tokens to the correct wallets
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(184)

[33mWarning[0m for UnhandledException in contract 'MintHelper':
    |
    |      //transfer the tokens to the correct wallets
  > |      require(ERC20Interface(mintableToken).transfer(minterWallet, minterReward));
    |      require(ERC20Interface(mintableToken).transfer(payoutsWallet, payoutReward));
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(187)

[33mWarning[0m for UnhandledException in contract 'MintHelper':
    |      //transfer the tokens to the correct wallets
    |      require(ERC20Interface(mintableToken).transfer(minterWallet, minterReward));
  > |      require(ERC20Interface(mintableToken).transfer(payoutsWallet, payoutReward));
    |
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(188)

[33mWarning[0m for UnhandledException in contract 'MintHelper':
    |    public onlyOwner
    |    {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(200)

[33mWarning[0m for UnhandledException in contract 'MintHelper':
    |    returns (bool)
    |    {
  > |     return ERC20Interface(_tokenAddr).transfer(dest, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(208)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintHelper':
    |    {
    |      //identify the rewards that will be won and how to split them up
  > |      uint totalReward = ERC918Interface(mintableToken).getMiningReward();
    |
    |      uint minterReward = totalReward.mul(minterFeePercent).div(100);
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintHelper':
    |
    |      // get paid in new tokens
  > |      require(ERC918Interface(mintableToken).mint(nonce, challenge_digest));
    |
    |      //transfer the tokens to the correct wallets
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintHelper':
    |
    |      //transfer the tokens to the correct wallets
  > |      require(ERC20Interface(mintableToken).transfer(minterWallet, minterReward));
    |      require(ERC20Interface(mintableToken).transfer(payoutsWallet, payoutReward));
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintHelper':
    |      //transfer the tokens to the correct wallets
    |      require(ERC20Interface(mintableToken).transfer(minterWallet, minterReward));
  > |      require(ERC20Interface(mintableToken).transfer(payoutsWallet, payoutReward));
    |
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintHelper':
    |    public onlyOwner
    |    {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintHelper':
    |    returns (bool)
    |    {
  > |     return ERC20Interface(_tokenAddr).transfer(dest, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'MintHelper':
    |The owner calls the multisend method to send out payments
    |*/
  > |contract MintHelper is Ownable {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'MintHelper':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MintHelper':
    |The owner calls the multisend method to send out payments
    |*/
  > |contract MintHelper is Ownable {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'MintHelper':
    |    returns (bool)
    |    {
  > |      mintableToken = mToken;
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'MintHelper':
    |    returns (bool)
    |    {
  > |      payoutsWallet = pWallet;
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'MintHelper':
    |    returns (bool)
    |    {
  > |      minterWallet = mWallet;
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'MintHelper':
    |    {
    |      require(fee >= 0 && fee <= 100);
  > |      minterFeePercent = fee;
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(161)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(73)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function add(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0x4fc3ca73deffd625240d2285d44d71d8cebce376.sol(5)


