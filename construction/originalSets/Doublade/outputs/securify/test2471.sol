Processing contract: /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol:ExtendedMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol:GPUxToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ExtendedMath':
    |
    |
  > |library ExtendedMath {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(71)

[33mWarning[0m for LockedEther in contract 'GPUxToken':
    |// ----------------------------------------------------------------------------
    |
  > |contract GPUxToken is ERC20Interface, Owned {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(195)

[33mWarning[0m for UnhandledException in contract 'GPUxToken':
    |        Approval(msg.sender, spender, tokens);
    |
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(628)

[33mWarning[0m for UnhandledException in contract 'GPUxToken':
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(658)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GPUxToken':
    |        Approval(msg.sender, spender, tokens);
    |
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(628)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GPUxToken':
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |            //only allow one reward for each challenge
    |             bytes32 solution = solutionForChallenge[challengeNumber];
  > |             solutionForChallenge[challengeNumber] = digest;
    |             if(solution != 0x0) revert();  //prevent the same answer from awarding twice
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |            uint reward_amount = getMiningReward();
    |
  > |            balances[msg.sender] = balances[msg.sender].add(reward_amount);
    |
    |            tokensMinted = tokensMinted.add(reward_amount);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |            balances[msg.sender] = balances[msg.sender].add(reward_amount);
    |
  > |            tokensMinted = tokensMinted.add(reward_amount);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |
    |            //set readonly diagnostics data
  > |            lastRewardTo = msg.sender;
    |            lastRewardAmount = reward_amount;
    |            lastRewardEthBlockNumber = block.number;
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |            //set readonly diagnostics data
    |            lastRewardTo = msg.sender;
  > |            lastRewardAmount = reward_amount;
    |            lastRewardEthBlockNumber = block.number;
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |            lastRewardTo = msg.sender;
    |            lastRewardAmount = reward_amount;
  > |            lastRewardEthBlockNumber = block.number;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |      if( tokensMinted.add(getMiningReward()) > maxSupplyForEra && rewardEra < 39)
    |      {
  > |        rewardEra = rewardEra + 1;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |      //set the next minted supply at which the era will change
    |      // total supply is 2100000000000000  because of 8 decimal places
  > |      maxSupplyForEra = _totalSupply - _totalSupply.div( 2**(rewardEra + 1));
    |
    |      epochCount = epochCount.add(1);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |      maxSupplyForEra = _totalSupply - _totalSupply.div( 2**(rewardEra + 1));
    |
  > |      epochCount = epochCount.add(1);
    |
    |      //every so often, readjust difficulty. Dont readjust when deploying
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |      //make the latest ethereum block hash a part of the next challenge for PoW to prevent pre-mining future blocks
    |      //do this last since this is a protection mechanism in the mint() function
  > |      challengeNumber = block.blockhash(block.number - 1);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |
    |          //make it harder
  > |          miningTarget = miningTarget.sub(miningTarget.div(2000).mul(excess_block_pct_extra));   //by up to 50 %
    |        }else{
    |          uint shortage_block_pct = (ethBlocksSinceLastDifficultyPeriod.mul(100)).div( targetEthBlocksPerDiffPeriod );
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |
    |          //make it easier
  > |          miningTarget = miningTarget.add(miningTarget.div(2000).mul(shortage_block_pct_extra));   //by up to 50 %
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |
    |
  > |        latestDifficultyPeriodStarted = block.number;
    |
    |        if(miningTarget < _MINIMUM_TARGET) //very difficult
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |        if(miningTarget < _MINIMUM_TARGET) //very difficult
    |        {
  > |          miningTarget = _MINIMUM_TARGET;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |        if(miningTarget > _MAXIMUM_TARGET) //very easy
    |        {
  > |          miningTarget = _MAXIMUM_TARGET;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |
  > |        balances[to] = balances[to].add(tokens);
    |
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |    function approve(address spender, uint tokens) public returns (bool success) {
    |
  > |        allowed[msg.sender][spender] = tokens;
    |
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(552)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |
  > |        balances[from] = balances[from].sub(tokens);
    |
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(582)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |        balances[from] = balances[from].sub(tokens);
    |
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(584)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |
  > |        balances[to] = balances[to].add(tokens);
    |
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(586)

[33mWarning[0m for UnrestrictedWrite in contract 'GPUxToken':
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |
  > |        allowed[msg.sender][spender] = tokens;
    |
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(624)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |
    |        require(msg.sender == newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(179)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |
  > |library SafeMath {
    |
    |    function add(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0xa15705d42a74785e10c31778dfc84c16500647f0.sol(33)


