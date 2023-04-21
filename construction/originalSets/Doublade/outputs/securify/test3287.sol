Processing contract: /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol:RANGER_517
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol:owned
[33mWarning[0m for LockedEther in contract 'RANGER_517':
    |
    |
  > |contract RANGER_517 is ERC20, owned {
    |    using SafeMath for uint256;
    |    string public name = "517RANGER";
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |        require(_to != address(0));
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |        require(_to != address(0));
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |        require(_spender != address(0));
    |        require(balances[msg.sender] >= _value);
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |    function withdrawTokens(uint256 _value) public onlyOwner {
    |        require(balances[this] >= _value);
  > |        balances[this] = balances[this].sub(_value);
    |        balances[msg.sender] = balances[msg.sender].add(_value);
    |        Transfer(this, msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |        require(balances[this] >= _value);
    |        balances[this] = balances[this].sub(_value);
  > |        balances[msg.sender] = balances[msg.sender].add(_value);
    |        Transfer(this, msg.sender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |
    |    function changeOwner(address _owner) onlyOwner public {
  > |        candidate = _owner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |        require(candidate != address(0));
    |        require(candidate == msg.sender);
  > |        owner = candidate;
    |        delete candidate;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'RANGER_517':
    |        require(candidate == msg.sender);
    |        owner = candidate;
  > |        delete candidate;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(25)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function sub(uint256 a, uint256 b) pure internal returns (uint256) {
    |        assert(a >= b);
  at /home/jiaming/mavs_srcs/contract@0xd7066c47389971a0b45dee8b1909be921cde1752.sol(30)


