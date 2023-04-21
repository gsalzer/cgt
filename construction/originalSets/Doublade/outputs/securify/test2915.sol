Processing contract: /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol:KPRToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    |  event Transfer(address indexed from, address indexed to, uint value);
    |}
  > |contract ContractReceiver {
    | 
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |      TKN memory tkn;
    |      tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    |  event Transfer(address indexed from, address indexed to, uint value);
    |}
  > |contract ContractReceiver {
    | 
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(14)

[33mWarning[0m for DAOConstantGas in contract 'KPRToken':
    |        
    |        buyabletoken = buyabletoken.sub(amount);
  > |        owner.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(141)

[33mWarning[0m for LockedEther in contract 'KPRToken':
    |}
    |
  > |contract KPRToken is ERC223 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(91)

[33mWarning[0m for UnhandledException in contract 'KPRToken':
    |        
    |        buyabletoken = buyabletoken.sub(amount);
  > |        owner.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(141)

[33mWarning[0m for UnhandledException in contract 'KPRToken':
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(185)

[33mWarning[0m for UnhandledException in contract 'KPRToken':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(244)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KPRToken':
    |        
    |        buyabletoken = buyabletoken.sub(amount);
  > |        owner.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KPRToken':
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KPRToken':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'KPRToken':
    |        
    |        if (now > phase1starttime && now < phase1endtime){
  > |            buyPrice = 3000;
    |        } else if(now > phase2starttime && now < phase2endtime){
    |            buyPrice = 2000;
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'KPRToken':
    |            buyPrice = 3000;
    |        } else if(now > phase2starttime && now < phase2endtime){
  > |            buyPrice = 2000;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |        uint256 amount = msg.value.mul(buyPrice); 
    |        
  > |        balances[msg.sender] = balances[msg.sender].add(amount);
    |        
    |        balances[owner] = balances[owner].sub(amount);
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |        balances[msg.sender] = balances[msg.sender].add(amount);
    |        
  > |        balances[owner] = balances[owner].sub(amount);
    |        
    |        buyabletoken = buyabletoken.sub(amount);
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |        balances[owner] = balances[owner].sub(amount);
    |        
  > |        buyabletoken = buyabletoken.sub(amount);
    |        owner.transfer(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |    
  > |        balances[_who] = balances[_who].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |    
    |        balances[_who] = balances[_who].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(_who, _value);
    |        emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |            if (balanceOf(msg.sender) < _value)
    |                revert();
  > |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |                revert();
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |            balances[_to] = balanceOf(_to).add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |        if (balanceOf(msg.sender) < _value)
    |            revert();
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |            revert();
    |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |        balances[_to] = balanceOf(_to).add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |        if (balanceOf(msg.sender) < _value)
    |            revert();
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'KPRToken':
    |            revert();
    |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(242)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xbfba5d637ccb3015ee97cbb27128dc4bebe2bd46.sol(43)


