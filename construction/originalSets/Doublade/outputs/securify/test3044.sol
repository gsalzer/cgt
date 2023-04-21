Processing contract: /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol:SantaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal returns(uint256) {
    |		uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol(3)

[31mViolation[0m for DAOConstantGas in contract 'SantaToken':
    |		require(!crowdsaleClosed && now >= start && now <= end && tokensSold.add(numTokens) <= tokensForIco);
    |
  > |		ethFundWallet.transfer(amount);
    |		
    |		balanceOf[santaFundWallet] = balanceOf[santaFundWallet].sub(numTokens); 
  at /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol(74)

[33mWarning[0m for LockedEther in contract 'SantaToken':
    |}
    |
  > |contract SantaToken {
    |    
    |    using SafeMath for uint256; 
  at /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol(27)

[33mWarning[0m for UnhandledException in contract 'SantaToken':
    |		require(!crowdsaleClosed && now >= start && now <= end && tokensSold.add(numTokens) <= tokensForIco);
    |
  > |		ethFundWallet.transfer(amount);
    |		
    |		balanceOf[santaFundWallet] = balanceOf[santaFundWallet].sub(numTokens); 
  at /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'SantaToken':
    |		
    |		balanceOf[santaFundWallet] = balanceOf[santaFundWallet].sub(numTokens); 
  > |		balanceOf[msg.sender] = balanceOf[msg.sender].add(numTokens);
    |
    |		Transfer(santaFundWallet, msg.sender, numTokens);
  at /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'SantaToken':
    |		require(now >= startTransferTime); 
    |
  > |		balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value); 
    |		balanceOf[_to] = balanceOf[_to].add(_value); 
    |
  at /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'SantaToken':
    |		require((_value == 0) || (allowance[msg.sender][_spender] == 0));
    |
  > |		allowance[msg.sender][_spender] = _value;
    |
    |		Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'SantaToken':
    |		balanceOf[_from] = balanceOf[_from].sub(_value); 
    |		balanceOf[_to] = balanceOf[_to].add(_value); 
  > |		allowance[_from][msg.sender] = _allowance.sub(_value);
    |
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc71fa9857395f76264b88b5e466281bfc4d7956c.sol(116)


