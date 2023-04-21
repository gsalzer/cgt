Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol:COIN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'COIN':
    | * @title COOTEST
    | */
  > |contract COIN is ERC20Token, Owned {
    |  
    |  string  public constant name     = "RED STAR TOKEN";
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(116)

[33mWarning[0m for UnhandledException in contract 'COIN':
    |
    |  function transferAnyERC20Token(address _tokenAddress, uint256 _value) public onlyOwner returns (bool) {
  > |    return ERC20(_tokenAddress).transfer(rescueAddress, _value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'COIN':
    |
    |  function transferAnyERC20Token(address _tokenAddress, uint256 _value) public onlyOwner returns (bool) {
  > |    return ERC20(_tokenAddress).transfer(rescueAddress, _value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'COIN':
    |    require(balances[msg.sender] >= _value);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'COIN':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'COIN':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(103)

[33mWarning[0m for LockedEther in contract 'ERC20Token':
    | * @title ERC20 token
    | */
  > |contract ERC20Token is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    require(balances[msg.sender] >= _value);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(103)

[33mWarning[0m for LockedEther in contract 'Owned':
    | * @title Owned
    | */
  > |contract Owned {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    | */
    |contract Owned {
  > |  address public owner;
    |
    |  constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(52)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title SafeMath
    | */
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x0c6eff25947e3b2d6e5d4f9dbf436385ac890dcb.sol(6)


