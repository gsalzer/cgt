Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:ContractReceiverInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:DetailedERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:FriendsFingersToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:SafeContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(159)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(196)

[33mWarning[0m for LockedEther in contract 'FriendsFingersToken':
    | * @title FriendsFingersToken
    | */
  > |contract FriendsFingersToken is DetailedERC20, MintableToken, BurnableToken, SafeContract {
    |
    |    address public builder;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(376)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersToken':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(77)

[33mWarning[0m for UnhandledException in contract 'FriendsFingersToken':
    |        require(approve(_spender, _amount));
    |
  > |        ContractReceiverInterface(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(407)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersToken':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FriendsFingersToken':
    |        require(approve(_spender, _amount));
    |
  > |        ContractReceiverInterface(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'FriendsFingersToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(365)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(365)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(50)

[33mWarning[0m for LockedEther in contract 'SafeContract':
    |// File: contracts/utility/SafeContract.sol
    |
  > |contract SafeContract is Ownable {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'SafeContract':
    |     * @notice Owner can transfer out any accidentally sent ERC20 tokens
    |     */
  > |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
    |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'SafeContract':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeContract':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(47)

[33mWarning[0m for UnhandledException in contract 'SafeContract':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SafeContract':
    |     */
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _tokens, address _beneficiary) public onlyOwner returns (bool success) {
  > |        return ERC20Basic(_tokenAddress).transfer(_beneficiary, _tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeContract':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(50)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(87)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3e47d6d9c8c458302ee5aec3f0ae6df9b3ad8f2f.sol(318)


