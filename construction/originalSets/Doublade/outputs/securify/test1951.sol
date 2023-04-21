Processing contract: /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol:COLETOKEN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'COLETOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(87)

[33mWarning[0m for LockedEther in contract 'COLETOKEN':
    |}
    |
  > |contract COLETOKEN is ERC20,Ownable{
    |	using SafeMath for uint256;
    |	string public constant name="colletcoin";
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(60)

[31mViolation[0m for TODAmount in contract 'COLETOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(87)

[33mWarning[0m for TODReceiver in contract 'COLETOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(87)

[33mWarning[0m for UnhandledException in contract 'COLETOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(87)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'COLETOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'COLETOKEN':
    | 	{
    |		require(_to != address(0));
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'COLETOKEN':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'COLETOKEN':
    |  	function approve(address _spender, uint256 _value) public returns (bool) 
    |  	{
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'COLETOKEN':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(32)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(32)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7df24b03c7f4a697f337da0755427dfb3d1c3e4d.sol(36)


