Processing contract: /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol:MakerOtcSupportMethods
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol:OtcInterface
[33mWarning[0m for LockedEther in contract 'DSMath':
    |// along with this program.  If not, see <http://www.gnu.org/licenses/>.
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(18)

[33mWarning[0m for DAO in contract 'MakerOtcSupportMethods':
    |            if(owners[i] == 0) break;
    |            ids[i] = offerId;
  > |            offerId = otc.getWorseOffer(offerId);
    |        } while (++i < 100);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(115)

[33mWarning[0m for LockedEther in contract 'MakerOtcSupportMethods':
    |}
    |
  > |contract MakerOtcSupportMethods is DSMath {
    |    function getOffers(OtcInterface otc, address payToken, address buyToken) public view
    |        returns (uint[100] ids, uint[100] payAmts, uint[100] buyAmts, address[100] owners, uint[100] timestamps)
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'MakerOtcSupportMethods':
    |
    |contract MakerOtcSupportMethods is DSMath {
  > |    function getOffers(OtcInterface otc, address payToken, address buyToken) public view
    |        returns (uint[100] ids, uint[100] payAmts, uint[100] buyAmts, address[100] owners, uint[100] timestamps)
    |    {
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'MakerOtcSupportMethods':
    |    }
    |
  > |    function getOffersAmountToSellAll(OtcInterface otc, address payToken, uint payAmt, address buyToken) public view returns (uint ordersToTake, bool takesPartialOrder) {
    |        uint offerId = otc.getBestOffer(buyToken, payToken);                        // Get best offer for the token pair
    |        ordersToTake = 0;
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'MakerOtcSupportMethods':
    |    }
    |
  > |    function getOffersAmountToBuyAll(OtcInterface otc, address buyToken, uint buyAmt, address payToken) public view returns (uint ordersToTake, bool takesPartialOrder) {
    |        uint offerId = otc.getBestOffer(buyToken, payToken);                        // Get best offer for the token pair
    |        ordersToTake = 0;
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'MakerOtcSupportMethods':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'MakerOtcSupportMethods':
    |}
    |
  > |contract MakerOtcSupportMethods is DSMath {
    |    function getOffers(OtcInterface otc, address payToken, address buyToken) public view
    |        returns (uint[100] ids, uint[100] payAmts, uint[100] buyAmts, address[100] owners, uint[100] timestamps)
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(100)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |        returns (uint[100] ids, uint[100] payAmts, uint[100] buyAmts, address[100] owners, uint[100] timestamps)
    |    {
  > |        (ids, payAmts, buyAmts, owners, timestamps) = getOffers(otc, otc.getBestOffer(payToken, buyToken));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(104)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |        uint i = 0;
    |        do {
  > |            (payAmts[i],, buyAmts[i],, owners[i], timestamps[i]) = otc.offers(offerId);
    |            if(owners[i] == 0) break;
    |            ids[i] = offerId;
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(112)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |            if(owners[i] == 0) break;
    |            ids[i] = offerId;
  > |            offerId = otc.getWorseOffer(offerId);
    |        } while (++i < 100);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(115)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |
    |    function getOffersAmountToSellAll(OtcInterface otc, address payToken, uint payAmt, address buyToken) public view returns (uint ordersToTake, bool takesPartialOrder) {
  > |        uint offerId = otc.getBestOffer(buyToken, payToken);                        // Get best offer for the token pair
    |        ordersToTake = 0;
    |        uint payAmt2 = payAmt;
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(120)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |        uint payAmt2 = payAmt;
    |        uint orderBuyAmt = 0;
  > |        (,,orderBuyAmt,,,) = otc.offers(offerId);
    |        while (payAmt2 > orderBuyAmt) {
    |            ordersToTake ++;                                                        // New order taken
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(124)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |            payAmt2 = sub(payAmt2, orderBuyAmt);                                    // Decrease amount to pay
    |            if (payAmt2 > 0) {                                                      // If we still need more offers
  > |                offerId = otc.getWorseOffer(offerId);                               // We look for the next best offer
    |                require(offerId != 0);                                              // Fails if there are not enough offers to complete
    |                (,,orderBuyAmt,,,) = otc.offers(offerId);
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(129)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |                offerId = otc.getWorseOffer(offerId);                               // We look for the next best offer
    |                require(offerId != 0);                                              // Fails if there are not enough offers to complete
  > |                (,,orderBuyAmt,,,) = otc.offers(offerId);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(131)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |
    |    function getOffersAmountToBuyAll(OtcInterface otc, address buyToken, uint buyAmt, address payToken) public view returns (uint ordersToTake, bool takesPartialOrder) {
  > |        uint offerId = otc.getBestOffer(buyToken, payToken);                        // Get best offer for the token pair
    |        ordersToTake = 0;
    |        uint buyAmt2 = buyAmt;
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(140)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |        uint buyAmt2 = buyAmt;
    |        uint orderPayAmt = 0;
  > |        (orderPayAmt,,,,,) = otc.offers(offerId);
    |        while (buyAmt2 > orderPayAmt) {
    |            ordersToTake ++;                                                        // New order taken
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(144)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |            buyAmt2 = sub(buyAmt2, orderPayAmt);                                    // Decrease amount to buy
    |            if (buyAmt2 > 0) {                                                      // If we still need more offers
  > |                offerId = otc.getWorseOffer(offerId);                               // We look for the next best offer
    |                require(offerId != 0);                                              // Fails if there are not enough offers to complete
    |                (orderPayAmt,,,,,) = otc.offers(offerId);
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(149)

[33mWarning[0m for UnhandledException in contract 'MakerOtcSupportMethods':
    |                offerId = otc.getWorseOffer(offerId);                               // We look for the next best offer
    |                require(offerId != 0);                                              // Fails if there are not enough offers to complete
  > |                (orderPayAmt,,,,,) = otc.offers(offerId);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |        returns (uint[100] ids, uint[100] payAmts, uint[100] buyAmts, address[100] owners, uint[100] timestamps)
    |    {
  > |        (ids, payAmts, buyAmts, owners, timestamps) = getOffers(otc, otc.getBestOffer(payToken, buyToken));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |        uint i = 0;
    |        do {
  > |            (payAmts[i],, buyAmts[i],, owners[i], timestamps[i]) = otc.offers(offerId);
    |            if(owners[i] == 0) break;
    |            ids[i] = offerId;
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |            if(owners[i] == 0) break;
    |            ids[i] = offerId;
  > |            offerId = otc.getWorseOffer(offerId);
    |        } while (++i < 100);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |
    |    function getOffersAmountToSellAll(OtcInterface otc, address payToken, uint payAmt, address buyToken) public view returns (uint ordersToTake, bool takesPartialOrder) {
  > |        uint offerId = otc.getBestOffer(buyToken, payToken);                        // Get best offer for the token pair
    |        ordersToTake = 0;
    |        uint payAmt2 = payAmt;
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |        uint payAmt2 = payAmt;
    |        uint orderBuyAmt = 0;
  > |        (,,orderBuyAmt,,,) = otc.offers(offerId);
    |        while (payAmt2 > orderBuyAmt) {
    |            ordersToTake ++;                                                        // New order taken
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |            payAmt2 = sub(payAmt2, orderBuyAmt);                                    // Decrease amount to pay
    |            if (payAmt2 > 0) {                                                      // If we still need more offers
  > |                offerId = otc.getWorseOffer(offerId);                               // We look for the next best offer
    |                require(offerId != 0);                                              // Fails if there are not enough offers to complete
    |                (,,orderBuyAmt,,,) = otc.offers(offerId);
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(129)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |                offerId = otc.getWorseOffer(offerId);                               // We look for the next best offer
    |                require(offerId != 0);                                              // Fails if there are not enough offers to complete
  > |                (,,orderBuyAmt,,,) = otc.offers(offerId);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |
    |    function getOffersAmountToBuyAll(OtcInterface otc, address buyToken, uint buyAmt, address payToken) public view returns (uint ordersToTake, bool takesPartialOrder) {
  > |        uint offerId = otc.getBestOffer(buyToken, payToken);                        // Get best offer for the token pair
    |        ordersToTake = 0;
    |        uint buyAmt2 = buyAmt;
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |        uint buyAmt2 = buyAmt;
    |        uint orderPayAmt = 0;
  > |        (orderPayAmt,,,,,) = otc.offers(offerId);
    |        while (buyAmt2 > orderPayAmt) {
    |            ordersToTake ++;                                                        // New order taken
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |            buyAmt2 = sub(buyAmt2, orderPayAmt);                                    // Decrease amount to buy
    |            if (buyAmt2 > 0) {                                                      // If we still need more offers
  > |                offerId = otc.getWorseOffer(offerId);                               // We look for the next best offer
    |                require(offerId != 0);                                              // Fails if there are not enough offers to complete
    |                (orderPayAmt,,,,,) = otc.offers(offerId);
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MakerOtcSupportMethods':
    |                offerId = otc.getWorseOffer(offerId);                               // We look for the next best offer
    |                require(offerId != 0);                                              // Fails if there are not enough offers to complete
  > |                (orderPayAmt,,,,,) = otc.offers(offerId);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe5decbdcca2e9957b525fb04293f1eeeb547baab.sol(151)


