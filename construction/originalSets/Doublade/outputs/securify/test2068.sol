Processing contract: /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol:Bithereum
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Bithereum':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract Bithereum {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Bithereum':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'Bithereum':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'Bithereum':
    |     * Transfer tokens from other address with allowance
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Bithereum':
    |     * Set allowance for other address
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Bithereum':
    |     * Set allowance for other address and notify
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'Bithereum':
    |     * Destroy tokens from other account with allowance
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Bithereum':
    |
    |contract Bithereum {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Bithereum':
    |contract Bithereum {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Bithereum':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Bithereum':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Bithereum':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Bithereum':
    |     * Destroy  own tokens
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(89)

[33mWarning[0m for UnhandledException in contract 'Bithereum':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(81)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bithereum':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'Bithereum':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'Bithereum':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'Bithereum':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'Bithereum':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'Bithereum':
    |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Bithereum':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Bithereum':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Bithereum':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Bithereum':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Bithereum':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x8756db667e7433d0aa666cfb9c3a08f3566866d5.sol(104)


