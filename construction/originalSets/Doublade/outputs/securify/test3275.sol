Processing contract: /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol:ICSTCrowSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ICSTCrowSale':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(143)

[33mWarning[0m for LockedEther in contract 'ICSTCrowSale':
    |  }
    |}
  > |contract ICSTCrowSale is Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(82)

[31mViolation[0m for TODAmount in contract 'ICSTCrowSale':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(143)

[33mWarning[0m for TODReceiver in contract 'ICSTCrowSale':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(143)

[33mWarning[0m for UnhandledException in contract 'ICSTCrowSale':
    |	{
    |        uint256 count = _holders.length;
  > |        assert(paySize.mul(count) <= token.balanceOf(this));
    |        for (uint256 i = 0; i < count; i++) {
    |			processFunding(_holders [i],paySize,1);
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(122)

[33mWarning[0m for UnhandledException in contract 'ICSTCrowSale':
    |	{
    |		uint256 amount=_value.mul(_rate);
  > |		require(amount<=token.balanceOf(this));
    |		if(!token.transfer(receiver,amount)){
    |			revert();
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(132)

[33mWarning[0m for UnhandledException in contract 'ICSTCrowSale':
    |		uint256 amount=_value.mul(_rate);
    |		require(amount<=token.balanceOf(this));
  > |		if(!token.transfer(receiver,amount)){
    |			revert();
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(133)

[33mWarning[0m for UnhandledException in contract 'ICSTCrowSale':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICSTCrowSale':
    |	{
    |        uint256 count = _holders.length;
  > |        assert(paySize.mul(count) <= token.balanceOf(this));
    |        for (uint256 i = 0; i < count; i++) {
    |			processFunding(_holders [i],paySize,1);
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICSTCrowSale':
    |	{
    |		uint256 amount=_value.mul(_rate);
  > |		require(amount<=token.balanceOf(this));
    |		if(!token.transfer(receiver,amount)){
    |			revert();
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICSTCrowSale':
    |		uint256 amount=_value.mul(_rate);
    |		require(amount<=token.balanceOf(this));
  > |		if(!token.transfer(receiver,amount)){
    |			revert();
    |		}
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICSTCrowSale':
    |
    |	{
  > |		if(!msg.sender.send(this.balance)) revert();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'ICSTCrowSale':
    |			processFunding(msg.sender,msg.value,rate);
    |			amount=msg.value.mul(rate);
  > |			totalFundingSupply = totalFundingSupply.add(amount);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'ICSTCrowSale':
    |        for (uint256 i = 0; i < count; i++) {
    |			processFunding(_holders [i],paySize,1);
  > |			airdropSupply = airdropSupply.add(paySize); 
    |        }
    |        Wasted(owner, airdropSupply, now);
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'ICSTCrowSale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'ICSTCrowSale':
    |		onlyOwner
    |	{
  > |		startTime=_startTime;
    |		endTime=_endTime;
    |		rate=_rate;
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'ICSTCrowSale':
    |	{
    |		startTime=_startTime;
  > |		endTime=_endTime;
    |		rate=_rate;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'ICSTCrowSale':
    |		startTime=_startTime;
    |		endTime=_endTime;
  > |		rate=_rate;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'ICSTCrowSale':
    |		onlyOwner
    |	{
  > |		token = ERC20(_tokenAddress);
    |	}	
    |	  
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(159)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd67eae781176e0dc095f018a3a54058d9a21760f.sol(54)


