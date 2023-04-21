Processing contract: /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol:CrowdFunding
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        pendingOwner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |    address public pendingOwner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |     * @dev Allows the pendingOwner address to finalize the transfer.
    |     */
  > |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(110)

[31mViolation[0m for DAOConstantGas in contract 'CrowdFunding':
    |        // transfering the donator funds to the beneficiary
    |        weiRaised = weiRaised.add(weiAmount);
  > |        walletBeneficiary.transfer(weiAmount);
    |        DonateAdded(msg.sender, walletBeneficiary, weiAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(237)

[31mViolation[0m for DAOConstantGas in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(258)

[33mWarning[0m for DAOConstantGas in contract 'CrowdFunding':
    |        if(this.balance >= weiAmount) {
    |            weiRaised = weiRaised.add(weiAmount);
  > |            walletBeneficiary.transfer(weiAmount);
    |            DonationMatched(address(this), walletBeneficiary, weiAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(243)

[33mWarning[0m for DAOConstantGas in contract 'CrowdFunding':
    |            weiRaised = weiRaised.add(this.balance);
    |            // if not enough funds in the owner contract - transfer the remaining balance
  > |            walletBeneficiary.transfer(this.balance);
    |            DonationMatched(address(this), walletBeneficiary, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(249)

[33mWarning[0m for LockedEther in contract 'CrowdFunding':
    |
    |
  > |contract CrowdFunding is Claimable, TokenHolder {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(173)

[31mViolation[0m for TODAmount in contract 'CrowdFunding':
    |            weiRaised = weiRaised.add(this.balance);
    |            // if not enough funds in the owner contract - transfer the remaining balance
  > |            walletBeneficiary.transfer(this.balance);
    |            DonationMatched(address(this), walletBeneficiary, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(249)

[31mViolation[0m for TODAmount in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(258)

[33mWarning[0m for TODReceiver in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(258)

[33mWarning[0m for UnhandledException in contract 'CrowdFunding':
    |        require(_to != address(0x0));
    |        require(_to != address(this));
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(167)

[33mWarning[0m for UnhandledException in contract 'CrowdFunding':
    |        // transfering the donator funds to the beneficiary
    |        weiRaised = weiRaised.add(weiAmount);
  > |        walletBeneficiary.transfer(weiAmount);
    |        DonateAdded(msg.sender, walletBeneficiary, weiAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(237)

[33mWarning[0m for UnhandledException in contract 'CrowdFunding':
    |        if(this.balance >= weiAmount) {
    |            weiRaised = weiRaised.add(weiAmount);
  > |            walletBeneficiary.transfer(weiAmount);
    |            DonationMatched(address(this), walletBeneficiary, weiAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(243)

[33mWarning[0m for UnhandledException in contract 'CrowdFunding':
    |            weiRaised = weiRaised.add(this.balance);
    |            // if not enough funds in the owner contract - transfer the remaining balance
  > |            walletBeneficiary.transfer(this.balance);
    |            DonationMatched(address(this), walletBeneficiary, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(249)

[33mWarning[0m for UnhandledException in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(258)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdFunding':
    |        require(_to != address(0x0));
    |        require(_to != address(this));
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |        
    |        // transfering the donator funds to the beneficiary
  > |        weiRaised = weiRaised.add(weiAmount);
    |        walletBeneficiary.transfer(weiAmount);
    |        DonateAdded(msg.sender, walletBeneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |        // transfering the owner funds to the beneficiary with the same amount of the donator
    |        if(this.balance >= weiAmount) {
  > |            weiRaised = weiRaised.add(weiAmount);
    |            walletBeneficiary.transfer(weiAmount);
    |            DonationMatched(address(this), walletBeneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |        } else {
    |
  > |            weiRaised = weiRaised.add(this.balance);
    |            // if not enough funds in the owner contract - transfer the remaining balance
    |            walletBeneficiary.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |        ClaimBalance(beneficiary, weiAmount);
    |
  > |        isFinalized = true;
    |
    |        Finalized();
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(262)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(8)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |    public
    |    onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(69)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        require(_to != address(0x0));
    |        require(_to != address(this));
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        require(_to != address(0x0));
    |        require(_to != address(this));
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0236da65d76ae844abb81814cebb6fe9b001d587.sol(72)


