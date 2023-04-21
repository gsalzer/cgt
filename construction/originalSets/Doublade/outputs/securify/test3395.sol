Processing contract: /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol:FooozCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(105)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale is Ownable {
    |    using SafeMath for uint256;
    |    // address where funds are collected
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public ownerTwo;
    |
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Ownable {
    |    address public owner;
  > |    address public ownerTwo;
    |
    |    event OwnerChanged(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function changeOwnerTwo(address _newOwner) onlyOwner public {
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    using SafeMath for uint256;
    |    // address where funds are collected
  > |    address public wallet;
    |
    |    // amount of raised money in wei
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // amount of raised money in wei
  > |    uint256 public weiRaised;
    |
    |    uint256 public tokenAllocated;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public weiRaised;
    |
  > |    uint256 public tokenAllocated;
    |
    |    uint256 public hardWeiCap = 119000 * (10 ** 18);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(320)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public tokenAllocated;
    |
  > |    uint256 public hardWeiCap = 119000 * (10 ** 18);
    |
    |    function Crowdsale(
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  > |        ownerTwo = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(234)

[33mWarning[0m for DAOConstantGas in contract 'MintableToken':
    |    function claimTokens(address _token) public onlyOwner {
    |        if (_token == 0x0) {
  > |            owner.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(292)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    string public constant name = "FOOOZ";
    |    string public constant symbol = "FOOOZ";
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(247)

[31mViolation[0m for TODAmount in contract 'MintableToken':
    |    function claimTokens(address _token) public onlyOwner {
    |        if (_token == 0x0) {
  > |            owner.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(292)

[33mWarning[0m for TODReceiver in contract 'MintableToken':
    |    function claimTokens(address _token) public onlyOwner {
    |        if (_token == 0x0) {
  > |            owner.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(292)

[33mWarning[0m for UnhandledException in contract 'MintableToken':
    |    function claimTokens(address _token) public onlyOwner {
    |        if (_token == 0x0) {
  > |            owner.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(292)

[33mWarning[0m for UnhandledException in contract 'MintableToken':
    |
    |        MintableToken token = MintableToken(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        token.transfer(owner, balance);
    |
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(297)

[33mWarning[0m for UnhandledException in contract 'MintableToken':
    |        MintableToken token = MintableToken(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        token.transfer(owner, balance);
    |
    |        Transfer(_token, owner, balance);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(298)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintableToken':
    |    function claimTokens(address _token) public onlyOwner {
    |        if (_token == 0x0) {
  > |            owner.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintableToken':
    |
    |        MintableToken token = MintableToken(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        token.transfer(owner, balance);
    |
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintableToken':
    |        MintableToken token = MintableToken(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        token.transfer(owner, balance);
    |
    |        Transfer(_token, owner, balance);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  > |        ownerTwo = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(234)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    address public ownerTwo;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public ownerTwo;
    |
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public ownerTwo;
    |
    |    event OwnerChanged(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function changeOwnerTwo(address _newOwner) onlyOwner public {
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  > |        ownerTwo = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(234)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdee5d321084cfd5425a14354dbff5063025e1846.sol(190)


