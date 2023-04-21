Processing contract: /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol:Dashdaimond
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol:owned
[33mWarning[0m for LockedEther in contract 'Dashdaimond':
    |
    |
  > |contract Dashdaimond is ERC20, owned {
    |    using SafeMath for uint256;
    |    string public name = "Dashdiamond";
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |
    |    function Dashgold() public {
  > |        totalSupply = 10000000 * 1 ether;
    |        balances[msg.sender] = totalSupply = 10000000;
    |        Transfer(0, msg.sender, totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |    function Dashgold() public {
    |        totalSupply = 10000000 * 1 ether;
  > |        balances[msg.sender] = totalSupply = 10000000;
    |        Transfer(0, msg.sender, totalSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |    function Dashgold() public {
    |        totalSupply = 10000000 * 1 ether;
  > |        balances[msg.sender] = totalSupply = 10000000;
    |        Transfer(0, msg.sender, totalSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |        require(_to != address(0));
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |        require(_to != address(0));
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |        require(_spender != address(0));
    |        require(balances[msg.sender] >= _value);
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |    function withdrawTokens(uint256 _value) public onlyOwner {
    |        require(balances[this] >= _value);
  > |        balances[this] = balances[this].sub(_value);
    |        balances[msg.sender] = balances[msg.sender].add(_value);
    |        Transfer(this, msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |        require(balances[this] >= _value);
    |        balances[this] = balances[this].sub(_value);
  > |        balances[msg.sender] = balances[msg.sender].add(_value);
    |        Transfer(this, msg.sender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |
    |    function changeOwner(address _owner) onlyOwner public {
  > |        candidate = _owner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |        require(candidate != address(0));
    |        require(candidate == msg.sender);
  > |        owner = candidate;
    |        delete candidate;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Dashdaimond':
    |        require(candidate == msg.sender);
    |        owner = candidate;
  > |        delete candidate;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(25)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function sub(uint256 a, uint256 b) pure internal returns (uint256) {
    |        assert(a >= b);
  at /home/jiaming/mavs_srcs/contract@0x2c1cd967051fbfa792950e836ff0769b6792b1fb.sol(30)


