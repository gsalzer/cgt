Processing contract: /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol:EtherClassic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EtherClassic':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(85)

[33mWarning[0m for LockedEther in contract 'EtherClassic':
    |
    |    // ERC20 Token Smart Contract
  > |    contract EtherClassic {
    |        
    |        string public constant name = "EtherClassic";
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(30)

[31mViolation[0m for TODReceiver in contract 'EtherClassic':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(85)

[33mWarning[0m for UnhandledException in contract 'EtherClassic':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(85)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherClassic':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |
    |             require(balances[msg.sender] >= _value && _value > 0 );
  > |             _totalSupply = _totalSupply.sub(_value);
    |             balances[msg.sender] = balances[msg.sender].sub(_value);
    |             
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |             require(balances[msg.sender] >= _value && _value > 0 );
    |             _totalSupply = _totalSupply.sub(_value);
  > |             balances[msg.sender] = balances[msg.sender].sub(_value);
    |             
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |                require(msg.value > 0);
    |                uint256  tokens = msg.value.div(100000000000000).mul(RATE);
  > |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
    |                owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |                uint256  tokens = msg.value.div(100000000000000).mul(RATE);
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
  > |                _totalSupply = _totalSupply.add(tokens);
    |                owner.transfer(msg.value);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |        function transfer(address _to, uint256 _value)  returns(bool) {
    |            require(balances[msg.sender] >= _value && _value > 0 );
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |            require(balances[msg.sender] >= _value && _value > 0 );
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
  > |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |    function transferFrom(address _from, address _to, uint256 _value)  returns(bool) {
    |        require(allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0);
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |        require(allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0);
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) returns(bool){
  > |        allowed[msg.sender][_spender] = _value; 
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |
    |        function endCrowdsale() onlyOwner {
  > |            isMinting = false;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherClassic':
    |
    |        function changeCrowdsaleRate(uint256 _value) onlyOwner {
  > |            RATE = _value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xdcf2c71c3c7fd9df57f2527c421212f0f6c6fde5.sol(3)


