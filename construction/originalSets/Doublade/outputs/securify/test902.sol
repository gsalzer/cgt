Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:IkuraAssociation
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Decompilation failed.
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:IkuraAuthority
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:IkuraController
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:IkuraStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:IkuraToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:IkuraTokenEvent
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol:ProposalLibrary
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(48)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(52)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(48)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(7)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(74)

[31mViolation[0m for LockedEther in contract 'IkuraAuthority':
    |
    |
  > |contract IkuraAuthority is DSAuthority, DSAuth {
    |  
    |  IkuraStorage tokenStorage;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1019)

[33mWarning[0m for UnhandledException in contract 'IkuraAuthority':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(48)

[33mWarning[0m for UnhandledException in contract 'IkuraAuthority':
    |
    |  function canCallDefault(address src) internal constant returns (bool) {
  > |    return tokenStorage.isOwnerAddress(src);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1067)

[33mWarning[0m for UnhandledException in contract 'IkuraAuthority':
    |    dst;
    |
  > |    return tokenStorage.isOwnerAddress(src) &&
    |           (tokenStorage.numOwnerAddress() == 1 || tokenStorage.tokenBalance(src) > 0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1075)

[33mWarning[0m for UnhandledException in contract 'IkuraAuthority':
    |
    |    return tokenStorage.isOwnerAddress(src) &&
  > |           (tokenStorage.numOwnerAddress() == 1 || tokenStorage.tokenBalance(src) > 0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1076)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraAuthority':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(48)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraAuthority':
    |
    |  function canCallDefault(address src) internal constant returns (bool) {
  > |    return tokenStorage.isOwnerAddress(src);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1067)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraAuthority':
    |    dst;
    |
  > |    return tokenStorage.isOwnerAddress(src) &&
    |           (tokenStorage.numOwnerAddress() == 1 || tokenStorage.tokenBalance(src) > 0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1075)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraAuthority':
    |
    |    return tokenStorage.isOwnerAddress(src) &&
  > |           (tokenStorage.numOwnerAddress() == 1 || tokenStorage.tokenBalance(src) > 0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1076)

[31mViolation[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |
    |    
  > |    actionsWithToken[stringToSig('mint(uint256)')] = true;
    |    actionsWithToken[stringToSig('burn(uint256)')] = true;
    |    actionsWithToken[stringToSig('updateTransferMinimumFee(uint8)')] = true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1044)

[31mViolation[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |    
    |    actionsWithToken[stringToSig('mint(uint256)')] = true;
  > |    actionsWithToken[stringToSig('burn(uint256)')] = true;
    |    actionsWithToken[stringToSig('updateTransferMinimumFee(uint8)')] = true;
    |    actionsWithToken[stringToSig('updateTransferFeeRate(uint256)')] = true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1045)

[31mViolation[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |    actionsWithToken[stringToSig('mint(uint256)')] = true;
    |    actionsWithToken[stringToSig('burn(uint256)')] = true;
  > |    actionsWithToken[stringToSig('updateTransferMinimumFee(uint8)')] = true;
    |    actionsWithToken[stringToSig('updateTransferFeeRate(uint256)')] = true;
    |    actionsWithToken[stringToSig('confirmProposal(string, uint256)')] = true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1046)

[31mViolation[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |    actionsWithToken[stringToSig('burn(uint256)')] = true;
    |    actionsWithToken[stringToSig('updateTransferMinimumFee(uint8)')] = true;
  > |    actionsWithToken[stringToSig('updateTransferFeeRate(uint256)')] = true;
    |    actionsWithToken[stringToSig('confirmProposal(string, uint256)')] = true;
    |    actionsWithToken[stringToSig('numberOfProposals(string)')] = true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1047)

[31mViolation[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |    actionsWithToken[stringToSig('updateTransferMinimumFee(uint8)')] = true;
    |    actionsWithToken[stringToSig('updateTransferFeeRate(uint256)')] = true;
  > |    actionsWithToken[stringToSig('confirmProposal(string, uint256)')] = true;
    |    actionsWithToken[stringToSig('numberOfProposals(string)')] = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1048)

[31mViolation[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |    actionsWithToken[stringToSig('updateTransferFeeRate(uint256)')] = true;
    |    actionsWithToken[stringToSig('confirmProposal(string, uint256)')] = true;
  > |    actionsWithToken[stringToSig('numberOfProposals(string)')] = true;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1049)

[31mViolation[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |
    |    
  > |    actionsForbidden[stringToSig('forbiddenAction()')] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1052)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraAuthority':
    |
    |  function changeStorage(address storage_) auth {
  > |    tokenStorage = IkuraStorage(storage_);
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1041)

[33mWarning[0m for DAO in contract 'IkuraController':
    |    return  src == address(this) ||
    |            src == owner ||
  > |            authority.canCall(src, this, sig);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1301)

[33mWarning[0m for LockedEther in contract 'IkuraController':
    |
    |
  > |contract IkuraController is ERC20, DSAuth {
    |  
    |  
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1091)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |    }
    |
  > |    function setOwner(address owner_)
    |        auth
    |    {
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function balanceOf(address addr) constant returns (uint) {
    |    return token.balanceOf(msg.sender, addr);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1130)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function transfer(address to, uint amount) returns (bool) {
    |    if (token.transfer(msg.sender, to, amount)) {
    |      Transfer(msg.sender, to, amount);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1134)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function transferFrom(address from, address to, uint amount) returns (bool) {
    |    if (token.transferFrom(msg.sender, from, to, amount)) {
    |      Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1144)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function approve(address spender, uint amount) returns (bool) {
    |    if (token.approve(msg.sender, spender, amount)) {
    |      Approval(msg.sender, spender, amount);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1154)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function allowance(address addr, address spender) constant returns (uint) {
    |    return token.allowance(msg.sender, addr, spender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1164)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  
    |
  > |  function tokenBalanceOf(address addr) constant returns (uint) {
    |    return token.tokenBalanceOf(msg.sender, addr);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1172)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function transferToken(address to, uint amount) returns (bool) {
    |    return token.transferToken(msg.sender, to, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1176)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function transferFee(address from, address to, uint amount) returns (uint) {
    |    return token.transferFee(msg.sender, from, to, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1188)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  
    |
  > |  function updateTransferMinimumFee(uint8 minimumFee) auth returns (bool) {
    |    return token.updateTransferMinimumFee(msg.sender, minimumFee);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1194)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function updateTransferFeeRate(uint feeRate) auth returns (bool) {
    |    return token.updateTransferFeeRate(msg.sender, feeRate);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1198)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function mint(uint amount) auth returns (bool) {
    |    return token.mint(msg.sender, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1202)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function burn(uint amount) auth returns (bool) {
    |    return token.burn(msg.sender, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1206)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function isOwner(address addr) auth returns (bool) {
    |    return tokenStorage.isOwnerAddress(addr);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1210)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |
    |
  > |  function setup(address storageAddress, address tokenAddress, address authorityAddress, address associationAddress) auth {
    |    changeStorage(storageAddress);
    |    changeToken(tokenAddress);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1233)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |
    |
  > |  function changeToken(address tokenAddress) auth {
    |    
    |    token = IkuraToken(tokenAddress);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1241)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function changeStorage(address storageAddress) auth {
    |    
    |    tokenStorage = IkuraStorage(storageAddress);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1256)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |
    |
  > |  function changeAuthority(address authorityAddress) auth {
    |    
    |    authority = IkuraAuthority(authorityAddress);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1262)

[31mViolation[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function changeAssociation(address associationAddress) auth {
    |    
    |    association = IkuraAssociation(associationAddress);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1272)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |
    |  
  > |  string public name = "XJP 0.6.0";
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1097)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |
    |  
  > |  string public constant symbol = "XJP";
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1100)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |
    |  
  > |  uint8 public constant decimals = 0;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1103)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |  
    |
  > |  function totalSupply() constant returns (uint) {
    |    return token.totalSupply(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1126)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function transferFeeRate() constant returns (uint) {
    |    return token.transferFeeRate(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1180)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function transferMinimumFee() constant returns (uint8) {
    |    return token.transferMinimumFee(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1184)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |  }
    |
  > |  function numOwnerAddress() auth constant returns (uint) {
    |    return tokenStorage.numOwnerAddress();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1219)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |
    |
  > |  function numberOfProposals(string type_) auth constant returns (uint) {
    |    return token.numberOfProposals(sha3(type_));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1224)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |
    |
  > |  function forbiddenAction() auth returns (bool) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1288)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |
    | 
  > |  function logicVersion() constant returns (uint) {
    |    return token.logicVersion(msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1293)

[33mWarning[0m for MissingInputValidation in contract 'IkuraController':
    |
    |
  > |  function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |    return  src == address(this) ||
    |            src == owner ||
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1298)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function totalSupply() constant returns (uint) {
  > |    return token.totalSupply(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1127)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function balanceOf(address addr) constant returns (uint) {
  > |    return token.balanceOf(msg.sender, addr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1131)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function transfer(address to, uint amount) returns (bool) {
  > |    if (token.transfer(msg.sender, to, amount)) {
    |      Transfer(msg.sender, to, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1135)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function transferFrom(address from, address to, uint amount) returns (bool) {
  > |    if (token.transferFrom(msg.sender, from, to, amount)) {
    |      Transfer(from, to, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1145)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function approve(address spender, uint amount) returns (bool) {
  > |    if (token.approve(msg.sender, spender, amount)) {
    |      Approval(msg.sender, spender, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1155)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function allowance(address addr, address spender) constant returns (uint) {
  > |    return token.allowance(msg.sender, addr, spender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1165)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function tokenBalanceOf(address addr) constant returns (uint) {
  > |    return token.tokenBalanceOf(msg.sender, addr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1173)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function transferToken(address to, uint amount) returns (bool) {
  > |    return token.transferToken(msg.sender, to, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1177)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function transferFeeRate() constant returns (uint) {
  > |    return token.transferFeeRate(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1181)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function transferMinimumFee() constant returns (uint8) {
  > |    return token.transferMinimumFee(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1185)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function transferFee(address from, address to, uint amount) returns (uint) {
  > |    return token.transferFee(msg.sender, from, to, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1189)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function updateTransferMinimumFee(uint8 minimumFee) auth returns (bool) {
  > |    return token.updateTransferMinimumFee(msg.sender, minimumFee);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1195)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function updateTransferFeeRate(uint feeRate) auth returns (bool) {
  > |    return token.updateTransferFeeRate(msg.sender, feeRate);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1199)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function mint(uint amount) auth returns (bool) {
  > |    return token.mint(msg.sender, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1203)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function burn(uint amount) auth returns (bool) {
  > |    return token.burn(msg.sender, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1207)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function isOwner(address addr) auth returns (bool) {
  > |    return tokenStorage.isOwnerAddress(addr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1211)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function confirmProposal(string type_, uint proposalId) auth {
  > |    token.confirmProposal(msg.sender, sha3(type_), proposalId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1216)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function numOwnerAddress() auth constant returns (uint) {
  > |    return tokenStorage.numOwnerAddress();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1220)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |  function numberOfProposals(string type_) auth constant returns (uint) {
  > |    return token.numberOfProposals(sha3(type_));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1225)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |    
  > |    tokenStorage.changeToken(token);
    |    token.changeStorage(tokenStorage);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1246)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |    
    |    tokenStorage.changeToken(token);
  > |    token.changeStorage(tokenStorage);
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1247)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |    
    |    if (association != address(0)) {
  > |      association.changeToken(token);
    |      token.changeAssociation(association);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1251)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |    if (association != address(0)) {
    |      association.changeToken(token);
  > |      token.changeAssociation(association);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1252)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |    
  > |    authority.changeStorage(tokenStorage);
    |    tokenStorage.changeAuthority(authority);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1268)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |    
    |    authority.changeStorage(tokenStorage);
  > |    tokenStorage.changeAuthority(authority);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1269)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |
    |    
  > |    association.changeStorage(tokenStorage);
    |    tokenStorage.changeAssociation(association);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1277)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |    
    |    association.changeStorage(tokenStorage);
  > |    tokenStorage.changeAssociation(association);
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1278)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |    
    |    if (token != address(0)) {
  > |      association.changeToken(token);
    |      token.changeAssociation(association);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1282)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |    if (token != address(0)) {
    |      association.changeToken(token);
  > |      token.changeAssociation(association);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1283)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    | 
    |  function logicVersion() constant returns (uint) {
  > |    return token.logicVersion(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1294)

[33mWarning[0m for UnhandledException in contract 'IkuraController':
    |    return  src == address(this) ||
    |            src == owner ||
  > |            authority.canCall(src, this, sig);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function totalSupply() constant returns (uint) {
  > |    return token.totalSupply(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function balanceOf(address addr) constant returns (uint) {
  > |    return token.balanceOf(msg.sender, addr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function transfer(address to, uint amount) returns (bool) {
  > |    if (token.transfer(msg.sender, to, amount)) {
    |      Transfer(msg.sender, to, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1135)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function transferFrom(address from, address to, uint amount) returns (bool) {
  > |    if (token.transferFrom(msg.sender, from, to, amount)) {
    |      Transfer(from, to, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function approve(address spender, uint amount) returns (bool) {
  > |    if (token.approve(msg.sender, spender, amount)) {
    |      Approval(msg.sender, spender, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function allowance(address addr, address spender) constant returns (uint) {
  > |    return token.allowance(msg.sender, addr, spender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function tokenBalanceOf(address addr) constant returns (uint) {
  > |    return token.tokenBalanceOf(msg.sender, addr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function transferToken(address to, uint amount) returns (bool) {
  > |    return token.transferToken(msg.sender, to, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function transferFeeRate() constant returns (uint) {
  > |    return token.transferFeeRate(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function transferMinimumFee() constant returns (uint8) {
  > |    return token.transferMinimumFee(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function transferFee(address from, address to, uint amount) returns (uint) {
  > |    return token.transferFee(msg.sender, from, to, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function updateTransferMinimumFee(uint8 minimumFee) auth returns (bool) {
  > |    return token.updateTransferMinimumFee(msg.sender, minimumFee);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1195)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function updateTransferFeeRate(uint feeRate) auth returns (bool) {
  > |    return token.updateTransferFeeRate(msg.sender, feeRate);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function mint(uint amount) auth returns (bool) {
  > |    return token.mint(msg.sender, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function burn(uint amount) auth returns (bool) {
  > |    return token.burn(msg.sender, amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function isOwner(address addr) auth returns (bool) {
  > |    return tokenStorage.isOwnerAddress(addr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1211)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function confirmProposal(string type_, uint proposalId) auth {
  > |    token.confirmProposal(msg.sender, sha3(type_), proposalId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function numOwnerAddress() auth constant returns (uint) {
  > |    return tokenStorage.numOwnerAddress();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |  function numberOfProposals(string type_) auth constant returns (uint) {
  > |    return token.numberOfProposals(sha3(type_));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |    
  > |    tokenStorage.changeToken(token);
    |    token.changeStorage(tokenStorage);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |    
    |    tokenStorage.changeToken(token);
  > |    token.changeStorage(tokenStorage);
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |    
    |    if (association != address(0)) {
  > |      association.changeToken(token);
    |      token.changeAssociation(association);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |    if (association != address(0)) {
    |      association.changeToken(token);
  > |      token.changeAssociation(association);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |    
  > |    authority.changeStorage(tokenStorage);
    |    tokenStorage.changeAuthority(authority);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |    
    |    authority.changeStorage(tokenStorage);
  > |    tokenStorage.changeAuthority(authority);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |
    |    
  > |    association.changeStorage(tokenStorage);
    |    tokenStorage.changeAssociation(association);
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |    
    |    association.changeStorage(tokenStorage);
  > |    tokenStorage.changeAssociation(association);
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |    
    |    if (token != address(0)) {
  > |      association.changeToken(token);
    |      token.changeAssociation(association);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |    if (token != address(0)) {
    |      association.changeToken(token);
  > |      token.changeAssociation(association);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    | 
    |  function logicVersion() constant returns (uint) {
  > |    return token.logicVersion(msg.sender);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IkuraController':
    |    return  src == address(this) ||
    |            src == owner ||
  > |            authority.canCall(src, this, sig);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(1301)

[33mWarning[0m for LockedEther in contract 'IkuraStorage':
    |}
    |
  > |contract IkuraStorage is DSMath, DSAuth {
    |  
    |  address[] ownerAddresses;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |}
    |
  > |contract IkuraStorage is DSMath, DSAuth {
    |  
    |  address[] ownerAddresses;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |    while (i < ownerAddresses.length - 1) {
  > |      ownerAddresses[i] = ownerAddresses[i + 1];
    |      i++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |contract DSAuthority {
  > |    function canCall(
    |        address src, address dst, bytes4 sig
    |    ) constant returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function changeToken(address tokenAddress_) auth {
  > |    tokenAddress = tokenAddress_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function changeAssociation(address multiSigAddress_) auth {
  > |    multiSigAddress = multiSigAddress_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function changeAuthority(address authorityAddress_) auth {
  > |    authorityAddress = authorityAddress_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |  }
    |  function addTotalSupply(uint amount) auth {
  > |    _totalSupply = add(_totalSupply, amount);
    |  }
    |  function subTotalSupply(uint amount) auth {
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |  }
    |  function subTotalSupply(uint amount) auth {
  > |    _totalSupply = sub(_totalSupply, amount);
    |  }
    |  function transferFeeRate() auth returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function setTransferFeeRate(uint newTransferFeeRate) auth returns (bool) {
  > |    _transferFeeRate = newTransferFeeRate;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function setTransferMinimumFee(uint8 newTransferMinimumFee) auth {
  > |    _transferMinimumFee = newTransferMinimumFee;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function addOwnerAddress(address addr) internal returns (bool) {
  > |    ownerAddresses.push(addr);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function addCoinBalance(address addr, uint amount) auth returns (bool) {
  > |    coinBalances[addr] = add(coinBalances[addr], amount);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function subCoinBalance(address addr, uint amount) auth returns (bool) {
  > |    coinBalances[addr] = sub(coinBalances[addr], amount);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function addTokenBalance(address addr, uint amount) auth returns (bool) {
  > |    tokenBalances[addr] = add(tokenBalances[addr], amount);
    |
    |    if (tokenBalances[addr] > 0 && !isOwnerAddress(addr)) {
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function subTokenBalance(address addr, uint amount) auth returns (bool) {
  > |    tokenBalances[addr] = sub(tokenBalances[addr], amount);
    |
    |    if (tokenBalances[addr] <= 0) {
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function addCoinAllowance(address owner_, address spender, uint amount) auth returns (bool) {
  > |    coinAllowances[owner_][spender] = add(coinAllowances[owner_][spender], amount);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function subCoinAllowance(address owner_, address spender, uint amount) auth returns (bool) {
  > |    coinAllowances[owner_][spender] = sub(coinAllowances[owner_][spender], amount);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'IkuraStorage':
    |
    |  function setCoinAllowance(address owner_, address spender, uint amount) auth returns (bool) {
  > |    coinAllowances[owner_][spender] = amount;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(415)

[33mWarning[0m for LockedEther in contract 'IkuraTokenEvent':
    |}
    |
  > |contract IkuraTokenEvent {
    |  /** オーナーがdJPYを鋳造した際に発火するイベント */
    |  event IkuraMint(address indexed owner, uint);
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(431)

[31mViolation[0m for LockedEther in contract 'ProposalLibrary':
    |  }
    |}
  > |library ProposalLibrary {
    |  
    |  
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(703)

[31mViolation[0m for MissingInputValidation in contract 'ProposalLibrary':
    |  }
    |
  > |  function updateTransferMinimumFee(Entity storage self, address sender, uint8 fee) returns (bool) {
    |    if (fee < 0) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(722)

[31mViolation[0m for MissingInputValidation in contract 'ProposalLibrary':
    |  }
    |
  > |  function updateTransferFeeRate(Entity storage self, address sender, uint rate) returns (bool) {
    |    if (rate < 0) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(730)

[31mViolation[0m for MissingInputValidation in contract 'ProposalLibrary':
    |  }
    |
  > |  function mint(Entity storage self, address sender, uint amount) returns (bool) {
    |    if (amount <= 0) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(738)

[31mViolation[0m for MissingInputValidation in contract 'ProposalLibrary':
    |  }
    |
  > |  function burn(Entity storage self, address sender, uint amount) returns (bool) {
    |    if (amount <= 0) throw;
    |    if (self._storage.coinBalance(sender) < amount) throw;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(746)

[31mViolation[0m for MissingInputValidation in contract 'ProposalLibrary':
    |  }
    |
  > |  function confirmProposal(Entity storage self, address sender, bytes32 type_, uint proposalId) {
    |    self._association.confirmProposal(type_, sender, proposalId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(756)

[31mViolation[0m for MissingInputValidation in contract 'ProposalLibrary':
    |  }
    |
  > |  function numberOfProposals(Entity storage self, bytes32 type_) constant returns (uint) {
    |    return self._association.numberOfProposals(type_);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(760)

[33mWarning[0m for UnhandledException in contract 'ProposalLibrary':
    |    if (fee < 0) throw;
    |
  > |    self._association.newProposal(sha3('transferMinimumFee'), sender, 0, fee, 0, '');
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(725)

[33mWarning[0m for UnhandledException in contract 'ProposalLibrary':
    |    if (rate < 0) throw;
    |
  > |    self._association.newProposal(sha3('transferFeeRate'), sender, 0, 0, rate, '');
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(733)

[33mWarning[0m for UnhandledException in contract 'ProposalLibrary':
    |    if (amount <= 0) throw;
    |
  > |    self._association.newProposal(sha3('mint'), sender, amount, 0, 0, '');
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(741)

[33mWarning[0m for UnhandledException in contract 'ProposalLibrary':
    |  function burn(Entity storage self, address sender, uint amount) returns (bool) {
    |    if (amount <= 0) throw;
  > |    if (self._storage.coinBalance(sender) < amount) throw;
    |    if (self._storage.tokenBalance(sender) < amount) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(748)

[33mWarning[0m for UnhandledException in contract 'ProposalLibrary':
    |    if (amount <= 0) throw;
    |    if (self._storage.coinBalance(sender) < amount) throw;
  > |    if (self._storage.tokenBalance(sender) < amount) throw;
    |
    |    self._association.newProposal(sha3('burn'), sender, amount, 0, 0, '');
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(749)

[33mWarning[0m for UnhandledException in contract 'ProposalLibrary':
    |    if (self._storage.tokenBalance(sender) < amount) throw;
    |
  > |    self._association.newProposal(sha3('burn'), sender, amount, 0, 0, '');
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(751)

[33mWarning[0m for UnhandledException in contract 'ProposalLibrary':
    |
    |  function confirmProposal(Entity storage self, address sender, bytes32 type_, uint proposalId) {
  > |    self._association.confirmProposal(type_, sender, proposalId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(757)

[33mWarning[0m for UnhandledException in contract 'ProposalLibrary':
    |
    |  function numberOfProposals(Entity storage self, bytes32 type_) constant returns (uint) {
  > |    return self._association.numberOfProposals(type_);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(761)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProposalLibrary':
    |    if (fee < 0) throw;
    |
  > |    self._association.newProposal(sha3('transferMinimumFee'), sender, 0, fee, 0, '');
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProposalLibrary':
    |    if (rate < 0) throw;
    |
  > |    self._association.newProposal(sha3('transferFeeRate'), sender, 0, 0, rate, '');
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(733)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProposalLibrary':
    |    if (amount <= 0) throw;
    |
  > |    self._association.newProposal(sha3('mint'), sender, amount, 0, 0, '');
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(741)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProposalLibrary':
    |  function burn(Entity storage self, address sender, uint amount) returns (bool) {
    |    if (amount <= 0) throw;
  > |    if (self._storage.coinBalance(sender) < amount) throw;
    |    if (self._storage.tokenBalance(sender) < amount) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(748)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProposalLibrary':
    |    if (amount <= 0) throw;
    |    if (self._storage.coinBalance(sender) < amount) throw;
  > |    if (self._storage.tokenBalance(sender) < amount) throw;
    |
    |    self._association.newProposal(sha3('burn'), sender, amount, 0, 0, '');
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(749)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProposalLibrary':
    |    if (self._storage.tokenBalance(sender) < amount) throw;
    |
  > |    self._association.newProposal(sha3('burn'), sender, amount, 0, 0, '');
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(751)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProposalLibrary':
    |
    |  function confirmProposal(Entity storage self, address sender, bytes32 type_, uint proposalId) {
  > |    self._association.confirmProposal(type_, sender, proposalId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(757)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProposalLibrary':
    |
    |  function numberOfProposals(Entity storage self, bytes32 type_) constant returns (uint) {
  > |    return self._association.numberOfProposals(type_);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x39689fe671c01fce173395f6bc45d4c332026666.sol(761)


