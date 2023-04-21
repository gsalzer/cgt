Processing contract: /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol:TokenTrancheWallet
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol:TrancheWallet
[33mWarning[0m for LockedEther in contract 'Owned':
    | *************************************************************************/
    |
  > |contract Owned is IOwned {
    |    address public owner;        
    |
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned is IOwned {
  > |    address public owner;        
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(44)

[33mWarning[0m for DAO in contract 'TokenTrancheWallet':
    |    /**@dev Returns current balance to be distributed to portions*/
    |    function currentBalance() internal constant returns(uint256) {
  > |        return token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(191)

[33mWarning[0m for DAO in contract 'TokenTrancheWallet':
    |    /**@dev Transfers given amount of currency to the beneficiary */
    |    function doTransfer(uint256 amount) internal {
  > |        require(token.transfer(beneficiary, amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(196)

[33mWarning[0m for LockedEther in contract 'TokenTrancheWallet':
    |
    |/**@dev Wallet that contains some amount of tokens and allows to withdraw it in small portions */
  > |contract TokenTrancheWallet is TrancheWallet {
    |
    |    /**@dev Token to be stored */
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |
    |    /**@dev Sets new beneficiary to receive funds */
  > |    function setBeneficiary(address newBeneficiary) public ownerOnly {
    |        beneficiary = newBeneficiary;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |    //Funds will be unlocked completely in a given amount of days 
    |    //Can be made only one time
  > |    function lock(uint256 lockPeriodInDays) public ownerOnly {
    |        require(lockStart == 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |
    |contract Owned is IOwned {
  > |    address public owner;        
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |/**@dev Distributes some amount of currency in small portions available to withdraw once in a period */
    |contract TrancheWallet is Owned {
  > |    address public beneficiary;         //funds are to withdraw to this account
    |    uint256 public tranchePeriodInDays; //one tranche 'cooldown' time
    |    uint256 public trancheAmountPct;    //one tranche amount 
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |contract TrancheWallet is Owned {
    |    address public beneficiary;         //funds are to withdraw to this account
  > |    uint256 public tranchePeriodInDays; //one tranche 'cooldown' time
    |    uint256 public trancheAmountPct;    //one tranche amount 
    |        
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |    address public beneficiary;         //funds are to withdraw to this account
    |    uint256 public tranchePeriodInDays; //one tranche 'cooldown' time
  > |    uint256 public trancheAmountPct;    //one tranche amount 
    |        
    |    uint256 public lockStart;           //when funds were locked
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |    uint256 public trancheAmountPct;    //one tranche amount 
    |        
  > |    uint256 public lockStart;           //when funds were locked
    |    uint256 public completeUnlockTime;  //when funds are unlocked completely
    |    uint256 public initialFunds;        //funds to divide into tranches
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |        
    |    uint256 public lockStart;           //when funds were locked
  > |    uint256 public completeUnlockTime;  //when funds are unlocked completely
    |    uint256 public initialFunds;        //funds to divide into tranches
    |    uint256 public tranchesSent;        //tranches already sent to beneficiary
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |    uint256 public lockStart;           //when funds were locked
    |    uint256 public completeUnlockTime;  //when funds are unlocked completely
  > |    uint256 public initialFunds;        //funds to divide into tranches
    |    uint256 public tranchesSent;        //tranches already sent to beneficiary
    |
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |    uint256 public completeUnlockTime;  //when funds are unlocked completely
    |    uint256 public initialFunds;        //funds to divide into tranches
  > |    uint256 public tranchesSent;        //tranches already sent to beneficiary
    |
    |    event Withdraw(uint256 amount, uint256 tranches);
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |
    |    /**@dev Sends available tranches to beneficiary account*/
  > |    function sendToBeneficiary() {
    |        uint256 amountToWithdraw;
    |        uint256 tranchesToSend;
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |
    |    /**@dev Calculates available amount to withdraw */
  > |    function amountAvailableToWithdraw() constant returns (uint256 amount, uint256 tranches) {        
    |        if (currentBalance() > 0) {
    |            if(now > completeUnlockTime) {
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |
    |    /**@dev Returns the size of one tranche */
  > |    function oneTrancheAmount() constant returns(uint256) {
    |        return trancheAmountPct * initialFunds / 100; 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |
    |    /**@dev Token to be stored */
  > |    IERC20Token public token;
    |
    |    function TokenTrancheWallet(
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |
    |    /**@dev Returns current balance to be distributed to portions*/
  > |    function currentBalance() internal constant returns(uint256) {
    |        return token.balanceOf(this);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrancheWallet':
    |
    |    /**@dev Transfers given amount of currency to the beneficiary */
  > |    function doTransfer(uint256 amount) internal {
    |        require(token.transfer(beneficiary, amount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(195)

[33mWarning[0m for UnhandledException in contract 'TokenTrancheWallet':
    |    /**@dev Returns current balance to be distributed to portions*/
    |    function currentBalance() internal constant returns(uint256) {
  > |        return token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(191)

[33mWarning[0m for UnhandledException in contract 'TokenTrancheWallet':
    |    /**@dev Transfers given amount of currency to the beneficiary */
    |    function doTransfer(uint256 amount) internal {
  > |        require(token.transfer(beneficiary, amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrancheWallet':
    |    /**@dev Returns current balance to be distributed to portions*/
    |    function currentBalance() internal constant returns(uint256) {
  > |        return token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrancheWallet':
    |    /**@dev Transfers given amount of currency to the beneficiary */
    |    function doTransfer(uint256 amount) internal {
  > |        require(token.transfer(beneficiary, amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTrancheWallet':
    |        require(lockStart == 0);
    |
  > |        initialFunds = currentBalance();//this.balance;
    |        lockStart = now;
    |        completeUnlockTime = lockPeriodInDays * 1 days + lockStart;
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTrancheWallet':
    |
    |        initialFunds = currentBalance();//this.balance;
  > |        lockStart = now;
    |        completeUnlockTime = lockPeriodInDays * 1 days + lockStart;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTrancheWallet':
    |        initialFunds = currentBalance();//this.balance;
    |        lockStart = now;
  > |        completeUnlockTime = lockPeriodInDays * 1 days + lockStart;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTrancheWallet':
    |        require(amountToWithdraw > 0);
    |
  > |        tranchesSent += tranchesToSend;
    |        doTransfer(amountToWithdraw);
    |
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrancheWallet':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrancheWallet':
    |    /**@dev Sets new beneficiary to receive funds */
    |    function setBeneficiary(address newBeneficiary) public ownerOnly {
  > |        beneficiary = newBeneficiary;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x700620683311f2d150974b4f262bacfcf7ff5d8d.sol(79)


