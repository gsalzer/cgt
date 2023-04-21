Processing contract: /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol:IEX
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol:TokenBasic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IEX':
    | * @dev International Exchange
    | */
  > |contract IEX is TokenBasic {
    |
    |  string public constant name = "International Exchange";	
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'IEX':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'IEX':
    | 
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'IEX':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'IEX':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'IEX':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(127)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(7)

[33mWarning[0m for LockedEther in contract 'TokenBasic':
    |
    |
  > |contract TokenBasic is ERC20 {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBasic':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBasic':
    | 
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBasic':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBasic':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBasic':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3b4dc616ecb0728cdac586c72726da166a9eb79e.sol(127)


