Processing contract: /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol:DoccoinPreICO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol:doccoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'DoccoinPreICO':
    |        tokenReward.transfer(beneficiary, amount*1000000000000000000/price);
    |        FundTransfer(beneficiary, amount, true);
  > |        wallet1.transfer(msg.value*90/100);
    |        wallet2.transfer(msg.value*10/100);
    |        
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(225)

[33mWarning[0m for DAOConstantGas in contract 'DoccoinPreICO':
    |        FundTransfer(beneficiary, amount, true);
    |        wallet1.transfer(msg.value*90/100);
  > |        wallet2.transfer(msg.value*10/100);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(226)

[31mViolation[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    
    |    // low level token purchase function
  > |    function buyTokens(address beneficiary) payable {
    |        require(msg.value >= 200 finney);
    |        uint amount = msg.value;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |
    |contract owned {
  > |    address public owner;
    | 
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |contract DoccoinPreICO is owned {
    |    
  > |    address public wallet1 = address(0x0028D118C0c892e5afaF6C10d79D3922bC76840B);
    |    address public wallet2 = address(0xd7df9e4f97a7bdbff9799e29b9689515af2da3a6);
    |    
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    
    |    address public wallet1 = address(0x0028D118C0c892e5afaF6C10d79D3922bC76840B);
  > |    address public wallet2 = address(0xd7df9e4f97a7bdbff9799e29b9689515af2da3a6);
    |    
    |    uint public fundingGoal;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    address public wallet2 = address(0xd7df9e4f97a7bdbff9799e29b9689515af2da3a6);
    |    
  > |    uint public fundingGoal;
    |    uint public amountRaised;
    |    uint public beginTime = 1516838400;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    
    |    uint public fundingGoal;
  > |    uint public amountRaised;
    |    uint public beginTime = 1516838400;
    |    uint public endTime = 1517529600;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    uint public fundingGoal;
    |    uint public amountRaised;
  > |    uint public beginTime = 1516838400;
    |    uint public endTime = 1517529600;
    |    uint public price = 100 szabo;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    uint public amountRaised;
    |    uint public beginTime = 1516838400;
  > |    uint public endTime = 1517529600;
    |    uint public price = 100 szabo;
    |    doccoin public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    uint public beginTime = 1516838400;
    |    uint public endTime = 1517529600;
  > |    uint public price = 100 szabo;
    |    doccoin public tokenReward;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    uint public endTime = 1517529600;
    |    uint public price = 100 szabo;
  > |    doccoin public tokenReward;
    |
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'DoccoinPreICO':
    |    
    |    // withdraw tokens from contract
  > |    function withdrawTokens() onlyOwner {
    |        tokenReward.transfer(msg.sender, tokenReward.balanceOf(this));
    |        FundTransfer(msg.sender, tokenReward.balanceOf(this), false);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(213)

[33mWarning[0m for TODAmount in contract 'DoccoinPreICO':
    |        tokenReward.transfer(beneficiary, amount*1000000000000000000/price);
    |        FundTransfer(beneficiary, amount, true);
  > |        wallet1.transfer(msg.value*90/100);
    |        wallet2.transfer(msg.value*10/100);
    |        
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(225)

[33mWarning[0m for TODAmount in contract 'DoccoinPreICO':
    |        FundTransfer(beneficiary, amount, true);
    |        wallet1.transfer(msg.value*90/100);
  > |        wallet2.transfer(msg.value*10/100);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(226)

[33mWarning[0m for TODReceiver in contract 'DoccoinPreICO':
    |        tokenReward.transfer(beneficiary, amount*1000000000000000000/price);
    |        FundTransfer(beneficiary, amount, true);
  > |        wallet1.transfer(msg.value*90/100);
    |        wallet2.transfer(msg.value*10/100);
    |        
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(225)

[33mWarning[0m for TODReceiver in contract 'DoccoinPreICO':
    |        FundTransfer(beneficiary, amount, true);
    |        wallet1.transfer(msg.value*90/100);
  > |        wallet2.transfer(msg.value*10/100);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(226)

[33mWarning[0m for UnhandledException in contract 'DoccoinPreICO':
    |    // withdraw tokens from contract
    |    function withdrawTokens() onlyOwner {
  > |        tokenReward.transfer(msg.sender, tokenReward.balanceOf(this));
    |        FundTransfer(msg.sender, tokenReward.balanceOf(this), false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(214)

[33mWarning[0m for UnhandledException in contract 'DoccoinPreICO':
    |    function withdrawTokens() onlyOwner {
    |        tokenReward.transfer(msg.sender, tokenReward.balanceOf(this));
  > |        FundTransfer(msg.sender, tokenReward.balanceOf(this), false);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(215)

[33mWarning[0m for UnhandledException in contract 'DoccoinPreICO':
    |        uint amount = msg.value;
    |        amountRaised += amount;
  > |        tokenReward.transfer(beneficiary, amount*1000000000000000000/price);
    |        FundTransfer(beneficiary, amount, true);
    |        wallet1.transfer(msg.value*90/100);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(223)

[33mWarning[0m for UnhandledException in contract 'DoccoinPreICO':
    |        tokenReward.transfer(beneficiary, amount*1000000000000000000/price);
    |        FundTransfer(beneficiary, amount, true);
  > |        wallet1.transfer(msg.value*90/100);
    |        wallet2.transfer(msg.value*10/100);
    |        
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(225)

[33mWarning[0m for UnhandledException in contract 'DoccoinPreICO':
    |        FundTransfer(beneficiary, amount, true);
    |        wallet1.transfer(msg.value*90/100);
  > |        wallet2.transfer(msg.value*10/100);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DoccoinPreICO':
    |    // withdraw tokens from contract
    |    function withdrawTokens() onlyOwner {
  > |        tokenReward.transfer(msg.sender, tokenReward.balanceOf(this));
    |        FundTransfer(msg.sender, tokenReward.balanceOf(this), false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DoccoinPreICO':
    |    function withdrawTokens() onlyOwner {
    |        tokenReward.transfer(msg.sender, tokenReward.balanceOf(this));
  > |        FundTransfer(msg.sender, tokenReward.balanceOf(this), false);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DoccoinPreICO':
    |        uint amount = msg.value;
    |        amountRaised += amount;
  > |        tokenReward.transfer(beneficiary, amount*1000000000000000000/price);
    |        FundTransfer(beneficiary, amount, true);
    |        wallet1.transfer(msg.value*90/100);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'DoccoinPreICO':
    |        require(msg.value >= 200 finney);
    |        uint amount = msg.value;
  > |        amountRaised += amount;
    |        tokenReward.transfer(beneficiary, amount*1000000000000000000/price);
    |        FundTransfer(beneficiary, amount, true);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'DoccoinPreICO':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(16)

[33mWarning[0m for LockedEther in contract 'doccoin':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract doccoin is owned {
    |    // Public variables of the token
    |    string public name = "DocCoin";
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'doccoin':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'doccoin':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'doccoin':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'doccoin':
    |    }
    |    
  > |    function setCrowdsaleContract(address contractAddress) onlyOwner {
    |        crowdsaleContract = contractAddress;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'doccoin':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'doccoin':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public canSend returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'doccoin':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'doccoin':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'doccoin':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'doccoin':
    |
    |contract owned {
  > |    address public owner;
    | 
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'doccoin':
    |contract doccoin is owned {
    |    // Public variables of the token
  > |    string public name = "DocCoin";
    |    string public symbol = "Doc";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'doccoin':
    |    // Public variables of the token
    |    string public name = "DocCoin";
  > |    string public symbol = "Doc";
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'doccoin':
    |    string public name = "DocCoin";
    |    string public symbol = "Doc";
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply = 200000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'doccoin':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply = 200000000000000000000000000;
    |    address public crowdsaleContract;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'doccoin':
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply = 200000000000000000000000000;
  > |    address public crowdsaleContract;
    |
    |    uint sendingBanPeriod = 1520726400;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'doccoin':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'doccoin':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(159)

[33mWarning[0m for UnhandledException in contract 'doccoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'doccoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'doccoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'doccoin':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'doccoin':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'doccoin':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'doccoin':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'doccoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'doccoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public canSend returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'doccoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'doccoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'doccoin':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'doccoin':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'doccoin':
    |    
    |    function setCrowdsaleContract(address contractAddress) onlyOwner {
  > |        crowdsaleContract = contractAddress;
    |    }
    |     
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'doccoin':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'doccoin':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(65)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.11;
    |
  > |contract owned {
    |    address public owner;
    | 
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    | 
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9ef21a1acff7f9b1950d7c9b597d4cfb4c297c77.sol(16)


