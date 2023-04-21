Processing contract: /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol:ERC20TokenJT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20TokenJT':
    |pragma solidity ^0.4.24;
    |
  > |contract ERC20TokenJT {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    address public cfoOfTokenJT;
    |    
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
    |    
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |    mapping (address => bool) public frozenAccount;
    |    
    |    event Transfer (address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    }
    |    
  > |    function transfer (address _to, uint256 _value) public returns (bool success) {
    |        _transfer (msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    }
    |    
  > |    function transferFrom (address _from, address _to, uint256 _value) public returns (bool success) {
    |        require (_value <= allowance[_from][msg.sender]);
    |        _transfer (_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    }
    |    
  > |    function freezeAccount (address target, bool freeze) onlycfo public returns (bool) {
    |        require (target != address(0x0));
    |        frozenAccount[target] = freeze;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |
    |contract ERC20TokenJT {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |contract ERC20TokenJT {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |    address public cfoOfTokenJT;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |    address public cfoOfTokenJT;
    |    
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  > |    address public cfoOfTokenJT;
    |    
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    }
    |    
  > |    function _transfer (address _from, address _to, uint _value) internal {
    |        require (!frozenAccount[_from]);
    |        require (!frozenAccount[_to]);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    }
    |    
  > |    function approve (address _spender, uint256 _value) public returns (bool success) {
    |        require (_spender != address(0x0));
    |        require (_value != 0);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    }
    |    
  > |    function appointNewcfo (address newcfo) onlycfo public returns (bool) {
    |        require (newcfo != address(0x0));
    |        require (newcfo != cfoOfTokenJT);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    }
    |    
  > |    function mintToken (address target, uint256 amount) onlycfo public returns (bool) {
    |        require (target != address(0x0));
    |        require (amount != 0);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'ERC20TokenJT':
    |    }
    |    
  > |    function meltToken (address target, uint256 amount) onlycfo public returns (bool) {
    |        require (target != address(0x0));
    |        require (amount <= balanceOf[target]);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        require (balanceOf[_to] + _value >= balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer (_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer (_from, _to, _value);
    |        assert (balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        require (_value <= allowance[_from][msg.sender]);
    |        _transfer (_from, _to, _value);
  > |        allowance[_from][msg.sender] -= _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        require (balanceOf[_to] + _value >= balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer (_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        require (_spender != address(0x0));
    |        require (_value != 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval (msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        require (newcfo != address(0x0));
    |        require (newcfo != cfoOfTokenJT);
  > |        cfoOfTokenJT = newcfo;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        require (target != address(0x0));
    |        require (amount != 0);
  > |        balanceOf[target] += amount;
    |        totalSupply += amount;
    |        emit MintToken (target, amount);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        require (amount != 0);
    |        balanceOf[target] += amount;
  > |        totalSupply += amount;
    |        emit MintToken (target, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        require (amount <= balanceOf[target]);
    |        require (amount != 0);
  > |        balanceOf[target] -= amount;
    |        totalSupply -= amount;
    |        emit MeltToken (target, amount);
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |        require (amount != 0);
    |        balanceOf[target] -= amount;
  > |        totalSupply -= amount;
    |        emit MeltToken (target, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20TokenJT':
    |    function freezeAccount (address target, bool freeze) onlycfo public returns (bool) {
    |        require (target != address(0x0));
  > |        frozenAccount[target] = freeze;
    |        emit FreezeEvent (target, freeze);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2cd0360205a76816dd275edc08fba2697f07f5c7.sol(98)


