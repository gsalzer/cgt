Processing contract: /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol:BinaryOption
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol:ERC23
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol:NamiCrowdSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol:NamiExchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol:NamiMultiSigWallet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol:PresaleToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol:tokenRecipient
[31mViolation[0m for DAO in contract 'BinaryOption':
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateLoss / 100;
    |            }
  > |            namiContract.buy.value(etherToBuy)(session.investor[i]);
    |            // reset investor
    |            session.investor[i] = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(831)

[31mViolation[0m for DAOConstantGas in contract 'BinaryOption':
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateWin / 100;
    |                uint etherReturn = session.amountInvest[i] - session.amountInvest[i] * rateFee / 100;
  > |                (session.investor[i]).transfer(etherReturn);
    |            } else {
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateLoss / 100;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(827)

[33mWarning[0m for DAOConstantGas in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(677)

[33mWarning[0m for DAOConstantGas in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(688)

[33mWarning[0m for LockedEther in contract 'BinaryOption':
    |* Binary option smart contract-------------------------------
    |*/
  > |contract BinaryOption {
    |    /*
    |     * binary option controled by escrow to buy NAC with good price
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(532)

[31mViolation[0m for MissingInputValidation in contract 'BinaryOption':
    |    /////------------------------change rate function-------------------------------
    |    
  > |    function changeRateWin(uint _rateWin)
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(644)

[31mViolation[0m for MissingInputValidation in contract 'BinaryOption':
    |    }
    |    
  > |    function changeRateLoss(uint _rateLoss)
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(652)

[31mViolation[0m for MissingInputValidation in contract 'BinaryOption':
    |    }
    |    
  > |    function changeRateFee(uint _rateFee)
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(660)

[31mViolation[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev withdraw ether to nami multisignature wallet, only escrow can call
    |    /// @param _amount value ether in wei to withdraw
  > |    function withdrawEther(uint _amount) public
    |        onlyEscrow
    |    {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(671)

[31mViolation[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev safe withdraw Ether to one of owner of nami multisignature wallet
    |    /// @param _withdraw address to withdraw
  > |    function safeWithdraw(address _withdraw, uint _amount) public
    |        onlyEscrow
    |    {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(683)

[31mViolation[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev Fuction for investor, minimun ether send is 0.1, one address can call one time in one session
    |    /// @param _choose choise of investor, true is call, false is put
  > |    function invest (bool _choose)
    |        public
    |        payable
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(767)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |* Binary option smart contract-------------------------------
    |*/
  > |contract BinaryOption {
    |    /*
    |     * binary option controled by escrow to buy NAC with good price
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(532)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |     */
    |    // NamiCrowdSale address
  > |    address public namiCrowdSaleAddr;
    |    address public escrow;
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(537)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    // NamiCrowdSale address
    |    address public namiCrowdSaleAddr;
  > |    address public escrow;
    |    
    |    // namiMultiSigWallet
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(538)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    
    |    // namiMultiSigWallet
  > |    address public namiMultiSigWallet;
    |    
    |    Session public session;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(541)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    address public namiMultiSigWallet;
    |    
  > |    Session public session;
    |    uint public timeInvestInMinute = 10;
    |    uint public timeOneSession = 15;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(543)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    
    |    Session public session;
  > |    uint public timeInvestInMinute = 10;
    |    uint public timeOneSession = 15;
    |    uint public sessionId = 1;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(544)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    Session public session;
    |    uint public timeInvestInMinute = 10;
  > |    uint public timeOneSession = 15;
    |    uint public sessionId = 1;
    |    uint public rateWin = 100;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(545)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    uint public timeInvestInMinute = 10;
    |    uint public timeOneSession = 15;
  > |    uint public sessionId = 1;
    |    uint public rateWin = 100;
    |    uint public rateLoss = 20;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(546)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    uint public timeOneSession = 15;
    |    uint public sessionId = 1;
  > |    uint public rateWin = 100;
    |    uint public rateLoss = 20;
    |    uint public rateFee = 5;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(547)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    uint public sessionId = 1;
    |    uint public rateWin = 100;
  > |    uint public rateLoss = 20;
    |    uint public rateFee = 5;
    |    uint public constant MAX_INVESTOR = 20;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(548)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    uint public rateWin = 100;
    |    uint public rateLoss = 20;
  > |    uint public rateFee = 5;
    |    uint public constant MAX_INVESTOR = 20;
    |    uint public minimunEth = 10000000000000000; // minimunEth = 0.01 eth
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(549)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    uint public rateLoss = 20;
    |    uint public rateFee = 5;
  > |    uint public constant MAX_INVESTOR = 20;
    |    uint public minimunEth = 10000000000000000; // minimunEth = 0.01 eth
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(550)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    uint public rateFee = 5;
    |    uint public constant MAX_INVESTOR = 20;
  > |    uint public minimunEth = 10000000000000000; // minimunEth = 0.01 eth
    |    /**
    |     * Events for binany option system
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(551)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    
    |    // change escrow
  > |    function changeEscrow(address _escrow) public
    |        onlyNamiMultisig
    |    {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(608)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    
    |    // chagne minimunEth
  > |    function changeMinEth(uint _minimunEth) public 
    |        onlyEscrow
    |    {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(616)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    // @return List of owner addresses.
    |    // MAX_INVESTOR = 20
  > |    function getInvestors()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(695)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    }
    |    
  > |    function getChooses()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(707)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    }
    |    
  > |    function getAmount()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(719)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev reset all data of previous session, must run before open new session
    |    // only escrow can call
  > |    function resetSession()
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(733)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    
    |    /// @dev Open new session, only escrow can call
  > |    function openSession ()
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(752)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev close invest for escrow
    |    /// @param _priceOpen price ETH in USD
  > |    function closeInvest (uint _priceOpen) 
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(783)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @param _ether amount ether which investor invest
    |    /// @param _status true for investor win and false for investor loss
  > |    function getEtherToBuy (uint _ether, bool _status)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(797)

[31mViolation[0m for TODAmount in contract 'BinaryOption':
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateWin / 100;
    |                uint etherReturn = session.amountInvest[i] - session.amountInvest[i] * rateFee / 100;
  > |                (session.investor[i]).transfer(etherReturn);
    |            } else {
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateLoss / 100;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(827)

[31mViolation[0m for TODAmount in contract 'BinaryOption':
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateLoss / 100;
    |            }
  > |            namiContract.buy.value(etherToBuy)(session.investor[i]);
    |            // reset investor
    |            session.investor[i] = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(831)

[33mWarning[0m for TODAmount in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(677)

[33mWarning[0m for TODAmount in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(688)

[31mViolation[0m for TODReceiver in contract 'BinaryOption':
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateWin / 100;
    |                uint etherReturn = session.amountInvest[i] - session.amountInvest[i] * rateFee / 100;
  > |                (session.investor[i]).transfer(etherReturn);
    |            } else {
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateLoss / 100;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(827)

[33mWarning[0m for TODReceiver in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(677)

[33mWarning[0m for TODReceiver in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(688)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(677)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |    {
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
  > |        if (namiWallet.isOwner(_withdraw)) {
    |            _withdraw.transfer(_amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(687)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(688)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |        uint etherToBuy;
    |        NamiCrowdSale namiContract = NamiCrowdSale(namiCrowdSaleAddr);
  > |        uint price = namiContract.getPrice();
    |        require(price != 0);
    |        for (uint i = 0; i < session.investorCount; i++) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(821)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateWin / 100;
    |                uint etherReturn = session.amountInvest[i] - session.amountInvest[i] * rateFee / 100;
  > |                (session.investor[i]).transfer(etherReturn);
    |            } else {
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateLoss / 100;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(827)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |                etherToBuy = (session.amountInvest[i] - session.amountInvest[i] * rateFee / 100) * rateLoss / 100;
    |            }
  > |            namiContract.buy.value(etherToBuy)(session.investor[i]);
    |            // reset investor
    |            session.investor[i] = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(831)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BinaryOption':
    |    {
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
  > |        if (namiWallet.isOwner(_withdraw)) {
    |            _withdraw.transfer(_amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(687)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BinaryOption':
    |        uint etherToBuy;
    |        NamiCrowdSale namiContract = NamiCrowdSale(namiCrowdSaleAddr);
  > |        uint price = namiContract.getPrice();
    |        require(price != 0);
    |        for (uint i = 0; i < session.investorCount; i++) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(821)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(677)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(688)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.investorCount = 0;
    |        for (uint i = 0; i < MAX_INVESTOR; i++) {
  > |            session.investor[i] = 0x0;
    |            session.win[i] = false;
    |            session.amountInvest[i] = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(745)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        for (uint i = 0; i < MAX_INVESTOR; i++) {
    |            session.investor[i] = 0x0;
  > |            session.win[i] = false;
    |            session.amountInvest[i] = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(746)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            session.investor[i] = 0x0;
    |            session.win[i] = false;
  > |            session.amountInvest[i] = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(747)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(now < (session.timeOpen + timeInvestInMinute * 1 minutes));
    |        require(session.investorCount < MAX_INVESTOR);
  > |        session.investor[session.investorCount] = msg.sender;
    |        session.win[session.investorCount] = _choose;
    |        session.amountInvest[session.investorCount] = msg.value;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(774)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(session.investorCount < MAX_INVESTOR);
    |        session.investor[session.investorCount] = msg.sender;
  > |        session.win[session.investorCount] = _choose;
    |        session.amountInvest[session.investorCount] = msg.value;
    |        session.investorCount += 1;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(775)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.investor[session.investorCount] = msg.sender;
    |        session.win[session.investorCount] = _choose;
  > |        session.amountInvest[session.investorCount] = msg.value;
    |        session.investorCount += 1;
    |        Invest(msg.sender, _choose, msg.value, now, sessionId);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(776)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.win[session.investorCount] = _choose;
    |        session.amountInvest[session.investorCount] = msg.value;
  > |        session.investorCount += 1;
    |        Invest(msg.sender, _choose, msg.value, now, sessionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(777)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            namiContract.buy.value(etherToBuy)(session.investor[i]);
    |            // reset investor
  > |            session.investor[i] = 0x0;
    |            session.win[i] = false;
    |            session.amountInvest[i] = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(833)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            // reset investor
    |            session.investor[i] = 0x0;
  > |            session.win[i] = false;
    |            session.amountInvest[i] = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(834)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            session.investor[i] = 0x0;
    |            session.win[i] = false;
  > |            session.amountInvest[i] = 0;
    |        }
    |        session.isOpen = false;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(835)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            session.amountInvest[i] = 0;
    |        }
  > |        session.isOpen = false;
    |        SessionClose(now, sessionId, _priceClose, price, rateWin, rateLoss, rateFee);
    |        sessionId += 1;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(837)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isOpen = false;
    |        SessionClose(now, sessionId, _priceClose, price, rateWin, rateLoss, rateFee);
  > |        sessionId += 1;
    |        
    |        // require(!session.isReset && !session.isOpen);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(839)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        // require(!session.isReset && !session.isOpen);
    |        // reset state session
  > |        session.priceOpen = 0;
    |        session.priceClose = 0;
    |        session.isReset = true;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(843)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        // reset state session
    |        session.priceOpen = 0;
  > |        session.priceClose = 0;
    |        session.isReset = true;
    |        session.investOpen = false;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(844)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.priceOpen = 0;
    |        session.priceClose = 0;
  > |        session.isReset = true;
    |        session.investOpen = false;
    |        session.investorCount = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(845)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.priceClose = 0;
    |        session.isReset = true;
  > |        session.investOpen = false;
    |        session.investorCount = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(846)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isReset = true;
    |        session.investOpen = false;
  > |        session.investorCount = 0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(847)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(_escrow != 0x0);
  > |        escrow = _escrow;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(612)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(_minimunEth != 0);
  > |        minimunEth = _minimunEth;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(620)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(!session.isOpen && _timeInvest < timeOneSession);
  > |        timeInvestInMinute = _timeInvest;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(631)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(!session.isOpen && _timeOneSession > timeInvestInMinute);
  > |        timeOneSession = _timeOneSession;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(639)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(!session.isOpen);
  > |        rateWin = _rateWin;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(649)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(!session.isOpen);
  > |        rateLoss = _rateLoss;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(657)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(!session.isOpen);
  > |        rateFee = _rateFee;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(665)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(!session.isReset && !session.isOpen);
  > |        session.priceOpen = 0;
    |        session.priceClose = 0;
    |        session.isReset = true;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(738)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(!session.isReset && !session.isOpen);
    |        session.priceOpen = 0;
  > |        session.priceClose = 0;
    |        session.isReset = true;
    |        session.isOpen = false;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(739)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.priceOpen = 0;
    |        session.priceClose = 0;
  > |        session.isReset = true;
    |        session.isOpen = false;
    |        session.investOpen = false;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(740)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.priceClose = 0;
    |        session.isReset = true;
  > |        session.isOpen = false;
    |        session.investOpen = false;
    |        session.investorCount = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(741)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isReset = true;
    |        session.isOpen = false;
  > |        session.investOpen = false;
    |        session.investorCount = 0;
    |        for (uint i = 0; i < MAX_INVESTOR; i++) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(742)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isOpen = false;
    |        session.investOpen = false;
  > |        session.investorCount = 0;
    |        for (uint i = 0; i < MAX_INVESTOR; i++) {
    |            session.investor[i] = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(743)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(session.isReset && !session.isOpen);
  > |        session.isReset = false;
    |        // open invest
    |        session.investOpen = true;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(757)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isReset = false;
    |        // open invest
  > |        session.investOpen = true;
    |        session.timeOpen = now;
    |        session.isOpen = true;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(759)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        // open invest
    |        session.investOpen = true;
  > |        session.timeOpen = now;
    |        session.isOpen = true;
    |        SessionOpen(now, sessionId);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(760)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.investOpen = true;
    |        session.timeOpen = now;
  > |        session.isOpen = true;
    |        SessionOpen(now, sessionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(761)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(_priceOpen != 0 && session.investOpen);
    |        require(now > (session.timeOpen + timeInvestInMinute * 1 minutes));
  > |        session.investOpen = false;
    |        session.priceOpen = _priceOpen;
    |        InvestClose(now, _priceOpen, sessionId);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(789)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(now > (session.timeOpen + timeInvestInMinute * 1 minutes));
    |        session.investOpen = false;
  > |        session.priceOpen = _priceOpen;
    |        InvestClose(now, _priceOpen, sessionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(790)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(_priceClose != 0 && now > (session.timeOpen + timeOneSession * 1 minutes));
    |        require(!session.investOpen && session.isOpen);
  > |        session.priceClose = _priceClose;
    |        bool result = (_priceClose>session.priceOpen)?true:false;
    |        uint etherToBuy;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(817)

[33mWarning[0m for DAOConstantGas in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(410)

[33mWarning[0m for DAOConstantGas in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(419)

[33mWarning[0m for LockedEther in contract 'NamiCrowdSale':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract NamiCrowdSale {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(50)

[33mWarning[0m for TODAmount in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(410)

[33mWarning[0m for TODAmount in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(419)

[33mWarning[0m for TODReceiver in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(410)

[33mWarning[0m for TODReceiver in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(419)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(243)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(410)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |    {
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
  > |        if (namiWallet.isOwner(_withdraw)) {
    |            _withdraw.transfer(_amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(418)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(419)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |    {
    |        PresaleToken presale = PresaleToken(namiPresale);
  > |        uint256 newToken = presale.balanceOf(_from);
    |        require(newToken > 0);
    |        // burn old token
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(437)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        require(newToken > 0);
    |        // burn old token
  > |        presale.burnTokens(_from);
    |        // add new token to _to
    |        balanceOf[_to] = balanceOf[_to].add(newToken);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(440)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        if (codeLength > 0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallbackExchange(msg.sender, _value, _price);
    |            TransferToExchange(msg.sender, _to, _value, _price);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(492)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        if (codeLength > 0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallbackBuyer(msg.sender, _value, _buyer);
    |            TransferToBuyer(msg.sender, _to, _value, _buyer);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(521)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |    {
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
  > |        if (namiWallet.isOwner(_withdraw)) {
    |            _withdraw.transfer(_amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(418)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |    {
    |        PresaleToken presale = PresaleToken(namiPresale);
  > |        uint256 newToken = presale.balanceOf(_from);
    |        require(newToken > 0);
    |        // burn old token
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        require(newToken > 0);
    |        // burn old token
  > |        presale.burnTokens(_from);
    |        // add new token to _to
    |        balanceOf[_to] = balanceOf[_to].add(newToken);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(440)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        if (codeLength > 0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallbackExchange(msg.sender, _value, _price);
    |            TransferToExchange(msg.sender, _to, _value, _price);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        if (codeLength > 0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallbackBuyer(msg.sender, _value, _buyer);
    |            TransferToBuyer(msg.sender, _to, _value, _buyer);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(521)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |    {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        returns (bool success) 
    |    {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        require (totalSupply + newTokens < TOKEN_SUPPLY_LIMIT);
    |        // add new token to buyer
  > |        balanceOf[_buyer] = balanceOf[_buyer].add(newTokens);
    |        // add new token to totalSupply
    |        totalSupply = totalSupply.add(newTokens);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        balanceOf[_buyer] = balanceOf[_buyer].add(newTokens);
    |        // add new token to totalSupply
  > |        totalSupply = totalSupply.add(newTokens);
    |        LogBuy(_buyer,newTokens);
    |        Transfer(this,_buyer,newTokens);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        presale.burnTokens(_from);
    |        // add new token to _to
  > |        balanceOf[_to] = balanceOf[_to].add(newToken);
    |        // add new token to totalSupply
    |        totalSupply = totalSupply.add(newToken);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        balanceOf[_to] = balanceOf[_to].add(newToken);
    |        // add new token to totalSupply
  > |        totalSupply = totalSupply.add(newToken);
    |        LogMigrate(_from, _to, newToken);
    |        Transfer(this,_to,newToken);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        }
    |        
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender,_to,_value);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender,_to,_value);
    |        if (codeLength > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        }
    |        
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender,_to,_value);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender,_to,_value);
    |        if (codeLength > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        onlyEscrow
    |    {
  > |        TRANSFERABLE = !TRANSFERABLE;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |    {
    |        require(_escrow != 0x0);
  > |        escrow = _escrow;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        onlyEscrow
    |    {
  > |        binary = _binary;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |    {
    |        require(_binaryAddress != 0x0);
  > |        binaryAddress = _binaryAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        uint tokens = balanceOf[_owner];
    |        require(tokens != 0);
  > |        balanceOf[_owner] = 0;
    |        totalSupply -= tokens;
    |        LogBurn(_owner, tokens);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        require(tokens != 0);
    |        balanceOf[_owner] = 0;
  > |        totalSupply -= tokens;
    |        LogBurn(_owner, tokens);
    |        Transfer(_owner, crowdsaleManager, tokens);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        // Automatically switch phase when migration is done.
    |        if (totalSupply == 0) {
  > |            currentPhase = Phase.Migrated;
    |            LogPhaseSwitch(Phase.Migrated);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |
    |        require(canSwitchPhase);
  > |        currentPhase = _nextPhase;
    |        LogPhaseSwitch(_nextPhase);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        // You can't change crowdsale contract when migration is in progress.
    |        require(currentPhase != Phase.Migrating);
  > |        crowdsaleManager = _mgr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(429)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |        require(namiToken.allowance(msg.sender, this) >= _value && _value > 0 && ethOfBuyer != 0 && _buyer != 0x0);
    |        if (_value > maxToken) {
  > |            if (msg.sender.send(ethOfBuyer) && namiToken.transferFrom(msg.sender,_buyer,maxToken)) {
    |                // update order
    |                bid[_buyer].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(948)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (msg.sender.send(eth) && namiToken.transferFrom(msg.sender,_buyer,_value)) {
    |                // update order
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(960)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |        require(bid[msg.sender].eth > 0 && bid[msg.sender].price > 0);
    |        // transfer ETH
  > |        msg.sender.transfer(bid[msg.sender].eth);
    |        // update order
    |        bid[msg.sender].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(976)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth))) {
    |                // transfer token
    |                namiToken.transfer(msg.sender, ask[_seller].volume);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1018)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |        } else {
    |            uint nac = (msg.value).mul(ask[_seller].price);
  > |            if (_seller.send(msg.value)) {
    |                // transfer token
    |                namiToken.transfer(msg.sender, nac);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1033)

[33mWarning[0m for LockedEther in contract 'NamiExchange':
    | */
    |
  > |contract NamiExchange {
    |    using SafeMath for uint;
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(884)

[33mWarning[0m for TODAmount in contract 'NamiExchange':
    |        require(namiToken.allowance(msg.sender, this) >= _value && _value > 0 && ethOfBuyer != 0 && _buyer != 0x0);
    |        if (_value > maxToken) {
  > |            if (msg.sender.send(ethOfBuyer) && namiToken.transferFrom(msg.sender,_buyer,maxToken)) {
    |                // update order
    |                bid[_buyer].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(948)

[33mWarning[0m for TODAmount in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (msg.sender.send(eth) && namiToken.transferFrom(msg.sender,_buyer,_value)) {
    |                // update order
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(960)

[33mWarning[0m for TODAmount in contract 'NamiExchange':
    |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth))) {
    |                // transfer token
    |                namiToken.transfer(msg.sender, ask[_seller].volume);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1018)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |        require(namiToken.allowance(msg.sender, this) >= _value && _value > 0 && ethOfBuyer != 0 && _buyer != 0x0);
    |        if (_value > maxToken) {
  > |            if (msg.sender.send(ethOfBuyer) && namiToken.transferFrom(msg.sender,_buyer,maxToken)) {
    |                // update order
    |                bid[_buyer].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(948)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (msg.sender.send(eth) && namiToken.transferFrom(msg.sender,_buyer,_value)) {
    |                // update order
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(960)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |        require(bid[msg.sender].eth > 0 && bid[msg.sender].price > 0);
    |        // transfer ETH
  > |        msg.sender.transfer(bid[msg.sender].eth);
    |        // update order
    |        bid[msg.sender].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(976)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth))) {
    |                // transfer token
    |                namiToken.transfer(msg.sender, ask[_seller].volume);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1018)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |        } else {
    |            uint nac = (msg.value).mul(ask[_seller].price);
  > |            if (_seller.send(msg.value)) {
    |                // transfer token
    |                namiToken.transfer(msg.sender, nac);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1033)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        uint ethOfBuyer = bid[_buyer].eth;
    |        uint maxToken = ethOfBuyer.mul(bid[_buyer].price);
  > |        require(namiToken.allowance(msg.sender, this) >= _value && _value > 0 && ethOfBuyer != 0 && _buyer != 0x0);
    |        if (_value > maxToken) {
    |            if (msg.sender.send(ethOfBuyer) && namiToken.transferFrom(msg.sender,_buyer,maxToken)) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(946)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        require(namiToken.allowance(msg.sender, this) >= _value && _value > 0 && ethOfBuyer != 0 && _buyer != 0x0);
    |        if (_value > maxToken) {
  > |            if (msg.sender.send(ethOfBuyer) && namiToken.transferFrom(msg.sender,_buyer,maxToken)) {
    |                // update order
    |                bid[_buyer].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(948)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (msg.sender.send(eth) && namiToken.transferFrom(msg.sender,_buyer,_value)) {
    |                // update order
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(960)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        require(bid[msg.sender].eth > 0 && bid[msg.sender].price > 0);
    |        // transfer ETH
  > |        msg.sender.transfer(bid[msg.sender].eth);
    |        // update order
    |        bid[msg.sender].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(976)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        require(ask[msg.sender].volume > 0 && ask[msg.sender].price > 0);
    |        NamiCrowdSale namiToken = NamiCrowdSale(NamiAddr);
  > |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        // transfer token
    |        namiToken.transfer(msg.sender, ask[msg.sender].volume);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1001)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        // transfer token
  > |        namiToken.transfer(msg.sender, ask[msg.sender].volume);
    |        // update order
    |        ask[msg.sender].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1003)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        UpdateAsk(msg.sender, ask[msg.sender].price, 0);
    |        // check balance
  > |        assert(previousBalances < namiToken.balanceOf(msg.sender));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1008)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        NamiCrowdSale namiToken = NamiCrowdSale(NamiAddr);
    |        uint maxEth = (ask[_seller].volume).div(ask[_seller].price);
  > |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        if (msg.value > maxEth) {
    |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth))) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1016)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth))) {
    |                // transfer token
    |                namiToken.transfer(msg.sender, ask[_seller].volume);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1018)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth))) {
    |                // transfer token
  > |                namiToken.transfer(msg.sender, ask[_seller].volume);
    |                SellHistory(_seller, msg.sender, ask[_seller].price, ask[_seller].volume, now);
    |                // update order
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1020)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |                ask[_seller].volume = 0;
    |                UpdateAsk(_seller, ask[_seller].price, 0);
  > |                assert(previousBalances < namiToken.balanceOf(msg.sender));
    |                return true;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1025)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        } else {
    |            uint nac = (msg.value).mul(ask[_seller].price);
  > |            if (_seller.send(msg.value)) {
    |                // transfer token
    |                namiToken.transfer(msg.sender, nac);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1033)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |            if (_seller.send(msg.value)) {
    |                // transfer token
  > |                namiToken.transfer(msg.sender, nac);
    |                // update order
    |                ask[_seller].volume = (ask[_seller].volume).sub(nac);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1035)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |                UpdateAsk(_seller, ask[_seller].price, ask[_seller].volume);
    |                SellHistory(_seller, msg.sender, ask[_seller].price, nac, now);
  > |                assert(previousBalances < namiToken.balanceOf(msg.sender));
    |                return true;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1040)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        uint ethOfBuyer = bid[_buyer].eth;
    |        uint maxToken = ethOfBuyer.mul(bid[_buyer].price);
  > |        require(namiToken.allowance(msg.sender, this) >= _value && _value > 0 && ethOfBuyer != 0 && _buyer != 0x0);
    |        if (_value > maxToken) {
    |            if (msg.sender.send(ethOfBuyer) && namiToken.transferFrom(msg.sender,_buyer,maxToken)) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(946)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        require(namiToken.allowance(msg.sender, this) >= _value && _value > 0 && ethOfBuyer != 0 && _buyer != 0x0);
    |        if (_value > maxToken) {
  > |            if (msg.sender.send(ethOfBuyer) && namiToken.transferFrom(msg.sender,_buyer,maxToken)) {
    |                // update order
    |                bid[_buyer].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(948)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (msg.sender.send(eth) && namiToken.transferFrom(msg.sender,_buyer,_value)) {
    |                // update order
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(960)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        require(ask[msg.sender].volume > 0 && ask[msg.sender].price > 0);
    |        NamiCrowdSale namiToken = NamiCrowdSale(NamiAddr);
  > |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        // transfer token
    |        namiToken.transfer(msg.sender, ask[msg.sender].volume);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1001)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        // transfer token
  > |        namiToken.transfer(msg.sender, ask[msg.sender].volume);
    |        // update order
    |        ask[msg.sender].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1003)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        UpdateAsk(msg.sender, ask[msg.sender].price, 0);
    |        // check balance
  > |        assert(previousBalances < namiToken.balanceOf(msg.sender));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1008)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        NamiCrowdSale namiToken = NamiCrowdSale(NamiAddr);
    |        uint maxEth = (ask[_seller].volume).div(ask[_seller].price);
  > |        uint previousBalances = namiToken.balanceOf(msg.sender);
    |        if (msg.value > maxEth) {
    |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth))) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1016)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth))) {
    |                // transfer token
  > |                namiToken.transfer(msg.sender, ask[_seller].volume);
    |                SellHistory(_seller, msg.sender, ask[_seller].price, ask[_seller].volume, now);
    |                // update order
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1020)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |                ask[_seller].volume = 0;
    |                UpdateAsk(_seller, ask[_seller].price, 0);
  > |                assert(previousBalances < namiToken.balanceOf(msg.sender));
    |                return true;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1025)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |            if (_seller.send(msg.value)) {
    |                // transfer token
  > |                namiToken.transfer(msg.sender, nac);
    |                // update order
    |                ask[_seller].volume = (ask[_seller].volume).sub(nac);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1035)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |                UpdateAsk(_seller, ask[_seller].price, ask[_seller].volume);
    |                SellHistory(_seller, msg.sender, ask[_seller].price, nac, now);
  > |                assert(previousBalances < namiToken.balanceOf(msg.sender));
    |                return true;
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1040)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        require(_price > 0 && msg.value > 0 && bid[msg.sender].eth == 0);
    |        if (msg.value > 0) {
  > |            bid[msg.sender].eth = (bid[msg.sender].eth).add(msg.value);
    |            bid[msg.sender].price = _price;
    |            UpdateBid(msg.sender, _price, bid[msg.sender].eth);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(935)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        if (msg.value > 0) {
    |            bid[msg.sender].eth = (bid[msg.sender].eth).add(msg.value);
  > |            bid[msg.sender].price = _price;
    |            UpdateBid(msg.sender, _price, bid[msg.sender].eth);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(936)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        msg.sender.transfer(bid[msg.sender].eth);
    |        // update order
  > |        bid[msg.sender].eth = 0;
    |        UpdateBid(msg.sender, bid[msg.sender].price, bid[msg.sender].eth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(978)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        require(_price > 0 && _value > 0 && ask[_from].volume == 0);
    |        if (_value > 0) {
  > |            ask[_from].volume = (ask[_from].volume).add(_value);
    |            ask[_from].price = _price;
    |            UpdateAsk(_from, _price, ask[_from].volume);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(991)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        if (_value > 0) {
    |            ask[_from].volume = (ask[_from].volume).add(_value);
  > |            ask[_from].price = _price;
    |            UpdateAsk(_from, _price, ask[_from].volume);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(992)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        namiToken.transfer(msg.sender, ask[msg.sender].volume);
    |        // update order
  > |        ask[msg.sender].volume = 0;
    |        UpdateAsk(msg.sender, ask[msg.sender].price, 0);
    |        // check balance
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1005)

[31mViolation[0m for DAO in contract 'NamiMultiSigWallet':
    |            transactions[transactionId].executed = true;
    |            // tx.executed = true;
  > |            if (transactions[transactionId].destination.call.value(transactions[transactionId].value)(transactions[transactionId].data)) {
    |                Execution(transactionId);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1275)

[33mWarning[0m for LockedEther in contract 'NamiMultiSigWallet':
    |*/
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
  > |contract NamiMultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1061)

[33mWarning[0m for UnhandledException in contract 'NamiMultiSigWallet':
    |            transactions[transactionId].executed = true;
    |            // tx.executed = true;
  > |            if (transactions[transactionId].destination.call.value(transactions[transactionId].value)(transactions[transactionId].data)) {
    |                Execution(transactionId);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1275)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |*/
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
  > |contract NamiMultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1061)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        for (uint i=0; i<owners.length - 1; i++) {
    |            if (owners[i] == owner) {
  > |                owners[i] = owners[owners.length - 1];
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1185)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        for (uint i=0; i<owners.length; i++) {
    |            if (owners[i] == owner) {
  > |                owners[i] = newOwner;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1206)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |            }
    |        }
  > |        isOwner[owner] = false;
    |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1210)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        }
    |        isOwner[owner] = false;
  > |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
    |        OwnerAddition(newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1211)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |    {
    |        transactionId = transactionCount;
  > |        transactions[transactionId] = Transaction({
    |            destination: destination, 
    |            value: value,
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1315)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |            executed: false
    |        });
  > |        transactionCount += 1;
    |        Submission(transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1321)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        notConfirmed(transactionId, msg.sender)
    |    {
  > |        confirmations[transactionId][msg.sender] = true;
    |        Confirmation(msg.sender, transactionId);
    |        executeTransaction(transactionId);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1248)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        notExecuted(transactionId)
    |    {
  > |        confirmations[transactionId][msg.sender] = false;
    |        Revocation(msg.sender, transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1261)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |pragma solidity ^0.4.18;
    |/**
  > | * Math operations with safety checks
    | */
    |library SafeMath {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        validRequirement(owners.length + 1, required)
    |    {
  > |        isOwner[owner] = true;
    |        owners.push(owner);
    |        OwnerAddition(owner);
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1170)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |    {
    |        isOwner[owner] = true;
  > |        owners.push(owner);
    |        OwnerAddition(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1171)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        ownerExists(owner)
    |    {
  > |        isOwner[owner] = false;
    |        for (uint i=0; i<owners.length - 1; i++) {
    |            if (owners[i] == owner) {
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1182)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        validRequirement(owners.length, _required)
    |    {
  > |        required = _required;
    |        RequirementChange(_required);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(1223)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal pure returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe9a3217b3e9c7384dd62c0159ab05ea00ab4093a.sol(5)


