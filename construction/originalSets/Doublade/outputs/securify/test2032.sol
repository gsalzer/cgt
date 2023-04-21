Processing contract: /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol:MerialCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MerialCoin':
    |}
    |
  > |contract MerialCoin {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require (_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |        require(!frozenAddress[_spender]);
    |        require(msg.sender != _spender);
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |        require(!frozenAddress[msg.sender]);
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |        require(_value <= allowance[_from][msg.sender] );
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |    function transferOwnership(address _newOwner) public returns (bool success) {
    |        require(msg.sender == owner);
  > |        owner = _newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |        require(msg.sender != target);
    |
  > |        frozenAddress[target] = freeze;
    |
    |        emit FrozenAddress(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender] );
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'MerialCoin':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(144)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/* @nitzaalfinas */
    |
  > |library SafeMath {
    |    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x8470c0012ebd1201641620df2ac8600a402725b1.sol(5)


