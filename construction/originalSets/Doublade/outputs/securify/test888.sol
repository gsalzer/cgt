Processing contract: /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol:ElepigToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(69)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_who] = balances[_who].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(209)

[33mWarning[0m for LockedEther in contract 'ElepigToken':
    |}
    |
  > |contract ElepigToken is MintableToken {
    |    string public name = "Elepig";
    |    string public symbol = "EPG";
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_who] = balances[_who].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |
    |        balances[_who] = balances[_who].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(_who, _value);
    |        emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |    */
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        mint(teamY4, teamTokensPerWallet); // These will be locked for transfer until 01/01/2022 00:00:00
    |
  > |        mintedWallets = true;
    |        emit WalletsMinted();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        require(_value <= 0);
    |
  > |        balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);          // Subtract from the sender
    |        freezeOf[msg.sender] = SafeMath.add(freezeOf[msg.sender], _value);          // Updates freezeOf
    |        emit Freeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |
    |        balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);          // Subtract from the sender
  > |        freezeOf[msg.sender] = SafeMath.add(freezeOf[msg.sender], _value);          // Updates freezeOf
    |        emit Freeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        require(_value <= 0);
    |        
  > |        freezeOf[msg.sender] = SafeMath.sub(freezeOf[msg.sender], _value);           // Subtract from the sender
    |        balances[msg.sender] = SafeMath.add(balances[msg.sender], _value);
    |        emit Unfreeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        
    |        freezeOf[msg.sender] = SafeMath.sub(freezeOf[msg.sender], _value);           // Subtract from the sender
  > |        balances[msg.sender] = SafeMath.add(balances[msg.sender], _value);
    |        emit Unfreeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |    */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        
    |            
  > |        affiliate = _affiliateAddress;
    |        contingency = _contingencyAddress;
    |        advisor = _advisorAddress;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |            
    |        affiliate = _affiliateAddress;
  > |        contingency = _contingencyAddress;
    |        advisor = _advisorAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        affiliate = _affiliateAddress;
    |        contingency = _contingencyAddress;
  > |        advisor = _advisorAddress;
    |
    |        // team vesting plan wallets each year 20%
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |
    |        // team vesting plan wallets each year 20%
  > |        team = _teamAddress;
    |        teamY1 = _teamY1Address;
    |        teamY2 = _teamY2Address;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        // team vesting plan wallets each year 20%
    |        team = _teamAddress;
  > |        teamY1 = _teamY1Address;
    |        teamY2 = _teamY2Address;
    |        teamY3 = _teamY3Address;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        team = _teamAddress;
    |        teamY1 = _teamY1Address;
  > |        teamY2 = _teamY2Address;
    |        teamY3 = _teamY3Address;
    |        teamY4 = _teamY4Address;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        teamY1 = _teamY1Address;
    |        teamY2 = _teamY2Address;
  > |        teamY3 = _teamY3Address;
    |        teamY4 = _teamY4Address;
    |        
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'ElepigToken':
    |        teamY2 = _teamY2Address;
    |        teamY3 = _teamY3Address;
  > |        teamY4 = _teamY4Address;
    |        
    |        // mint coins immediately that aren't for crowdsale
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(384)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable, BurnableToken {
    |    event Mint(address indexed to, uint256 amount);
    |    event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_who] = balances[_who].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_who] = balances[_who].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(_who, _value);
    |        emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    */
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(299)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(255)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x38d14eb90d0be64f9bd3b34a199b0d961599340e.sol(184)


