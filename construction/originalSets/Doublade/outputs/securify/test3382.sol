Processing contract: /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol:LOTT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LOTT':
    |pragma solidity ^0.4.11;
    |
  > |contract LOTT {
    |    string public name = 'LOTT';
    |    string public symbol = 'LOTT';
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'LOTT':
    |    uint256 public totalSupply = 1000000000000000000000000;
    |    
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'LOTT':
    |    
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'LOTT':
    |    uint8 public rand2;
    |    
  > |    mapping (uint => mapping (uint8 => address)) public map;
    |    mapping (address => uint256) public gameBalanceOf;
    |    
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'LOTT':
    |    
    |    mapping (uint => mapping (uint8 => address)) public map;
  > |    mapping (address => uint256) public gameBalanceOf;
    |    
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'LOTT':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'LOTT':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) external returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'LOTT':
    |    }
    |    
  > |    function place(uint8 cell) external {
    |        require(map[currentRound][cell] == 0x0);
    |        _transfer(msg.sender, this, price);
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |
    |contract LOTT {
  > |    string public name = 'LOTT';
    |    string public symbol = 'LOTT';
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |contract LOTT {
    |    string public name = 'LOTT';
  > |    string public symbol = 'LOTT';
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 1000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    string public name = 'LOTT';
    |    string public symbol = 'LOTT';
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 1000000000000000000000000;
    |    
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    string public symbol = 'LOTT';
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 1000000000000000000000000;
    |    
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    
  > |    address public owner;
    |    uint public price = 10000000000000000000;
    |    uint public fee = 256000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    
    |    address public owner;
  > |    uint public price = 10000000000000000000;
    |    uint public fee = 256000000000000000000;
    |    uint public currentRound = 0;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    address public owner;
    |    uint public price = 10000000000000000000;
  > |    uint public fee = 256000000000000000000;
    |    uint public currentRound = 0;
    |    uint8 public placesSold;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    uint public price = 10000000000000000000;
    |    uint public fee = 256000000000000000000;
  > |    uint public currentRound = 0;
    |    uint8 public placesSold;
    |    uint[] public places = [
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    uint public fee = 256000000000000000000;
    |    uint public currentRound = 0;
  > |    uint8 public placesSold;
    |    uint[] public places = [
    |        768000000000000000000,
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    uint public currentRound = 0;
    |    uint8 public placesSold;
  > |    uint[] public places = [
    |        768000000000000000000,
    |        614400000000000000000,
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |        153600000000000000000
    |    ];
  > |    uint public rand1;
    |    uint8 public rand2;
    |    
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    ];
    |    uint public rand1;
  > |    uint8 public rand2;
    |    
    |    mapping (uint => mapping (uint8 => address)) public map;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'LOTT':
    |    }
    |    
  > |    function withdraw() external {
    |        require(gameBalanceOf[msg.sender] > 0);
    |        
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'LOTT':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'LOTT':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'LOTT':
    |        _transfer(this, msg.sender, gameBalanceOf[msg.sender]);
    |        
  > |        gameBalanceOf[msg.sender] = 0;
    |        BalanceChange(msg.sender, 0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'LOTT':
    |        _transfer(msg.sender, this, price);
    |        
  > |        map[currentRound][cell] = msg.sender;
    |        Place(currentRound, cell, msg.sender);
    |        rand1 += uint(msg.sender) + block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'LOTT':
    |        map[currentRound][cell] = msg.sender;
    |        Place(currentRound, cell, msg.sender);
  > |        rand1 += uint(msg.sender) + block.timestamp;
    |        rand2 -= uint8(msg.sender);
    |        if (placesSold < 255) {
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'LOTT':
    |        Place(currentRound, cell, msg.sender);
    |        rand1 += uint(msg.sender) + block.timestamp;
  > |        rand2 -= uint8(msg.sender);
    |        if (placesSold < 255) {
    |            placesSold++;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'LOTT':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'LOTT':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'LOTT':
    |    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'LOTT':
    |
    |    function approve(address _spender, uint256 _value) external returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xddfd6544b11a42bd1687dc598c46917a2767bee2.sol(66)


