Processing contract: /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol:NameFilter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol:PlayerBook
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol:PlayerBookReceiverInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'NameFilter':
    |* ╚═╝└─┘┘└┘ ┴ ┴└─┴ ┴└─┘ ┴   ╚═╝└─┘─┴┘└─┘ └──────────┘
    |*/
  > |library NameFilter {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(606)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |        if (_all == true)
    |            for (uint256 i = 1; i <= gID_; i++)
  > |                games_[i].receivePlayerInfo(_pID, _addr, _name, _affID);
    |        
    |        // fire event
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(382)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |            games_[gID_] = PlayerBookReceiverInterface(_gameAddress);
    |        
  > |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(568)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |        
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
  > |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(569)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
  > |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(570)

[33mWarning[0m for DAO in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  > |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(571)

[33mWarning[0m for DAOConstantGas in contract 'PlayerBook':
    |        
    |        // registration fee goes directly to community rewards
  > |        communityAddr.transfer(address(this).balance);
    |        
    |        // push player info to games
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(377)

[33mWarning[0m for LockedEther in contract 'PlayerBook':
    |
    |
  > |contract PlayerBook {
    |    using NameFilter for string;
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |//=============================|================================================    
    |    uint256 public registrationFee_ = 1 finney;            // price to register a name
  > |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    uint256 public registrationFee_ = 1 finney;            // price to register a name
    |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
  > |    mapping(address => bytes32) public gameNames_;          // lookup a games name
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
    |    uint256 public gID_;        // total number of games
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
  > |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
    |    uint256 public gID_;        // total number of games
    |    uint256 public pID_;        // total number of players
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    uint256 public gID_;        // total number of games
    |    uint256 public pID_;        // total number of players
  > |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    uint256 public pID_;        // total number of players
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
  > |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
    |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
  > |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
    |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
    |    mapping (uint256 => mapping (uint256 => bytes32)) public plyrNameList_; // (pID => nameNum => name) list of names a player owns
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
  > |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
    |    mapping (uint256 => mapping (uint256 => bytes32)) public plyrNameList_; // (pID => nameNum => name) list of names a player owns
    |    struct Player {
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping (uint256 => Player) public plyr_;               // (pID => data) player data
    |    mapping (uint256 => mapping (bytes32 => bool)) public plyrNames_; // (pID => name => bool) list of names a player owns.  (used so you can change your display name amoungst any name you own)
  > |    mapping (uint256 => mapping (uint256 => bytes32)) public plyrNameList_; // (pID => nameNum => name) list of names a player owns
    |    struct Player {
    |        address addr;
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |//  (/_>< | (/_| | |(_||  (_(_|||_\  .
    |//==============================================================================
  > |    function getPlayerID(address _addr)
    |        isRegisteredGame()
    |        external
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(411)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (pIDxAddr_[_addr]);
    |    }
  > |    function getPlayerName(uint256 _pID)
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(419)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (plyr_[_pID].name);
    |    }
  > |    function getPlayerLAff(uint256 _pID)
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(426)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (plyr_[_pID].laff);
    |    }
  > |    function getPlayerAddr(uint256 _pID)
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(433)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return(registrationFee_);
    |    }
  > |    function registerNameXIDFromDapp(address _addr, bytes32 _name, uint256 _affCode, bool _all)
    |        isRegisteredGame()
    |        external
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(447)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |        return(_isNewPlayer, _affID);
    |    }
  > |    function registerNameXnameFromDapp(address _addr, bytes32 _name, bytes32 _affCode, bool _all)
    |        isRegisteredGame()
    |        external
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(515)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |//  _\(/_ | |_||_)  .
    |//=============|================================================================
  > |    function addGame(address _gameAddress, string _gameNameStr)
    |     onlyCommunity()
    |        public
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(556)

[31mViolation[0m for MissingInputValidation in contract 'PlayerBook':
    |    }
    |    
  > |    function setRegistrationFee(uint256 _fee)
    |     onlyCommunity()
    |        public
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(574)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//    (_|(_| | (_|  _\(/_ | |_||_)  .
    |//=============================|================================================    
  > |    uint256 public registrationFee_ = 1 finney;            // price to register a name
    |    mapping(uint256 => PlayerBookReceiverInterface) public games_;  // mapping of our game interfaces for sending your account info to games
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping(address => bytes32) public gameNames_;          // lookup a games name
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
  > |    uint256 public gID_;        // total number of games
    |    uint256 public pID_;        // total number of players
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |    mapping(address => uint256) public gameIDs_;            // lokup a games ID
    |    uint256 public gID_;        // total number of games
  > |    uint256 public pID_;        // total number of players
    |    mapping (address => uint256) public pIDxAddr_;          // (addr => pID) returns player id by address
    |    mapping (bytes32 => uint256) public pIDxName_;          // (name => pID) returns player id by name
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//    (_|(/_ |  | (/_| _\  . (for UI & viewing things on etherscan)
    |//=====_|=======================================================================
  > |    function checkIfNameValid(string _nameStr)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |     * -functionhash- 0x0c6940ea
    |     */
  > |    function addMeToAllGames()
    |        isHuman()
    |        public
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(313)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |     * @param _nameString the name you want to use 
    |     */
  > |    function useMyOldName(string _nameString)
    |        isHuman()
    |        public 
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(340)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//    (_(_)| (/_  |(_)(_||(_  . 
    |//=====================_|=======================================================    
  > |    function registerNameCore(uint256 _pID, address _addr, uint256 _affID, bytes32 _name, bool _isNewPlayer, bool _all)
    |        private
    |    {
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(359)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |//     | (_)(_)|_\  .
    |//==============================================================================    
  > |    function determinePID(address _addr)
    |        private
    |        returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(391)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |        return (plyr_[_pID].addr);
    |    }
  > |    function getNameFee()
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(440)

[33mWarning[0m for MissingInputValidation in contract 'PlayerBook':
    |     * @return reprocessed string in bytes32 format
    |     */
  > |    function nameFilter(string _input)
    |        internal
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(618)

[31mViolation[0m for TODAmount in contract 'PlayerBook':
    |        
    |        // registration fee goes directly to community rewards
  > |        communityAddr.transfer(address(this).balance);
    |        
    |        // push player info to games
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(377)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        
    |        // add players profile and most recent name
  > |        games_[_gameID].receivePlayerInfo(_pID, _addr, plyr_[_pID].name, plyr_[_pID].laff);
    |        
    |        // add list of all names
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(301)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        if (_totalNames > 1)
    |            for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                games_[_gameID].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(306)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        for (uint256 i = 1; i <= gID_; i++)
    |        {
  > |            games_[i].receivePlayerInfo(_pID, _addr, _name, _laff);
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(326)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                    games_[i].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |        }
    |                
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(329)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        
    |        // registration fee goes directly to community rewards
  > |        communityAddr.transfer(address(this).balance);
    |        
    |        // push player info to games
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(377)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        if (_all == true)
    |            for (uint256 i = 1; i <= gID_; i++)
  > |                games_[i].receivePlayerInfo(_pID, _addr, _name, _affID);
    |        
    |        // fire event
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(382)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            games_[gID_] = PlayerBookReceiverInterface(_gameAddress);
    |        
  > |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(568)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |        
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
  > |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(569)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(1, plyr_[1].addr, plyr_[1].name, 0);
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
  > |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
    |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(570)

[33mWarning[0m for UnhandledException in contract 'PlayerBook':
    |            games_[gID_].receivePlayerInfo(2, plyr_[2].addr, plyr_[2].name, 0);
    |            games_[gID_].receivePlayerInfo(3, plyr_[3].addr, plyr_[3].name, 0);
  > |            games_[gID_].receivePlayerInfo(4, plyr_[4].addr, plyr_[4].name, 0);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(571)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |        
    |        // add players profile and most recent name
  > |        games_[_gameID].receivePlayerInfo(_pID, _addr, plyr_[_pID].name, plyr_[_pID].laff);
    |        
    |        // add list of all names
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |        if (_totalNames > 1)
    |            for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                games_[_gameID].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |        for (uint256 i = 1; i <= gID_; i++)
    |        {
  > |            games_[i].receivePlayerInfo(_pID, _addr, _name, _laff);
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlayerBook':
    |            if (_totalNames > 1)
    |                for (uint256 ii = 1; ii <= _totalNames; ii++)
  > |                    games_[i].receivePlayerNameList(_pID, plyrNameList_[_pID][ii]);
    |        }
    |                
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            // update last affiliate 
  > |            plyr_[_pID].laff = _affCode;
    |        } else if (_affCode == _pID) {
    |            _affCode = 0;
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(193)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        
    |        // add name to player profile, registry, and name book
  > |        plyr_[_pID].name = _name;
    |        pIDxName_[_name] = _pID;
    |        if (plyrNames_[_pID][_name] == false)
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(367)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        // add name to player profile, registry, and name book
    |        plyr_[_pID].name = _name;
  > |        pIDxName_[_name] = _pID;
    |        if (plyrNames_[_pID][_name] == false)
    |        {
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(368)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        if (plyrNames_[_pID][_name] == false)
    |        {
  > |            plyrNames_[_pID][_name] = true;
    |            plyr_[_pID].names++;
    |            plyrNameList_[_pID][plyr_[_pID].names] = _name;
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(371)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            plyrNames_[_pID][_name] = true;
  > |            plyr_[_pID].names++;
    |            plyrNameList_[_pID][plyr_[_pID].names] = _name;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(372)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            plyrNames_[_pID][_name] = true;
    |            plyr_[_pID].names++;
  > |            plyrNameList_[_pID][plyr_[_pID].names] = _name;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(373)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        if (pIDxAddr_[_addr] == 0)
    |        {
  > |            pID_++;
    |            pIDxAddr_[_addr] = pID_;
    |            plyr_[pID_].addr = _addr;
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(397)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            pID_++;
  > |            pIDxAddr_[_addr] = pID_;
    |            plyr_[pID_].addr = _addr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(398)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            pID_++;
    |            pIDxAddr_[_addr] = pID_;
  > |            plyr_[pID_].addr = _addr;
    |            
    |            // set the new player bool to true
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(399)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        {
    |            // update last affiliate 
  > |            plyr_[_pID].laff = _affID;
    |        } else if (_affID == _pID) {
    |            _affID = 0;
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(469)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            {
    |                // update last affiliate
  > |                plyr_[_pID].laff = _affID;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(506)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerBook':
    |            {
    |                // update last affiliate
  > |                plyr_[_pID].laff = _affID;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(542)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        require(gameIDs_[_gameAddress] == 0, "derp, that games already been registered");
    |
  > |            gID_++;
    |            bytes32 _name = _gameNameStr.nameFilter();
    |            gameIDs_[_gameAddress] = gID_;
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(562)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerBook':
    |        public
    |    {
  > |            registrationFee_ = _fee;
    |    }
    |        
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(578)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * - removed div, its useless
    | */
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x2b5187f4bb287d5f4a03c5606ebab627d85d1274.sol(693)


