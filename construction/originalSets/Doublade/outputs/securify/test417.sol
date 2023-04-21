Processing contract: /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol:AirdropToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol:BaseToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol:ICOToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol:SOCIALXBOUNTY
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'AirdropToken':
    |}
    |
  > |contract AirdropToken is BaseToken {
    |    uint256 public airAmount;
    |    uint256 public airBegintime;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'AirdropToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'AirdropToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'AirdropToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'AirdropToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'AirdropToken':
    |    uint32 public airLimitCount;
    |
  > |    mapping (address => uint32) public airCountOf;
    |
    |    event Airdrop(address indexed from, uint32 indexed count, uint256 tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |
    |contract BaseToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |contract BaseToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |
    |contract AirdropToken is BaseToken {
  > |    uint256 public airAmount;
    |    uint256 public airBegintime;
    |    uint256 public airEndtime;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |contract AirdropToken is BaseToken {
    |    uint256 public airAmount;
  > |    uint256 public airBegintime;
    |    uint256 public airEndtime;
    |    address public airSender;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |    uint256 public airAmount;
    |    uint256 public airBegintime;
  > |    uint256 public airEndtime;
    |    address public airSender;
    |    uint32 public airLimitCount;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |    uint256 public airBegintime;
    |    uint256 public airEndtime;
  > |    address public airSender;
    |    uint32 public airLimitCount;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |    uint256 public airEndtime;
    |    address public airSender;
  > |    uint32 public airLimitCount;
    |
    |    mapping (address => uint32) public airCountOf;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'AirdropToken':
    |    event Airdrop(address indexed from, uint32 indexed count, uint256 tokenValue);
    |
  > |    function airdrop() public payable {
    |        require(now >= airBegintime && now <= airEndtime);
    |        require(msg.value == 0);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'AirdropToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'AirdropToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'AirdropToken':
    |        }
    |        _transfer(airSender, msg.sender, airAmount);
  > |        airCountOf[msg.sender] += 1;
    |        Airdrop(msg.sender, airCountOf[msg.sender], airAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'AirdropToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'AirdropToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'AirdropToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'AirdropToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(39)

[33mWarning[0m for LockedEther in contract 'BaseToken':
    |pragma solidity ^0.4.19;
    |
  > |contract BaseToken {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'BaseToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |
    |contract BaseToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |contract BaseToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BaseToken':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'BaseToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(39)

[33mWarning[0m for DAOConstantGas in contract 'ICOToken':
    |    function withdraw() public {
    |        uint256 balance = this.balance;
  > |        icoHolder.transfer(balance);
    |        Withdraw(msg.sender, icoHolder, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(91)

[33mWarning[0m for LockedEther in contract 'ICOToken':
    |}
    |
  > |contract ICOToken is BaseToken {
    |    // 1 ether = icoRatio token
    |    uint256 public icoRatio;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'ICOToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'ICOToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'ICOToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'ICOToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |
    |contract BaseToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |contract BaseToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |contract ICOToken is BaseToken {
    |    // 1 ether = icoRatio token
  > |    uint256 public icoRatio;
    |    uint256 public icoBegintime;
    |    uint256 public icoEndtime;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |    // 1 ether = icoRatio token
    |    uint256 public icoRatio;
  > |    uint256 public icoBegintime;
    |    uint256 public icoEndtime;
    |    address public icoSender;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |    uint256 public icoRatio;
    |    uint256 public icoBegintime;
  > |    uint256 public icoEndtime;
    |    address public icoSender;
    |    address public icoHolder;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |    uint256 public icoBegintime;
    |    uint256 public icoEndtime;
  > |    address public icoSender;
    |    address public icoHolder;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |    uint256 public icoEndtime;
    |    address public icoSender;
  > |    address public icoHolder;
    |
    |    event ICO(address indexed from, uint256 indexed value, uint256 tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |    event Withdraw(address indexed from, address indexed holder, uint256 value);
    |
  > |    function ico() public payable {
    |        require(now >= icoBegintime && now <= icoEndtime);
    |        uint256 tokenValue = (msg.value * icoRatio * 10 ** uint256(decimals)) / (1 ether / 1 wei);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'ICOToken':
    |    }
    |
  > |    function withdraw() public {
    |        uint256 balance = this.balance;
    |        icoHolder.transfer(balance);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(89)

[31mViolation[0m for TODAmount in contract 'ICOToken':
    |    function withdraw() public {
    |        uint256 balance = this.balance;
  > |        icoHolder.transfer(balance);
    |        Withdraw(msg.sender, icoHolder, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(91)

[33mWarning[0m for TODReceiver in contract 'ICOToken':
    |    function withdraw() public {
    |        uint256 balance = this.balance;
  > |        icoHolder.transfer(balance);
    |        Withdraw(msg.sender, icoHolder, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(91)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |    function withdraw() public {
    |        uint256 balance = this.balance;
  > |        icoHolder.transfer(balance);
    |        Withdraw(msg.sender, icoHolder, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'ICOToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'ICOToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(39)

[33mWarning[0m for DAOConstantGas in contract 'SOCIALXBOUNTY':
    |    function withdraw() public {
    |        uint256 balance = this.balance;
  > |        icoHolder.transfer(balance);
    |        Withdraw(msg.sender, icoHolder, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(91)

[33mWarning[0m for LockedEther in contract 'SOCIALXBOUNTY':
    |}
    |
  > |contract SOCIALXBOUNTY is BaseToken, AirdropToken, ICOToken {
    |    function SOCIALXBOUNTY() public {
    |        totalSupply = 5000000000e18;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    uint32 public airLimitCount;
    |
  > |    mapping (address => uint32) public airCountOf;
    |
    |    event Airdrop(address indexed from, uint32 indexed count, uint256 tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |
    |contract BaseToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |contract BaseToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |
    |contract AirdropToken is BaseToken {
  > |    uint256 public airAmount;
    |    uint256 public airBegintime;
    |    uint256 public airEndtime;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |contract AirdropToken is BaseToken {
    |    uint256 public airAmount;
  > |    uint256 public airBegintime;
    |    uint256 public airEndtime;
    |    address public airSender;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    uint256 public airAmount;
    |    uint256 public airBegintime;
  > |    uint256 public airEndtime;
    |    address public airSender;
    |    uint32 public airLimitCount;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    uint256 public airBegintime;
    |    uint256 public airEndtime;
  > |    address public airSender;
    |    uint32 public airLimitCount;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    uint256 public airEndtime;
    |    address public airSender;
  > |    uint32 public airLimitCount;
    |
    |    mapping (address => uint32) public airCountOf;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    event Airdrop(address indexed from, uint32 indexed count, uint256 tokenValue);
    |
  > |    function airdrop() public payable {
    |        require(now >= airBegintime && now <= airEndtime);
    |        require(msg.value == 0);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |contract ICOToken is BaseToken {
    |    // 1 ether = icoRatio token
  > |    uint256 public icoRatio;
    |    uint256 public icoBegintime;
    |    uint256 public icoEndtime;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    // 1 ether = icoRatio token
    |    uint256 public icoRatio;
  > |    uint256 public icoBegintime;
    |    uint256 public icoEndtime;
    |    address public icoSender;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    uint256 public icoRatio;
    |    uint256 public icoBegintime;
  > |    uint256 public icoEndtime;
    |    address public icoSender;
    |    address public icoHolder;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    uint256 public icoBegintime;
    |    uint256 public icoEndtime;
  > |    address public icoSender;
    |    address public icoHolder;
    |
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    uint256 public icoEndtime;
    |    address public icoSender;
  > |    address public icoHolder;
    |
    |    event ICO(address indexed from, uint256 indexed value, uint256 tokenValue);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    event Withdraw(address indexed from, address indexed holder, uint256 value);
    |
  > |    function ico() public payable {
    |        require(now >= icoBegintime && now <= icoEndtime);
    |        uint256 tokenValue = (msg.value * icoRatio * 10 ** uint256(decimals)) / (1 ether / 1 wei);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'SOCIALXBOUNTY':
    |    }
    |
  > |    function withdraw() public {
    |        uint256 balance = this.balance;
    |        icoHolder.transfer(balance);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(89)

[31mViolation[0m for TODAmount in contract 'SOCIALXBOUNTY':
    |    function withdraw() public {
    |        uint256 balance = this.balance;
  > |        icoHolder.transfer(balance);
    |        Withdraw(msg.sender, icoHolder, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(91)

[33mWarning[0m for TODReceiver in contract 'SOCIALXBOUNTY':
    |    function withdraw() public {
    |        uint256 balance = this.balance;
  > |        icoHolder.transfer(balance);
    |        Withdraw(msg.sender, icoHolder, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(91)

[33mWarning[0m for UnhandledException in contract 'SOCIALXBOUNTY':
    |    function withdraw() public {
    |        uint256 balance = this.balance;
  > |        icoHolder.transfer(balance);
    |        Withdraw(msg.sender, icoHolder, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'SOCIALXBOUNTY':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'SOCIALXBOUNTY':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'SOCIALXBOUNTY':
    |        }
    |        _transfer(airSender, msg.sender, airAmount);
  > |        airCountOf[msg.sender] += 1;
    |        Airdrop(msg.sender, airCountOf[msg.sender], airAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'SOCIALXBOUNTY':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'SOCIALXBOUNTY':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'SOCIALXBOUNTY':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'SOCIALXBOUNTY':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1aced77b121ed465a95fb5471e3d409fd2d4ede6.sol(39)


