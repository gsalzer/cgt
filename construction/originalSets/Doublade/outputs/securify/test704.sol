Processing contract: /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol:BaiTest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaiTest':
    |}
    |
  > |contract BaiTest is owned {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'BaiTest':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'BaiTest':
    |    uint256 private delta;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'BaiTest':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'BaiTest':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'BaiTest':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BaiTest':
    |
    |contract BaiTest is owned {
  > |    string public name;
    |    string public symbol;
    |    //uint8 public decimals = 9;
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'BaiTest':
    |contract BaiTest is owned {
    |    string public name;
  > |    string public symbol;
    |    //uint8 public decimals = 9;
    |    uint8 public unfreezeCount = 5;
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'BaiTest':
    |    string public symbol;
    |    //uint8 public decimals = 9;
  > |    uint8 public unfreezeCount = 5;
    |
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'BaiTest':
    |    uint8 public unfreezeCount = 5;
    |
  > |    uint256 public totalSupply;
    |    uint256 public currentSupply;
    |    uint256 private delta;
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'BaiTest':
    |
    |    uint256 public totalSupply;
  > |    uint256 public currentSupply;
    |    uint256 private delta;
    |
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'BaiTest':
    |    }
    |
  > |    function unfreezeSupply() onlyOwner public {
    |        currentSupply += delta;
    |        balanceOf[msg.sender] = currentSupply;
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'BaiTest':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'BaiTest':
    |    }
    |
  > |    function destroy() public {
    |        if (msg.sender == owner) {
    |            selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'BaiTest':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'BaiTest':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BaiTest':
    |    function unfreezeSupply() onlyOwner public {
    |        currentSupply += delta;
  > |        balanceOf[msg.sender] = currentSupply;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'BaiTest':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BaiTest':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BaiTest':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'BaiTest':
    |
    |    function unfreezeSupply() onlyOwner public {
  > |        currentSupply += delta;
    |        balanceOf[msg.sender] = currentSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(51)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.18;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2cd92fb2e70f30f0a647112ef386485b991e442b.sol(16)


