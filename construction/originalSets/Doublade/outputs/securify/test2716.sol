Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:AccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:ERC827
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:PlayerInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:PlayerSkill
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:RandomInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:TournamentBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:TournamentCompetition
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:TournamentCore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol:TournamentInterface
[33mWarning[0m for LockedEther in contract 'AccessControl':
    |}
    |
  > |contract AccessControl {
    |    address public ceoAddress;
    |    address public cfoAddress;
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |
    |contract AccessControl {
  > |    address public ceoAddress;
    |    address public cfoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |contract AccessControl {
    |    address public ceoAddress;
  > |    address public cfoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    address public ceoAddress;
    |    address public cfoAddress;
  > |    address public cooAddress;
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |
    |    // @dev Keeps track whether the contract is paused. When that is true, most actions are blocked
  > |    bool public paused = false;
    |
    |    /// @dev Access modifier for CEO-only functionality
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    /// @dev Assigns a new address to act as the CEO. Only available to the current CEO.
    |    /// @param _newCEO The address of the new CEO
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    /// @dev Assigns a new address to act as the CFO. Only available to the current CEO.
    |    /// @param _newCFO The address of the new CFO
  > |    function setCFO(address _newCFO) external onlyCEO {
    |        require(_newCFO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    /// @dev Assigns a new address to act as the COO. Only available to the current CEO.
    |    /// @param _newCOO The address of the new COO
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    /// @dev Called by any "C-level" role to pause the contract. Used only when
    |    ///  a bug or exploit is detected and we need to limit damage.
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    /// @notice This is public rather than external so it can be called by
    |    ///  derived contracts.
  > |    function unpause() public onlyCEO whenPaused {
    |        paused = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |        require(_newCFO != address(0));
    |
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |    ///  a bug or exploit is detected and we need to limit damage.
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |    ///  derived contracts.
    |    function unpause() public onlyCEO whenPaused {
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(172)

[33mWarning[0m for LockedEther in contract 'PlayerSkill':
    |}
    |
  > |contract PlayerSkill {
    |    enum SkillType { Undefined, WinGamesInOneTournament, ScoreInOneGame, ScoreInOneTournament, 
    |        FanOfPlayerID, ChampionWithPlayerID, HattricksInOneTuournament, Terminator,
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(255)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(7)

[33mWarning[0m for LockedEther in contract 'TournamentBase':
    |
    |/// @title TournamentBase contract for BS.
  > |contract TournamentBase {
    |
    |    event Enter(address user, uint256 fee, uint8 defenceCount, uint8 midfieldCount, uint8 forwardCount, uint32[11] playerIds);
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'TournamentBase':
    |    }
    |
  > |    mapping (address => Team) public userToTeam;
    |    address[] teamUserInfo;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(243)

[31mViolation[0m for MissingInputValidation in contract 'TournamentBase':
    |
    |    uint256 nextCompetitionId;
  > |    mapping (uint256 => CompetitionInfo) public competitionInfos;
    |    mapping (uint256 => mapping (uint256 => SponsorsInfo)) public sponsorInfos;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'TournamentBase':
    |    uint256 nextCompetitionId;
    |    mapping (uint256 => CompetitionInfo) public competitionInfos;
  > |    mapping (uint256 => mapping (uint256 => SponsorsInfo)) public sponsorInfos;
    |
    |    PlayerInterface bsCoreContract;
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'TournamentBase':
    |    event Reward(uint256 competitionId, address target, uint8 winCount, address user, uint256 sponsorAmount, uint256 amount);
    |
  > |    uint256 public minEnterFee = 100*(10**18);
    |    //uint256 public constant sponsorInterval = 1 hours;
    |    uint32[5] public operatingCosts = [100, 100, 120, 160, 240];
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'TournamentBase':
    |    uint256 public minEnterFee = 100*(10**18);
    |    //uint256 public constant sponsorInterval = 1 hours;
  > |    uint32[5] public operatingCosts = [100, 100, 120, 160, 240];
    |
    |    struct Team {
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'TournamentBase':
    |    PlayerInterface bsCoreContract;
    |    RandomInterface randomContract;
  > |    ERC827 public joyTokenContract;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(252)

[33mWarning[0m for LockedEther in contract 'TournamentCompetition':
    |}
    |
  > |contract TournamentCompetition is TournamentBase, PlayerSkill {
    |
    |    uint256 constant rangeParam = 90;
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(480)

[31mViolation[0m for MissingInputValidation in contract 'TournamentCompetition':
    |    }
    |
  > |    mapping (address => Team) public userToTeam;
    |    address[] teamUserInfo;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(243)

[31mViolation[0m for MissingInputValidation in contract 'TournamentCompetition':
    |
    |    uint256 nextCompetitionId;
  > |    mapping (uint256 => CompetitionInfo) public competitionInfos;
    |    mapping (uint256 => mapping (uint256 => SponsorsInfo)) public sponsorInfos;
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'TournamentCompetition':
    |    uint256 nextCompetitionId;
    |    mapping (uint256 => CompetitionInfo) public competitionInfos;
  > |    mapping (uint256 => mapping (uint256 => SponsorsInfo)) public sponsorInfos;
    |
    |    PlayerInterface bsCoreContract;
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'TournamentCompetition':
    |    event Reward(uint256 competitionId, address target, uint8 winCount, address user, uint256 sponsorAmount, uint256 amount);
    |
  > |    uint256 public minEnterFee = 100*(10**18);
    |    //uint256 public constant sponsorInterval = 1 hours;
    |    uint32[5] public operatingCosts = [100, 100, 120, 160, 240];
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'TournamentCompetition':
    |    uint256 public minEnterFee = 100*(10**18);
    |    //uint256 public constant sponsorInterval = 1 hours;
  > |    uint32[5] public operatingCosts = [100, 100, 120, 160, 240];
    |
    |    struct Team {
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'TournamentCompetition':
    |    PlayerInterface bsCoreContract;
    |    RandomInterface randomContract;
  > |    ERC827 public joyTokenContract;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb1afa0a47f2c237c21a95e4de6e4954c21a27c0f.sol(252)


