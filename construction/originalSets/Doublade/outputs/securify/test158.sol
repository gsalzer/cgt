Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:CappedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:KUYOOToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:ParameterizedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic, Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(52)

[33mWarning[0m for LockedEther in contract 'CappedToken':
    |
    |
  > |contract CappedToken is MintableToken {
    |
    |    uint256 public cap;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    }
    |    function addMinter(address _addr) public onlyOwner {
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    function deleteMinter(address _addr) public onlyOwner {
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(197)

[33mWarning[0m for LockedEther in contract 'KUYOOToken':
    |}
    |
  > |contract KUYOOToken is ParameterizedToken {
    |
    |    function KUYOOToken() public ParameterizedToken("KUYOO", "KUYOO", 18, 1000000000) {
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |    }
    |    function addMinter(address _addr) public onlyOwner {
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |
    |    function deleteMinter(address _addr) public onlyOwner {
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'KUYOOToken':
    |
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(197)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken {
    |    event Mint(address indexed to, uint256 amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    }
    |    function addMinter(address _addr) public onlyOwner {
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function deleteMinter(address _addr) public onlyOwner {
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(197)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.18;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(25)

[33mWarning[0m for LockedEther in contract 'ParameterizedToken':
    |
    |
  > |contract ParameterizedToken is CappedToken {
    |    string public name;
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |    }
    |    function addMinter(address _addr) public onlyOwner {
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |
    |    function deleteMinter(address _addr) public onlyOwner {
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'ParameterizedToken':
    |
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(197)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(76)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0a78dc8fe765ab979df1fb202bef47166647696c.sol(52)


