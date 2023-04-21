Processing contract: /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol:NKNToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token is ERC20, Owned {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |		require(_value <= balances[msg.sender]);
    |
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		emit Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |			revert();
    |		}
  > |		allowed[msg.sender][_spender] = _value;
    |		emit Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |	function transferOwnership(address _owner) onlyOwner public {
    |		require(_owner != address(0));
  > |		owner = _owner;
    |
    |		emit OwnershipTransferred(owner, _owner);
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |	function setTransferable(bool _transferable) onlyOwner public {
  > |		transferable = _transferable;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(89)

[33mWarning[0m for LockedEther in contract 'NKNToken':
    |}
    |
  > |contract NKNToken is ERC20Token{
    |	string public name = "NKN";
    |	string public symbol = "NKN";
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'NKNToken':
    |		require(_value <= balances[msg.sender]);
    |
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'NKNToken':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		emit Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'NKNToken':
    |			revert();
    |		}
  > |		allowed[msg.sender][_spender] = _value;
    |		emit Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'NKNToken':
    |	function transferOwnership(address _owner) onlyOwner public {
    |		require(_owner != address(0));
  > |		owner = _owner;
    |
    |		emit OwnershipTransferred(owner, _owner);
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'NKNToken':
    |
    |	function setTransferable(bool _transferable) onlyOwner public {
  > |		transferable = _transferable;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(89)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |	address public owner;
    |
    |	event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |	}
    |
  > |	function transferOwnership(address _owner) onlyOwner public {
    |		require(_owner != address(0));
    |		owner = _owner;
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |	function transferOwnership(address _owner) onlyOwner public {
    |		require(_owner != address(0));
  > |		owner = _owner;
    |
    |		emit OwnershipTransferred(owner, _owner);
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(67)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |		if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x5cf04716ba20127f1e2297addcf4b5035000c9eb.sol(7)


