Processing contract: /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol:ETH_DISTRIBUTION
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'ETH_DISTRIBUTION':
    |		uint256 marketingPerc = msg.value.mul(15).div(100);
    |
  > |		marketingAddress.transfer(marketingPerc);
    |		
    |		if (deposited[msg.sender] != 0)
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(89)

[31mViolation[0m for DAOConstantGas in contract 'ETH_DISTRIBUTION':
    |			address investor = msg.sender;
    |			uint256 depositsPercents = deposited[msg.sender].mul(4).div(100).mul(block.number-blocklock[msg.sender]).div(5900);
  > |			investor.transfer(depositsPercents);
    |
    |			withdrew[msg.sender] += depositsPercents;
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(95)

[31mViolation[0m for DAOConstantGas in contract 'ETH_DISTRIBUTION':
    |		if (referrer > 0x0 && referrer != msg.sender)
    |		{
  > |			referrer.transfer(refPerc);
    |
    |			refearned[referrer] += refPerc;
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(106)

[33mWarning[0m for LockedEther in contract 'ETH_DISTRIBUTION':
    |}
    |
  > |contract ETH_DISTRIBUTION {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(72)

[33mWarning[0m for TODReceiver in contract 'ETH_DISTRIBUTION':
    |		uint256 marketingPerc = msg.value.mul(15).div(100);
    |
  > |		marketingAddress.transfer(marketingPerc);
    |		
    |		if (deposited[msg.sender] != 0)
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(89)

[33mWarning[0m for TODReceiver in contract 'ETH_DISTRIBUTION':
    |			address investor = msg.sender;
    |			uint256 depositsPercents = deposited[msg.sender].mul(4).div(100).mul(block.number-blocklock[msg.sender]).div(5900);
  > |			investor.transfer(depositsPercents);
    |
    |			withdrew[msg.sender] += depositsPercents;
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(95)

[33mWarning[0m for TODReceiver in contract 'ETH_DISTRIBUTION':
    |		if (referrer > 0x0 && referrer != msg.sender)
    |		{
  > |			referrer.transfer(refPerc);
    |
    |			refearned[referrer] += refPerc;
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(106)

[33mWarning[0m for UnhandledException in contract 'ETH_DISTRIBUTION':
    |		uint256 marketingPerc = msg.value.mul(15).div(100);
    |
  > |		marketingAddress.transfer(marketingPerc);
    |		
    |		if (deposited[msg.sender] != 0)
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(89)

[33mWarning[0m for UnhandledException in contract 'ETH_DISTRIBUTION':
    |			address investor = msg.sender;
    |			uint256 depositsPercents = deposited[msg.sender].mul(4).div(100).mul(block.number-blocklock[msg.sender]).div(5900);
  > |			investor.transfer(depositsPercents);
    |
    |			withdrew[msg.sender] += depositsPercents;
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(95)

[33mWarning[0m for UnhandledException in contract 'ETH_DISTRIBUTION':
    |		if (referrer > 0x0 && referrer != msg.sender)
    |		{
  > |			referrer.transfer(refPerc);
    |
    |			refearned[referrer] += refPerc;
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETH_DISTRIBUTION':
    |		uint256 marketingPerc = msg.value.mul(15).div(100);
    |
  > |		marketingAddress.transfer(marketingPerc);
    |		
    |		if (deposited[msg.sender] != 0)
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETH_DISTRIBUTION':
    |			address investor = msg.sender;
    |			uint256 depositsPercents = deposited[msg.sender].mul(4).div(100).mul(block.number-blocklock[msg.sender]).div(5900);
  > |			investor.transfer(depositsPercents);
    |
    |			withdrew[msg.sender] += depositsPercents;
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(95)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETH_DISTRIBUTION':
    |		if (referrer > 0x0 && referrer != msg.sender)
    |		{
  > |			referrer.transfer(refPerc);
    |
    |			refearned[referrer] += refPerc;
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH_DISTRIBUTION':
    |			investor.transfer(depositsPercents);
    |
  > |			withdrew[msg.sender] += depositsPercents;
    |			totalWithdrewWei = totalWithdrewWei.add(depositsPercents);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH_DISTRIBUTION':
    |
    |			withdrew[msg.sender] += depositsPercents;
  > |			totalWithdrewWei = totalWithdrewWei.add(depositsPercents);
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH_DISTRIBUTION':
    |			referrer.transfer(refPerc);
    |
  > |			refearned[referrer] += refPerc;
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH_DISTRIBUTION':
    |		}
    |
  > |		blocklock[msg.sender] = block.number;
    |		deposited[msg.sender] += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH_DISTRIBUTION':
    |
    |		blocklock[msg.sender] = block.number;
  > |		deposited[msg.sender] += msg.value;
    |
    |		totalDepositedWei = totalDepositedWei.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH_DISTRIBUTION':
    |		deposited[msg.sender] += msg.value;
    |
  > |		totalDepositedWei = totalDepositedWei.add(msg.value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(114)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |*/
    |
  > |library SafeMath {
    |  function mul(uint256 _a, uint256 _b) internal pure returns (uint256 c) {
    |    if (_a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xc6038f9ff35a3f2b00f9747b483bced7b024015e.sol(46)


