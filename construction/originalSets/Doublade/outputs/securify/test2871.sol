Processing contract: /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol:GlobalIdolCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'GlobalIdolCoin':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract GlobalIdolCoin {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(3)

[33mWarning[0m for UnhandledException in contract 'GlobalIdolCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(67)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GlobalIdolCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |        string tokenSymbol
    |    ) public {
  > |        totalSupply = 100000000000000000;
    |        initialSupply = totalSupply;
    |        balanceOf[msg.sender] = totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(21)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |        totalSupply = 100000000000000000;
    |        initialSupply = totalSupply;
  > |        balanceOf[msg.sender] = totalSupply;
    |        name = "GlobalIdolCoin";
    |        symbol = "GIC";
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalIdolCoin':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xbcdd66d4b200960227049fb5ec411eac018cd55a.sol(85)


