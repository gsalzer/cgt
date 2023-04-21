Processing contract: /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol:RyanCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(89)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(60)

[33mWarning[0m for LockedEther in contract 'RyanCoin':
    |}
    |
  > |contract RyanCoin is StandardToken, Ownable {
    |    string  public  constant name = "Ryan Huang Coin";
    |    string  public  constant symbol = "RYAN";
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(171)

[33mWarning[0m for UnhandledException in contract 'RyanCoin':
    |
    |    function emergencyERC20Drain(ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(235)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RyanCoin':
    |
    |    function emergencyERC20Drain(ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |
    |    //code changed to comply with ERC20 standard
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |    //code changed to comply with ERC20 standard
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |        onlyWhenTransferEnabled()
    |        returns (bool){
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |        returns (bool){
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
    |        Transfer(msg.sender, address(0x0), _value);
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |    
    |    function setupCrowdsale(address _contract, bool _transferAllowed) onlyOwner {
  > |        crowdsaleContract = _contract;
    |        transferEnabled = _transferAllowed;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |    function setupCrowdsale(address _contract, bool _transferAllowed) onlyOwner {
    |        crowdsaleContract = _contract;
  > |        transferEnabled = _transferAllowed;
    |    }
    |    function transfer(address _to, uint _value)
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |    function ChangeTransferStatus() onlyOwner {
    |            if(transferEnabled == false){
  > |            transferEnabled = true;
    |        } else{
    |            transferEnabled = false;
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'RyanCoin':
    |            transferEnabled = true;
    |        } else{
  > |            transferEnabled = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(242)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.16;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(6)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3a65e389ab3c72e0c40362ab622f19e615e3985f.sol(154)


