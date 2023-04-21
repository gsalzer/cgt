Processing contract: /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol:TokenMACHU
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'TokenMACHU':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenMACHU is owned {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenMACHU':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'TokenMACHU':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'TokenMACHU':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'TokenMACHU':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'TokenMACHU':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'TokenMACHU':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'TokenMACHU':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'TokenMACHU':
    |    }
    |
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'TokenMACHU':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TokenMACHU':
    |
    |contract TokenMACHU is owned {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TokenMACHU':
    |contract TokenMACHU is owned {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenMACHU':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenMACHU':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenMACHU':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'TokenMACHU':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(83)

[33mWarning[0m for UnhandledException in contract 'TokenMACHU':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(78)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenMACHU':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, owner, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMACHU':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, owner, mintedAmount);
    |        Transfer(owner, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(103)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa716a3b1c469dc3183f8105497ee053d0532f8e1.sol(16)


