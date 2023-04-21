Processing contract: /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol:AUSCOIN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AUSCOIN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(117)

[33mWarning[0m for LockedEther in contract 'AUSCOIN':
    |  }
    |}
  > |contract AUSCOIN is ERC20,Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(85)

[31mViolation[0m for TODAmount in contract 'AUSCOIN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(117)

[33mWarning[0m for TODReceiver in contract 'AUSCOIN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(117)

[33mWarning[0m for UnhandledException in contract 'AUSCOIN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(117)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AUSCOIN':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'AUSCOIN':
    |		require(_to != address(0));
    |		// SafeMath.sub will throw if there is not enough balance.
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'AUSCOIN':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'AUSCOIN':
    |  	function approve(address _spender, uint256 _value) public returns (bool) 
    |  	{
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'AUSCOIN':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(53)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x259d01f7d96fcd1e77a467e71fa3d164f68fe2fe.sol(60)


