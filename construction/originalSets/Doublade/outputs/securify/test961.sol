Processing contract: /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol:DNNTDE
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol:DNNToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(605)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(619)

[33mWarning[0m for LockedEther in contract 'DNNToken':
    |}
    |
  > |contract DNNToken is StandardToken {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(620)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(654)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(655)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(674)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(697)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(708)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        onlyCofounders
    |    {
  > |        platform = newAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(916)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        CanSetCrowdfundContract
    |    {
  > |        crowdfundContract = newAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(927)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        CanSetAllocator
    |    {
  > |        allocatorAddress = newAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(938)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        onlyCofounderA
    |    {
  > |        cofounderA = newAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(948)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        onlyCofounderB
    |    {
  > |        cofounderB = newAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(958)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |        // Decrease cofounders supply
  > |        cofoundersSupplyRemaining = cofoundersSupplyRemaining.sub(tokenCount);
    |
    |        // Update how many tokens have been distributed to cofounders
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1004)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |        // Update how many tokens have been distributed to cofounders
  > |        cofoundersSupplyDistributed = cofoundersSupplyDistributed.add(tokenCount);
    |
    |        // Split tokens between both founders
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1007)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |        // Split tokens between both founders
  > |        balances[cofounderA] = balances[cofounderA].add(tokenCount.div(2));
    |        balances[cofounderB] = balances[cofounderB].add(tokenCount.div(2));
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1010)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        // Split tokens between both founders
    |        balances[cofounderA] = balances[cofounderA].add(tokenCount.div(2));
  > |        balances[cofounderB] = balances[cofounderB].add(tokenCount.div(2));
    |
    |        // Update that a tranche has been issued
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1011)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |        // Update that a tranche has been issued
  > |        cofoundersSupplyVestingTranchesIssued += 1;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1014)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        // Early Backers
    |        if (canAllocatorPerform && allocationType == DNNSupplyAllocations.EarlyBackerSupplyAllocation && tokenCount <= earlyBackerSupplyRemaining) {
  > |            earlyBackerSupplyRemaining = earlyBackerSupplyRemaining.sub(tokenCount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1035)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |                    // Decrease pre-tde supply
  > |                    PRETDESupplyRemaining = PRETDESupplyRemaining.sub(tokenCount);
    |              }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1046)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |                    // Decrease tde supply
  > |                    TDESupplyRemaining = TDESupplyRemaining.sub(tokenCount-PRETDESupplyRemaining);
    |
    |                    // Decrease pre-tde supply by its' remaining tokens
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1053)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |                    // Decrease pre-tde supply by its' remaining tokens
  > |                    PRETDESupplyRemaining = 0;
    |              }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1056)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        // TDE
    |        else if (canCrowdfundContractPerform && allocationType == DNNSupplyAllocations.TDESupplyAllocation && tokenCount <= TDESupplyRemaining) {
  > |            TDESupplyRemaining = TDESupplyRemaining.sub(tokenCount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1067)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        // Bounty
    |        else if (canAllocatorPerform && allocationType == DNNSupplyAllocations.BountySupplyAllocation && tokenCount <= bountySupplyRemaining) {
  > |            bountySupplyRemaining = bountySupplyRemaining.sub(tokenCount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1072)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        // Writer Accounts
    |        else if (canAllocatorPerform && allocationType == DNNSupplyAllocations.WriterAccountSupplyAllocation && tokenCount <= writerAccountSupplyRemaining) {
  > |            writerAccountSupplyRemaining = writerAccountSupplyRemaining.sub(tokenCount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1077)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        // Advisory
    |        else if (canAllocatorPerform && allocationType == DNNSupplyAllocations.AdvisorySupplyAllocation && tokenCount <= advisorySupplyRemaining) {
  > |            advisorySupplyRemaining = advisorySupplyRemaining.sub(tokenCount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1082)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        // Platform (Also makes sure that the beneficiary is the platform address specified in this contract)
    |        else if (canPlatformPerform && allocationType == DNNSupplyAllocations.PlatformSupplyAllocation && tokenCount <= platformSupplyRemaining) {
  > |            platformSupplyRemaining = platformSupplyRemaining.sub(tokenCount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1087)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |        // Credit tokens to the address specified
  > |        balances[beneficiary] = balances[beneficiary].add(tokenCount);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1095)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |            // Add remaining tde tokens to platform remaining tokens
  > |            platformSupplyRemaining = platformSupplyRemaining.add(TDESupplyRemaining);
    |
    |            // Clear remaining tde token count
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1111)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |            // Clear remaining tde token count
  > |            TDESupplyRemaining = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1114)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |              // Add remaining pre-tde tokens to tde remaining tokens
  > |              TDESupplyRemaining = TDESupplyRemaining.add(PRETDESupplyRemaining);
    |
    |              // Clear remaining pre-tde token count
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1129)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |
    |              // Clear remaining pre-tde token count
  > |              PRETDESupplyRemaining = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1132)

[33mWarning[0m for UnrestrictedWrite in contract 'DNNToken':
    |        require(tokensLocked == true);
    |
  > |        tokensLocked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(1146)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(579)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(674)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(697)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3cbb9bb54a4a2bd8cb5d9487841b03d7a65e4404.sol(708)


