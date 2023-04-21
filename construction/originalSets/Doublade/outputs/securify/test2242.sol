Processing contract: /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol:EtheeraToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EtheeraToken':
    |     event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
    |}
  > |contract EtheeraToken is ERC20Interface,Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(tokenBalances[msg.sender]>=_value);
  > |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    require(tokenBalances[msg.sender]>=_value);
    |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
  > |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    tokenBalances[_from] = tokenBalances[_from].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |
    |    tokenBalances[_from] = tokenBalances[_from].sub(_value);
  > |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    tokenBalances[_from] = tokenBalances[_from].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    function mint(address wallet, address buyer, uint256 tokenAmount) public onlyOwner {
    |      require(tokenBalances[wallet] >= tokenAmount);               // checks if it has enough to sell
  > |      tokenBalances[buyer] = tokenBalances[buyer].add(tokenAmount);                  // adds the amount to buyer's balance
    |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |      require(tokenBalances[wallet] >= tokenAmount);               // checks if it has enough to sell
    |      tokenBalances[buyer] = tokenBalances[buyer].add(tokenAmount);                  // adds the amount to buyer's balance
  > |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
    |      totalSupply = totalSupply.sub(tokenAmount); 
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
  > |      totalSupply = totalSupply.sub(tokenAmount); 
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheeraToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(71)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | 
    | 
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x9195e00402abe385f2d00a32af40b271f2e87925.sol(13)


