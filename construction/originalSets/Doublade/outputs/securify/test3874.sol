Processing contract: /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol:HALECoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'HALECoin':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(83)

[33mWarning[0m for LockedEther in contract 'HALECoin':
    |
    |    // ERC20 Token Smart Contract
  > |    contract HALECoin {
    |        
    |        string public constant name = "HALECoin";
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(28)

[31mViolation[0m for TODReceiver in contract 'HALECoin':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(83)

[33mWarning[0m for UnhandledException in contract 'HALECoin':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HALECoin':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |
    |             require(balances[msg.sender] >= _value && _value > 0 );
  > |             _totalSupply = _totalSupply.sub(_value);
    |             balances[msg.sender] = balances[msg.sender].sub(_value);
    |             
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |             require(balances[msg.sender] >= _value && _value > 0 );
    |             _totalSupply = _totalSupply.sub(_value);
  > |             balances[msg.sender] = balances[msg.sender].sub(_value);
    |             
    |        }
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |                require(msg.value > 0);
    |                uint256  tokens = msg.value.div(100000000000000).mul(RATE);
  > |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
    |                owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |                uint256  tokens = msg.value.div(100000000000000).mul(RATE);
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
  > |                _totalSupply = _totalSupply.add(tokens);
    |                owner.transfer(msg.value);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |        function transfer(address _to, uint256 _value)  returns(bool) {
    |            require(balances[msg.sender] >= _value && _value > 0 );
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |            require(balances[msg.sender] >= _value && _value > 0 );
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
  > |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |    function transferFrom(address _from, address _to, uint256 _value)  returns(bool) {
    |        require(allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0);
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |        require(allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0);
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) returns(bool){
  > |        allowed[msg.sender][_spender] = _value; 
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |
    |        function endCrowdsale() onlyOwner {
  > |            isMinting = false;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'HALECoin':
    |
    |        function changeCrowdsaleRate(uint256 _value) onlyOwner {
  > |            RATE = _value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(96)

[33mWarning[0m for LockedEther in contract 'SafeMath':
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xff90c81b5dba29785c0754a22b4f815e7659dfdb.sol(1)


