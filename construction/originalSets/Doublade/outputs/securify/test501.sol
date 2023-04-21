Processing contract: /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol:IBOXS
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'IBOXS':
    |}
    |
  > |contract IBOXS is owned, TokenERC20 {
    |    mapping (address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'IBOXS':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'IBOXS':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'IBOXS':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'IBOXS':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'IBOXS':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'IBOXS':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'IBOXS':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'IBOXS':
    |
    |contract IBOXS is owned, TokenERC20 {
  > |    mapping (address => bool) public frozenAccount;
    |
    |    event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'IBOXS':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'IBOXS':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'IBOXS':
    |
    |contract TokenERC20 {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'IBOXS':
    |contract TokenERC20 {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'IBOXS':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'IBOXS':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'IBOXS':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'IBOXS':
    |    ) TokenERC20(initialSupply, tokenName, tokenSymbol) public {}
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != address(0x0));
    |        require (balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(118)

[33mWarning[0m for UnhandledException in contract 'IBOXS':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IBOXS':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'IBOXS':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'IBOXS':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'IBOXS':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'IBOXS':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'IBOXS':
    |        require(!frozenAccount[_to]);
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'IBOXS':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'IBOXS':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'IBOXS':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'IBOXS':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'IBOXS':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'IBOXS':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'IBOXS':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(130)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TokenERC20 {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract TokenERC20 {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != address(0x0));
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(88)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(100)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity >=0.4.22 <0.6.0;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20d88cfc6d23d06c98d7661aded19043e9ee5aa0.sol(16)


