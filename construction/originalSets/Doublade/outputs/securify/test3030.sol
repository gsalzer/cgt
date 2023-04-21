Processing contract: /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol:EduPlata
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EduPlata':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(94)

[33mWarning[0m for LockedEther in contract 'EduPlata':
    |
    |    // ERC20 Token Smart Contract
  > |    contract EduPlata {
    |        
    |        string public constant name = "EduPlata";
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(30)

[31mViolation[0m for TODReceiver in contract 'EduPlata':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(94)

[33mWarning[0m for UnhandledException in contract 'EduPlata':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EduPlata':
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
  > |                owner.transfer(msg.value);
    |            }
    |            else{
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |
    |             require(balances[msg.sender] >= _value && _value > 0 );
  > |             _totalSupply = _totalSupply.sub(_value);
    |             balances[msg.sender] = balances[msg.sender].sub(_value);
    |             
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |             require(balances[msg.sender] >= _value && _value > 0 );
    |             _totalSupply = _totalSupply.sub(_value);
  > |             balances[msg.sender] = balances[msg.sender].sub(_value);
    |             
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |                require(msg.value > 0);
    |                uint256  tokens = msg.value.div(100000000000000).mul(RATE);
  > |                balances[msg.sender] = balances[msg.sender].add(tokens);
    |                _totalSupply = _totalSupply.add(tokens);
    |                owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |                uint256  tokens = msg.value.div(100000000000000).mul(RATE);
    |                balances[msg.sender] = balances[msg.sender].add(tokens);
  > |                _totalSupply = _totalSupply.add(tokens);
    |                owner.transfer(msg.value);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |        function transfer(address _to, uint256 _value)  returns(bool) {
    |            require(balances[msg.sender] >= _value && _value > 0 );
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |            require(balances[msg.sender] >= _value && _value > 0 );
    |            balances[msg.sender] = balances[msg.sender].sub(_value);
  > |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |    function transferFrom(address _from, address _to, uint256 _value)  returns(bool) {
    |        require(allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0);
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |        require(allowed[_from][msg.sender] >= _value && balances[_from] >= _value && _value > 0);
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) returns(bool){
  > |        allowed[msg.sender][_spender] = _value; 
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |
    |        function endCrowdsale() onlyOwner {
  > |            isMinting = false;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'EduPlata':
    |
    |        function changeCrowdsaleRate(uint256 _value) onlyOwner {
  > |            RATE = _value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(107)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc64a01261e1856a649668f95b0a096e7ef28f8e8.sol(3)


