Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:CanReclaimToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:HasNoContracts
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:HasNoTokens
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:MatreXaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(199)

[33mWarning[0m for DAOConstantGas in contract 'BurnableToken':
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  > |        _from.transfer(reward);
    |        Transfer(_from, 0x0, _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(391)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |//======  MatreXa =====
    |
  > |contract BurnableToken is StandardToken {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(350)

[33mWarning[0m for TODAmount in contract 'BurnableToken':
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  > |        _from.transfer(reward);
    |        Transfer(_from, 0x0, _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(391)

[33mWarning[0m for TODReceiver in contract 'BurnableToken':
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  > |        _from.transfer(reward);
    |        Transfer(_from, 0x0, _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(391)

[33mWarning[0m for UnhandledException in contract 'BurnableToken':
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  > |        _from.transfer(reward);
    |        Transfer(_from, 0x0, _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        assert(this.balance - reward > 0);
    |
  > |        balances[_from] = balances[_from].sub(_amount);
    |        totalSupply = totalSupply.sub(_amount);
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |            var _allowance = allowed[_from][msg.sender];
    |            //require (_value <= _allowance); //Check is not needed because _allowance.sub(_value) will already throw if this condition is not met
  > |            allowed[_from][msg.sender] = _allowance.sub(_value);
    |            return burn(_from, _value);
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(422)

[33mWarning[0m for LockedEther in contract 'CanReclaimToken':
    | * This will prevent any accidental loss of tokens.
    | */
  > |contract CanReclaimToken is Ownable {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(146)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(68)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(68)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(117)

[33mWarning[0m for LockedEther in contract 'HasNoContracts':
    | * of this contract to reclaim ownership of the contracts.
    | */
  > |contract HasNoContracts is Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'HasNoContracts':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'HasNoContracts':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'HasNoContracts':
    |   * @param contractAddr The address of the Ownable to be reclaimed.
    |   */
  > |  function reclaimContract(address contractAddr) external onlyOwner {
    |    Ownable contractInst = Ownable(contractAddr);
    |    contractInst.transferOwnership(owner);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(134)

[33mWarning[0m for UnhandledException in contract 'HasNoContracts':
    |  function reclaimContract(address contractAddr) external onlyOwner {
    |    Ownable contractInst = Ownable(contractAddr);
  > |    contractInst.transferOwnership(owner);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoContracts':
    |  function reclaimContract(address contractAddr) external onlyOwner {
    |    Ownable contractInst = Ownable(contractAddr);
  > |    contractInst.transferOwnership(owner);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoContracts':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(117)

[33mWarning[0m for LockedEther in contract 'HasNoTokens':
    | * owner to reclaim the tokens.
    | */
  > |contract HasNoTokens is CanReclaimToken {
    |
    | /**
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(167)

[33mWarning[0m for UnhandledException in contract 'HasNoTokens':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(68)

[33mWarning[0m for UnhandledException in contract 'HasNoTokens':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoTokens':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(68)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoTokens':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoTokens':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(117)

[33mWarning[0m for DAOConstantGas in contract 'MatreXaToken':
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  > |        _from.transfer(reward);
    |        Transfer(_from, 0x0, _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(391)

[33mWarning[0m for LockedEther in contract 'MatreXaToken':
    | * @title MatreXa Token
    | */
  > |contract MatreXaToken is BurnableToken, MintableToken, HasNoContracts, HasNoTokens { //MintableToken is StandardToken, Ownable
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(434)

[33mWarning[0m for TODAmount in contract 'MatreXaToken':
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  > |        _from.transfer(reward);
    |        Transfer(_from, 0x0, _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(391)

[33mWarning[0m for TODReceiver in contract 'MatreXaToken':
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  > |        _from.transfer(reward);
    |        Transfer(_from, 0x0, _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(391)

[33mWarning[0m for UnhandledException in contract 'MatreXaToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(68)

[33mWarning[0m for UnhandledException in contract 'MatreXaToken':
    |  function reclaimContract(address contractAddr) external onlyOwner {
    |    Ownable contractInst = Ownable(contractAddr);
  > |    contractInst.transferOwnership(owner);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(136)

[33mWarning[0m for UnhandledException in contract 'MatreXaToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(154)

[33mWarning[0m for UnhandledException in contract 'MatreXaToken':
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  > |        _from.transfer(reward);
    |        Transfer(_from, 0x0, _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MatreXaToken':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    assert(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(68)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MatreXaToken':
    |  function reclaimContract(address contractAddr) external onlyOwner {
    |    Ownable contractInst = Ownable(contractAddr);
  > |    contractInst.transferOwnership(owner);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MatreXaToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MatreXaToken':
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  > |        _from.transfer(reward);
    |        Transfer(_from, 0x0, _amount);
    |        Burn(_from, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |        assert(this.balance - reward > 0);
    |
  > |        balances[_from] = balances[_from].sub(_amount);
    |        totalSupply = totalSupply.sub(_amount);
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |
    |        balances[_from] = balances[_from].sub(_amount);
  > |        totalSupply = totalSupply.sub(_amount);
    |        //assert(totalSupply >= 0); //Check is not needed because totalSupply.sub(value) will already throw if this condition is not met
    |        
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |            var _allowance = allowed[_from][msg.sender];
    |            //require (_value <= _allowance); //Check is not needed because _allowance.sub(_value) will already throw if this condition is not met
  > |            allowed[_from][msg.sender] = _allowance.sub(_value);
    |            return burn(_from, _value);
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |    */
    |    function setFounder(address _founder) onlyOwner {
  > |        founder = _founder;
    |    }    
    |    
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'MatreXaToken':
    |    function setAllowTransferTimestamp(uint256 _allowTransferTimestamp) onlyOwner {
    |        require(allowTransferTimestamp == 0);
  > |        allowTransferTimestamp = _allowTransferTimestamp;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(470)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(342)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));      
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(117)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(66)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(10)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue) 
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf95730d1901c9ee02994091e28839eb1a5d3b3e2.sol(296)


