Processing contract: /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol:RYANTOKEN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(32)

[33mWarning[0m for DAOConstantGas in contract 'RYANTOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(87)

[33mWarning[0m for LockedEther in contract 'RYANTOKEN':
    |}
    |
  > |contract RYANTOKEN is ERC20,Ownable{
    |	using SafeMath for uint256;
    |	string public constant name="瑞安币";
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(60)

[31mViolation[0m for TODAmount in contract 'RYANTOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(87)

[33mWarning[0m for TODReceiver in contract 'RYANTOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(87)

[33mWarning[0m for UnhandledException in contract 'RYANTOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(87)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RYANTOKEN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'RYANTOKEN':
    | 	{
    |		require(_to != address(0));
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'RYANTOKEN':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'RYANTOKEN':
    |  	function approve(address _spender, uint256 _value) public returns (bool) 
    |  	{
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'RYANTOKEN':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(32)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x44e5c5d842845de5bdf4a4f051c9b37f58db61ce.sol(36)


