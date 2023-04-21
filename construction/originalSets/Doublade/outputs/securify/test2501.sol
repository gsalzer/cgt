Processing contract: /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol:CenterCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'CenterCoin':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract CenterCoin {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'CenterCoin':
    |    // 2 decimals
    |    uint256 public totalSupply;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'CenterCoin':
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    event Transfer(address indexed from, address indexed to, uint256 value);
    |    event Burn(address indexed from, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'CenterCoin':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'CenterCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'CenterCoin':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'CenterCoin':
    |
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'CenterCoin':
    |
    |contract CenterCoin {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'CenterCoin':
    |contract CenterCoin {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 8;
    |    // 2 decimals
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'CenterCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 8;
    |    // 2 decimals
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'CenterCoin':
    |    uint8 public decimals = 8;
    |    // 2 decimals
  > |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'CenterCoin':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'CenterCoin':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(146)

[33mWarning[0m for UnhandledException in contract 'CenterCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CenterCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'CenterCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'CenterCoin':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'CenterCoin':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'CenterCoin':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'CenterCoin':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'CenterCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'CenterCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'CenterCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'CenterCoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'CenterCoin':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(159)

[33mWarning[0m for LockedEther in contract 'owned':
    |? 2017, Centerline, Co,. Ltd.
    |     */
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |     */
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa360953f890bb0164242e3e7dee276a79b3bd6c6.sol(56)


