Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:DiscoperiToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:DiscoperiTokenLockup
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:DiscoperiTokenVesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:IDiscoperiSale
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:IDiscoperiToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol:TokenTimelock
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
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(92)

[33mWarning[0m for LockedEther in contract 'DiscoperiToken':
    | * @dev Discoperi Token contract
    | */
  > |contract DiscoperiToken is  
    |    IDiscoperiToken,
    |    StandardToken, 
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        require(_who != address(0), "Vesting target address can't be zero.");
    |        require(_amount > 0, "Vesting amount should be > 0.");
  > |        vestedAmount[_who] = vestedAmount[_who].add(_amount);
    |        emit Vesting(_who, _amount);
    |    }        
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |            require(_amount > 0, "Lockup amount should be > 0.");   
    |            require(_release > block.timestamp, "Lockup release time should be > now."); // solium-disable-line security/no-block-members 
  > |            lockedup[_who].push(LockedUp(_amount, _release));
    |            emit Lockup(_who, _amount, _release);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        require(_vestingFourthRelease > now, "vesting fourth release date should be > now"); // solium-disable-line security/no-block-members
    |
  > |        sale = _sale;
    |
    |        balances[sale] = balances[sale].add(SALES_SUPPLY);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(649)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        sale = _sale;
    |
  > |        balances[sale] = balances[sale].add(SALES_SUPPLY);
    |        totalSupply_ = totalSupply_.add(SALES_SUPPLY);
    |        emit Transfer(address(0), sale, SALES_SUPPLY);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(651)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |
    |        balances[sale] = balances[sale].add(SALES_SUPPLY);
  > |        totalSupply_ = totalSupply_.add(SALES_SUPPLY);
    |        emit Transfer(address(0), sale, SALES_SUPPLY);
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(652)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        emit Transfer(address(0), sale, SALES_SUPPLY);
    |
  > |        balances[sale] = balances[sale].add(REFERRAL_SUPPLY);
    |        totalSupply_ = totalSupply_.add(REFERRAL_SUPPLY);
    |        emit Transfer(address(0), sale, REFERRAL_SUPPLY);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(655)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |
    |        balances[sale] = balances[sale].add(REFERRAL_SUPPLY);
  > |        totalSupply_ = totalSupply_.add(REFERRAL_SUPPLY);
    |        emit Transfer(address(0), sale, REFERRAL_SUPPLY);
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |
    |        TokenTimelock teamTimelock = new TokenTimelock(this, TEAM_ADDRESS, _teamRelease);
  > |        balances[teamTimelock] = balances[teamTimelock].add(TEAM_SUPPLY);
    |        totalSupply_ = totalSupply_.add(TEAM_SUPPLY);
    |        emit Transfer(address(0), teamTimelock, TEAM_SUPPLY);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(660)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        TokenTimelock teamTimelock = new TokenTimelock(this, TEAM_ADDRESS, _teamRelease);
    |        balances[teamTimelock] = balances[teamTimelock].add(TEAM_SUPPLY);
  > |        totalSupply_ = totalSupply_.add(TEAM_SUPPLY);
    |        emit Transfer(address(0), teamTimelock, TEAM_SUPPLY);
    |         
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        emit Transfer(address(0), teamTimelock, TEAM_SUPPLY);
    |         
  > |        balances[MARKET_DEV_ADDRESS] = balances[MARKET_DEV_ADDRESS].add(MARKET_DEV_SUPPLY);
    |        totalSupply_ = totalSupply_.add(MARKET_DEV_SUPPLY);
    |        emit Transfer(address(0), MARKET_DEV_ADDRESS, MARKET_DEV_SUPPLY);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(664)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |         
    |        balances[MARKET_DEV_ADDRESS] = balances[MARKET_DEV_ADDRESS].add(MARKET_DEV_SUPPLY);
  > |        totalSupply_ = totalSupply_.add(MARKET_DEV_SUPPLY);
    |        emit Transfer(address(0), MARKET_DEV_ADDRESS, MARKET_DEV_SUPPLY);
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(665)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        emit Transfer(address(0), MARKET_DEV_ADDRESS, MARKET_DEV_SUPPLY);
    |
  > |        balances[RESERVE_ADDRESS] = balances[RESERVE_ADDRESS].add(RESERVE_SUPPLY);
    |        totalSupply_ = totalSupply_.add(RESERVE_SUPPLY);
    |        emit Transfer(address(0), RESERVE_ADDRESS, RESERVE_SUPPLY);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(668)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |
    |        balances[RESERVE_ADDRESS] = balances[RESERVE_ADDRESS].add(RESERVE_SUPPLY);
  > |        totalSupply_ = totalSupply_.add(RESERVE_SUPPLY);
    |        emit Transfer(address(0), RESERVE_ADDRESS, RESERVE_SUPPLY);
    |       
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(669)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        emit Transfer(address(0), RESERVE_ADDRESS, RESERVE_SUPPLY);
    |       
  > |        balances[PR_ADVERSTISING_ADDRESS] = balances[PR_ADVERSTISING_ADDRESS].add(PR_ADVERSTISING_SUPPLY);
    |        totalSupply_ = totalSupply_.add(PR_ADVERSTISING_SUPPLY);
    |        emit Transfer(address(0), PR_ADVERSTISING_ADDRESS, PR_ADVERSTISING_SUPPLY);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(672)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |       
    |        balances[PR_ADVERSTISING_ADDRESS] = balances[PR_ADVERSTISING_ADDRESS].add(PR_ADVERSTISING_SUPPLY);
  > |        totalSupply_ = totalSupply_.add(PR_ADVERSTISING_SUPPLY);
    |        emit Transfer(address(0), PR_ADVERSTISING_ADDRESS, PR_ADVERSTISING_SUPPLY);
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(673)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        emit Transfer(address(0), PR_ADVERSTISING_ADDRESS, PR_ADVERSTISING_SUPPLY);
    |
  > |        vestingReleases[0] = _vestingFirstRelease;
    |        vestingReleases[1] = _vestingSecondRelease;
    |        vestingReleases[2] = _vestingThirdRelease;
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(676)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |
    |        vestingReleases[0] = _vestingFirstRelease;
  > |        vestingReleases[1] = _vestingSecondRelease;
    |        vestingReleases[2] = _vestingThirdRelease;
    |        vestingReleases[3] = _vestingFourthRelease;
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(677)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        vestingReleases[0] = _vestingFirstRelease;
    |        vestingReleases[1] = _vestingSecondRelease;
  > |        vestingReleases[2] = _vestingThirdRelease;
    |        vestingReleases[3] = _vestingFourthRelease;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        vestingReleases[1] = _vestingSecondRelease;
    |        vestingReleases[2] = _vestingThirdRelease;
  > |        vestingReleases[3] = _vestingFourthRelease;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(679)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |    function burnSaleTokens() external onlySale {
    |        uint256 _amount = balances[sale];
  > |        balances[sale] = 0;
    |        totalSupply_ = totalSupply_.sub(_amount);
    |        emit Burn(sale, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(710)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscoperiToken':
    |        uint256 _amount = balances[sale];
    |        balances[sale] = 0;
  > |        totalSupply_ = totalSupply_.sub(_amount);
    |        emit Burn(sale, _amount);
    |        emit Transfer(sale, address(0), _amount);        
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(711)

[33mWarning[0m for LockedEther in contract 'DiscoperiTokenLockup':
    | * @dev This contract gives possibility for token holders to have locked up (till release time) amounts of tokens on their balances. 
    | */
  > |contract DiscoperiTokenLockup {
    |    using SafeMath for uint256;  
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(451)

[33mWarning[0m for LockedEther in contract 'DiscoperiTokenVesting':
    | * Token should check a balance spot for transfer and transferFrom functions to use this feature.
    | */
  > |contract DiscoperiTokenVesting {
    |    using SafeMath for uint256;  
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(398)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(336)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(337)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(369)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(378)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(386)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(389)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(
    |    ERC20Basic _token,
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(253)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(239)

[33mWarning[0m for LockedEther in contract 'TokenTimelock':
    | * beneficiary to extract the tokens after a given release time
    | */
  > |contract TokenTimelock {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(291)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(261)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |    require(block.timestamp >= releaseTime);
    |
  > |    uint256 amount = token.balanceOf(address(this));
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(261)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |    require(block.timestamp >= releaseTime);
    |
  > |    uint256 amount = token.balanceOf(address(this));
    |    require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xc7b292092542a34021afe23bf7162b006d7c219c.sol(324)


