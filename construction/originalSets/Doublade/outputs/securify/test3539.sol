Processing contract: /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol:Talentum
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'Talentum':
    |        balanceOf[maker_corp] -= amount;
    |        balanceOf[msg.sender] += amount;                
  > |        require(maker_corp.send(msg.value));
    |        Transfer(this, msg.sender, amount);               
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(202)

[33mWarning[0m for TODReceiver in contract 'Talentum':
    |        balanceOf[maker_corp] -= amount;
    |        balanceOf[msg.sender] += amount;                
  > |        require(maker_corp.send(msg.value));
    |        Transfer(this, msg.sender, amount);               
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(202)

[33mWarning[0m for UnhandledException in contract 'Talentum':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(122)

[33mWarning[0m for UnhandledException in contract 'Talentum':
    |        balanceOf[maker_corp] -= amount;
    |        balanceOf[msg.sender] += amount;                
  > |        require(maker_corp.send(msg.value));
    |        Transfer(this, msg.sender, amount);               
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Talentum':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'Talentum':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'Talentum':
    |}
    |
  > |contract  Talentum is owned, TokenERC20 {
    |    
    |    uint256 public donate_step;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'Talentum':
    |        require(balanceOf[maker_corp]>=amount);
    |        
  > |        balanceOf[maker_corp] -= amount;
    |        balanceOf[msg.sender] += amount;                
    |        require(maker_corp.send(msg.value));
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'Talentum':
    |        require(balanceOf[msg.sender] >= amount);         
    |        balanceOf[msg.sender] -= amount;                 
  > |        balanceOf[_to] += amount;                 
    |        Transfer(msg.sender, _to, amount);               
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |        
    |        balanceOf[maker_corp] -= amount;
  > |        balanceOf[msg.sender] += amount;                
    |        require(maker_corp.send(msg.value));
    |        Transfer(this, msg.sender, amount);               
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |
    |        require(balanceOf[msg.sender] >= amount);         
  > |        balanceOf[msg.sender] -= amount;                 
    |        balanceOf[_to] += amount;                 
    |        Transfer(msg.sender, _to, amount);               
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |}
    |
  > |contract  Talentum is owned, TokenERC20 {
    |    
    |    uint256 public donate_step;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |    {
    |        require(manager != 0x0);
  > |        Writers[manager] = flag;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |    function SetDonateStep(uint256 step) onlyOwner public
    |    {
  > |        donate_step = step;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |        require(balanceOf[_from] >= coin_amount);         
    |
  > |        balanceOf[_from] -= coin_amount;                 
    |        balanceOf[_to] += coin_amount;                
    |        Transfer(_from, _to, coin_amount);               
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'Talentum':
    |
    |        balanceOf[_from] -= coin_amount;                 
  > |        balanceOf[_to] += coin_amount;                
    |        Transfer(_from, _to, coin_amount);               
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(226)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(48)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(104)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xe803267c5086252425befe8e1f9c4cec0ea3a952.sol(4)


