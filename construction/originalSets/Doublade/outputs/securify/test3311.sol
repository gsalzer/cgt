Processing contract: /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol:TOXBToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |    function Constructor() public { owner = msg.sender; }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  > |    function Constructor() public { owner = msg.sender; }
    |    modifier onlyOwner {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'Owned':
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  > |    function Constructor() public { owner = msg.sender; }
    |    modifier onlyOwner {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(47)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |contract SafeMath {
    |  function mulSafe(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, ERC223, SafeMath, Owned {
    |  event ReleaseSupply(address indexed receiver, uint256 value, uint256 releaseTime);
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return balances[_owner];
    |   }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |   function approve(address _spender, uint256 _value) public returns (bool) {
    |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |     return allowed[_owner][_spender];
    |   }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |     allowed[msg.sender][_spender] = addSafe(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function subSafe(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |     return a - b;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |   }
    |
  > |  function addSafe(uint256 a, uint256 b) internal pure returns (uint256) {
    |     uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |    function Constructor() public { owner = msg.sender; }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  > |    function Constructor() public { owner = msg.sender; }
    |    modifier onlyOwner {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract ERC20 {
  > |   uint256 public totalSupply;
    |   function balanceOf(address who) public view returns (uint256);
    |   function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function isContract(address _addr) private view returns (bool is_contract) {
    |      uint length;
    |      assembly {
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(139)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        if(isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        balances[msg.sender] = subSafe(balances[msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |        if(isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        balances[msg.sender] = subSafe(balances[msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  > |    function Constructor() public { owner = msg.sender; }
    |    modifier onlyOwner {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = subSafe(balances[msg.sender], _value);
    |    balances[_to] = addSafe(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |    balances[msg.sender] = subSafe(balances[msg.sender], _value);
  > |    balances[_to] = addSafe(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = subSafe(balances[_from], _value);
    |     balances[_to] = addSafe(balances[_to], _value);
    |     allowed[_from][msg.sender] = subSafe(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_from] = subSafe(balances[_from], _value);
  > |     balances[_to] = addSafe(balances[_to], _value);
    |     allowed[_from][msg.sender] = subSafe(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = subSafe(balances[_from], _value);
    |     balances[_to] = addSafe(balances[_to], _value);
  > |     allowed[_from][msg.sender] = subSafe(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = addSafe(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = subSafe(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
  > |        balances[msg.sender] = subSafe(balances[msg.sender], _value);
    |        balances[_to] = addSafe(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |        balances[msg.sender] = subSafe(balances[msg.sender], _value);
  > |        balances[_to] = addSafe(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value, _data);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = subSafe(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(47)

[33mWarning[0m for LockedEther in contract 'TOXBToken':
    |}
    |
  > |contract TOXBToken is StandardToken {
    |  string public name = 'TOXBtc Token';
    |  string public symbol = 'TOXB';
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'TOXBToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'TOXBToken':
    |  }
    |
  > |  function balanceOf(address _owner) public view returns (uint256 balance) {
    |    return balances[_owner];
    |   }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'TOXBToken':
    |   }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'TOXBToken':
    |   }
    |
  > |   function approve(address _spender, uint256 _value) public returns (bool) {
    |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'TOXBToken':
    |   }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint256) {
    |     return allowed[_owner][_spender];
    |   }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'TOXBToken':
    |   }
    |
  > |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |     allowed[msg.sender][_spender] = addSafe(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'TOXBToken':
    |   }
    |
  > |  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |  }
    |
  > |  function subSafe(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |     return a - b;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |   }
    |
  > |  function addSafe(uint256 a, uint256 b) internal pure returns (uint256) {
    |     uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |    function Constructor() public { owner = msg.sender; }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  > |    function Constructor() public { owner = msg.sender; }
    |    modifier onlyOwner {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |
    |contract ERC20 {
  > |   uint256 public totalSupply;
    |   function balanceOf(address who) public view returns (uint256);
    |   function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |    }
    |
  > |    function isContract(address _addr) private view returns (bool is_contract) {
    |      uint length;
    |      assembly {
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |
    |contract TOXBToken is StandardToken {
  > |  string public name = 'TOXBtc Token';
    |  string public symbol = 'TOXB';
    |  uint public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |contract TOXBToken is StandardToken {
    |  string public name = 'TOXBtc Token';
  > |  string public symbol = 'TOXB';
    |  uint public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |  string public name = 'TOXBtc Token';
    |  string public symbol = 'TOXB';
  > |  uint public decimals = 18;
    |
    |  uint256 createTime         = 1527436800;  //20180528 //1528128000;  //20180605 00:00:00
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'TOXBToken':
    |  uint256 endDate            = 1529078400;  //20180616 00:00:00
    |
  > |  uint256 public frozenForever ;
    |
    |  function TOXBToken() public {
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(159)

[33mWarning[0m for UnhandledException in contract 'TOXBToken':
    |        if(isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        balances[msg.sender] = subSafe(balances[msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TOXBToken':
    |        if(isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        balances[msg.sender] = subSafe(balances[msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |    address public newOwner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  > |    function Constructor() public { owner = msg.sender; }
    |    modifier onlyOwner {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  > |    balances[msg.sender] = subSafe(balances[msg.sender], _value);
    |    balances[_to] = addSafe(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |    require(_value <= balances[msg.sender]);
    |    balances[msg.sender] = subSafe(balances[msg.sender], _value);
  > |    balances[_to] = addSafe(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = subSafe(balances[_from], _value);
    |     balances[_to] = addSafe(balances[_to], _value);
    |     allowed[_from][msg.sender] = subSafe(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |
    |    balances[_from] = subSafe(balances[_from], _value);
  > |     balances[_to] = addSafe(balances[_to], _value);
    |     allowed[_from][msg.sender] = subSafe(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |    balances[_from] = subSafe(balances[_from], _value);
    |     balances[_to] = addSafe(balances[_to], _value);
  > |     allowed[_from][msg.sender] = subSafe(allowed[_from][msg.sender], _value);
    |    Transfer(_from, _to, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |
    |   function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |     allowed[msg.sender][_spender] = addSafe(allowed[msg.sender][_spender], _addedValue);
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |       allowed[msg.sender][_spender] = 0;
    |     } else {
  > |       allowed[msg.sender][_spender] = subSafe(oldValue, _subtractedValue);
    |    }
    |     Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
  > |        balances[msg.sender] = subSafe(balances[msg.sender], _value);
    |        balances[_to] = addSafe(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'TOXBToken':
    |        }
    |        balances[msg.sender] = subSafe(balances[msg.sender], _value);
  > |        balances[_to] = addSafe(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value, _data);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'TOXBToken':
    |
    |   function approve(address _spender, uint256 _value) public returns (bool) {
  > |     allowed[msg.sender][_spender] = _value;
    |     Approval(msg.sender, _spender, _value);
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'TOXBToken':
    |     uint oldValue = allowed[msg.sender][_spender];
    |     if (_subtractedValue > oldValue) {
  > |       allowed[msg.sender][_spender] = 0;
    |     } else {
    |       allowed[msg.sender][_spender] = subSafe(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'TOXBToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'TOXBToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'TOXBToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd968907665f8706cca80ce6528b6afe81efb9d0f.sol(47)


