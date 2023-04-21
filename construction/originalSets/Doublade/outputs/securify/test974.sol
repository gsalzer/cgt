Processing contract: /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol:MoldCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol:MoldCoinBonus
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol:Token
[33mWarning[0m for DAO in contract 'MoldCoin':
    |        salesVolume = safeAdd(salesVolume, msg.value);
    |
  > |        if (!founder.call.value(msg.value)()) revert(); //immediately send Ether to founder address
    |
    |        Buy(recipient, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'MoldCoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'MoldCoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'MoldCoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'MoldCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'MoldCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'MoldCoin':
    |     * Change admin address.
    |     */
  > |    function changeAdmin(address newAdmin) onlyAdmin  {
    |        admin = newAdmin;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(275)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |  //internals
    |
  > |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |contract MoldCoin is StandardToken, SafeMath {
    |
  > |    string public name = "MOLD";
    |    string public symbol = "MLD";
    |    uint public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |
    |    string public name = "MOLD";
  > |    string public symbol = "MLD";
    |    uint public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    string public name = "MOLD";
    |    string public symbol = "MLD";
  > |    uint public decimals = 18;
    |
    |    uint public startDatetime; //pre-sell start datetime seconds
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    uint public decimals = 18;
    |
  > |    uint public startDatetime; //pre-sell start datetime seconds
    |    uint public firstStageDatetime; //first 120 hours pre-sell in seconds
    |    uint public secondStageDatetime; //second stage, 240 hours of pre-sell in seconds.
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |
    |    uint public startDatetime; //pre-sell start datetime seconds
  > |    uint public firstStageDatetime; //first 120 hours pre-sell in seconds
    |    uint public secondStageDatetime; //second stage, 240 hours of pre-sell in seconds.
    |    uint public endDatetime; //pre-sell end datetime seconds (set in constructor)
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    uint public startDatetime; //pre-sell start datetime seconds
    |    uint public firstStageDatetime; //first 120 hours pre-sell in seconds
  > |    uint public secondStageDatetime; //second stage, 240 hours of pre-sell in seconds.
    |    uint public endDatetime; //pre-sell end datetime seconds (set in constructor)
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    uint public firstStageDatetime; //first 120 hours pre-sell in seconds
    |    uint public secondStageDatetime; //second stage, 240 hours of pre-sell in seconds.
  > |    uint public endDatetime; //pre-sell end datetime seconds (set in constructor)
    |
    |    // Initial founder address (set in constructor)
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    // Initial founder address (set in constructor)
    |    // All deposited ETH will be instantly forwarded to this address.
  > |    address public founder;
    |
    |    // administrator address
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |
    |    // administrator address
  > |    address public admin;
    |
    |    uint public coinAllocation = 20 * 10**8 * 10**decimals; //2000M tokens supply for pre-sell
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    address public admin;
    |
  > |    uint public coinAllocation = 20 * 10**8 * 10**decimals; //2000M tokens supply for pre-sell
    |    uint public angelAllocation = 2 * 10**8 * 10**decimals; // 200M of token supply allocated angel investor
    |    uint public founderAllocation = 3 * 10**8 * 10**decimals; //300M of token supply allocated for the founder allocation
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |
    |    uint public coinAllocation = 20 * 10**8 * 10**decimals; //2000M tokens supply for pre-sell
  > |    uint public angelAllocation = 2 * 10**8 * 10**decimals; // 200M of token supply allocated angel investor
    |    uint public founderAllocation = 3 * 10**8 * 10**decimals; //300M of token supply allocated for the founder allocation
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    uint public coinAllocation = 20 * 10**8 * 10**decimals; //2000M tokens supply for pre-sell
    |    uint public angelAllocation = 2 * 10**8 * 10**decimals; // 200M of token supply allocated angel investor
  > |    uint public founderAllocation = 3 * 10**8 * 10**decimals; //300M of token supply allocated for the founder allocation
    |
    |    bool public founderAllocated = false; //this will change to true when the founder fund is allocated
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    uint public founderAllocation = 3 * 10**8 * 10**decimals; //300M of token supply allocated for the founder allocation
    |
  > |    bool public founderAllocated = false; //this will change to true when the founder fund is allocated
    |
    |    uint public saleTokenSupply = 0; //this will keep track of the token supply created during the pre-sell
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    bool public founderAllocated = false; //this will change to true when the founder fund is allocated
    |
  > |    uint public saleTokenSupply = 0; //this will keep track of the token supply created during the pre-sell
    |    uint public salesVolume = 0; //this will keep track of the Ether raised during the pre-sell
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |
    |    uint public saleTokenSupply = 0; //this will keep track of the token supply created during the pre-sell
  > |    uint public salesVolume = 0; //this will keep track of the Ether raised during the pre-sell
    |
    |    uint public angelTokenSupply = 0; //this will keep track of the token angel supply
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    uint public salesVolume = 0; //this will keep track of the Ether raised during the pre-sell
    |
  > |    uint public angelTokenSupply = 0; //this will keep track of the token angel supply
    |
    |    bool public halted = false; //the admin address can set this to true to halt the pre-sell due to emergency
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    uint public angelTokenSupply = 0; //this will keep track of the token angel supply
    |
  > |    bool public halted = false; //the admin address can set this to true to halt the pre-sell due to emergency
    |
    |    event Buy(address indexed sender, uint eth, uint tokens);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |     * Price for crowdsale by time
    |     */
  > |    function price(uint timeInSeconds) constant returns(uint) {
    |        if (timeInSeconds < startDatetime) return 0;
    |        if (timeInSeconds <= firstStageDatetime) return 15000; //120 hours
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |     * allow anyone sends funds to the contract
    |     */
  > |    function buy() payable {
    |        buyRecipient(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |     * Set up founder address token balance.
    |     */
  > |    function allocateFounderTokens() onlyAdmin {
    |        require( block.timestamp > endDatetime );
    |        require(!founderAllocated);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |     * Emergency Stop crowdsale.
    |     */
  > |    function halt() onlyAdmin {
    |        halted = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(264)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoin':
    |    }
    |
  > |    function unhalt() onlyAdmin {
    |        halted = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(268)

[33mWarning[0m for UnhandledException in contract 'MoldCoin':
    |        salesVolume = safeAdd(salesVolume, msg.value);
    |
  > |        if (!founder.call.value(msg.value)()) revert(); //immediately send Ether to founder address
    |
    |        Buy(recipient, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        require(safeAdd(saleTokenSupply,tokens)<=coinAllocation );
    |
  > |        balances[recipient] = safeAdd(balances[recipient], tokens);
    |
    |        totalSupply = safeAdd(totalSupply, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        balances[recipient] = safeAdd(balances[recipient], tokens);
    |
  > |        totalSupply = safeAdd(totalSupply, tokens);
    |        saleTokenSupply = safeAdd(saleTokenSupply, tokens);
    |        salesVolume = safeAdd(salesVolume, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |
    |        totalSupply = safeAdd(totalSupply, tokens);
  > |        saleTokenSupply = safeAdd(saleTokenSupply, tokens);
    |        salesVolume = safeAdd(salesVolume, msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        totalSupply = safeAdd(totalSupply, tokens);
    |        saleTokenSupply = safeAdd(saleTokenSupply, tokens);
  > |        salesVolume = safeAdd(salesVolume, msg.value);
    |
    |        if (!founder.call.value(msg.value)()) revert(); //immediately send Ether to founder address
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        require(!founderAllocated);
    |
  > |        balances[founder] = safeAdd(balances[founder], founderAllocation);
    |        totalSupply = safeAdd(totalSupply, founderAllocation);
    |        founderAllocated = true;
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(240)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |
    |        balances[founder] = safeAdd(balances[founder], founderAllocation);
  > |        totalSupply = safeAdd(totalSupply, founderAllocation);
    |        founderAllocated = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(241)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        balances[founder] = safeAdd(balances[founder], founderAllocation);
    |        totalSupply = safeAdd(totalSupply, founderAllocation);
  > |        founderAllocated = true;
    |
    |        AllocateFounderTokens(msg.sender, founderAllocation);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        require(safeAdd(angelTokenSupply,tokens) <= angelAllocation );
    |
  > |        balances[angel] = safeAdd(balances[angel], tokens);
    |        angelTokenSupply = safeAdd(angelTokenSupply, tokens);
    |        totalSupply = safeAdd(totalSupply, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(254)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |
    |        balances[angel] = safeAdd(balances[angel], tokens);
  > |        angelTokenSupply = safeAdd(angelTokenSupply, tokens);
    |        totalSupply = safeAdd(totalSupply, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        balances[angel] = safeAdd(balances[angel], tokens);
    |        angelTokenSupply = safeAdd(angelTokenSupply, tokens);
  > |        totalSupply = safeAdd(totalSupply, tokens);
    |
    |        AllocateAngelTokens(msg.sender, angel, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        require( balances[holder] >0 );
    |
  > |        balances[holder] = safeAdd(balances[holder], tokens);
    |        saleTokenSupply = safeAdd(saleTokenSupply, tokens);
    |        totalSupply = safeAdd(totalSupply, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(287)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |
    |        balances[holder] = safeAdd(balances[holder], tokens);
  > |        saleTokenSupply = safeAdd(saleTokenSupply, tokens);
    |        totalSupply = safeAdd(totalSupply, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        balances[holder] = safeAdd(balances[holder], tokens);
    |        saleTokenSupply = safeAdd(saleTokenSupply, tokens);
  > |        totalSupply = safeAdd(totalSupply, tokens);
    |
    |        AllocateUnsoldTokens(msg.sender, holder, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoin':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoin':
    |     */
    |    function halt() onlyAdmin {
  > |        halted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoin':
    |
    |    function unhalt() onlyAdmin {
  > |        halted = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoin':
    |     */
    |    function changeAdmin(address newAdmin) onlyAdmin  {
  > |        admin = newAdmin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(276)

[33mWarning[0m for DAO in contract 'MoldCoinBonus':
    |        uint bonus = safeDiv(safeMul(tokens, rate), 100);
    |
  > |        fundAddress.buyRecipient.value(msg.value)(msg.sender); //send Ether to pre-sale contract address
    |
    |        totalSupply = safeAdd(totalSupply, bonus*2);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(345)

[33mWarning[0m for DAO in contract 'MoldCoinBonus':
    |        uint bonus = safeDiv(safeMul(tokens, rate), 100);
    |
  > |        fundAddress.buyRecipient.value(msg.value)(friend); //send Ether to crowdsale contract address
    |
    |        totalSupply = safeAdd(totalSupply, bonus*2);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(362)

[31mViolation[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |contract MoldCoinBonus is SafeMath {
    |
  > |    function bonusBalanceOf(address _owner) constant returns (uint256 balance) {
    |        return bonusBalances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(300)

[31mViolation[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |     * Change admin address.
    |     */
  > |    function changeAdmin(address newAdmin) onlyAdmin  {
    |        admin = newAdmin;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(386)

[31mViolation[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |    }
    |
  > |    function changeRate(uint _rate) onlyAdmin  {
    |        rate = _rate;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(390)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |  //internals
    |
  > |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |  }
    |
  > |  function safeDiv(uint a, uint b) internal returns (uint) {
    |      assert(b > 0);
    |      uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |
    |    // administrator address
  > |    address public admin;
    |
    |    // crowdfund address
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(307)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |
    |    // crowdfund address
  > |    MoldCoin public fundAddress;
    |    uint public rate = 10;
    |    uint public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(310)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |    // crowdfund address
    |    MoldCoin public fundAddress;
  > |    uint public rate = 10;
    |    uint public totalSupply = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(311)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |    MoldCoin public fundAddress;
    |    uint public rate = 10;
  > |    uint public totalSupply = 0;
    |
    |    bool public halted = false; //the admin address can set this to true to halt the pre-sell due to emergency
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |    uint public totalSupply = 0;
    |
  > |    bool public halted = false; //the admin address can set this to true to halt the pre-sell due to emergency
    |
    |    event BuyWithBonus(address indexed sender, address indexed inviter, uint eth, uint tokens, uint bonus);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(314)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |     * Emergency Stop.
    |     */
  > |    function halt() onlyAdmin {
    |        halted = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'MoldCoinBonus':
    |    }
    |
  > |    function unhalt() onlyAdmin {
    |        halted = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(379)

[33mWarning[0m for UnhandledException in contract 'MoldCoinBonus':
    |    modifier validSale {
    |        require(!halted);
  > |        require(!fundAddress.halted());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(326)

[33mWarning[0m for UnhandledException in contract 'MoldCoinBonus':
    |        require( msg.sender != inviter );
    |
  > |        uint tokens = safeMul(msg.value, fundAddress.price(block.timestamp));
    |        uint bonus = safeDiv(safeMul(tokens, rate), 100);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(342)

[33mWarning[0m for UnhandledException in contract 'MoldCoinBonus':
    |        uint bonus = safeDiv(safeMul(tokens, rate), 100);
    |
  > |        fundAddress.buyRecipient.value(msg.value)(msg.sender); //send Ether to pre-sale contract address
    |
    |        totalSupply = safeAdd(totalSupply, bonus*2);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(345)

[33mWarning[0m for UnhandledException in contract 'MoldCoinBonus':
    |        require( msg.sender != friend );
    |
  > |        uint tokens = safeMul(msg.value, fundAddress.price(block.timestamp));
    |        uint bonus = safeDiv(safeMul(tokens, rate), 100);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(359)

[33mWarning[0m for UnhandledException in contract 'MoldCoinBonus':
    |        uint bonus = safeDiv(safeMul(tokens, rate), 100);
    |
  > |        fundAddress.buyRecipient.value(msg.value)(friend); //send Ether to crowdsale contract address
    |
    |        totalSupply = safeAdd(totalSupply, bonus*2);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MoldCoinBonus':
    |    modifier validSale {
    |        require(!halted);
  > |        require(!fundAddress.halted());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MoldCoinBonus':
    |        require( msg.sender != inviter );
    |
  > |        uint tokens = safeMul(msg.value, fundAddress.price(block.timestamp));
    |        uint bonus = safeDiv(safeMul(tokens, rate), 100);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(342)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MoldCoinBonus':
    |        require( msg.sender != friend );
    |
  > |        uint tokens = safeMul(msg.value, fundAddress.price(block.timestamp));
    |        uint bonus = safeDiv(safeMul(tokens, rate), 100);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(359)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |        fundAddress.buyRecipient.value(msg.value)(msg.sender); //send Ether to pre-sale contract address
    |
  > |        totalSupply = safeAdd(totalSupply, bonus*2);
    |
    |        bonusBalances[inviter] = safeAdd(bonusBalances[inviter], bonus);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |        totalSupply = safeAdd(totalSupply, bonus*2);
    |
  > |        bonusBalances[inviter] = safeAdd(bonusBalances[inviter], bonus);
    |        bonusBalances[msg.sender] = safeAdd(bonusBalances[msg.sender], bonus);
    |        BuyWithBonus(msg.sender, inviter, msg.value, tokens, bonus);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(349)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |
    |        bonusBalances[inviter] = safeAdd(bonusBalances[inviter], bonus);
  > |        bonusBalances[msg.sender] = safeAdd(bonusBalances[msg.sender], bonus);
    |        BuyWithBonus(msg.sender, inviter, msg.value, tokens, bonus);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(350)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |        fundAddress.buyRecipient.value(msg.value)(friend); //send Ether to crowdsale contract address
    |
  > |        totalSupply = safeAdd(totalSupply, bonus*2);
    |
    |        bonusBalances[friend] = safeAdd(bonusBalances[friend], bonus);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(364)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |        totalSupply = safeAdd(totalSupply, bonus*2);
    |
  > |        bonusBalances[friend] = safeAdd(bonusBalances[friend], bonus);
    |        bonusBalances[msg.sender] = safeAdd(bonusBalances[msg.sender], bonus);
    |        BuyForFriend(msg.sender, friend, msg.value, tokens, bonus);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(366)

[31mViolation[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |
    |        bonusBalances[friend] = safeAdd(bonusBalances[friend], bonus);
  > |        bonusBalances[msg.sender] = safeAdd(bonusBalances[msg.sender], bonus);
    |        BuyForFriend(msg.sender, friend, msg.value, tokens, bonus);
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |     */
    |    function halt() onlyAdmin {
  > |        halted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |
    |    function unhalt() onlyAdmin {
  > |        halted = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |     */
    |    function changeAdmin(address newAdmin) onlyAdmin  {
  > |        admin = newAdmin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'MoldCoinBonus':
    |
    |    function changeRate(uint _rate) onlyAdmin  {
  > |        rate = _rate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(391)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.11;
    |
  > |contract SafeMath {
    |  //internals
    |
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3d34cc988d583dd2757acaa18a1e90cfab8b7b1d.sol(111)


