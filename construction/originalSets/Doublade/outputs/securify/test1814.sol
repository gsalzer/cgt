Processing contract: /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol:TestEdu
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(3)

[33mWarning[0m for DAOConstantGas in contract 'TestEdu':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(94)

[33mWarning[0m for LockedEther in contract 'TestEdu':
    |
    |    // ERC20 Token Smart Contract
  > |    contract TestEdu {
    |        
    |        string public constant name = "TestEdu";
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(30)

[31mViolation[0m for TODReceiver in contract 'TestEdu':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(94)

[33mWarning[0m for UnhandledException in contract 'TestEdu':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TestEdu':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |
    |             require(balances[msg.sender] >= _value && _value > 0 );
  > |             _totalSupply = _totalSupply.sub(_value);
    |             balances[msg.sender] = balances[msg.sender].sub(_value);
    |             
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |             require(balances[msg.sender] >= _value && _value > 0 );
    |             _totalSupply = _totalSupply.sub(_value);
  > |             balances[msg.sender] = balances[msg.sender].sub(_value);
    |             
    |        }
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |                require(msg.value > 0);
    |                uint256  tokens = msg.value.div(100000000000000).mul(RATE);
  > |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
    |                owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |                uint256  tokens = msg.value.div(100000000000000).mul(RATE);
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
  > |                _totalSupply = _totalSupply.add(tokens);
    |                owner.transfer(msg.value);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |        function transfer(address _to, uint256 _value)  returns(bool) {
    |            require(balances[msg.sender] >= _value && _value > 0 );
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |            require(balances[msg.sender] >= _value && _value > 0 );
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
  > |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |    function transferFrom(address _from, address _to, uint256 _value)  returns(bool) {
    |        require(allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0);
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |        require(allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0);
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) returns(bool){
  > |        allowed[msg.sender][_spender] = _value; 
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |
    |        function endCrowdsale() onlyOwner {
  > |            isMinting = false;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'TestEdu':
    |
    |        function changeCrowdsaleRate(uint256 _value) onlyOwner {
  > |            RATE = _value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x743c9ec8cd6ca121194ae10d984675ad15691188.sol(107)


