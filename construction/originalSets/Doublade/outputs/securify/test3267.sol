Processing contract: /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol:JIincForwarderInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol:MSFun
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol:PlayerBook
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol:PlayerBookReceiverInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol:TeamJustInterface
[33mWarning[0m for LockedEther in contract 'MSFun':
    | */
    |
  > |library MSFun {
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |    // DATA SETS
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(955)

[33mWarning[0m for LockedEther in contract 'NameFilter':
    |* ╚═╝└─┘┘└┘ ┴ ┴└─┴ ┴└─┘ ┴   ╚═╝└─┘─┴┘└─┘ └──────────┘
    |*/
  > |library NameFilter {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(662)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |    
    |    MSFun.Data private msData;
  > |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(61)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
  > |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |//==============================================================================
    |//     _| _ _|_ _    _ _ _|_    _   .
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(66)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |        
    |        // registration fee goes directly to community rewards
  > |        Jekyll_Island_Inc.deposit.value(address(this).balance)();
    |        
    |        // push player info to games
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(427)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |        if (_all == true)
    |            for (uint256 i = 1; i <= gID_; i++)
  > |                games_[i].receivePlayerInfo(_pID, _addr, _name, _affID);
    |        
    |        // fire event
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(432)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |            games_[gID_] = PlayerBookReceiverInterface(_gameAddress);
    |        
  > |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(620)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |        
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
  > |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(621)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
  > |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(622)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  > |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(623)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
  > |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  > |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
    |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
  > |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
    |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |//==============================================================================
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
  > |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |//==============================================================================
    |//     _| _ _|_ _    _ _ _|_    _   .
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |//=============================|================================================    
    |    uint256 public registrationFee_ = 10 finney;            // price to register a name
  > |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    uint256 public registrationFee_ = 10 finney;            // price to register a name
    |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
  > |    mapping(address => bytes32) public gameNames_;          // lookup a games name
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
    |    uint256 public gID_;        // total number of games
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
  > |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
    |    uint256 public gID_;        // total number of games
    |    uint256 public pID_;        // total number of players
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    uint256 public gID_;        // total number of games
    |    uint256 public pID_;        // total number of players
  > |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    uint256 public pID_;        // total number of players
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
  > |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
    |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
  > |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
    |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
    |    mapping (uint256 => mapping (uint256 => bytes32)) public plyrNameList_; // (pID => nameNum => name) list of names a player owns
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
  > |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
    |    mapping (uint256 => mapping (uint256 => bytes32)) public plyrNameList_; // (pID => nameNum => name) list of names a player owns
    |    struct Player {
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
    |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
  > |    mapping (uint256 => mapping (uint256 => bytes32)) public plyrNameList_; // (pID => nameNum => name) list of names a player owns
    |    struct Player {
    |        address addr;
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |//  (/_>< | (/_| | |(_||  (_(_|||_\  .
    |//==============================================================================
  > |    function getPlayerID(address _addr)
    |        isRegisteredGame()
    |        external
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(461)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (pIDxAddr_[_addr]);
    |    }
  > |    function getPlayerName(uint256 _pID)
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(469)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (plyr_[_pID].name);
    |    }
  > |    function getPlayerLAff(uint256 _pID)
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(476)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (plyr_[_pID].laff);
    |    }
  > |    function getPlayerAddr(uint256 _pID)
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(483)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return(registrationFee_);
    |    }
  > |    function registerNameXIDFromDapp(address _addr, bytes32 _name, uint256 _affCode, bool _all)
    |        isRegisteredGame()
    |        external
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(497)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return(_isNewPlayer, _affID);
    |    }
  > |    function registerNameXnameFromDapp(address _addr, bytes32 _name, bytes32 _affCode, bool _all)
    |        isRegisteredGame()
    |        external
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(565)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |//  _\(/_ | |_||_)  .
    |//=============|================================================================
  > |    function addGame(address _gameAddress, string _gameNameStr)
    |        onlyDevs()
    |        public
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(606)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    
    |    MSFun.Data private msData;
  > |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    MSFun.Data private msData;
    |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
  > |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//    (_|(_| | (_|  _\(/_ | |_||_)  .
    |//=============================|================================================    
  > |    uint256 public registrationFee_ = 10 finney;            // price to register a name
    |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
  > |    uint256 public gID_;        // total number of games
    |    uint256 public pID_;        // total number of players
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
    |    uint256 public gID_;        // total number of games
  > |    uint256 public pID_;        // total number of players
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//    (_|(/_ |  | (/_| _\  . (for UI & viewing things on etherscan)
    |//=====_|=======================================================================
  > |    function checkIfNameValid(string _nameStr)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |     * -functionhash- 0x0c6940ea
    |     */
  > |    function addMeToAllGames()
    |        isHuman()
    |        public
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(363)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |     * @param _nameString the name you want to use 
    |     */
  > |    function useMyOldName(string _nameString)
    |        isHuman()
    |        public 
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(390)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//    (_(_)| (/_  |(_)(_||(_  . 
    |//=====================_|=======================================================    
  > |    function registerNameCore(uint256 _pID, address _addr, uint256 _affID, bytes32 _name, bool _isNewPlayer, bool _all)
    |        private
    |    {
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(409)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//     | (_)(_)|_\  .
    |//==============================================================================    
  > |    function determinePID(address _addr)
    |        private
    |        returns (bool)
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(441)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (plyr_[_pID].addr);
    |    }
  > |    function getNameFee()
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(490)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |     * @return reprocessed string in bytes32 format
    |     */
  > |    function nameFilter(string _input)
    |        internal
    |        pure
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(674)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    // MULTI SIG FUNCTIONS
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  > |    function multiSig(Data storage self, uint256 _requiredSignatures, bytes32 _whatFunction)
    |        internal
    |        returns(bool) 
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(979)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    
    |    // deletes proposal signature data after successfully executing a multiSig function
  > |    function deleteProposal(Data storage self, bytes32 _whatFunction)
    |        internal
    |    {
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1059)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |
  > |    function whatProposal(bytes32 _whatFunction)
    |        private
    |        view
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1081)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |    // returns a hashed version of msg.data sent by original signer for any given function
  > |    function checkMsgData (Data storage self, bytes32 _whatFunction)
    |        internal
    |        view
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1093)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    
    |    // returns number of signers for any given function
  > |    function checkCount (Data storage self, bytes32 _whatFunction)
    |        internal
    |        view
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1103)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    
    |    // returns address of an admin who signed for any given function
  > |    function checkSigner (Data storage self, bytes32 _whatFunction, uint256 _signer)
    |        internal
    |        view
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1113)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |    
    |    MSFun.Data private msData;
  > |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(61)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |    function checkData(bytes32 _whatFunction) onlyDevs() public view returns(bytes32, uint256) {return(MSFun.checkMsgData(msData, _whatFunction), MSFun.checkCount(msData, _whatFunction));}
    |    function checkSignersByAddress(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(address, address, address) {return(MSFun.checkSigner(msData, _whatFunction, _signerA), MSFun.checkSigner(msData, _whatFunction, _signerB), MSFun.checkSigner(msData, _whatFunction, _signerC));}
  > |    function checkSignersByName(bytes32 _whatFunction, uint256 _signerA, uint256 _signerB, uint256 _signerC) onlyDevs() public view returns(bytes32, bytes32, bytes32) {return(TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerA)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerB)), TeamJust.adminName(MSFun.checkSigner(msData, _whatFunction, _signerC)));}
    |//==============================================================================
    |//     _| _ _|_ _    _ _ _|_    _   .
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(66)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |    modifier onlyDevs() 
    |    {
  > |        require(TeamJust.isDev(msg.sender) == true, "msg sender is not a dev");
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(150)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        
    |        // add players profile and most recent name
  > |        games_[_gameID].receivePlayerInfo(_pID, _addr, plyr_[_pID].name, plyr_[_pID].laff);
    |        
    |        // add list of all names
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(351)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        if (_totalNames > 1)
    |            for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                games_[_gameID].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(356)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        for (uint256 i = 1; i <= gID_; i++)
    |        {
  > |            games_[i].receivePlayerInfo(_pID, _addr, _name, _laff);
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(376)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                    games_[i].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |        }
    |                
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(379)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        
    |        // registration fee goes directly to community rewards
  > |        Jekyll_Island_Inc.deposit.value(address(this).balance)();
    |        
    |        // push player info to games
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(427)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        if (_all == true)
    |            for (uint256 i = 1; i <= gID_; i++)
  > |                games_[i].receivePlayerInfo(_pID, _addr, _name, _affID);
    |        
    |        // fire event
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(432)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            games_[gID_] = PlayerBookReceiverInterface(_gameAddress);
    |        
  > |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(620)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
  > |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(621)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
  > |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(622)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  > |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(623)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |    
    |    MSFun.Data private msData;
  > |    function multiSigDev(bytes32 _whatFunction) private returns (bool) {return(MSFun.multiSig(msData, TeamJust.requiredDevSignatures(), _whatFunction));}
    |    function deleteProposal(bytes32 _whatFunction) private {MSFun.deleteProposal(msData, _whatFunction);}
    |    function deleteAnyProposal(bytes32 _whatFunction) onlyDevs() public {MSFun.deleteProposal(msData, _whatFunction);}
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(61)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |    modifier onlyDevs() 
    |    {
  > |        require(TeamJust.isDev(msg.sender) == true, "msg sender is not a dev");
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(150)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |        
    |        // add players profile and most recent name
  > |        games_[_gameID].receivePlayerInfo(_pID, _addr, plyr_[_pID].name, plyr_[_pID].laff);
    |        
    |        // add list of all names
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(351)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |        if (_totalNames > 1)
    |            for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                games_[_gameID].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |        for (uint256 i = 1; i <= gID_; i++)
    |        {
  > |            games_[i].receivePlayerInfo(_pID, _addr, _name, _laff);
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(376)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                    games_[i].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |        }
    |                
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(379)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            // update last affiliate 
  > |            plyr_[_pID].laff = _affCode;
    |        } else if (_affCode == _pID) {
    |            _affCode = 0;
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(243)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        
    |        // add name to player profile, registry, and name book
  > |        plyr_[_pID].name = _name;
    |        pIDxName_[_name] = _pID;
    |        if (plyrNames_[_pID][_name] == false)
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(417)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        // add name to player profile, registry, and name book
    |        plyr_[_pID].name = _name;
  > |        pIDxName_[_name] = _pID;
    |        if (plyrNames_[_pID][_name] == false)
    |        {
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(418)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        if (plyrNames_[_pID][_name] == false)
    |        {
  > |            plyrNames_[_pID][_name] = true;
    |            plyr_[_pID].names++;
    |            plyrNameList_[_pID][plyr_[_pID].names] = _name;
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(421)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            plyrNames_[_pID][_name] = true;
  > |            plyr_[_pID].names++;
    |            plyrNameList_[_pID][plyr_[_pID].names] = _name;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(422)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            plyrNames_[_pID][_name] = true;
    |            plyr_[_pID].names++;
  > |            plyrNameList_[_pID][plyr_[_pID].names] = _name;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(423)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        if (pIDxAddr_[_addr] == 0)
    |        {
  > |            pID_++;
    |            pIDxAddr_[_addr] = pID_;
    |            plyr_[pID_].addr = _addr;
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(447)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            pID_++;
  > |            pIDxAddr_[_addr] = pID_;
    |            plyr_[pID_].addr = _addr;
    |            
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(448)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            pID_++;
    |            pIDxAddr_[_addr] = pID_;
  > |            plyr_[pID_].addr = _addr;
    |            
    |            // set the new player bool to true
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(449)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            // update last affiliate 
  > |            plyr_[_pID].laff = _affID;
    |        } else if (_affID == _pID) {
    |            _affID = 0;
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(519)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            {
    |                // update last affiliate
  > |                plyr_[_pID].laff = _affID;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(556)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            {
    |                // update last affiliate
  > |                plyr_[_pID].laff = _affID;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(592)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        if (multiSigDev("addGame") == true)
    |        {deleteProposal("addGame");
  > |            gID_++;
    |            bytes32 _name = _gameNameStr.nameFilter();
    |            gameIDs_[_gameAddress] = gID_;
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(614)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        if (multiSigDev("setRegistrationFee") == true)
    |        {deleteProposal("setRegistrationFee");
  > |            registrationFee_ = _fee;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(633)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            // if it is, lets record the original signers data
  > |            self.proposal_[_whatProposal].msgData = _msgData;
    |            
    |            // record original senders signature
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1007)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            
    |            // record original senders signature
  > |            self.proposal_[_whatProposal].admin[_whichAdmin] = true;        
    |            
    |            // update log (used to delete records later, and easy way to view signers)
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1010)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            // also useful if the calling function wants to give something to a 
    |            // specific signer.  
  > |            self.proposal_[_whatProposal].log[_currentCount] = _whichAdmin;  
    |            
    |            // track number of signatures
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1015)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            
    |            // track number of signatures
  > |            self.proposal_[_whatProposal].count += 1;  
    |            
    |            // if we now have enough signatures to execute the function, lets
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1018)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            {
    |                // record their signature
  > |                self.proposal_[_whatProposal].admin[_whichAdmin] = true;        
    |                
    |                // update log (used to delete records later, and easy way to view signers)
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1033)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |                
    |                // update log (used to delete records later, and easy way to view signers)
  > |                self.proposal_[_whatProposal].log[_currentCount] = _whichAdmin;  
    |                
    |                // track number of signatures
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1036)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |                
    |                // track number of signatures
  > |                self.proposal_[_whatProposal].count += 1;  
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1039)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        for (uint256 i=0; i < self.proposal_[_whatProposal].count; i++) {
    |            _whichAdmin = self.proposal_[_whatProposal].log[i];
  > |            delete self.proposal_[_whatProposal].admin[_whichAdmin];
    |            delete self.proposal_[_whatProposal].log[i];
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1070)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            _whichAdmin = self.proposal_[_whatProposal].log[i];
    |            delete self.proposal_[_whatProposal].admin[_whichAdmin];
  > |            delete self.proposal_[_whatProposal].log[i];
    |        }
    |        //delete the rest of the data in the record
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1071)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        }
    |        //delete the rest of the data in the record
  > |        delete self.proposal_[_whatProposal];
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(1074)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.sol(749)


