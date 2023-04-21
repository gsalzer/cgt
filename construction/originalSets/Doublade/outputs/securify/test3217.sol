Processing contract: /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol:BFDToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BFDToken':
    |}
    |
  > |contract BFDToken is EIP20Interface, SafeMath {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    string constant public symbol = "BFDT";
    |
  > |    mapping (address => uint256) public addressType;  // 1 for team; 2 for advisors and partners; 3 for seed investors; 4 for angel investors; 5 for regular investors; 0 for others
    |    mapping (address => uint256[3]) public releaseForSeed;
    |    mapping (address => uint256[5]) public releaseForTeamAndAdvisor;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |
    |    mapping (address => uint256) public addressType;  // 1 for team; 2 for advisors and partners; 3 for seed investors; 4 for angel investors; 5 for regular investors; 0 for others
  > |    mapping (address => uint256[3]) public releaseForSeed;
    |    mapping (address => uint256[5]) public releaseForTeamAndAdvisor;
    |    event AllocateToken(address indexed _to, uint256 _value, uint256 _type);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    mapping (address => uint256) public addressType;  // 1 for team; 2 for advisors and partners; 3 for seed investors; 4 for angel investors; 5 for regular investors; 0 for others
    |    mapping (address => uint256[3]) public releaseForSeed;
  > |    mapping (address => uint256[5]) public releaseForTeamAndAdvisor;
    |    event AllocateToken(address indexed _to, uint256 _value, uint256 _type);
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(93)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function allocateTokenForTeam(address _to, uint256 _value) isOwner notFinalised public {
    |        require(addressType[_to] == 0 || addressType[_to] == 1);
    |        addressType[_to] = 1;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function allocateTokenForAdvisor(address _to, uint256 _value) isOwner public {
    |        require(addressType[_to] == 0 || addressType[_to] == 2);
    |        addressType[_to] = 2;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function changeOwner(address _owner) isOwner public {
    |        owner = _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(canTransfer(_from, _value));
    |        uint256 allowance = allowed[_from][msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(215)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(232)

[31mViolation[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |
    |contract SafeMath {
  > |    function safeAdd(uint256 a, uint256 b) internal pure returns(uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |        return c;
    |    }
  > |    function safeSub(uint256 a, uint256 b) internal pure returns(uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function safeMul(uint256 a, uint256 b) internal pure returns(uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function safeDiv(uint256 a, uint256 b) internal pure returns(uint256) {
    |        uint256 c = a / b;
    |        return c;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string constant public name = "BFDToken";
    |    uint8 constant public decimals = 18;                //How many decimals to show.
    |    string constant public symbol = "BFDT";
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |    */
    |    string constant public name = "BFDToken";
  > |    uint8 constant public decimals = 18;                //How many decimals to show.
    |    string constant public symbol = "BFDT";
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |    string constant public name = "BFDToken";
    |    uint8 constant public decimals = 18;                //How many decimals to show.
  > |    string constant public symbol = "BFDT";
    |
    |    mapping (address => uint256) public addressType;  // 1 for team; 2 for advisors and partners; 3 for seed investors; 4 for angel investors; 5 for regular investors; 0 for others
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |    event AllocateToken(address indexed _to, uint256 _value, uint256 _type);
    |
  > |    address public owner;
    |    uint256 public finaliseTime;
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |
    |    address public owner;
  > |    uint256 public finaliseTime;
    |
    |    function BFDToken() public {
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function setFinaliseTime() isOwner public {
    |        require(finaliseTime == 0);
    |        finaliseTime = now;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'BFDToken':
    |    }
    |
  > |    function canTransfer(address _from, uint256 _value) internal view returns (bool success) {
    |        require(finaliseTime != 0);
    |        uint256 index;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(191)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        if (_type == 3) {
    |            temp = safeMul(_eth, 60000 * 10**18);
  > |            balances[_to] = safeAdd(balances[_to], temp);
    |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
    |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |            temp = safeMul(_eth, 60000 * 10**18);
    |            balances[_to] = safeAdd(balances[_to], temp);
  > |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
    |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
    |            releaseForSeed[_to][1] = safeDiv(safeMul(balances[_to], 30), 100);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |            balances[_to] = safeAdd(balances[_to], temp);
    |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
  > |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
    |            releaseForSeed[_to][1] = safeDiv(safeMul(balances[_to], 30), 100);
    |            releaseForSeed[_to][2] = 0;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
    |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
  > |            releaseForSeed[_to][1] = safeDiv(safeMul(balances[_to], 30), 100);
    |            releaseForSeed[_to][2] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
    |            releaseForSeed[_to][1] = safeDiv(safeMul(balances[_to], 30), 100);
  > |            releaseForSeed[_to][2] = 0;
    |
    |            AllocateToken(_to, temp, 3);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        } else if (_type == 4) {
    |            temp = safeMul(_eth, 20000 * 10**18);
  > |            balances[_to] = safeAdd(balances[_to], temp);
    |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
    |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |            temp = safeMul(_eth, 20000 * 10**18);
    |            balances[_to] = safeAdd(balances[_to], temp);
  > |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
    |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
    |            releaseForSeed[_to][1] = safeDiv(safeMul(balances[_to], 30), 100);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |            balances[_to] = safeAdd(balances[_to], temp);
    |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
  > |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
    |            releaseForSeed[_to][1] = safeDiv(safeMul(balances[_to], 30), 100);
    |            releaseForSeed[_to][2] = 0;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
    |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
  > |            releaseForSeed[_to][1] = safeDiv(safeMul(balances[_to], 30), 100);
    |            releaseForSeed[_to][2] = 0;
    |            AllocateToken(_to, temp, 4);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |            releaseForSeed[_to][0] = safeDiv(safeMul(balances[_to], 60), 100);
    |            releaseForSeed[_to][1] = safeDiv(safeMul(balances[_to], 30), 100);
  > |            releaseForSeed[_to][2] = 0;
    |            AllocateToken(_to, temp, 4);
    |        } else if (_type == 5) {
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        } else if (_type == 5) {
    |            temp = safeMul(_eth, 12000 * 10**18);
  > |            balances[_to] = safeAdd(balances[_to], temp);
    |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
    |            AllocateToken(_to, temp, 5);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |            temp = safeMul(_eth, 12000 * 10**18);
    |            balances[_to] = safeAdd(balances[_to], temp);
  > |            balances[msg.sender] = safeSub(balances[msg.sender], temp);
    |            AllocateToken(_to, temp, 5);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        require(addressType[_to] == 0 || addressType[_to] == 1);
    |        addressType[_to] = 1;
  > |        balances[_to] = safeAdd(balances[_to], safeMul(_value, 10**18));
    |        balances[msg.sender] = safeSub(balances[msg.sender], safeMul(_value, 10**18));
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        addressType[_to] = 1;
    |        balances[_to] = safeAdd(balances[_to], safeMul(_value, 10**18));
  > |        balances[msg.sender] = safeSub(balances[msg.sender], safeMul(_value, 10**18));
    |
    |        for (uint256 i = 0; i <= 4; ++i) {
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |
    |        for (uint256 i = 0; i <= 4; ++i) {
  > |            releaseForTeamAndAdvisor[_to][i] = safeDiv(safeMul(balances[_to], (4 - i) * 25), 100);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        require(addressType[_to] == 0 || addressType[_to] == 2);
    |        addressType[_to] = 2;
  > |        balances[_to] = safeAdd(balances[_to], safeMul(_value, 10**18));
    |        balances[msg.sender] = safeSub(balances[msg.sender], safeMul(_value, 10**18));
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        addressType[_to] = 2;
    |        balances[_to] = safeAdd(balances[_to], safeMul(_value, 10**18));
  > |        balances[msg.sender] = safeSub(balances[msg.sender], safeMul(_value, 10**18));
    |
    |        for (uint256 i = 0; i <= 4; ++i) {
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |
    |        for (uint256 i = 0; i <= 4; ++i) {
  > |            releaseForTeamAndAdvisor[_to][i] = safeDiv(safeMul(balances[_to], (4 - i) * 25), 100);
    |        }
    |        AllocateToken(_to, safeMul(_value, 10**18), 2);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        require(canTransfer(msg.sender, _value));
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'BFDToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'BFDToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'BFDToken':
    |        require(_to != address(0x0) && _eth != 0);
    |        require(addressType[_to] == 0 || addressType[_to] == _type);
  > |        addressType[_to] = _type;
    |        uint256 temp;
    |        if (_type == 3) {
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'BFDToken':
    |    function allocateTokenForTeam(address _to, uint256 _value) isOwner notFinalised public {
    |        require(addressType[_to] == 0 || addressType[_to] == 1);
  > |        addressType[_to] = 1;
    |        balances[_to] = safeAdd(balances[_to], safeMul(_value, 10**18));
    |        balances[msg.sender] = safeSub(balances[msg.sender], safeMul(_value, 10**18));
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'BFDToken':
    |    function allocateTokenForAdvisor(address _to, uint256 _value) isOwner public {
    |        require(addressType[_to] == 0 || addressType[_to] == 2);
  > |        addressType[_to] = 2;
    |        balances[_to] = safeAdd(balances[_to], safeMul(_value, 10**18));
    |        balances[msg.sender] = safeSub(balances[msg.sender], safeMul(_value, 10**18));
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'BFDToken':
    |
    |    function changeOwner(address _owner) isOwner public {
  > |        owner = _owner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'BFDToken':
    |    function setFinaliseTime() isOwner public {
    |        require(finaliseTime == 0);
  > |        finaliseTime = now;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(179)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |contract SafeMath {
    |    function safeAdd(uint256 a, uint256 b) internal pure returns(uint256) {
    |        uint256 c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xd2d0f85b690604c245f61513bf4679b24ed64c35.sol(3)


