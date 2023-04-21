Processing contract: /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol:CrowdFunding
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        pendingOwner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |    address public pendingOwner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |     * @dev Allows the pendingOwner address to finalize the transfer.
    |     */
  > |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(110)

[31mViolation[0m for DAOConstantGas in contract 'CrowdFunding':
    |        // transfering the donator funds to the beneficiary
    |        weiRaised = weiRaised.add(weiAmount);
  > |        walletBeneficiary.transfer(weiAmount);
    |        DonateAdded(msg.sender, walletBeneficiary, weiAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(178)

[31mViolation[0m for DAOConstantGas in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(200)

[33mWarning[0m for DAOConstantGas in contract 'CrowdFunding':
    |        if(this.balance >= weiAmount) {
    |            weiRaised = weiRaised.add(weiAmount);
  > |            walletBeneficiary.transfer(weiAmount);
    |            DonateAdded(address(this), walletBeneficiary, weiAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(184)

[33mWarning[0m for DAOConstantGas in contract 'CrowdFunding':
    |            weiRaised = weiRaised.add(this.balance);
    |            // if not enough funds in the owner contract - transfer the remaining balance
  > |            walletBeneficiary.transfer(this.balance);
    |            DonateAdded(address(this), walletBeneficiary, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(190)

[33mWarning[0m for LockedEther in contract 'CrowdFunding':
    |
    |
  > |contract CrowdFunding is Claimable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(116)

[31mViolation[0m for TODAmount in contract 'CrowdFunding':
    |            weiRaised = weiRaised.add(this.balance);
    |            // if not enough funds in the owner contract - transfer the remaining balance
  > |            walletBeneficiary.transfer(this.balance);
    |            DonateAdded(address(this), walletBeneficiary, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(190)

[31mViolation[0m for TODAmount in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(200)

[33mWarning[0m for TODReceiver in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(200)

[33mWarning[0m for UnhandledException in contract 'CrowdFunding':
    |        // transfering the donator funds to the beneficiary
    |        weiRaised = weiRaised.add(weiAmount);
  > |        walletBeneficiary.transfer(weiAmount);
    |        DonateAdded(msg.sender, walletBeneficiary, weiAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(178)

[33mWarning[0m for UnhandledException in contract 'CrowdFunding':
    |        if(this.balance >= weiAmount) {
    |            weiRaised = weiRaised.add(weiAmount);
  > |            walletBeneficiary.transfer(weiAmount);
    |            DonateAdded(address(this), walletBeneficiary, weiAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(184)

[33mWarning[0m for UnhandledException in contract 'CrowdFunding':
    |            weiRaised = weiRaised.add(this.balance);
    |            // if not enough funds in the owner contract - transfer the remaining balance
  > |            walletBeneficiary.transfer(this.balance);
    |            DonateAdded(address(this), walletBeneficiary, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(190)

[33mWarning[0m for UnhandledException in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdFunding':
    |
    |        uint256 weiAmount = this.balance;
  > |        beneficiary.transfer(weiAmount);
    |
    |        ClaimBalance(beneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |        
    |        // transfering the donator funds to the beneficiary
  > |        weiRaised = weiRaised.add(weiAmount);
    |        walletBeneficiary.transfer(weiAmount);
    |        DonateAdded(msg.sender, walletBeneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |        // transfering the owner funds to the beneficiary with the same amount of the donator
    |        if(this.balance >= weiAmount) {
  > |            weiRaised = weiRaised.add(weiAmount);
    |            walletBeneficiary.transfer(weiAmount);
    |            DonateAdded(address(this), walletBeneficiary, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(183)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |        } else {
    |
  > |            weiRaised = weiRaised.add(this.balance);
    |            // if not enough funds in the owner contract - transfer the remaining balance
    |            walletBeneficiary.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |     */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |    function claimOwnership() onlyPendingOwner public {
    |        OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |        OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdFunding':
    |
    |        claimBalanceByOwner(beneficiary);
  > |        isFinalized = true;
    |
    |        Finalized();
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(209)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xaf8112eba4743aa1884ea9275d6123b8003a2a03.sol(8)


