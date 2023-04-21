Processing contract: /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol:SampleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(88)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(59)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |//Emotional Tokens for your pleasure
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(5)

[33mWarning[0m for LockedEther in contract 'SampleToken':
    |}
    |
  > |contract SampleToken is StandardToken, Ownable {
    |    string  public  constant name = "Sad Token o(╥﹏╥)o";
    |    string  public  constant symbol = "o(╥﹏╥)o";
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(170)

[33mWarning[0m for UnhandledException in contract 'SampleToken':
    |
    |    function emergencyERC20Drain(ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(233)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SampleToken':
    |
    |    function emergencyERC20Drain(ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |
    |    //code changed to comply with ERC20 standard
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |    //code changed to comply with ERC20 standard
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |        onlyWhenTransferEnabled()
    |        returns (bool){
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |        returns (bool){
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
    |        Transfer(msg.sender, address(0x0), _value);
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |    
    |    function setupCrowdsale(address _contract, bool _transferAllowed) onlyOwner {
  > |        crowdsaleContract = _contract;
    |        transferEnabled = _transferAllowed;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |    function setupCrowdsale(address _contract, bool _transferAllowed) onlyOwner {
    |        crowdsaleContract = _contract;
  > |        transferEnabled = _transferAllowed;
    |    }
    |    function transfer(address _to, uint _value)
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |    function ChangeTransferStatus() onlyOwner {
    |            if(transferEnabled == false){
  > |            transferEnabled = true;
    |        } else{
    |            transferEnabled = false;
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'SampleToken':
    |            transferEnabled = true;
    |        } else{
  > |            transferEnabled = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(240)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe324d1b4733ec3569f971e95fa16dbbaaeca5496.sol(153)


