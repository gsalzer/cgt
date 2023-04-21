Processing contract: /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol:CevacToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol:Token
[33mWarning[0m for LockedEther in contract 'CevacToken':
    |
    |/*  ERC 20 token */
  > |contract CevacToken is Token,Ownable {
    |    string public constant name = "Cevac Token";
    |    string public constant symbol = "CEVAC";
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(153)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    uint256 public fundingEndBlock; ///end = 1585612800 ///31 march 2020
    |    uint256 public tokenCreationMax= 1836 * (10**6) * 10**decimals;//TODO
  > |    mapping (address => bool) public ownership;
    |    uint256 public minCapUSD = 210000000;
    |    uint256 public maxCapUSD = 540000000;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |
    |
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(182)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    modifier onlyPayloadSize(uint size) {
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(183)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |      if(!istransferAllowed) throw;
    |      if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |
    |    ///change the funding end block
  > |    function changeEndBlock(uint256 _newFundingEndBlock) public onlyOwner{
    |        fundingEndBlock = _newFundingEndBlock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |
    |    ///change the funding start block
  > |    function changeStartBlock(uint256 _newFundingStartBlock) public onlyOwner{
    |        fundingStartBlock = _newFundingStartBlock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(225)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    ///the Min Cap USD 
    |    ///function too chage the miin cap usd
  > |    function changeMinCapUSD(uint256 _newMinCap) public onlyOwner{
    |        minCapUSD = _newMinCap;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(231)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |
    |    ///fucntion to change the max cap usd
  > |    function changeMaxCapUSD(uint256 _newMaxCap) public onlyOwner{
    |        maxCapUSD = _newMaxCap;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(237)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) onlyPayloadSize(3 * 32) returns (bool success) {
    |      if(!istransferAllowed) throw;
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(242)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    This is to add the token sale platform ownership to send tokens
    |    **/
  > |    function addToOwnership(address owners) onlyOwner{
    |        ownership[owners] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(266)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    This is to remove the token sale platform ownership to send tokens
    |    **/
  > |    function removeFromOwnership(address owners) onlyOwner{
    |        ownership[owners] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(274)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function balanceOf(address _owner) view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(278)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) view returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(289)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function increaseEthRaised(uint256 value){
    |        require(ownership[msg.sender]);
    |        ethraised+=value;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(293)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function increaseBTCRaised(uint256 value){
    |        require(ownership[msg.sender]);
    |        btcraised+=value;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(298)

[31mViolation[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function increaseUSDRaised(uint256 value){
    |        require(ownership[msg.sender]);
    |        usdraised+=value;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(303)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |  }
    |
  > |  function sub(uint256 a, uint256 b) internal returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |  }
    |
  > |  function add(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |/*  ERC 20 token */
    |contract CevacToken is Token,Ownable {
  > |    string public constant name = "Cevac Token";
    |    string public constant symbol = "CEVAC";
    |    uint256 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |contract CevacToken is Token,Ownable {
    |    string public constant name = "Cevac Token";
  > |    string public constant symbol = "CEVAC";
    |    uint256 public constant decimals = 8;
    |    string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    string public constant name = "Cevac Token";
    |    string public constant symbol = "CEVAC";
  > |    uint256 public constant decimals = 8;
    |    string public version = "1.0";
    |    uint public valueToBeSent = 1;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    string public constant symbol = "CEVAC";
    |    uint256 public constant decimals = 8;
  > |    string public version = "1.0";
    |    uint public valueToBeSent = 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    uint256 public constant decimals = 8;
    |    string public version = "1.0";
  > |    uint public valueToBeSent = 1;
    |
    |    bool public finalizedICO = false;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    uint public valueToBeSent = 1;
    |
  > |    bool public finalizedICO = false;
    |
    |    uint256 public ethraised;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    bool public finalizedICO = false;
    |
  > |    uint256 public ethraised;
    |    uint256 public btcraised;
    |    uint256 public usdraised;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |
    |    uint256 public ethraised;
  > |    uint256 public btcraised;
    |    uint256 public usdraised;
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    uint256 public ethraised;
    |    uint256 public btcraised;
  > |    uint256 public usdraised;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |
    |
  > |    uint256 public numberOfBackers;
    |
    |    bool public istransferAllowed;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    uint256 public numberOfBackers;
    |
  > |    bool public istransferAllowed;
    |
    |    uint256 public constant CevacFund = 36 * (10**8) * 10**decimals; 
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    bool public istransferAllowed;
    |
  > |    uint256 public constant CevacFund = 36 * (10**8) * 10**decimals; 
    |    uint256 public fundingStartBlock; //start = 1533081600 //1 august 2018
    |    uint256 public fundingEndBlock; ///end = 1585612800 ///31 march 2020
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |
    |    uint256 public constant CevacFund = 36 * (10**8) * 10**decimals; 
  > |    uint256 public fundingStartBlock; //start = 1533081600 //1 august 2018
    |    uint256 public fundingEndBlock; ///end = 1585612800 ///31 march 2020
    |    uint256 public tokenCreationMax= 1836 * (10**6) * 10**decimals;//TODO
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    uint256 public constant CevacFund = 36 * (10**8) * 10**decimals; 
    |    uint256 public fundingStartBlock; //start = 1533081600 //1 august 2018
  > |    uint256 public fundingEndBlock; ///end = 1585612800 ///31 march 2020
    |    uint256 public tokenCreationMax= 1836 * (10**6) * 10**decimals;//TODO
    |    mapping (address => bool) public ownership;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    uint256 public fundingStartBlock; //start = 1533081600 //1 august 2018
    |    uint256 public fundingEndBlock; ///end = 1585612800 ///31 march 2020
  > |    uint256 public tokenCreationMax= 1836 * (10**6) * 10**decimals;//TODO
    |    mapping (address => bool) public ownership;
    |    uint256 public minCapUSD = 210000000;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    uint256 public tokenCreationMax= 1836 * (10**6) * 10**decimals;//TODO
    |    mapping (address => bool) public ownership;
  > |    uint256 public minCapUSD = 210000000;
    |    uint256 public maxCapUSD = 540000000;
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    mapping (address => bool) public ownership;
    |    uint256 public minCapUSD = 210000000;
  > |    uint256 public maxCapUSD = 540000000;
    |
    |    address public ownerWallet = 0x46F525e84B5C59CA63a5E1503fa82dF98fBb026b;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    uint256 public maxCapUSD = 540000000;
    |
  > |    address public ownerWallet = 0x46F525e84B5C59CA63a5E1503fa82dF98fBb026b;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function finalizeICO() public{
    |    require(ownership[msg.sender]);
    |    require(usdraised>=minCapUSD);
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(308)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function enableTransfers() public onlyOwner{
    |        istransferAllowed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function disableTransfers() public onlyOwner{
    |        istransferAllowed = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(319)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |
    |    //functiion to force finalize the ICO by the owner no checks called here
  > |    function finalizeICOOwner() onlyOwner{
    |        finalizedICO = true;
    |        istransferAllowed = true;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(324)

[33mWarning[0m for MissingInputValidation in contract 'CevacToken':
    |    }
    |
  > |    function isValid() returns(bool){
    |        if(now>=fundingStartBlock && now<fundingEndBlock ){
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'CevacToken':
    |    function burnTokens(uint256 _value) public{
    |        require(balances[msg.sender]>=_value);
  > |        balances[msg.sender] = SafeMath.sub(balances[msg.sender],_value);
    |        totalSupply =SafeMath.sub(totalSupply,_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(204)

[31mViolation[0m for UnrestrictedWrite in contract 'CevacToken':
    |        require(balances[msg.sender]>=_value);
    |        balances[msg.sender] = SafeMath.sub(balances[msg.sender],_value);
  > |        totalSupply =SafeMath.sub(totalSupply,_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'CevacToken':
    |    function addToBalances(address _person,uint256 value) {
    |        if(!ownership[msg.sender]) throw;
  > |        balances[ownerWallet] = SafeMath.sub(balances[ownerWallet],value);
    |        balances[_person] = SafeMath.add(balances[_person],value);
    |        Transfer(address(this), _person, value);
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'CevacToken':
    |        if(!ownership[msg.sender]) throw;
    |        balances[ownerWallet] = SafeMath.sub(balances[ownerWallet],value);
  > |        balances[_person] = SafeMath.add(balances[_person],value);
    |        Transfer(address(this), _person, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'CevacToken':
    |    function increaseEthRaised(uint256 value){
    |        require(ownership[msg.sender]);
  > |        ethraised+=value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(295)

[31mViolation[0m for UnrestrictedWrite in contract 'CevacToken':
    |    function increaseBTCRaised(uint256 value){
    |        require(ownership[msg.sender]);
  > |        btcraised+=value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'CevacToken':
    |    function increaseUSDRaised(uint256 value){
    |        require(ownership[msg.sender]);
  > |        usdraised+=value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'CevacToken':
    |    require(ownership[msg.sender]);
    |    require(usdraised>=minCapUSD);
  > |    finalizedICO = true;
    |    istransferAllowed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'CevacToken':
    |    require(usdraised>=minCapUSD);
    |    finalizedICO = true;
  > |    istransferAllowed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |      if(!istransferAllowed) throw;
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    function approve(address _spender, uint256 _value) onlyPayloadSize(2 * 32) returns (bool success) {
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    ///change the funding end block
    |    function changeEndBlock(uint256 _newFundingEndBlock) public onlyOwner{
  > |        fundingEndBlock = _newFundingEndBlock;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    ///change the funding start block
    |    function changeStartBlock(uint256 _newFundingStartBlock) public onlyOwner{
  > |        fundingStartBlock = _newFundingStartBlock;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    ///function too chage the miin cap usd
    |    function changeMinCapUSD(uint256 _newMinCap) public onlyOwner{
  > |        minCapUSD = _newMinCap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    ///fucntion to change the max cap usd
    |    function changeMaxCapUSD(uint256 _newMaxCap) public onlyOwner{
  > |        maxCapUSD = _newMaxCap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    **/
    |    function addToOwnership(address owners) onlyOwner{
  > |        ownership[owners] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    **/
    |    function removeFromOwnership(address owners) onlyOwner{
  > |        ownership[owners] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |
    |    function enableTransfers() public onlyOwner{
  > |        istransferAllowed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |
    |    function disableTransfers() public onlyOwner{
  > |        istransferAllowed = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    //functiion to force finalize the ICO by the owner no checks called here
    |    function finalizeICOOwner() onlyOwner{
  > |        finalizedICO = true;
    |        istransferAllowed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'CevacToken':
    |    function finalizeICOOwner() onlyOwner{
    |        finalizedICO = true;
  > |        istransferAllowed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(326)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(41)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(134)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x5afc0b82bd845f20804e42ec049bee8e17fa9700.sol(53)


