Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:STAB
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(199)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    
  > |    mintNums_ = mintNums_.add(_amount);
    |    require(mintNums_<=totalSupply_);
    |    balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    mintNums_ = mintNums_.add(_amount);
    |    require(mintNums_<=totalSupply_);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(354)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(40)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(366)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(370)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(392)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(401)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(401)

[33mWarning[0m for LockedEther in contract 'STAB':
    | * Based on references from OpenZeppelin: https://github.com/OpenZeppelin/zeppelin-solidity
    | */
  > |contract STAB is MintableToken, PausableToken {
    |    string public constant version = "1.0";
    |    string public constant name = "STACX Crypto Platform";
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    
  > |    mintNums_ = mintNums_.add(_amount);
    |    require(mintNums_<=totalSupply_);
    |    balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    mintNums_ = mintNums_.add(_amount);
    |    require(mintNums_<=totalSupply_);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |        require(newMaster != address(0));
    |        emit MintMasterTransferred(mintMaster, newMaster);
  > |        mintMaster = newMaster;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |    function mint(address _to, uint256 _amount) onlyMintMasterOrOwner canMint public returns (bool) {
    |        address oldOwner = owner;
  > |        owner = msg.sender;
    |        bool result = super.mint(_to, _amount);
    |        owner = oldOwner;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'STAB':
    |        owner = msg.sender;
    |        bool result = super.mint(_to, _amount);
  > |        owner = oldOwner;
    |        return result;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(485)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(50)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   function addCrowdSale(uint256 _value) public {
    |       
  > |       crowdsaleDist_ =  crowdsaleDist_.add(_value);
    |       
    |   }
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   if(balances[_to]>=_value)
    |   {
  > |     balances[_to] = balances[_to].sub(_value);
    |   }
    |    //emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x79fde1bd9e01bfdf7ab963cd2f9bc6d3e1da3e98.sol(305)


