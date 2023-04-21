Processing contract: /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol:AbstractStarbaseCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol:AbstractStarbaseToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol:Certifier
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol:StarbaseCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol:StarbaseCrowdsaleContractW
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol:StarbaseEarlyPurchase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol:StarbaseEarlyPurchaseAmendment
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(70)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(7)

[33mWarning[0m for LockedEther in contract 'StarbaseEarlyPurchase':
    |/// @title EarlyPurchase contract - Keep track of purchased amount by Early Purchasers
    |/// @author Starbase PTE. LTD. - <info@starbase.co>
  > |contract StarbaseEarlyPurchase {
    |    /*
    |     *  Constants
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(93)

[33mWarning[0m for UnhandledException in contract 'StarbaseEarlyPurchase':
    |
    |    modifier onlyBeforeCrowdsale() {
  > |        assert(address(starbaseCrowdsale) == address(0) || starbaseCrowdsale.startDate() == 0);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StarbaseEarlyPurchase':
    |
    |    modifier onlyBeforeCrowdsale() {
  > |        assert(address(starbaseCrowdsale) == address(0) || starbaseCrowdsale.startDate() == 0);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchase':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchase':
    |        assert(purchasedAt != 0 || purchasedAt <= now);
    |
  > |        earlyPurchases.push(EarlyPurchase(purchaser, amount, purchasedAt));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchase':
    |        returns (bool)
    |    {
  > |        earlyPurchaseClosedAt = now;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchase':
    |    {
    |        if (address(starbaseCrowdsale) == 0) {
  > |            starbaseCrowdsale = AbstractStarbaseCrowdsale(starbaseCrowdsaleAddress);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(241)

[33mWarning[0m for LockedEther in contract 'StarbaseEarlyPurchaseAmendment':
    |/// @title EarlyPurchaseAmendment contract - Amend early purchase records of the original contract
    |/// @author Starbase PTE. LTD. - <support@starbase.co>
  > |contract StarbaseEarlyPurchaseAmendment {
    |    /*
    |     *  Events
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(257)

[33mWarning[0m for UnhandledException in contract 'StarbaseEarlyPurchaseAmendment':
    |
    |    modifier onlyBeforeCrowdsale() {
  > |        assert(address(starbaseCrowdsale) == address(0) || starbaseCrowdsale.startDate() == 0);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(292)

[33mWarning[0m for UnhandledException in contract 'StarbaseEarlyPurchaseAmendment':
    |        returns (address purchaser, uint256 amount, uint256 purchasedAt)
    |    {
  > |        return starbaseEarlyPurchase.earlyPurchases(earlyPurchaseIndex);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(315)

[33mWarning[0m for UnhandledException in contract 'StarbaseEarlyPurchaseAmendment':
    |
    |        starbaseEarlyPurchase = StarbaseEarlyPurchase(starbaseEarlyPurchaseAddress);
  > |        assert(starbaseEarlyPurchase.earlyPurchaseClosedAt() != 0); // the early purchase must be closed
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(495)

[33mWarning[0m for UnhandledException in contract 'StarbaseEarlyPurchaseAmendment':
    |    {
    |        var (purchaser, amount, purchasedAt) =
  > |            starbaseEarlyPurchase.earlyPurchases(earlyPurchaseIndex);
    |        return StarbaseEarlyPurchase.EarlyPurchase(purchaser, amount, purchasedAt);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(551)

[33mWarning[0m for UnhandledException in contract 'StarbaseEarlyPurchaseAmendment':
    |        returns (uint256)
    |    {
  > |        return starbaseEarlyPurchase.numberOfEarlyPurchases();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(564)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StarbaseEarlyPurchaseAmendment':
    |
    |    modifier onlyBeforeCrowdsale() {
  > |        assert(address(starbaseCrowdsale) == address(0) || starbaseCrowdsale.startDate() == 0);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StarbaseEarlyPurchaseAmendment':
    |        returns (address purchaser, uint256 amount, uint256 purchasedAt)
    |    {
  > |        return starbaseEarlyPurchase.earlyPurchases(earlyPurchaseIndex);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StarbaseEarlyPurchaseAmendment':
    |
    |        starbaseEarlyPurchase = StarbaseEarlyPurchase(starbaseEarlyPurchaseAddress);
  > |        assert(starbaseEarlyPurchase.earlyPurchaseClosedAt() != 0); // the early purchase must be closed
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(495)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StarbaseEarlyPurchaseAmendment':
    |    {
    |        var (purchaser, amount, purchasedAt) =
  > |            starbaseEarlyPurchase.earlyPurchases(earlyPurchaseIndex);
    |        return StarbaseEarlyPurchase.EarlyPurchase(purchaser, amount, purchasedAt);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(551)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StarbaseEarlyPurchaseAmendment':
    |        returns (uint256)
    |    {
  > |        return starbaseEarlyPurchase.numberOfEarlyPurchases();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(564)

[31mViolation[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchaseAmendment':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchaseAmendment':
    |        }
    |
  > |        invalidEarlyPurchaseIndexes.push(earlyPurchaseIndex);
    |        EarlyPurchaseInvalidated(earlyPurchaseIndex);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(404)

[31mViolation[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchaseAmendment':
    |
    |        if (!isAmendedEarlyPurchase(earlyPurchaseIndex)) {
  > |            amendedEarlyPurchaseIndexes.push(earlyPurchaseIndex);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(452)

[31mViolation[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchaseAmendment':
    |        }
    |
  > |        amendedEarlyPurchases[earlyPurchaseIndex] =
    |            StarbaseEarlyPurchase.EarlyPurchase(purchaser, amount, purchasedAt);
    |        EarlyPurchaseAmended(earlyPurchaseIndex);
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchaseAmendment':
    |    {
    |        if (address(starbaseCrowdsale) == 0) {
  > |            starbaseCrowdsale = AbstractStarbaseCrowdsale(starbaseCrowdsaleAddress);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'StarbaseEarlyPurchaseAmendment':
    |            address(starbaseEarlyPurchase) == 0);
    |
  > |        starbaseEarlyPurchase = StarbaseEarlyPurchase(starbaseEarlyPurchaseAddress);
    |        assert(starbaseEarlyPurchase.earlyPurchaseClosedAt() != 0); // the early purchase must be closed
    |
  at /home/jiaming/mavs_srcs/contract@0xc03ab1fc46c6d01238707426c929e9eed3e7f9b3.sol(494)


