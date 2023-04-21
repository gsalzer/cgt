Processing contract: /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'ERC20':
    |
    |
  > |contract ERC20 {
    |
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |
  > |contract ERC20 {
    |
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        name = _name;
    |        symbol = _symbol;
  > |        decimals = _decimals;
    |        totalSupply = _totalSupply * 10 ** _decimals;
    |        balances[msg.sender] = totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        symbol = _symbol;
    |        decimals = _decimals;
  > |        totalSupply = _totalSupply * 10 ** _decimals;
    |        balances[msg.sender] = totalSupply;
    |        Transfer(address(this), msg.sender, totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balances[msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]);
    |        balances[msg.sender] -= _amount;
  > |        balances[_to] += _amount;
    |        Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transferFrom(address _from, address _to, uint _amount) public returns (bool success) {
    |        require(balances[_from] >= _amount && allowed[_from][msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]);
  > |        balances[_to] += _amount;
    |        balances[_from] -= _amount;
    |        allowed[_from][msg.sender] -= _amount;
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balances[_from] >= _amount && allowed[_from][msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]);
    |        balances[_to] += _amount;
  > |        balances[_from] -= _amount;
    |        allowed[_from][msg.sender] -= _amount;
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        decimals = _decimals;
    |        totalSupply = _totalSupply * 10 ** _decimals;
  > |        balances[msg.sender] = totalSupply;
    |        Transfer(address(this), msg.sender, totalSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transfer(address _to, uint _amount) public returns (bool success)  {
    |        require(balances[msg.sender] >= _amount && _amount > 0 && balances[_to] + _amount > balances[_to]);
  > |        balances[msg.sender] -= _amount;
    |        balances[_to] += _amount;
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        balances[_to] += _amount;
    |        balances[_from] -= _amount;
  > |        allowed[_from][msg.sender] -= _amount;
    |        Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function approve(address _spender, uint _amount) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |
  > |contract ERC20 {
    |
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x6b31d68c23c27f04d813aa1cb8ac436dc0432971.sol(4)


