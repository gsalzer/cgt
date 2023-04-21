Processing contract: /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol:TaylorToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol:TaylorTokenTGE
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(66)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(76)

[33mWarning[0m for LockedEther in contract 'TaylorToken':
    |  @title TaylorToken
    |**/
  > |contract TaylorToken is Ownable{
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(_value <= balances[msg.sender]);
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(_value <= allowed[_from][msg.sender]);
    |
  > |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |
    |      balances[_from] = balances[_from].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      returns (bool success)
    |    {
  > |      allowed[msg.sender][_spender] = _value;
    |      Approval(msg.sender, _spender, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      returns (bool)
    |    {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      uint oldValue = allowed[msg.sender][_spender];
    |      if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |      } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |        allowed[msg.sender][_spender] = 0;
    |      } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(whitelistedBurn[msg.sender]);
    |      require(_amount <= balances[msg.sender]);
  > |      balances[msg.sender] = balances[msg.sender].sub(_amount);
    |      totalSupply =  totalSupply.sub(_amount);
    |      Burn(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      require(_amount <= balances[msg.sender]);
    |      balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |      totalSupply =  totalSupply.sub(_amount);
    |      Burn(msg.sender, _amount);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      transferable = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      whitelistedTransfer[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      whitelistedTransfer[_tgeAddress] = true;
    |      transfer(_tgeAddress, balances[owner]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorToken':
    |      onlyOwner
    |    {
  > |      whitelistedBurn[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(213)

[33mWarning[0m for LockedEther in contract 'TaylorTokenTGE':
    |
    |
  > |contract TaylorTokenTGE is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(372)

[33mWarning[0m for UnhandledException in contract 'TaylorTokenTGE':
    |  function distribute() public onlyOwner {
    |    uint256 total = FOUNDERS.add(ADVISORS).add(TEAM).add(REFERRAL_PROGRAMS).add(PRESALE).add(PUBLICSALE);
  > |    require(total >= token.balanceOf(this));
    |    token.transfer(founders_address, FOUNDERS);
    |    token.transfer(advisors_address, ADVISORS);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(417)

[33mWarning[0m for UnhandledException in contract 'TaylorTokenTGE':
    |    uint256 total = FOUNDERS.add(ADVISORS).add(TEAM).add(REFERRAL_PROGRAMS).add(PRESALE).add(PUBLICSALE);
    |    require(total >= token.balanceOf(this));
  > |    token.transfer(founders_address, FOUNDERS);
    |    token.transfer(advisors_address, ADVISORS);
    |    token.transfer(team_address, TEAM);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(418)

[33mWarning[0m for UnhandledException in contract 'TaylorTokenTGE':
    |    require(total >= token.balanceOf(this));
    |    token.transfer(founders_address, FOUNDERS);
  > |    token.transfer(advisors_address, ADVISORS);
    |    token.transfer(team_address, TEAM);
    |    token.transfer(referral_address, REFERRAL_PROGRAMS);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(419)

[33mWarning[0m for UnhandledException in contract 'TaylorTokenTGE':
    |    token.transfer(founders_address, FOUNDERS);
    |    token.transfer(advisors_address, ADVISORS);
  > |    token.transfer(team_address, TEAM);
    |    token.transfer(referral_address, REFERRAL_PROGRAMS);
    |    token.transfer(presale_address, PRESALE);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(420)

[33mWarning[0m for UnhandledException in contract 'TaylorTokenTGE':
    |    token.transfer(advisors_address, ADVISORS);
    |    token.transfer(team_address, TEAM);
  > |    token.transfer(referral_address, REFERRAL_PROGRAMS);
    |    token.transfer(presale_address, PRESALE);
    |    token.transfer(publicsale_address, PUBLICSALE);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(421)

[33mWarning[0m for UnhandledException in contract 'TaylorTokenTGE':
    |    token.transfer(team_address, TEAM);
    |    token.transfer(referral_address, REFERRAL_PROGRAMS);
  > |    token.transfer(presale_address, PRESALE);
    |    token.transfer(publicsale_address, PUBLICSALE);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(422)

[33mWarning[0m for UnhandledException in contract 'TaylorTokenTGE':
    |    token.transfer(referral_address, REFERRAL_PROGRAMS);
    |    token.transfer(presale_address, PRESALE);
  > |    token.transfer(publicsale_address, PUBLICSALE);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(423)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaylorTokenTGE':
    |  function distribute() public onlyOwner {
    |    uint256 total = FOUNDERS.add(ADVISORS).add(TEAM).add(REFERRAL_PROGRAMS).add(PRESALE).add(PUBLICSALE);
  > |    require(total >= token.balanceOf(this));
    |    token.transfer(founders_address, FOUNDERS);
    |    token.transfer(advisors_address, ADVISORS);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaylorTokenTGE':
    |    uint256 total = FOUNDERS.add(ADVISORS).add(TEAM).add(REFERRAL_PROGRAMS).add(PRESALE).add(PUBLICSALE);
    |    require(total >= token.balanceOf(this));
  > |    token.transfer(founders_address, FOUNDERS);
    |    token.transfer(advisors_address, ADVISORS);
    |    token.transfer(team_address, TEAM);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(418)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaylorTokenTGE':
    |    require(total >= token.balanceOf(this));
    |    token.transfer(founders_address, FOUNDERS);
  > |    token.transfer(advisors_address, ADVISORS);
    |    token.transfer(team_address, TEAM);
    |    token.transfer(referral_address, REFERRAL_PROGRAMS);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(419)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaylorTokenTGE':
    |    token.transfer(founders_address, FOUNDERS);
    |    token.transfer(advisors_address, ADVISORS);
  > |    token.transfer(team_address, TEAM);
    |    token.transfer(referral_address, REFERRAL_PROGRAMS);
    |    token.transfer(presale_address, PRESALE);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(420)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaylorTokenTGE':
    |    token.transfer(advisors_address, ADVISORS);
    |    token.transfer(team_address, TEAM);
  > |    token.transfer(referral_address, REFERRAL_PROGRAMS);
    |    token.transfer(presale_address, PRESALE);
    |    token.transfer(publicsale_address, PUBLICSALE);
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(421)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaylorTokenTGE':
    |    token.transfer(team_address, TEAM);
    |    token.transfer(referral_address, REFERRAL_PROGRAMS);
  > |    token.transfer(presale_address, PRESALE);
    |    token.transfer(publicsale_address, PUBLICSALE);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaylorTokenTGE':
    |    token.transfer(referral_address, REFERRAL_PROGRAMS);
    |    token.transfer(presale_address, PRESALE);
  > |    token.transfer(publicsale_address, PUBLICSALE);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(423)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorTokenTGE':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorTokenTGE':
    |  **/
    |  function setUp(address _token, address _founders, address _advisors, address _team, address _referral, address _presale, address _publicSale) public onlyOwner{
  > |    token = TaylorToken(_token);
    |    founders_address = _founders;
    |    advisors_address = _advisors;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorTokenTGE':
    |  function setUp(address _token, address _founders, address _advisors, address _team, address _referral, address _presale, address _publicSale) public onlyOwner{
    |    token = TaylorToken(_token);
  > |    founders_address = _founders;
    |    advisors_address = _advisors;
    |    team_address = _team;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorTokenTGE':
    |    token = TaylorToken(_token);
    |    founders_address = _founders;
  > |    advisors_address = _advisors;
    |    team_address = _team;
    |    referral_address = _referral;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorTokenTGE':
    |    founders_address = _founders;
    |    advisors_address = _advisors;
  > |    team_address = _team;
    |    referral_address = _referral;
    |    presale_address = _presale;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorTokenTGE':
    |    advisors_address = _advisors;
    |    team_address = _team;
  > |    referral_address = _referral;
    |    presale_address = _presale;
    |    publicsale_address = _publicSale;
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorTokenTGE':
    |    team_address = _team;
    |    referral_address = _referral;
  > |    presale_address = _presale;
    |    publicsale_address = _publicSale;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'TaylorTokenTGE':
    |    referral_address = _referral;
    |    presale_address = _presale;
  > |    publicsale_address = _publicSale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe58632cb2dd1940a095a5e10ea88d7e427bb9f6b.sol(409)


