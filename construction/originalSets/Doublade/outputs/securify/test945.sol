Processing contract: /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol:KyberNetworkCrystal
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(86)

[33mWarning[0m for LockedEther in contract 'KyberNetworkCrystal':
    |}
    |
  > |contract KyberNetworkCrystal is StandardToken, Ownable {
    |    string  public  constant name = "Kyber Network Crystal";
    |    string  public  constant symbol = "KNC";
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(169)

[33mWarning[0m for UnhandledException in contract 'KyberNetworkCrystal':
    |
    |    function emergencyERC20Drain( ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KyberNetworkCrystal':
    |
    |    function emergencyERC20Drain( ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |
    |    // KYBER-NOTE! code changed to comply with ERC20 standard
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |    // KYBER-NOTE! code changed to comply with ERC20 standard
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |    function burn(uint _value) onlyWhenTransferEnabled
    |        returns (bool){
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |        returns (bool){
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
    |        Transfer(msg.sender, address(0x0), _value);
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(57)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3be856c94c7a1ff4f433ae95a48544b1a62ce385.sol(152)


