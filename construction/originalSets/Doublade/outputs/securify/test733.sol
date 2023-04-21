Processing contract: /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 {
    |    /* Public variables of the token */
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(5)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);   
  > |        balanceOf[_from] -= _value;                        
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                            
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                        
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                            
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require (_value < allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value)
    |        public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);   
    |        balanceOf[_from] -= _value;                        
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                            
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e68dfb3f50ea302c88f8db74096d57565d9970a.sol(179)


