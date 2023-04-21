Processing contract: /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol:Distribution
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'Distribution':
    |  function temporaryEscapeHatch(address to, uint256 value, bytes data) public {
    |    require(msg.sender == admin);
  > |    require(to.call.value(value)(data));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(128)

[33mWarning[0m for UnhandledException in contract 'Distribution':
    |  function handleTokensReceived() public {
    |    require(state == State.AwaitingTokens);
  > |    uint256 totalTokens = tokenContract.balanceOf(this);
    |    require(totalTokens > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(51)

[33mWarning[0m for UnhandledException in contract 'Distribution':
    |    }
    |
  > |    require(tokenContract.transfer(contributor, numTokens));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(94)

[33mWarning[0m for UnhandledException in contract 'Distribution':
    |      uint256 numTokens = _numTokensForContributor(expectedTokens, _state);
    |      tokensTransferredThisCall += numTokens;
  > |      require(tokenContract.transfer(contributor, numTokens));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(112)

[33mWarning[0m for UnhandledException in contract 'Distribution':
    |  function temporaryEscapeHatch(address to, uint256 value, bytes data) public {
    |    require(msg.sender == admin);
  > |    require(to.call.value(value)(data));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(128)

[33mWarning[0m for UnhandledException in contract 'Distribution':
    |  function temporaryKill(address to) public {
    |    require(msg.sender == admin);
  > |    require(tokenContract.balanceOf(this) == 0);
    |    selfdestruct(to);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Distribution':
    |  function handleTokensReceived() public {
    |    require(state == State.AwaitingTokens);
  > |    uint256 totalTokens = tokenContract.balanceOf(this);
    |    require(totalTokens > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(51)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Distribution':
    |    }
    |
  > |    require(tokenContract.transfer(contributor, numTokens));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Distribution':
    |      uint256 numTokens = _numTokensForContributor(expectedTokens, _state);
    |      tokensTransferredThisCall += numTokens;
  > |      require(tokenContract.transfer(contributor, numTokens));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Distribution':
    |  function temporaryKill(address to) public {
    |    require(msg.sender == admin);
  > |    require(tokenContract.balanceOf(this) == 0);
    |    selfdestruct(to);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |    require(totalTokens > 0);
    |
  > |    tokensTransferred = 0;
    |    if (totalTokens == expectedTotalTokens) {
    |      state = State.DistributingNormally;
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |    tokensTransferred = 0;
    |    if (totalTokens == expectedTotalTokens) {
  > |      state = State.DistributingNormally;
    |    } else {
    |      actualTotalTokens = totalTokens;
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |      state = State.DistributingNormally;
    |    } else {
  > |      actualTotalTokens = totalTokens;
    |      state = State.DistributingProRata;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |    } else {
    |      actualTotalTokens = totalTokens;
  > |      state = State.DistributingProRata;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |
    |    uint256 numTokens = _numTokensForContributor(contributorExpectedTokens, state);
  > |    contributionHashes[contributorIndex] = 0x00000000000000000000000000000000;
    |    tokensTransferred += numTokens;
    |    if (tokensTransferred == actualTotalTokens) {
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |    uint256 numTokens = _numTokensForContributor(contributorExpectedTokens, state);
    |    contributionHashes[contributorIndex] = 0x00000000000000000000000000000000;
  > |    tokensTransferred += numTokens;
    |    if (tokensTransferred == actualTotalTokens) {
    |      state = State.Done;
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |    tokensTransferred += numTokens;
    |    if (tokensTransferred == actualTotalTokens) {
  > |      state = State.Done;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |      uint256 expectedTokens = contributorExpectedTokens[i];
    |      require(contributionHashes[i] == keccak256(contributor, expectedTokens));
  > |      contributionHashes[i] = 0x00000000000000000000000000000000;
    |
    |      uint256 numTokens = _numTokensForContributor(expectedTokens, _state);
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |    }
    |
  > |    tokensTransferred += tokensTransferredThisCall;
    |    if (tokensTransferred == actualTotalTokens) {
    |      state = State.Done;
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'Distribution':
    |    tokensTransferred += tokensTransferredThisCall;
    |    if (tokensTransferred == actualTotalTokens) {
  > |      state = State.Done;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(117)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd403cc1e2da3aa7d954e0ad34bef2df2b9a9f238.sol(8)


