Processing contract: /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol:Studio
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Studio':
    |
    | 
  > |contract Studio is ERC20 {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Studio':
    |    address public owner;
    |    mapping( address => uint256) public balanceOf;
  > |    mapping( uint => address) public accountIndex;
    |    uint accountCount;
    |    
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'Studio':
    |
    |    
  > |    function balanceOf(address tokenHolder) constant returns(uint256) {
    |
    |        return balanceOf[tokenHolder];
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Studio':
    |    }
    |
  > |    function getAddress(uint slot) constant returns(address) {
    |
    |        return accountIndex[slot];
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'Studio':
    |    }
    |    
  > |    function approve(address _spender, uint256 _value)
    |    returns(bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'Studio':
    |
    | 
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |    returns(bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'Studio':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns(uint256 remaining) {
    |        return allowance[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'Studio':
    |
    | 
  > |    function transferFrom(address _from, address _to, uint256 _value) returns(bool success) {
    |        if (_to == 0x0) throw;  
    |        if (balanceOf[_from] < _value) throw;  
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'Studio':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns(bool success) {
    |    
    |        if (balanceOf[_from] < _value) throw; 
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Studio':
    |
    |
  > |    string public standard = 'STUDIO 1.0';
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Studio':
    |
    |    string public standard = 'STUDIO 1.0';
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Studio':
    |    string public standard = 'STUDIO 1.0';
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Studio':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Studio':
    |    uint256 public totalSupply;
    |    
  > |    address public owner;
    |    mapping( address => uint256) public balanceOf;
    |    mapping( uint => address) public accountIndex;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Studio':
    |    }
    |
  > |    function totalSupply() constant returns(uint256) {
    |
    |        return totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Studio':
    |    }
    |
  > |    function getAccountCount() constant returns(uint256) {
    |
    |        return accountCount;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Studio':
    |
    |    
  > |    function appendTokenHolders(address tokenHolder) private {
    |
    |        if (balanceOf[tokenHolder] == 0) {
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Studio':
    |    }
    |  
  > |    function burn(uint256 _value) returns(bool success) {
    |        if (balanceOf[msg.sender] < _value) throw; 
    |        balanceOf[msg.sender] -= _value; 
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(147)

[33mWarning[0m for UnhandledException in contract 'Studio':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Studio':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'Studio':
    |
    |        if (balanceOf[tokenHolder] == 0) {
  > |            accountIndex[accountCount] = tokenHolder;
    |            accountCount++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'Studio':
    |        if (balanceOf[tokenHolder] == 0) {
    |            accountIndex[accountCount] = tokenHolder;
  > |            accountCount++;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'Studio':
    |        appendTokenHolders(_to);
    |        balanceOf[msg.sender] -= _value; 
  > |        balanceOf[_to] += _value; 
    |        Transfer(msg.sender, _to, _value); 
    |        
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'Studio':
    |        if (_value > allowance[_from][msg.sender]) throw; 
    |        appendTokenHolders(_to);
  > |        balanceOf[_from] -= _value; 
    |        balanceOf[_to] += _value; 
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'Studio':
    |        appendTokenHolders(_to);
    |        balanceOf[_from] -= _value; 
  > |        balanceOf[_to] += _value; 
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'Studio':
    |        if (balanceOf[msg.sender] < _value) throw; 
    |        balanceOf[msg.sender] -= _value; 
  > |        totalSupply -= _value; 
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'Studio':
    |        if (balanceOf[_from] < _value) throw; 
    |        if (_value > allowance[_from][msg.sender]) throw; 
  > |        balanceOf[_from] -= _value; 
    |        totalSupply -= _value; 
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'Studio':
    |        if (_value > allowance[_from][msg.sender]) throw; 
    |        balanceOf[_from] -= _value; 
  > |        totalSupply -= _value; 
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Studio':
    |        
    |        appendTokenHolders(_to);
  > |        balanceOf[msg.sender] -= _value; 
    |        balanceOf[_to] += _value; 
    |        Transfer(msg.sender, _to, _value); 
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Studio':
    |    function approve(address _spender, uint256 _value)
    |    returns(bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval( msg.sender ,_spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Studio':
    |        balanceOf[_from] -= _value; 
    |        balanceOf[_to] += _value; 
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'Studio':
    |    function burn(uint256 _value) returns(bool success) {
    |        if (balanceOf[msg.sender] < _value) throw; 
  > |        balanceOf[msg.sender] -= _value; 
    |        totalSupply -= _value; 
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf064c38e3f5fa73981ee98372d32a16d032769cc.sol(149)


