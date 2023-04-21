Processing contract: /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol:BoLuoPay
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BoLuoPay':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(206)

[33mWarning[0m for LockedEther in contract 'BoLuoPay':
    |
    |
  > |contract BoLuoPay is ERC20,Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(110)

[31mViolation[0m for TODAmount in contract 'BoLuoPay':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(206)

[33mWarning[0m for TODReceiver in contract 'BoLuoPay':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(206)

[33mWarning[0m for UnhandledException in contract 'BoLuoPay':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BoLuoPay':
    |		onlyOwner
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |		onlyOwner
    |	{
  > |		MAX_SUPPLY = MAX_SUPPLY.add(_supply);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |		onlyOwner
    |	{
  > |		directSellRate = _directSellRate;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |        for (uint256 i = 0; i < count; i++) {
    |            transfer(_holders [i], paySize);
  > |			airdropSupply = airdropSupply.add(paySize);
    |        }
    |        Wasted(owner, airdropSupply, now);
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |		processFunding(msg.sender,msg.value,directSellRate);
    |		uint256 amount = msg.value.mul(directSellRate);
  > |		directSellSupply = directSellSupply.add(amount);		
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |	{
    |		uint256 amount=_value.mul(_rate);
  > |		totalSupply=totalSupply.add(amount);
    |		balances[receiver] +=amount;
    |		Transfer(0x0, receiver, amount);
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |		uint256 amount=_value.mul(_rate);
    |		totalSupply=totalSupply.add(amount);
  > |		balances[receiver] +=amount;
    |		Transfer(0x0, receiver, amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |		require(_to != address(0));
    |		// SafeMath.sub will throw if there is not enough balance.
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |		// SafeMath.sub will throw if there is not enough balance.
    |		balances[msg.sender] = balances[msg.sender].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |		uint256 _allowance = allowed[_from][msg.sender];
    |
  > |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |
    |		balances[_from] = balances[_from].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = _allowance.sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'BoLuoPay':
    |  	function approve(address _spender, uint256 _value) public returns (bool) 
    |  	{
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(238)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(67)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xc3d663fa5072bb67e0e233b75ffe3282bb2df25b.sol(79)


