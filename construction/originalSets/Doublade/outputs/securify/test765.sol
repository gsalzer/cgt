Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:ERC20AsmFn
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:FUTB1
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:FUTBTiers
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(317)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(357)

[33mWarning[0m for LockedEther in contract 'ERC20AsmFn':
    |pragma solidity ^0.4.24;
    |
  > |library ERC20AsmFn {
    |
    |    function isContract(address addr) internal {
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(213)

[31mViolation[0m for LockedEther in contract 'FUTB1':
    |// File: contracts/FUTB.sol
    |
  > |contract FUTB1 is StandardToken, MintableToken, BurnableToken {
    |  using SafeMath for uint256;
    |  using ERC20AsmFn for ERC20;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(565)

[33mWarning[0m for UnhandledException in contract 'FUTB1':
    |
    |        // call return false when something wrong
  > |        require(_erc20Addr.call(bytes4(keccak256("transfer(address,uint256)")), _to, _value));
    |
    |        // handle returndata
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(243)

[33mWarning[0m for UnhandledException in contract 'FUTB1':
    |
    |        // call return false when something wrong
  > |        require(_erc20Addr.call(bytes4(keccak256("transferFrom(address,address,uint256)")), _from, _to, _value));
    |
    |        // handle returndata
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(255)

[33mWarning[0m for UnhandledException in contract 'FUTB1':
    |        }
    |        currentTier++;
  > |        (futbLeftInCurrent, miningTokenLeftInCurrent, currentRate) = tierContract.getTier(currentTier);
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(666)

[33mWarning[0m for UnhandledException in contract 'FUTB1':
    |    }
    |    cycleMintSupply += _tokens;
  > |    MintableToken(this).mint(msg.sender, _tokens);
    |    ERC20(_token).asmTransfer(FUTC, fee);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(670)

[33mWarning[0m for UnhandledException in contract 'FUTB1':
    |    for (uint16 i = 0; i < miningTokens.length; i++) {
    |      address _token = miningTokens[i];
  > |      uint swapAmt = ERC20(_token).balanceOf(this);
    |      swapRates[_token] = swapAmt.div(SWAP_CAP.div(decimalOffset));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(688)

[33mWarning[0m for UnhandledException in contract 'FUTB1':
    |    for (uint16 i = 0; i < miningTokens.length; i++) {
    |      address _token = miningTokens[i];
  > |      uint amtLeft = ERC20(_token).balanceOf(this);
    |      ERC20(_token).asmTransfer(FUTC, amtLeft.div(5));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(719)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FUTB1':
    |
    |        // call return false when something wrong
  > |        require(_erc20Addr.call(bytes4(keccak256("transfer(address,uint256)")), _to, _value));
    |
    |        // handle returndata
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FUTB1':
    |
    |        // call return false when something wrong
  > |        require(_erc20Addr.call(bytes4(keccak256("transferFrom(address,address,uint256)")), _from, _to, _value));
    |
    |        // handle returndata
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(255)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FUTB1':
    |        }
    |        currentTier++;
  > |        (futbLeftInCurrent, miningTokenLeftInCurrent, currentRate) = tierContract.getTier(currentTier);
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(666)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FUTB1':
    |    }
    |    cycleMintSupply += _tokens;
  > |    MintableToken(this).mint(msg.sender, _tokens);
    |    ERC20(_token).asmTransfer(FUTC, fee);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(670)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FUTB1':
    |    for (uint16 i = 0; i < miningTokens.length; i++) {
    |      address _token = miningTokens[i];
  > |      uint swapAmt = ERC20(_token).balanceOf(this);
    |      swapRates[_token] = swapAmt.div(SWAP_CAP.div(decimalOffset));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(688)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FUTB1':
    |    for (uint16 i = 0; i < miningTokens.length; i++) {
    |      address _token = miningTokens[i];
  > |      uint amtLeft = ERC20(_token).balanceOf(this);
    |      ERC20(_token).asmTransfer(FUTC, amtLeft.div(5));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(719)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(496)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(546)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(557)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |// File: contracts/FUTB.sol
    |
  > |contract FUTB1 is StandardToken, MintableToken, BurnableToken {
    |  using SafeMath for uint256;
    |  using ERC20AsmFn for ERC20;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(565)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |  function _mine(address _token, uint256 _inAmount) private {
    |    if (!miningActive) {
  > |      miningActive = true;
    |    }
    |    uint _tokens = 0;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(633)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |        uint calculatedFutb = currentRate.mul(miningPower).div(offset);
    |        _tokens += calculatedFutb;
  > |        futbLeftInCurrent -= calculatedFutb;
    |        miningTokenLeftInCurrent -= miningPower;
    |        miningPower = 0;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(648)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |        _tokens += calculatedFutb;
    |        futbLeftInCurrent -= calculatedFutb;
  > |        miningTokenLeftInCurrent -= miningPower;
    |        miningPower = 0;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(649)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |      }
    |    }
  > |    cycleMintSupply += _tokens;
    |    MintableToken(this).mint(msg.sender, _tokens);
    |    ERC20(_token).asmTransfer(FUTC, fee);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(669)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |      address _token = miningTokens[i];
    |      uint swapAmt = ERC20(_token).balanceOf(this);
  > |      swapRates[_token] = swapAmt.div(SWAP_CAP.div(decimalOffset));
    |    }
    |    emit SwapStarted(swapEndTime);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(689)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    }
    |
  > |    currentTier = 1;
    |    futbLeftInCurrent = 6.597 ether;
    |    miningTokenLeftInCurrent = 0.0369 ether;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(723)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |
    |    currentTier = 1;
  > |    futbLeftInCurrent = 6.597 ether;
    |    miningTokenLeftInCurrent = 0.0369 ether;
    |    currentRate = futbLeftInCurrent.div(miningTokenLeftInCurrent.div(offset));
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(724)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    currentTier = 1;
    |    futbLeftInCurrent = 6.597 ether;
  > |    miningTokenLeftInCurrent = 0.0369 ether;
    |    currentRate = futbLeftInCurrent.div(miningTokenLeftInCurrent.div(offset));
    |    emit MiningRestart(currentTier);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(725)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    futbLeftInCurrent = 6.597 ether;
    |    miningTokenLeftInCurrent = 0.0369 ether;
  > |    currentRate = futbLeftInCurrent.div(miningTokenLeftInCurrent.div(offset));
    |    emit MiningRestart(currentTier);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(726)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |
    |  function setIsMiningOpen(bool isOpen) onlyTierAdmin external {
  > |    isMiningOpen = isOpen;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |  function addMiningToken(address tokenAddr, uint ratio) onlyAdmin external {
    |    require(exchangeRatios[tokenAddr] == 0 && ratio > 0 && ratio < 10000);
  > |    exchangeRatios[tokenAddr] = ratio;
    |
    |    bool found = false;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(737)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |  function adjustTokenRate(address tokenAddr, uint ratio, uint16 position) onlyAdmin external {
    |    require(miningTokens[position] == tokenAddr && ratio < 10000);
  > |    exchangeRatios[tokenAddr] = ratio;
    |    emit MiningTokenAdjusted(tokenAddr, ratio);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(754)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |  function setFutbTiers(address _tiersAddr) onlyTierAdmin external {
    |    require(!miningActive);
  > |    tierContract = FUTBTiers(_tiersAddr);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(761)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |  function lockContract() onlyAdmin external {
    |    require(miningActive);
  > |    admin = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(767)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |  function setLastTier(uint16 _lastTier) onlyTierAdmin external {
    |    require(swapOpen);
  > |    lastTier = _lastTier;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(774)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |
    |  function changeAdmin (address _receiver) onlyAdmin external {
  > |    admin = _receiver;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(778)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |
    |  function changeTierAdmin (address _receiver) onlyTierAdmin external {
  > |    tierAdmin = _receiver;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(782)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |  function removeToken(address _addr, uint16 _position) onlyTierAdmin external {
    |    require(miningTokens[_position] == _addr);
  > |    exchangeRatios[_addr] = 0;
    |
    |    miningTokens[_position] = miningTokens[miningTokens.length-1];
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(796)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |    exchangeRatios[_addr] = 0;
    |
  > |    miningTokens[_position] = miningTokens[miningTokens.length-1];
    |    delete miningTokens[miningTokens.length-1];
    |    miningTokens.length--;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(798)

[33mWarning[0m for UnrestrictedWrite in contract 'FUTB1':
    |
    |    miningTokens[_position] = miningTokens[miningTokens.length-1];
  > |    delete miningTokens[miningTokens.length-1];
    |    miningTokens.length--;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(799)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(496)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(546)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(557)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(115)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(9)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(496)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x30c6fe3ac0260a855c90cab79aa33e76091d4904.sol(498)


