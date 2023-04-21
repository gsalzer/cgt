Processing contract: /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol:TripusCandyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
  > |library SafeMath {
    |
    |        function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(2)

[33mWarning[0m for LockedEther in contract 'TripusCandyToken':
    |}
    |
  > |contract TripusCandyToken is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(48)

[33mWarning[0m for UnhandledException in contract 'TripusCandyToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(185)

[33mWarning[0m for UnhandledException in contract 'TripusCandyToken':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(191)

[33mWarning[0m for UnhandledException in contract 'TripusCandyToken':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TripusCandyToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TripusCandyToken':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TripusCandyToken':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |        require( _amount > 0 );      
    |        require( totalDistributed < totalSupply );
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |        require( totalDistributed < totalSupply );
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |        if (totalDistributed >= totalSupply) {
    |            distributionFinished = true;
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |        totalDistributed = totalDistributed.add(_amount);
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        emit Airdrop(_participant, _amount, balances[_participant]);
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |        require(_to != address(0));
    |        require(_amount <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |        require(_amount <= balances[msg.sender]);
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'TripusCandyToken':
    |    
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3c139c5ef130d4db3793b1ce7017e6b326d66f2b.sol(96)


