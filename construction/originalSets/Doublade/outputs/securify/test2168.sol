Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol:BinaryOption
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol:ERC23
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol:NamiCrowdSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol:NamiExchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol:NamiMultiSigWallet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol:PresaleToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol:tokenRecipient
[31mViolation[0m for DAO in contract 'BinaryOption':
    |                etherToBuy = getEtherToBuy(session.amountInvest[i], rate, false);
    |            }
  > |            namiContract.buy.value(etherToBuy)(session.investor[i]);
    |            // reset investor
    |            session.investor[i] = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(803)

[33mWarning[0m for DAOConstantGas in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(650)

[33mWarning[0m for DAOConstantGas in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(661)

[33mWarning[0m for LockedEther in contract 'BinaryOption':
    |* Binary option smart contract-------------------------------
    |*/
  > |contract BinaryOption {
    |    /*
    |     * binary option controled by escrow to buy NAC with good price
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(532)

[31mViolation[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev withdraw ether to nami multisignature wallet, only escrow can call
    |    /// @param _amount value ether in wei to withdraw
  > |    function withdrawEther(uint _amount) public
    |        onlyEscrow
    |    {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(644)

[31mViolation[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev safe withdraw Ether to one of owner of nami multisignature wallet
    |    /// @param _withdraw address to withdraw
  > |    function safeWithdraw(address _withdraw, uint _amount) public
    |        onlyEscrow
    |    {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(656)

[31mViolation[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev Fuction for investor, minimun ether send is 0.1, one address can call one time in one session
    |    /// @param _choose choise of investor, true is call, false is put
  > |    function invest (bool _choose)
    |        public
    |        payable
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(740)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |* Binary option smart contract-------------------------------
    |*/
  > |contract BinaryOption {
    |    /*
    |     * binary option controled by escrow to buy NAC with good price
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(532)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |     */
    |    // NamiCrowdSale address
  > |    address public namiCrowdSaleAddr;
    |    address public escrow;
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(537)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    // NamiCrowdSale address
    |    address public namiCrowdSaleAddr;
  > |    address public escrow;
    |    
    |    // namiMultiSigWallet
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(538)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    
    |    // namiMultiSigWallet
  > |    address public namiMultiSigWallet;
    |    
    |    Session public session;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(541)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    address public namiMultiSigWallet;
    |    
  > |    Session public session;
    |    uint public timeInvestInMinute = 30;
    |    uint public timeOneSession = 180;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(543)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    
    |    Session public session;
  > |    uint public timeInvestInMinute = 30;
    |    uint public timeOneSession = 180;
    |    uint public sessionId = 1;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(544)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    Session public session;
    |    uint public timeInvestInMinute = 30;
  > |    uint public timeOneSession = 180;
    |    uint public sessionId = 1;
    |    uint public rate = 190;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(545)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    uint public timeInvestInMinute = 30;
    |    uint public timeOneSession = 180;
  > |    uint public sessionId = 1;
    |    uint public rate = 190;
    |    uint public constant MAX_INVESTOR = 20;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(546)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    uint public timeOneSession = 180;
    |    uint public sessionId = 1;
  > |    uint public rate = 190;
    |    uint public constant MAX_INVESTOR = 20;
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(547)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    uint public sessionId = 1;
    |    uint public rate = 190;
  > |    uint public constant MAX_INVESTOR = 20;
    |    /**
    |     * Events for binany option system
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(548)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    
    |    // change escrow
  > |    function changeEscrow(address _escrow) public
    |        onlyNamiMultisig
    |    {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(606)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    // price of NAC for investor win = _rate/100
    |    // price of NAC for investor loss = 2 - _rate/100
  > |    function changeRate(uint _rate)
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(626)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    // @return List of owner addresses.
    |    // MAX_INVESTOR = 20
  > |    function getInvestors()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(668)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    }
    |    
  > |    function getChooses()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(680)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    }
    |    
  > |    function getAmount()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(692)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev reset all data of previous session, must run before open new session
    |    // only escrow can call
  > |    function resetSession()
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(706)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    
    |    /// @dev Open new session, only escrow can call
  > |    function openSession ()
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(725)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @dev close invest for escrow
    |    /// @param _priceOpen price ETH in USD
  > |    function closeInvest (uint _priceOpen) 
    |        public
    |        onlyEscrow
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(757)

[33mWarning[0m for MissingInputValidation in contract 'BinaryOption':
    |    /// @param _rate rate between win and loss investor
    |    /// @param _status true for investor win and false for investor loss
  > |    function getEtherToBuy (uint _ether, uint _rate, bool _status)
    |        public
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(772)

[33mWarning[0m for TODAmount in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(650)

[33mWarning[0m for TODAmount in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(661)

[33mWarning[0m for TODReceiver in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(650)

[33mWarning[0m for TODReceiver in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(661)

[33mWarning[0m for TODReceiver in contract 'BinaryOption':
    |                etherToBuy = getEtherToBuy(session.amountInvest[i], rate, false);
    |            }
  > |            namiContract.buy.value(etherToBuy)(session.investor[i]);
    |            // reset investor
    |            session.investor[i] = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(803)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(650)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |    {
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
  > |        if (namiWallet.isOwner(_withdraw)) {
    |            _withdraw.transfer(_amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(660)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(661)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |        uint etherToBuy;
    |        NamiCrowdSale namiContract = NamiCrowdSale(namiCrowdSaleAddr);
  > |        uint price = namiContract.getPrice();
    |        for (uint i = 0; i < session.investorCount; i++) {
    |            if (session.win[i]==result) {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(796)

[33mWarning[0m for UnhandledException in contract 'BinaryOption':
    |                etherToBuy = getEtherToBuy(session.amountInvest[i], rate, false);
    |            }
  > |            namiContract.buy.value(etherToBuy)(session.investor[i]);
    |            // reset investor
    |            session.investor[i] = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(803)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BinaryOption':
    |    {
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
  > |        if (namiWallet.isOwner(_withdraw)) {
    |            _withdraw.transfer(_amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(660)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BinaryOption':
    |        uint etherToBuy;
    |        NamiCrowdSale namiContract = NamiCrowdSale(namiCrowdSaleAddr);
  > |        uint price = namiContract.getPrice();
    |        for (uint i = 0; i < session.investorCount; i++) {
    |            if (session.win[i]==result) {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(796)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BinaryOption':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(650)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BinaryOption':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(661)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.investorCount = 0;
    |        for (uint i = 0; i < MAX_INVESTOR; i++) {
  > |            session.investor[i] = 0x0;
    |            session.win[i] = false;
    |            session.amountInvest[i] = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(718)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        for (uint i = 0; i < MAX_INVESTOR; i++) {
    |            session.investor[i] = 0x0;
  > |            session.win[i] = false;
    |            session.amountInvest[i] = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(719)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            session.investor[i] = 0x0;
    |            session.win[i] = false;
  > |            session.amountInvest[i] = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(720)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(now < (session.timeOpen + timeInvestInMinute * 1 minutes));
    |        require(session.investorCount < MAX_INVESTOR && session.investedSession[msg.sender] != sessionId);
  > |        session.investor[session.investorCount] = msg.sender;
    |        session.win[session.investorCount] = _choose;
    |        session.amountInvest[session.investorCount] = msg.value;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(747)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(session.investorCount < MAX_INVESTOR && session.investedSession[msg.sender] != sessionId);
    |        session.investor[session.investorCount] = msg.sender;
  > |        session.win[session.investorCount] = _choose;
    |        session.amountInvest[session.investorCount] = msg.value;
    |        session.investorCount += 1;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(748)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.investor[session.investorCount] = msg.sender;
    |        session.win[session.investorCount] = _choose;
  > |        session.amountInvest[session.investorCount] = msg.value;
    |        session.investorCount += 1;
    |        session.investedSession[msg.sender] = sessionId;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(749)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.win[session.investorCount] = _choose;
    |        session.amountInvest[session.investorCount] = msg.value;
  > |        session.investorCount += 1;
    |        session.investedSession[msg.sender] = sessionId;
    |        Invest(msg.sender, _choose, msg.value, now, sessionId);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(750)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            namiContract.buy.value(etherToBuy)(session.investor[i]);
    |            // reset investor
  > |            session.investor[i] = 0x0;
    |            session.win[i] = false;
    |            session.amountInvest[i] = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(805)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            // reset investor
    |            session.investor[i] = 0x0;
  > |            session.win[i] = false;
    |            session.amountInvest[i] = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(806)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            session.investor[i] = 0x0;
    |            session.win[i] = false;
  > |            session.amountInvest[i] = 0;
    |        }
    |        session.isOpen = false;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(807)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |            session.amountInvest[i] = 0;
    |        }
  > |        session.isOpen = false;
    |        SessionClose(now, sessionId, _priceClose, price, rate);
    |        sessionId += 1;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(809)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isOpen = false;
    |        SessionClose(now, sessionId, _priceClose, price, rate);
  > |        sessionId += 1;
    |        
    |        // require(!session.isReset && !session.isOpen);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(811)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        // require(!session.isReset && !session.isOpen);
    |        // reset state session
  > |        session.priceOpen = 0;
    |        session.priceClose = 0;
    |        session.isReset = true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(815)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        // reset state session
    |        session.priceOpen = 0;
  > |        session.priceClose = 0;
    |        session.isReset = true;
    |        session.investOpen = false;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(816)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.priceOpen = 0;
    |        session.priceClose = 0;
  > |        session.isReset = true;
    |        session.investOpen = false;
    |        session.investorCount = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(817)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.priceClose = 0;
    |        session.isReset = true;
  > |        session.investOpen = false;
    |        session.investorCount = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(818)

[31mViolation[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isReset = true;
    |        session.investOpen = false;
  > |        session.investorCount = 0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(819)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.amountInvest[session.investorCount] = msg.value;
    |        session.investorCount += 1;
  > |        session.investedSession[msg.sender] = sessionId;
    |        Invest(msg.sender, _choose, msg.value, now, sessionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(751)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(_escrow != 0x0);
  > |        escrow = _escrow;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(610)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(!session.isOpen && _timeInvest < timeOneSession);
  > |        timeInvestInMinute = _timeInvest;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(620)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(100 < _rate && _rate < 200 && !session.isOpen);
  > |        rate = _rate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(631)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(!session.isOpen && _timeOneSession > timeInvestInMinute);
  > |        timeOneSession = _timeOneSession;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(639)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(!session.isReset && !session.isOpen);
  > |        session.priceOpen = 0;
    |        session.priceClose = 0;
    |        session.isReset = true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(711)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(!session.isReset && !session.isOpen);
    |        session.priceOpen = 0;
  > |        session.priceClose = 0;
    |        session.isReset = true;
    |        session.isOpen = false;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(712)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.priceOpen = 0;
    |        session.priceClose = 0;
  > |        session.isReset = true;
    |        session.isOpen = false;
    |        session.investOpen = false;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(713)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.priceClose = 0;
    |        session.isReset = true;
  > |        session.isOpen = false;
    |        session.investOpen = false;
    |        session.investorCount = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isReset = true;
    |        session.isOpen = false;
  > |        session.investOpen = false;
    |        session.investorCount = 0;
    |        for (uint i = 0; i < MAX_INVESTOR; i++) {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isOpen = false;
    |        session.investOpen = false;
  > |        session.investorCount = 0;
    |        for (uint i = 0; i < MAX_INVESTOR; i++) {
    |            session.investor[i] = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(716)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |    {
    |        require(session.isReset && !session.isOpen);
  > |        session.isReset = false;
    |        // open invest
    |        session.investOpen = true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(730)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.isReset = false;
    |        // open invest
  > |        session.investOpen = true;
    |        session.timeOpen = now;
    |        session.isOpen = true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(732)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        // open invest
    |        session.investOpen = true;
  > |        session.timeOpen = now;
    |        session.isOpen = true;
    |        SessionOpen(now, sessionId);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(733)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        session.investOpen = true;
    |        session.timeOpen = now;
  > |        session.isOpen = true;
    |        SessionOpen(now, sessionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(734)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(_priceOpen != 0 && session.investOpen);
    |        require(now > (session.timeOpen + timeInvestInMinute * 1 minutes));
  > |        session.investOpen = false;
    |        session.priceOpen = _priceOpen;
    |        InvestClose(now, _priceOpen, sessionId);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(763)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(now > (session.timeOpen + timeInvestInMinute * 1 minutes));
    |        session.investOpen = false;
  > |        session.priceOpen = _priceOpen;
    |        InvestClose(now, _priceOpen, sessionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(764)

[33mWarning[0m for UnrestrictedWrite in contract 'BinaryOption':
    |        require(_priceClose != 0 && now > (session.timeOpen + timeOneSession * 1 minutes));
    |        require(!session.investOpen && session.isOpen);
  > |        session.priceClose = _priceClose;
    |        bool result = (_priceClose>session.priceOpen)?true:false;
    |        uint etherToBuy;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(792)

[33mWarning[0m for DAOConstantGas in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(410)

[33mWarning[0m for DAOConstantGas in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(419)

[33mWarning[0m for LockedEther in contract 'NamiCrowdSale':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract NamiCrowdSale {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(50)

[33mWarning[0m for TODAmount in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(410)

[33mWarning[0m for TODAmount in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(419)

[33mWarning[0m for TODReceiver in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(410)

[33mWarning[0m for TODReceiver in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(419)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(243)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(410)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |    {
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
  > |        if (namiWallet.isOwner(_withdraw)) {
    |            _withdraw.transfer(_amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(418)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(419)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |    {
    |        PresaleToken presale = PresaleToken(namiPresale);
  > |        uint256 newToken = presale.balanceOf(_from);
    |        require(newToken > 0);
    |        // burn old token
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(437)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        require(newToken > 0);
    |        // burn old token
  > |        presale.burnTokens(_from);
    |        // add new token to _to
    |        balanceOf[_to] = balanceOf[_to].add(newToken);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(440)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        if (codeLength > 0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallbackExchange(msg.sender, _value, _price);
    |            TransferToExchange(msg.sender, _to, _value, _price);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(492)

[33mWarning[0m for UnhandledException in contract 'NamiCrowdSale':
    |        if (codeLength > 0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallbackBuyer(msg.sender, _value, _buyer);
    |            TransferToBuyer(msg.sender, _to, _value, _buyer);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(521)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |    {
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
  > |        if (namiWallet.isOwner(_withdraw)) {
    |            _withdraw.transfer(_amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(418)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |    {
    |        PresaleToken presale = PresaleToken(namiPresale);
  > |        uint256 newToken = presale.balanceOf(_from);
    |        require(newToken > 0);
    |        // burn old token
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        require(newToken > 0);
    |        // burn old token
  > |        presale.burnTokens(_from);
    |        // add new token to _to
    |        balanceOf[_to] = balanceOf[_to].add(newToken);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(440)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        if (codeLength > 0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallbackExchange(msg.sender, _value, _price);
    |            TransferToExchange(msg.sender, _to, _value, _price);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        if (codeLength > 0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallbackBuyer(msg.sender, _value, _buyer);
    |            TransferToBuyer(msg.sender, _to, _value, _buyer);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(521)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        // Available at any phase.
    |        if (this.balance > 0) {
  > |            namiMultiSigWallet.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiCrowdSale':
    |        NamiMultiSigWallet namiWallet = NamiMultiSigWallet(namiMultiSigWallet);
    |        if (namiWallet.isOwner(_withdraw)) {
  > |            _withdraw.transfer(_amount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |    {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        returns (bool success) 
    |    {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        require (totalSupply + newTokens < TOKEN_SUPPLY_LIMIT);
    |        // add new token to buyer
  > |        balanceOf[_buyer] = balanceOf[_buyer].add(newTokens);
    |        // add new token to totalSupply
    |        totalSupply = totalSupply.add(newTokens);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        balanceOf[_buyer] = balanceOf[_buyer].add(newTokens);
    |        // add new token to totalSupply
  > |        totalSupply = totalSupply.add(newTokens);
    |        LogBuy(_buyer,newTokens);
    |        Transfer(this,_buyer,newTokens);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        presale.burnTokens(_from);
    |        // add new token to _to
  > |        balanceOf[_to] = balanceOf[_to].add(newToken);
    |        // add new token to totalSupply
    |        totalSupply = totalSupply.add(newToken);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        balanceOf[_to] = balanceOf[_to].add(newToken);
    |        // add new token to totalSupply
  > |        totalSupply = totalSupply.add(newToken);
    |        LogMigrate(_from, _to, newToken);
    |        Transfer(this,_to,newToken);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        }
    |        
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender,_to,_value);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender,_to,_value);
    |        if (codeLength > 0) {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(488)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        }
    |        
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender,_to,_value);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender,_to,_value);
    |        if (codeLength > 0) {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        onlyEscrow
    |    {
  > |        TRANSFERABLE = !TRANSFERABLE;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |    {
    |        require(_escrow != 0x0);
  > |        escrow = _escrow;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        onlyEscrow
    |    {
  > |        binary = _binary;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |    {
    |        require(_binaryAddress != 0x0);
  > |        binaryAddress = _binaryAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        uint tokens = balanceOf[_owner];
    |        require(tokens != 0);
  > |        balanceOf[_owner] = 0;
    |        totalSupply -= tokens;
    |        LogBurn(_owner, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        require(tokens != 0);
    |        balanceOf[_owner] = 0;
  > |        totalSupply -= tokens;
    |        LogBurn(_owner, tokens);
    |        Transfer(_owner, crowdsaleManager, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        // Automatically switch phase when migration is done.
    |        if (totalSupply == 0) {
  > |            currentPhase = Phase.Migrated;
    |            LogPhaseSwitch(Phase.Migrated);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |
    |        require(canSwitchPhase);
  > |        currentPhase = _nextPhase;
    |        LogPhaseSwitch(_nextPhase);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiCrowdSale':
    |        // You can't change crowdsale contract when migration is in progress.
    |        require(currentPhase != Phase.Migrating);
  > |        crowdsaleManager = _mgr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(429)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |        uint currentEth = bid[_buyer].eth;
    |        if ((_value.div(bid[_buyer].price)) > currentEth) {
  > |            if (_from.send(currentEth) && asset.transfer(_buyer, currentEth.mul(bid[_buyer].price)) && asset.transfer(_from, _value - (currentEth.mul(bid[_buyer].price) ) ) ) {
    |                bid[_buyer].eth = 0;
    |                etherBalance = etherBalance.sub(currentEth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(945)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (_from.send(eth) && asset.transfer(_buyer, _value)) {
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
    |                etherBalance = etherBalance.sub(eth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(957)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |    function closeBidOrder() public {
    |        require(bid[msg.sender].eth > 0 && bid[msg.sender].price > 0);
  > |        msg.sender.transfer(bid[msg.sender].eth);
    |        etherBalance = etherBalance.sub(bid[msg.sender].eth);
    |        bid[msg.sender].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(972)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |        uint maxEth = (ask[_seller].volume).div(ask[_seller].price);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth)) && asset.transfer(msg.sender, ask[_seller].volume)) {
    |                nacBalance = nacBalance.sub(ask[_seller].volume);
    |                ask[_seller].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1012)

[31mViolation[0m for DAOConstantGas in contract 'NamiExchange':
    |            }
    |        } else {
  > |            if (_seller.send(msg.value) && asset.transfer(msg.sender, (msg.value).mul(ask[_seller].price))) {
    |                uint nac = (msg.value).mul(ask[_seller].price);
    |                nacBalance = nacBalance.sub(nac);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1022)

[33mWarning[0m for DAOConstantGas in contract 'NamiExchange':
    |        } else {
    |            // refund
  > |            msg.sender.transfer(msg.value);
    |        }
    |        // test
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(899)

[33mWarning[0m for LockedEther in contract 'NamiExchange':
    | */
    |
  > |contract NamiExchange {
    |    using SafeMath for uint;
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(856)

[33mWarning[0m for TODAmount in contract 'NamiExchange':
    |        uint currentEth = bid[_buyer].eth;
    |        if ((_value.div(bid[_buyer].price)) > currentEth) {
  > |            if (_from.send(currentEth) && asset.transfer(_buyer, currentEth.mul(bid[_buyer].price)) && asset.transfer(_from, _value - (currentEth.mul(bid[_buyer].price) ) ) ) {
    |                bid[_buyer].eth = 0;
    |                etherBalance = etherBalance.sub(currentEth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(945)

[33mWarning[0m for TODAmount in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (_from.send(eth) && asset.transfer(_buyer, _value)) {
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
    |                etherBalance = etherBalance.sub(eth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(957)

[33mWarning[0m for TODAmount in contract 'NamiExchange':
    |        uint maxEth = (ask[_seller].volume).div(ask[_seller].price);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth)) && asset.transfer(msg.sender, ask[_seller].volume)) {
    |                nacBalance = nacBalance.sub(ask[_seller].volume);
    |                ask[_seller].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1012)

[33mWarning[0m for TODAmount in contract 'NamiExchange':
    |        uint maxEth = (ask[_seller].volume).div(ask[_seller].price);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth)) && asset.transfer(msg.sender, ask[_seller].volume)) {
    |                nacBalance = nacBalance.sub(ask[_seller].volume);
    |                ask[_seller].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1012)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |        } else {
    |            // refund
  > |            msg.sender.transfer(msg.value);
    |        }
    |        // test
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(899)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |        uint currentEth = bid[_buyer].eth;
    |        if ((_value.div(bid[_buyer].price)) > currentEth) {
  > |            if (_from.send(currentEth) && asset.transfer(_buyer, currentEth.mul(bid[_buyer].price)) && asset.transfer(_from, _value - (currentEth.mul(bid[_buyer].price) ) ) ) {
    |                bid[_buyer].eth = 0;
    |                etherBalance = etherBalance.sub(currentEth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(945)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (_from.send(eth) && asset.transfer(_buyer, _value)) {
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
    |                etherBalance = etherBalance.sub(eth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(957)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |    function closeBidOrder() public {
    |        require(bid[msg.sender].eth > 0 && bid[msg.sender].price > 0);
  > |        msg.sender.transfer(bid[msg.sender].eth);
    |        etherBalance = etherBalance.sub(bid[msg.sender].eth);
    |        bid[msg.sender].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(972)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |        uint maxEth = (ask[_seller].volume).div(ask[_seller].price);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth)) && asset.transfer(msg.sender, ask[_seller].volume)) {
    |                nacBalance = nacBalance.sub(ask[_seller].volume);
    |                ask[_seller].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1012)

[33mWarning[0m for TODReceiver in contract 'NamiExchange':
    |            }
    |        } else {
  > |            if (_seller.send(msg.value) && asset.transfer(msg.sender, (msg.value).mul(ask[_seller].price))) {
    |                uint nac = (msg.value).mul(ask[_seller].price);
    |                nacBalance = nacBalance.sub(nac);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1022)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        } else {
    |            // refund
  > |            msg.sender.transfer(msg.value);
    |        }
    |        // test
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(899)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |            //refund
    |            ERC23 asset = ERC23(NamiAddr);
  > |            asset.transfer(_from, _value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(917)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        uint currentEth = bid[_buyer].eth;
    |        if ((_value.div(bid[_buyer].price)) > currentEth) {
  > |            if (_from.send(currentEth) && asset.transfer(_buyer, currentEth.mul(bid[_buyer].price)) && asset.transfer(_from, _value - (currentEth.mul(bid[_buyer].price) ) ) ) {
    |                bid[_buyer].eth = 0;
    |                etherBalance = etherBalance.sub(currentEth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(945)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |            } else {
    |                // refund token
  > |                asset.transfer(_from, _value);
    |                return false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(952)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (_from.send(eth) && asset.transfer(_buyer, _value)) {
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
    |                etherBalance = etherBalance.sub(eth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(957)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |            } else {
    |                // refund token
  > |                asset.transfer(_from, _value);
    |                return false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(964)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |    function closeBidOrder() public {
    |        require(bid[msg.sender].eth > 0 && bid[msg.sender].price > 0);
  > |        msg.sender.transfer(bid[msg.sender].eth);
    |        etherBalance = etherBalance.sub(bid[msg.sender].eth);
    |        bid[msg.sender].eth = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(972)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        require(ask[msg.sender].volume > 0 && ask[msg.sender].price > 0);
    |        ERC23 asset = ERC23(NamiAddr);
  > |        if (asset.transfer(msg.sender, ask[msg.sender].volume)) {
    |            nacBalance = nacBalance.sub(ask[msg.sender].volume);
    |            ask[msg.sender].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1000)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |        uint maxEth = (ask[_seller].volume).div(ask[_seller].price);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth)) && asset.transfer(msg.sender, ask[_seller].volume)) {
    |                nacBalance = nacBalance.sub(ask[_seller].volume);
    |                ask[_seller].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1012)

[33mWarning[0m for UnhandledException in contract 'NamiExchange':
    |            }
    |        } else {
  > |            if (_seller.send(msg.value) && asset.transfer(msg.sender, (msg.value).mul(ask[_seller].price))) {
    |                uint nac = (msg.value).mul(ask[_seller].price);
    |                nacBalance = nacBalance.sub(nac);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1022)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |            //refund
    |            ERC23 asset = ERC23(NamiAddr);
  > |            asset.transfer(_from, _value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(917)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        uint currentEth = bid[_buyer].eth;
    |        if ((_value.div(bid[_buyer].price)) > currentEth) {
  > |            if (_from.send(currentEth) && asset.transfer(_buyer, currentEth.mul(bid[_buyer].price)) && asset.transfer(_from, _value - (currentEth.mul(bid[_buyer].price) ) ) ) {
    |                bid[_buyer].eth = 0;
    |                etherBalance = etherBalance.sub(currentEth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(945)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |            } else {
    |                // refund token
  > |                asset.transfer(_from, _value);
    |                return false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(952)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        } else {
    |            uint eth = _value.div(bid[_buyer].price);
  > |            if (_from.send(eth) && asset.transfer(_buyer, _value)) {
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
    |                etherBalance = etherBalance.sub(eth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(957)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |            } else {
    |                // refund token
  > |                asset.transfer(_from, _value);
    |                return false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(964)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        require(ask[msg.sender].volume > 0 && ask[msg.sender].price > 0);
    |        ERC23 asset = ERC23(NamiAddr);
  > |        if (asset.transfer(msg.sender, ask[msg.sender].volume)) {
    |            nacBalance = nacBalance.sub(ask[msg.sender].volume);
    |            ask[msg.sender].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1000)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |        uint maxEth = (ask[_seller].volume).div(ask[_seller].price);
    |        if (msg.value > maxEth) {
  > |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth)) && asset.transfer(msg.sender, ask[_seller].volume)) {
    |                nacBalance = nacBalance.sub(ask[_seller].volume);
    |                ask[_seller].volume = 0;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1012)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NamiExchange':
    |            }
    |        } else {
  > |            if (_seller.send(msg.value) && asset.transfer(msg.sender, (msg.value).mul(ask[_seller].price))) {
    |                uint nac = (msg.value).mul(ask[_seller].price);
    |                nacBalance = nacBalance.sub(nac);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1022)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        require(msg.value > 0);
    |        if (bid[msg.sender].price > 0) {
  > |            bid[msg.sender].eth = (bid[msg.sender].eth).add(msg.value);
    |            etherBalance = etherBalance.add(msg.value);
    |            UpdateBid(msg.sender, bid[msg.sender].price, bid[msg.sender].eth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(894)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        if (bid[msg.sender].price > 0) {
    |            bid[msg.sender].eth = (bid[msg.sender].eth).add(msg.value);
  > |            etherBalance = etherBalance.add(msg.value);
    |            UpdateBid(msg.sender, bid[msg.sender].price, bid[msg.sender].eth);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(895)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        require(_value > 0 && _data.length == 0);
    |        if (ask[_from].price > 0) {
  > |            ask[_from].volume = (ask[_from].volume).add(_value);
    |            nacBalance = nacBalance.add(_value);
    |            UpdateAsk(_from, ask[_from].price, ask[_from].volume);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(910)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        if (ask[_from].price > 0) {
    |            ask[_from].volume = (ask[_from].volume).add(_value);
  > |            nacBalance = nacBalance.add(_value);
    |            UpdateAsk(_from, ask[_from].price, ask[_from].volume);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(911)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        if (msg.value > 0) {
    |            etherBalance += msg.value;
  > |            bid[msg.sender].eth = (bid[msg.sender].eth).add(msg.value);
    |            UpdateBid(msg.sender, _price, bid[msg.sender].eth);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(935)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |            UpdateBid(msg.sender, _price, bid[msg.sender].eth);
    |        }
  > |        bid[msg.sender].price = _price;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(938)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        if ((_value.div(bid[_buyer].price)) > currentEth) {
    |            if (_from.send(currentEth) && asset.transfer(_buyer, currentEth.mul(bid[_buyer].price)) && asset.transfer(_from, _value - (currentEth.mul(bid[_buyer].price) ) ) ) {
  > |                bid[_buyer].eth = 0;
    |                etherBalance = etherBalance.sub(currentEth);
    |                UpdateBid(_buyer, bid[_buyer].price, bid[_buyer].eth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(946)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |            if (_from.send(currentEth) && asset.transfer(_buyer, currentEth.mul(bid[_buyer].price)) && asset.transfer(_from, _value - (currentEth.mul(bid[_buyer].price) ) ) ) {
    |                bid[_buyer].eth = 0;
  > |                etherBalance = etherBalance.sub(currentEth);
    |                UpdateBid(_buyer, bid[_buyer].price, bid[_buyer].eth);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(947)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |            uint eth = _value.div(bid[_buyer].price);
    |            if (_from.send(eth) && asset.transfer(_buyer, _value)) {
  > |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
    |                etherBalance = etherBalance.sub(eth);
    |                UpdateBid(_buyer, bid[_buyer].price, bid[_buyer].eth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(958)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |            if (_from.send(eth) && asset.transfer(_buyer, _value)) {
    |                bid[_buyer].eth = (bid[_buyer].eth).sub(eth);
  > |                etherBalance = etherBalance.sub(eth);
    |                UpdateBid(_buyer, bid[_buyer].price, bid[_buyer].eth);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(959)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        require(bid[msg.sender].eth > 0 && bid[msg.sender].price > 0);
    |        msg.sender.transfer(bid[msg.sender].eth);
  > |        etherBalance = etherBalance.sub(bid[msg.sender].eth);
    |        bid[msg.sender].eth = 0;
    |        UpdateBid(msg.sender, bid[msg.sender].price, bid[msg.sender].eth);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(973)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        msg.sender.transfer(bid[msg.sender].eth);
    |        etherBalance = etherBalance.sub(bid[msg.sender].eth);
  > |        bid[msg.sender].eth = 0;
    |        UpdateBid(msg.sender, bid[msg.sender].price, bid[msg.sender].eth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(974)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        require(_price > 0);
    |        if (_value > 0) {
  > |            nacBalance = nacBalance.add(_value);
    |            ask[_from].volume = (ask[_from].volume).add(_value);
    |            ask[_from].price = _price;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(986)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        if (_value > 0) {
    |            nacBalance = nacBalance.add(_value);
  > |            ask[_from].volume = (ask[_from].volume).add(_value);
    |            ask[_from].price = _price;
    |            UpdateAsk(_from, _price, ask[_from].volume);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(987)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |            nacBalance = nacBalance.add(_value);
    |            ask[_from].volume = (ask[_from].volume).add(_value);
  > |            ask[_from].price = _price;
    |            UpdateAsk(_from, _price, ask[_from].volume);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(988)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |            return true;
    |        } else {
  > |            ask[_from].price = _price;
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(992)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        ERC23 asset = ERC23(NamiAddr);
    |        if (asset.transfer(msg.sender, ask[msg.sender].volume)) {
  > |            nacBalance = nacBalance.sub(ask[msg.sender].volume);
    |            ask[msg.sender].volume = 0;
    |            UpdateAsk(msg.sender, ask[msg.sender].price, 0);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1001)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        if (asset.transfer(msg.sender, ask[msg.sender].volume)) {
    |            nacBalance = nacBalance.sub(ask[msg.sender].volume);
  > |            ask[msg.sender].volume = 0;
    |            UpdateAsk(msg.sender, ask[msg.sender].price, 0);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1002)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |        if (msg.value > maxEth) {
    |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth)) && asset.transfer(msg.sender, ask[_seller].volume)) {
  > |                nacBalance = nacBalance.sub(ask[_seller].volume);
    |                ask[_seller].volume = 0;
    |                UpdateAsk(_seller, ask[_seller].price, 0);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1013)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |            if (_seller.send(maxEth) && msg.sender.send(msg.value.sub(maxEth)) && asset.transfer(msg.sender, ask[_seller].volume)) {
    |                nacBalance = nacBalance.sub(ask[_seller].volume);
  > |                ask[_seller].volume = 0;
    |                UpdateAsk(_seller, ask[_seller].price, 0);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1014)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |            if (_seller.send(msg.value) && asset.transfer(msg.sender, (msg.value).mul(ask[_seller].price))) {
    |                uint nac = (msg.value).mul(ask[_seller].price);
  > |                nacBalance = nacBalance.sub(nac);
    |                ask[_seller].volume = (ask[_seller].volume).sub(nac);
    |                UpdateAsk(_seller, ask[_seller].price, ask[_seller].volume);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1024)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiExchange':
    |                uint nac = (msg.value).mul(ask[_seller].price);
    |                nacBalance = nacBalance.sub(nac);
  > |                ask[_seller].volume = (ask[_seller].volume).sub(nac);
    |                UpdateAsk(_seller, ask[_seller].price, ask[_seller].volume);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1025)

[31mViolation[0m for DAO in contract 'NamiMultiSigWallet':
    |            transactions[transactionId].executed = true;
    |            // tx.executed = true;
  > |            if (transactions[transactionId].destination.call.value(transactions[transactionId].value)(transactions[transactionId].data)) {
    |                Execution(transactionId);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1261)

[33mWarning[0m for LockedEther in contract 'NamiMultiSigWallet':
    |*/
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
  > |contract NamiMultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1047)

[33mWarning[0m for UnhandledException in contract 'NamiMultiSigWallet':
    |            transactions[transactionId].executed = true;
    |            // tx.executed = true;
  > |            if (transactions[transactionId].destination.call.value(transactions[transactionId].value)(transactions[transactionId].data)) {
    |                Execution(transactionId);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1261)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |*/
    |/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
  > |contract NamiMultiSigWallet {
    |
    |    uint constant public MAX_OWNER_COUNT = 50;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1047)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        for (uint i=0; i<owners.length - 1; i++) {
    |            if (owners[i] == owner) {
  > |                owners[i] = owners[owners.length - 1];
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1171)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        for (uint i=0; i<owners.length; i++) {
    |            if (owners[i] == owner) {
  > |                owners[i] = newOwner;
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1192)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |            }
    |        }
  > |        isOwner[owner] = false;
    |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1196)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        }
    |        isOwner[owner] = false;
  > |        isOwner[newOwner] = true;
    |        OwnerRemoval(owner);
    |        OwnerAddition(newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1197)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |    {
    |        transactionId = transactionCount;
  > |        transactions[transactionId] = Transaction({
    |            destination: destination, 
    |            value: value,
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1301)

[31mViolation[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |            executed: false
    |        });
  > |        transactionCount += 1;
    |        Submission(transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1307)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        notConfirmed(transactionId, msg.sender)
    |    {
  > |        confirmations[transactionId][msg.sender] = true;
    |        Confirmation(msg.sender, transactionId);
    |        executeTransaction(transactionId);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1234)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        notExecuted(transactionId)
    |    {
  > |        confirmations[transactionId][msg.sender] = false;
    |        Revocation(msg.sender, transactionId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1247)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |pragma solidity ^0.4.18;
    |/**
  > | * Math operations with safety checks
    | */
    |library SafeMath {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        validRequirement(owners.length + 1, required)
    |    {
  > |        isOwner[owner] = true;
    |        owners.push(owner);
    |        OwnerAddition(owner);
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1156)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |    {
    |        isOwner[owner] = true;
  > |        owners.push(owner);
    |        OwnerAddition(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1157)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        ownerExists(owner)
    |    {
  > |        isOwner[owner] = false;
    |        for (uint i=0; i<owners.length - 1; i++) {
    |            if (owners[i] == owner) {
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1168)

[33mWarning[0m for UnrestrictedWrite in contract 'NamiMultiSigWallet':
    |        validRequirement(owners.length, _required)
    |    {
  > |        required = _required;
    |        RequirementChange(_required);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(1209)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal pure returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x8d80de8a78198396329dfa769ad54d24bf90e7aa.sol(5)


