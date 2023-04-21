Processing contract: /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol:SurveyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'SurveyToken':
    |}
    |
  > |contract SurveyToken is TokenERC20, owned
    |{
    |    struct Survey {
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(165)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(160)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |    }
    |
  > |    function placeNewSurvey(bytes32 key, uint256 toPay, uint32 tickets, uint256 reward) public returns(bool success) {
    |        require(surveys[key].initiator == 0x0);
    |        require(tickets > 0 && reward >= 0);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(211)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |    }
    |
  > |    function giveReward(bytes32 surveyKey, address respondent, uint8 karma) public onlyRobot returns(bool success) {
    |        require(respondent != 0x0);
    |        Survey storage surv = surveys[surveyKey];
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |    }
    |    
  > |    function removeSurvey(bytes32 surveyKey) public onlyRobot returns(bool success) {
    |        Survey storage surv = surveys[surveyKey];
    |        require(surv.initiator != 0x0 && surv.balance > 0);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(261)

[31mViolation[0m for MissingInputValidation in contract 'SurveyToken':
    |    }
    |
  > |    function getSurveyInfo(bytes32 key) public constant returns(bool success, uint256 toPay, uint32 tickets, uint256 reward) {
    |        Survey storage surv = surveys[key];
    |        require(surv.initiator != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(272)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name = "SurveyToken";
    |    string public symbol = "SRT";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |    // Public variables of the token
    |    string public name = "SurveyToken";
  > |    string public symbol = "SRT";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |    string public name = "SurveyToken";
    |    string public symbol = "SRT";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |    string public symbol = "SRT";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |    }
    |
  > |    function setFeeReceiver(address newReceiver) public onlyOwner {
    |        require(newReceiver != 0x0);
    |        feeReceiver = newReceiver;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |    }
    |
  > |    function addRobot(address newRobot) public onlyOwner returns(bool success) {
    |        require(newRobot != 0x0);
    |        require(robots[newRobot] == false);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'SurveyToken':
    |        return true;
    |    }
  > |    function removeRobot(address oldRobot) public onlyOwner returns(bool success) {
    |        require(oldRobot != 0x0);
    |        require(robots[oldRobot] == true);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(203)

[33mWarning[0m for UnhandledException in contract 'SurveyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SurveyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        transfer(feeReceiver, fee);
    |        
  > |        balanceOf[msg.sender] -= rewardBalance;
    |        surveys[key] = Survey(msg.sender, toPay, rewardBalance, tickets, reward);
    |        Transfer(msg.sender, 0x0, rewardBalance);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        
    |        balanceOf[msg.sender] -= rewardBalance;
  > |        surveys[key] = Survey(msg.sender, toPay, rewardBalance, tickets, reward);
    |        Transfer(msg.sender, 0x0, rewardBalance);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |            require(balanceOf[feeReceiver] + fine > balanceOf[feeReceiver]);
    |            
  > |            balanceOf[respondent] += respReward;
    |            Transfer(0x0, respondent, respReward);
    |            
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |            Transfer(0x0, respondent, respReward);
    |            
  > |            balanceOf[feeReceiver] += fine;
    |            Transfer(0x0, feeReceiver, fine);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        } else {
    |            require(balanceOf[respondent] + surv.reward > balanceOf[respondent]);
  > |            balanceOf[respondent] += surv.reward;
    |            Transfer(0x0, respondent, surv.reward);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        }
    |
  > |        surv.tickets--;
    |        surv.balance -= surv.reward;
    |        surv.respondents[respondent] = true;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |
    |        surv.tickets--;
  > |        surv.balance -= surv.reward;
    |        surv.respondents[respondent] = true;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        surv.tickets--;
    |        surv.balance -= surv.reward;
  > |        surv.respondents[respondent] = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(257)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        require(balanceOf[surv.initiator] + surv.balance > balanceOf[surv.initiator]);
    |        
  > |        balanceOf[surv.initiator] += surv.balance;
    |        Transfer(0x0, surv.initiator, surv.balance);
    |        surv.balance = 0;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(266)

[31mViolation[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        balanceOf[surv.initiator] += surv.balance;
    |        Transfer(0x0, surv.initiator, surv.balance);
  > |        surv.balance = 0;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'SurveyToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'SurveyToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'SurveyToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'SurveyToken':
    |
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'SurveyToken':
    |    function setFeeReceiver(address newReceiver) public onlyOwner {
    |        require(newReceiver != 0x0);
  > |        feeReceiver = newReceiver;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        require(robots[newRobot] == false);
    |
  > |        robots[newRobot] = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'SurveyToken':
    |        require(robots[oldRobot] == true);
    |
  > |        robots[oldRobot] = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(207)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name = "SurveyToken";
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name = "SurveyToken";
    |    string public symbol = "SRT";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name = "SurveyToken";
  > |    string public symbol = "SRT";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name = "SurveyToken";
    |    string public symbol = "SRT";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol = "SRT";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(121)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(141)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x795afd4350049359a5ef359ec7bc8579b1e36d60.sol(161)


