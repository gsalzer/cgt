Processing contract: /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol:GlobalNetworkToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'GlobalNetworkToken':
    |}
    |
  > |contract GlobalNetworkToken {
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |
    |    
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |
    |   
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |
    |    
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |contract GlobalNetworkToken {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |
    |   
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |       
    |        require(_to != address(0x0));
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'GlobalNetworkToken':
    |
    |    
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(92)

[33mWarning[0m for UnhandledException in contract 'GlobalNetworkToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GlobalNetworkToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |    
  > |        balanceOf[_from] -= _value;
    |    
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |        balanceOf[_from] -= _value;
    |    
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |       
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                     
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  > |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                             
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                             
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |    
  > |        balanceOf[_from] -= _value;
    |    
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                     
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobalNetworkToken':
    |        require(_value <= allowance[_from][msg.sender]);    
    |        balanceOf[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                             
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x9397861a56868c86dc18f6aa42659736dc02940c.sol(105)


