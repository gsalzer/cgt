Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol:BinanceGold
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BinanceGold':
    |pragma solidity ^0.4.25;
    |
  > |contract BinanceGold {
    |    // Track how many tokens are owned by each address.
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'BinanceGold':
    |contract BinanceGold {
    |    // Track how many tokens are owned by each address.
  > |    mapping (address => uint256) public balanceOf;
    |
    |    string public name = "Binance Gold";
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'BinanceGold':
    |    }
    |
  > |    function transfer(address to, uint256 value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= value);
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'BinanceGold':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    function approve(address spender, uint256 value)
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'BinanceGold':
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  > |    function approve(address spender, uint256 value)
    |        public
    |        returns (bool success)
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'BinanceGold':
    |    }
    |
  > |    function transferFrom(address from, address to, uint256 value)
    |        public
    |        returns (bool success)
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'BinanceGold':
    |    mapping (address => uint256) public balanceOf;
    |
  > |    string public name = "Binance Gold";
    |    string public symbol = "BNBG";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BinanceGold':
    |
    |    string public name = "Binance Gold";
  > |    string public symbol = "BNBG";
    |    uint8 public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BinanceGold':
    |    string public name = "Binance Gold";
    |    string public symbol = "BNBG";
  > |    uint8 public decimals = 18;
    |
    |    uint256 public totalSupply = 766575559732 * (uint256(10) ** decimals);
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BinanceGold':
    |    uint8 public decimals = 18;
    |
  > |    uint256 public totalSupply = 766575559732 * (uint256(10) ** decimals);
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(11)

[31mViolation[0m for UnrestrictedWrite in contract 'BinanceGold':
    |
    |        balanceOf[msg.sender] -= value;  // deduct from sender's balance
  > |        balanceOf[to] += value;          // add to recipient's balance
    |        emit Transfer(msg.sender, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(25)

[31mViolation[0m for UnrestrictedWrite in contract 'BinanceGold':
    |        require(value <= allowance[from][msg.sender]);
    |
  > |        balanceOf[from] -= value;
    |        balanceOf[to] += value;
    |        allowance[from][msg.sender] -= value;
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'BinanceGold':
    |
    |        balanceOf[from] -= value;
  > |        balanceOf[to] += value;
    |        allowance[from][msg.sender] -= value;
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'BinanceGold':
    |        require(balanceOf[msg.sender] >= value);
    |
  > |        balanceOf[msg.sender] -= value;  // deduct from sender's balance
    |        balanceOf[to] += value;          // add to recipient's balance
    |        emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'BinanceGold':
    |        returns (bool success)
    |    {
  > |        allowance[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'BinanceGold':
    |        balanceOf[from] -= value;
    |        balanceOf[to] += value;
  > |        allowance[from][msg.sender] -= value;
    |        emit Transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc7b62900c4860bc20f8561ee53d9a888b2ee411b.sol(52)


