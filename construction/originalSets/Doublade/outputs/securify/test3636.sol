Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:DepositWalletInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:EmissionProvider
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:EmissionProviderEmitter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:Object
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:OracleContractAdapter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:Owned
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:Platform
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:Profiterole
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:ProfiteroleEmitter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:ServiceAllowance
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:Treasury
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol:TreasuryEmitter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EmissionProvider':
    |/// Full functionality of EmissionProvider issuance will be available after adding a smart contract
    |/// as part-owner of an ATx asset in asset's platform
  > |contract EmissionProvider is OracleContractAdapter, ServiceAllowance, EmissionProviderEmitter {
    |
    |    uint constant EMISSION_PROVIDER_ERROR_SCOPE = 107000;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(988)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |        for(uint i=0;i<tokens.length;i++) {
    |            address token = tokens[i];
  > |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
    |                ERC20Interface(token).transfer(_to,balance);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(104)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
  > |                ERC20Interface(token).transfer(_to,balance);
    |        }
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(106)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |    function init() public onlyContractOwner onlyInit returns (uint) {
    |        needInitialization = false;
  > |        bytes32 _symbol = Token(token).smbl();
    |        if (OK != Platform(Token(token).platform()).reissueAsset(_symbol, tokenSoftcap)) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1154)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |        needInitialization = false;
    |        bytes32 _symbol = Token(token).smbl();
  > |        if (OK != Platform(Token(token).platform()).reissueAsset(_symbol, tokenSoftcap)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1155)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |        tokenHardcapIssuedValue = _issued.add(_value);
    |
  > |        bytes32 _symbol = Token(_token).smbl();
    |        if (OK != Platform(Token(_token).platform()).reissueAsset(_symbol, _value)) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1246)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |
    |        bytes32 _symbol = Token(_token).smbl();
  > |        if (OK != Platform(Token(_token).platform()).reissueAsset(_symbol, _value)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1247)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |        }
    |
  > |        if (!Token(_token).transfer(_for, _value)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1251)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |        tokenSoftcapIssued = _issued.add(_value);
    |
  > |        if (!Token(_token).transfer(_for, _value)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1288)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |        }
    |
  > |        _emitEmission(Token(_token).smbl(), _for, _value);
    |        return OK;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1292)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |    function distributeBonuses() public onlyOracleOrOwner onlySaleFinished notDestructed returns (uint) {
    |        ERC20Interface _token = ERC20Interface(bonusToken);
  > |        uint _balance = _token.balanceOf(address(this));
    |
    |        if (_balance == 0) {
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1308)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |
    |        Profiterole _profiterole = Profiterole(profiterole);
  > |        if (!_token.approve(address(_profiterole), _balance)) {
    |            return _emitError(EMISSION_PROVIDER_ERROR_INTERNAL);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1315)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |        }
    |
  > |        if (OK != _profiterole.distributeBonuses(_balance)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1319)

[33mWarning[0m for UnhandledException in contract 'EmissionProvider':
    |
    |    function tokenFallback(address _sender, uint, bytes) external {
  > |        require(msg.sender == Token(token).getLatestVersion());
    |        require(oracles[_sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |        for(uint i=0;i<tokens.length;i++) {
    |            address token = tokens[i];
  > |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
    |                ERC20Interface(token).transfer(_to,balance);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
  > |                ERC20Interface(token).transfer(_to,balance);
    |        }
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |    function init() public onlyContractOwner onlyInit returns (uint) {
    |        needInitialization = false;
  > |        bytes32 _symbol = Token(token).smbl();
    |        if (OK != Platform(Token(token).platform()).reissueAsset(_symbol, tokenSoftcap)) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |        needInitialization = false;
    |        bytes32 _symbol = Token(token).smbl();
  > |        if (OK != Platform(Token(token).platform()).reissueAsset(_symbol, tokenSoftcap)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |        tokenHardcapIssuedValue = _issued.add(_value);
    |
  > |        bytes32 _symbol = Token(_token).smbl();
    |        if (OK != Platform(Token(_token).platform()).reissueAsset(_symbol, _value)) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |
    |        bytes32 _symbol = Token(_token).smbl();
  > |        if (OK != Platform(Token(_token).platform()).reissueAsset(_symbol, _value)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |        }
    |
  > |        if (!Token(_token).transfer(_for, _value)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |        tokenSoftcapIssued = _issued.add(_value);
    |
  > |        if (!Token(_token).transfer(_for, _value)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |        }
    |
  > |        _emitEmission(Token(_token).smbl(), _for, _value);
    |        return OK;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |    function distributeBonuses() public onlyOracleOrOwner onlySaleFinished notDestructed returns (uint) {
    |        ERC20Interface _token = ERC20Interface(bonusToken);
  > |        uint _balance = _token.balanceOf(address(this));
    |
    |        if (_balance == 0) {
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |
    |        Profiterole _profiterole = Profiterole(profiterole);
  > |        if (!_token.approve(address(_profiterole), _balance)) {
    |            return _emitError(EMISSION_PROVIDER_ERROR_INTERNAL);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |        }
    |
  > |        if (OK != _profiterole.distributeBonuses(_balance)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmissionProvider':
    |
    |    function tokenFallback(address _sender, uint, bytes) external {
  > |        require(msg.sender == Token(token).getLatestVersion());
    |        require(oracles[_sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1349)

[33mWarning[0m for UnrestrictedWrite in contract 'EmissionProvider':
    |        }
    |
  > |        pendingContractOwner = _to;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'EmissionProvider':
    |        }
    |
  > |        contractOwner = pendingContractOwner;
    |        delete pendingContractOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'EmissionProvider':
    |
    |        contractOwner = pendingContractOwner;
  > |        delete pendingContractOwner;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'EmissionProvider':
    |    /// Issue new ATx tokens for Softcap. After contract goes in Sale state
    |    function init() public onlyContractOwner onlyInit returns (uint) {
  > |        needInitialization = false;
    |        bytes32 _symbol = Token(token).smbl();
    |        if (OK != Platform(Token(token).platform()).reissueAsset(_symbol, tokenSoftcap)) {
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1153)

[33mWarning[0m for UnrestrictedWrite in contract 'EmissionProvider':
    |        }
    |
  > |        tokenHardcapIssuedValue = _issued.add(_value);
    |
    |        bytes32 _symbol = Token(_token).smbl();
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1244)

[33mWarning[0m for UnrestrictedWrite in contract 'EmissionProvider':
    |        }
    |
  > |        tokenSoftcapIssued = _issued.add(_value);
    |
    |        if (!Token(_token).transfer(_for, _value)) {
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1286)

[33mWarning[0m for UnrestrictedWrite in contract 'EmissionProvider':
    |    /// Only by contract owner and in sale period
    |    function finishHardcap() public onlyContractOwner onlySale notHardcapReached returns (uint) {
  > |        finishedHardcap = true;
    |        _emitHardcapFinishedManually();
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1299)

[33mWarning[0m for UnrestrictedWrite in contract 'EmissionProvider':
    |    /// Access allowed only by contract owner after distruction
    |    function activateDestruction() public onlyContractOwner onlySaleFinished notDestructed returns (uint) {
  > |        destructed = true;
    |        _emitDestruction();
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(1329)

[33mWarning[0m for LockedEther in contract 'EmissionProviderEmitter':
    |///
    |/// Organizes and provides a set of events specific for EmissionProvider's role
  > |contract EmissionProviderEmitter {
    |
    |    event Error(uint errorCode);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(925)

[33mWarning[0m for LockedEther in contract 'Object':
    | * @title Generic owned destroyable contract
    | */
  > |contract Object is Owned {
    |    /**
    |    *  Common result code. Means everything is fine.
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(94)

[33mWarning[0m for UnhandledException in contract 'Object':
    |        for(uint i=0;i<tokens.length;i++) {
    |            address token = tokens[i];
  > |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
    |                ERC20Interface(token).transfer(_to,balance);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(104)

[33mWarning[0m for UnhandledException in contract 'Object':
    |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
  > |                ERC20Interface(token).transfer(_to,balance);
    |        }
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Object':
    |        for(uint i=0;i<tokens.length;i++) {
    |            address token = tokens[i];
  > |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
    |                ERC20Interface(token).transfer(_to,balance);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Object':
    |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
  > |                ERC20Interface(token).transfer(_to,balance);
    |        }
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |        }
    |
  > |        pendingContractOwner = _to;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |        }
    |
  > |        contractOwner = pendingContractOwner;
    |        delete pendingContractOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Object':
    |
    |        contractOwner = pendingContractOwner;
  > |        delete pendingContractOwner;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(72)

[33mWarning[0m for LockedEther in contract 'OracleContractAdapter':
    |}
    |
  > |contract OracleContractAdapter is Object {
    |
    |    event OracleAdded(address _oracle);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(150)

[33mWarning[0m for UnhandledException in contract 'OracleContractAdapter':
    |        for(uint i=0;i<tokens.length;i++) {
    |            address token = tokens[i];
  > |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
    |                ERC20Interface(token).transfer(_to,balance);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(104)

[33mWarning[0m for UnhandledException in contract 'OracleContractAdapter':
    |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
  > |                ERC20Interface(token).transfer(_to,balance);
    |        }
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OracleContractAdapter':
    |        for(uint i=0;i<tokens.length;i++) {
    |            address token = tokens[i];
  > |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
    |                ERC20Interface(token).transfer(_to,balance);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OracleContractAdapter':
    |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
  > |                ERC20Interface(token).transfer(_to,balance);
    |        }
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'OracleContractAdapter':
    |        }
    |
  > |        pendingContractOwner = _to;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'OracleContractAdapter':
    |        }
    |
  > |        contractOwner = pendingContractOwner;
    |        delete pendingContractOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'OracleContractAdapter':
    |
    |        contractOwner = pendingContractOwner;
  > |        delete pendingContractOwner;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(72)

[33mWarning[0m for LockedEther in contract 'Owned':
    | * didn't happen yet.
    | */
  > |contract Owned {
    |    /**
    |     * Contract owner address
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(9)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        }
    |
  > |        pendingContractOwner = _to;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        }
    |
  > |        contractOwner = pendingContractOwner;
    |        delete pendingContractOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        contractOwner = pendingContractOwner;
  > |        delete pendingContractOwner;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(72)

[33mWarning[0m for LockedEther in contract 'Profiterole':
    |/// Calculates CCs shares in bonuses. Uses Treasury Contract as source of shares in bmc-days.
    |/// Allows to withdraw bonuses on request.
  > |contract Profiterole is OracleContractAdapter, ServiceAllowance, ProfiteroleEmitter {
    |
    |    uint constant PERCENT_PRECISION = 10000;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(623)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |        for(uint i=0;i<tokens.length;i++) {
    |            address token = tokens[i];
  > |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
    |                ERC20Interface(token).transfer(_to,balance);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(104)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
  > |                ERC20Interface(token).transfer(_to,balance);
    |        }
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(106)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |        DepositWalletInterface _wallet = DepositWalletInterface(wallet);
    |        ERC20Interface _bonusToken = ERC20Interface(bonusToken);
  > |        if (_bonusToken.balanceOf(_wallet) < _value) {
    |            return _emitError(PROFITEROLE_ERROR_INSUFFICIENT_BONUS_BALANCE);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(741)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |        }
    |
  > |        if (!(_feeAddress == 0x0 || _feeAmount == 0 || OK == _wallet.withdraw(_bonusToken, _feeAddress, _feeAmount))) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(749)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |        }
    |
  > |        if (OK != _wallet.withdraw(_bonusToken, _withdrawAddress, _value - _feeAmount)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(753)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |                _sum = _sum.add(_userBalance.left);
    |            } else {
  > |                uint _sharesPercent = _treasury.getSharesPercentForPeriod(_userKey, _startDate);
    |                _sum = _sum.add(_pendingDeposit.balance.mul(_sharesPercent).div(PERCENT_PRECISION));
    |            }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(781)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |        }
    |
  > |        uint _sharesPercent = Treasury(treasury).getSharesPercentForPeriod(_userKey, _distributionDate);
    |        return _deposit.balance.mul(_sharesPercent).div(PERCENT_PRECISION);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(797)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |        ERC20Interface _bonusToken = ERC20Interface(bonusToken);
    |
  > |        if (_bonusToken.allowance(msg.sender, address(this)) < _amount) {
    |            return _emitError(PROFITEROLE_ERROR_INSUFFICIENT_DISTRIBUTION_BALANCE);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(835)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |        }
    |
  > |        if (!_bonusToken.transferFrom(msg.sender, wallet, _amount)) {
    |            return _emitError(PROFITEROLE_ERROR_TRANSFER_ERROR);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(839)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |        distributionDeposits[now] = Deposit(_amount, _amount, 0);
    |
  > |        Treasury(treasury).addDistributionPeriod();
    |
    |        DepositPendingAdded(_amount, msg.sender, now);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(855)

[33mWarning[0m for UnhandledException in contract 'Profiterole':
    |            _balanceToWithdraw = _userBalance.left;
    |        } else {
  > |            uint _sharesPercent = _treasury.getSharesPercentForPeriod(_userKey, _periodDate);
    |            _balanceToWithdraw = _pendingDeposit.balance.mul(_sharesPercent).div(PERCENT_PRECISION);
    |            _userBalance.initialized = true;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(905)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |        for(uint i=0;i<tokens.length;i++) {
    |            address token = tokens[i];
  > |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
    |                ERC20Interface(token).transfer(_to,balance);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |            uint balance = ERC20Interface(token).balanceOf(this);
    |            if(balance != 0)
  > |                ERC20Interface(token).transfer(_to,balance);
    |        }
    |        return OK;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |        DepositWalletInterface _wallet = DepositWalletInterface(wallet);
    |        ERC20Interface _bonusToken = ERC20Interface(bonusToken);
  > |        if (_bonusToken.balanceOf(_wallet) < _value) {
    |            return _emitError(PROFITEROLE_ERROR_INSUFFICIENT_BONUS_BALANCE);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(741)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |        }
    |
  > |        if (!(_feeAddress == 0x0 || _feeAmount == 0 || OK == _wallet.withdraw(_bonusToken, _feeAddress, _feeAmount))) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(749)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |        }
    |
  > |        if (OK != _wallet.withdraw(_bonusToken, _withdrawAddress, _value - _feeAmount)) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(753)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |                _sum = _sum.add(_userBalance.left);
    |            } else {
  > |                uint _sharesPercent = _treasury.getSharesPercentForPeriod(_userKey, _startDate);
    |                _sum = _sum.add(_pendingDeposit.balance.mul(_sharesPercent).div(PERCENT_PRECISION));
    |            }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(781)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |        }
    |
  > |        uint _sharesPercent = Treasury(treasury).getSharesPercentForPeriod(_userKey, _distributionDate);
    |        return _deposit.balance.mul(_sharesPercent).div(PERCENT_PRECISION);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(797)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |        ERC20Interface _bonusToken = ERC20Interface(bonusToken);
    |
  > |        if (_bonusToken.allowance(msg.sender, address(this)) < _amount) {
    |            return _emitError(PROFITEROLE_ERROR_INSUFFICIENT_DISTRIBUTION_BALANCE);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(835)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |        }
    |
  > |        if (!_bonusToken.transferFrom(msg.sender, wallet, _amount)) {
    |            return _emitError(PROFITEROLE_ERROR_TRANSFER_ERROR);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(839)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |        distributionDeposits[now] = Deposit(_amount, _amount, 0);
    |
  > |        Treasury(treasury).addDistributionPeriod();
    |
    |        DepositPendingAdded(_amount, msg.sender, now);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(855)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Profiterole':
    |            _balanceToWithdraw = _userBalance.left;
    |        } else {
  > |            uint _sharesPercent = _treasury.getSharesPercentForPeriod(_userKey, _periodDate);
    |            _balanceToWithdraw = _pendingDeposit.balance.mul(_sharesPercent).div(PERCENT_PRECISION);
    |            _userBalance.initialized = true;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(905)

[33mWarning[0m for UnrestrictedWrite in contract 'Profiterole':
    |        }
    |
  > |        pendingContractOwner = _to;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Profiterole':
    |        }
    |
  > |        contractOwner = pendingContractOwner;
    |        delete pendingContractOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Profiterole':
    |
    |        contractOwner = pendingContractOwner;
  > |        delete pendingContractOwner;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Profiterole':
    |    function updateTreasury(address _treasury) external onlyContractOwner returns (uint) {
    |        require(_treasury != 0x0);
  > |        treasury = _treasury;
    |        return OK;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(689)

[33mWarning[0m for UnrestrictedWrite in contract 'Profiterole':
    |    function updateWallet(address _wallet) external onlyContractOwner returns (uint) {
    |        require(_wallet != 0x0);
  > |        wallet = _wallet;
    |        return OK;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(697)

[33mWarning[0m for LockedEther in contract 'ProfiteroleEmitter':
    |}
    |
  > |contract ProfiteroleEmitter {
    |
    |    event DepositPendingAdded(uint amount, address from, uint timestamp);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(230)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |* @dev Math operations with safety checks that throw on error
    |*/
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(124)

[33mWarning[0m for LockedEther in contract 'TreasuryEmitter':
    |}
    |
  > |contract TreasuryEmitter {
    |    event TreasuryDeposited(bytes32 userKey, uint value, uint lockupDate);
    |    event TreasuryWithdrawn(bytes32 userKey, uint value);
  at /home/jiaming/mavs_srcs/contract@0xee36e7e659e8aa4dd9926630dfa60c38bbc4b389.sol(243)


