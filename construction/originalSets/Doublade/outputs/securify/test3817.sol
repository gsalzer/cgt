Processing contract: /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol:Oboc
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol:tokenRecipientsrcss
[33mWarning[0m for LockedEther in contract 'Oboc':
    |interface tokenRecipientsrcss{ function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract Oboc{
    |  string public name = "OBO COIN";
    |  string public symbol = "OBO";
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Oboc':
    |  uint256 public totalSupply=1400000000000;
    |  
  > |  mapping (address => uint256) public balanceOf;
    |  mapping (address => mapping (address => uint256)) public allowance;
    |  event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'Oboc':
    |  
    |  mapping (address => uint256) public balanceOf;
  > |  mapping (address => mapping (address => uint256)) public allowance;
    |  event Transfer(address indexed from, address indexed to, uint256 value);
    |  event Burn(address indexed from, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'Oboc':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'Oboc':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'Oboc':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Oboc':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);              
    |        require(_value <= allowance[_from][msg.sender]);  
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Oboc':
    |
    |contract Oboc{
  > |  string public name = "OBO COIN";
    |  string public symbol = "OBO";
    |  uint8 public  decimals = 2;
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Oboc':
    |contract Oboc{
    |  string public name = "OBO COIN";
  > |  string public symbol = "OBO";
    |  uint8 public  decimals = 2;
    |  uint256 public totalSupply=1400000000000;
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Oboc':
    |  string public name = "OBO COIN";
    |  string public symbol = "OBO";
  > |  uint8 public  decimals = 2;
    |  uint256 public totalSupply=1400000000000;
    |  
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Oboc':
    |  string public symbol = "OBO";
    |  uint8 public  decimals = 2;
  > |  uint256 public totalSupply=1400000000000;
    |  
    |  mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Oboc':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Oboc':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(64)

[33mWarning[0m for UnhandledException in contract 'Oboc':
    |        tokenRecipientsrcss spender = tokenRecipientsrcss(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(59)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Oboc':
    |        tokenRecipientsrcss spender = tokenRecipientsrcss(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'Oboc':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'Oboc':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'Oboc':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'Oboc':
    |        require(balanceOf[_from] >= _value);              
    |        require(_value <= allowance[_from][msg.sender]);  
  > |        balanceOf[_from] -= _value;                       
    |        allowance[_from][msg.sender] -= _value;           
    |        totalSupply -= _value;                            
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'Oboc':
    |        balanceOf[_from] -= _value;                       
    |        allowance[_from][msg.sender] -= _value;           
  > |        totalSupply -= _value;                            
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Oboc':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Oboc':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Oboc':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Oboc':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Oboc':
    |        require(_value <= allowance[_from][msg.sender]);  
    |        balanceOf[_from] -= _value;                       
  > |        allowance[_from][msg.sender] -= _value;           
    |        totalSupply -= _value;                            
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xfb3ae93a3e46f91730787be6c1a8f728e234664a.sol(76)


