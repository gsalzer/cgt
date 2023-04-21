Processing contract: /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol:Notify
Processing contract: /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol:ReentryProtected
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol:depositoTest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol:depositofferToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol:depositofferTokenAbstract
Processing contract: /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol:depositofferTokenConfig
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token
    |{
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        return xfer(_from, _to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        if(_amount == 0) return true;
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        balances[_to]   = balances[_to].add(_amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(221)

[33mWarning[0m for LockedEther in contract 'ReentryProtected':
    |
    |
  > |contract ReentryProtected
    |{
    |    // The reentry protection state mutex.
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(99)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath
    |{
    |    // a add to b
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(70)

[33mWarning[0m for LockedEther in contract 'depositoTest':
    |
    |
  > |contract depositoTest is Notify
    |{
    |    address public dot;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(707)

[31mViolation[0m for MissingInputValidation in contract 'depositoTest':
    |    address public dot;
    |    
  > |    function setdot(address _addr) { dot = _addr; }
    |    
    |    function notify(address _from, uint _amount) public returns (bool)
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(711)

[33mWarning[0m for MissingInputValidation in contract 'depositoTest':
    |contract depositoTest is Notify
    |{
  > |    address public dot;
    |    
    |    function setdot(address _addr) { dot = _addr; }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(709)

[33mWarning[0m for MissingInputValidation in contract 'depositoTest':
    |    function setdot(address _addr) { dot = _addr; }
    |    
  > |    function notify(address _from, uint _amount) public returns (bool)
    |    {
    |        require(msg.sender == dot);
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(713)

[31mViolation[0m for UnrestrictedWrite in contract 'depositoTest':
    |    address public dot;
    |    
  > |    function setdot(address _addr) { dot = _addr; }
    |    
    |    function notify(address _from, uint _amount) public returns (bool)
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(711)

[31mViolation[0m for DAOConstantGas in contract 'depositofferToken':
    |
    |        FundsTransferred(fundWallet, this.balance);
  > |        fundWallet.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(561)

[33mWarning[0m for LockedEther in contract 'depositofferToken':
    |\*----------------------------------------------------------------------------*/
    |
  > |contract depositofferToken is 
    |    ReentryProtected,
    |    ERC20Token,
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(355)

[31mViolation[0m for TODAmount in contract 'depositofferToken':
    |
    |        FundsTransferred(fundWallet, this.balance);
  > |        fundWallet.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(561)

[33mWarning[0m for TODAmount in contract 'depositofferToken':
    |        Refunded(_addr, value);
    |        if (value > 0) {
  > |            _addr.transfer(value);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(585)

[33mWarning[0m for TODReceiver in contract 'depositofferToken':
    |        Refunded(_addr, value);
    |        if (value > 0) {
  > |            _addr.transfer(value);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(585)

[33mWarning[0m for UnhandledException in contract 'depositofferToken':
    |
    |        FundsTransferred(fundWallet, this.balance);
  > |        fundWallet.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(561)

[33mWarning[0m for UnhandledException in contract 'depositofferToken':
    |        Refunded(_addr, value);
    |        if (value > 0) {
  > |            _addr.transfer(value);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(585)

[33mWarning[0m for UnhandledException in contract 'depositofferToken':
    |        if (_to == deposito)
    |            // Notify the deposito contract it has been sent tokens
  > |            require(Notify(deposito).notify(msg.sender, _amount));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(605)

[33mWarning[0m for UnhandledException in contract 'depositofferToken':
    |        if (_to == deposito)
    |            // Notify the deposito contract it has been sent tokens
  > |            require(Notify(deposito).notify(msg.sender, _amount));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(620)

[33mWarning[0m for UnhandledException in contract 'depositofferToken':
    |        returns (bool) 
    |    {
  > |        require(ERC20Token(tokenAddress).transfer(owner, amount));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(693)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'depositofferToken':
    |
    |        FundsTransferred(fundWallet, this.balance);
  > |        fundWallet.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(561)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'depositofferToken':
    |        Refunded(_addr, value);
    |        if (value > 0) {
  > |            _addr.transfer(value);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(585)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'depositofferToken':
    |        if (_to == deposito)
    |            // Notify the deposito contract it has been sent tokens
  > |            require(Notify(deposito).notify(msg.sender, _amount));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'depositofferToken':
    |        if (_to == deposito)
    |            // Notify the deposito contract it has been sent tokens
  > |            require(Notify(deposito).notify(msg.sender, _amount));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(620)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'depositofferToken':
    |        returns (bool) 
    |    {
  > |        require(ERC20Token(tokenAddress).transfer(owner, amount));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(693)

[31mViolation[0m for UnrestrictedWrite in contract 'depositofferToken':
    |    modifier preventReentry() {
    |        require(!__reMutex);
  > |        __reMutex = true;
    |        _;
    |        delete __reMutex;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        __reMutex = true;
    |        _;
  > |        delete __reMutex;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        return xfer(_from, _to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        if(_amount == 0) return true;
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        balances[_to]   = balances[_to].add(_amount);
    |        
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        balances[_to]   = balances[_to].add(_amount);
    |        
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        
    |        // Update holder payments
  > |        etherContributed[_addr] = etherContributed[_addr].add(msg.value);
    |        
    |        // Update funds raised
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(519)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        
    |        // Update funds raised
  > |        etherRaised = etherRaised.add(msg.value);
    |        
    |        // Bail if this pushes the fund over the USD cap or Token cap
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |       require(!fundFailed());
    |
  > |        kycAddresses[_addr] = _kyc;
    |        KYCAddress(_addr, _kyc);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        require(fundSucceeded());
    |
  > |        icoSuccessful = true;
    |
    |        FundsTransferred(fundWallet, this.balance);
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |
    |        // garbage collect
  > |        delete etherContributed[_addr];
    |        delete kycAddresses[_addr];
    |        
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        // garbage collect
    |        delete etherContributed[_addr];
  > |        delete kycAddresses[_addr];
    |        
    |        Refunded(_addr, value);
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |    modifier preventReentry() {
    |        require(!__reMutex);
  > |        __reMutex = true;
    |        _;
    |        delete __reMutex;
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        __reMutex = true;
    |        _;
  > |        delete __reMutex;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |    {
    |        require(!icoSuccessful);
  > |        delete __abortFuse;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |    {
    |        ChangeOwnerTo(_newOwner);
  > |        newOwner = _newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(647)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        require(msg.sender == newOwner);
    |        ChangedOwner(owner, newOwner);
  > |        owner = newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(659)

[33mWarning[0m for UnrestrictedWrite in contract 'depositofferToken':
    |        returns (bool)
    |    {
  > |        deposito = _addr;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(671)

[33mWarning[0m for LockedEther in contract 'depositofferTokenConfig':
    |
    |// Contains token sale parameters
  > |contract depositofferTokenConfig
    |{
    |    // ERC20 trade name and symbol
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |{
    |    // ERC20 trade name and symbol
  > |    string public           name            = "depositoffer network";
    |    string public           symbol          = "DOT";
    |
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |    // ERC20 trade name and symbol
    |    string public           name            = "depositoffer network";
  > |    string public           symbol          = "DOT";
    |
    |    // Owner has power to abort, discount addresses, sweep successful funds,
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |    // Owner has power to abort, discount addresses, sweep successful funds,
    |    // change owner, sweep alien tokens.
  > |    address public          owner           = 0xB353cF41A0CAa38D6597A7a1337debf0b09dd8ae; // Primary address checksummed
    |    
    |    // Fund wallet should also be audited prior to deployment
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |    // Fund wallet should also be audited prior to deployment
    |    // NOTE: Must be checksummed address!
  > |    address public          fundWallet      = 0xE4Be3157DBD71Acd7Ad5667db00AA111C0088195; // multiSig address checksummed
    |
    |    // Tokens awarded per USD contributed
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |
    |    // Tokens awarded per USD contributed
  > |    uint public constant    TOKENS_PER_USD  = 2;
    |
    |    // Ether market price in USD
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |
    |    // Ether market price in USD
  > |    uint public constant    USD_PER_ETH     = 800; // approx 7 day average High Low as at 29th OCT 2017
    |    
    |    // Minimum and maximum target in USD
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |    
    |    // Minimum and maximum target in USD
  > |    uint public constant    MIN_USD_FUND    = 1;  // $1
    |    uint public constant    MAX_USD_FUND    = 2000000; // $2 mio
    |    
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |    // Minimum and maximum target in USD
    |    uint public constant    MIN_USD_FUND    = 1;  // $1
  > |    uint public constant    MAX_USD_FUND    = 2000000; // $2 mio
    |    
    |    // Non-KYC contribution limit in USD
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |    
    |    // Non-KYC contribution limit in USD
  > |    uint public constant    KYC_USD_LMT     = 50000;
    |    
    |    // There will be exactly 4000000 tokens regardless of number sold
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |    // There will be exactly 4000000 tokens regardless of number sold
    |    // Unsold tokens are put given to the Founder on Trust to fund operations of the Project
  > |    uint public constant    MAX_TOKENS      = 4000000; // $4 mio
    |    
    |    // Funding begins on 30th OCT 2017
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |    
    |    //uint public constant    START_DATE      = 1509318001; // 30.10.2017 10 AM and 1 Sec Sydney Time
  > |      uint public constant    START_DATE      = 1520776337; // Monday March 12, 2018 00:52:17 (am) in time zone Australia/Sydney (AEDT)
    |      
    |    // Period for fundraising
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'depositofferTokenConfig':
    |      
    |    // Period for fundraising
  > |    uint public constant    FUNDING_PERIOD  = 180 days;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb402be8db1d9eb2beedfe2c8a6c38a604e9f13c6.sol(66)


