Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:Consumer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:HookableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:ICOToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(183)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(316)

[33mWarning[0m for LockedEther in contract 'Consumer':
    |
    |
  > |contract Consumer is Ownable {
    |
    |    address public hookableTokenAddress;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(394)

[31mViolation[0m for MissingInputValidation in contract 'Consumer':
    |    }
    |
  > |    function setHookableTokenAddress(address _hookableTokenAddress) onlyOwner {
    |        hookableTokenAddress = _hookableTokenAddress;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(403)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |contract Consumer is Ownable {
    |
  > |    address public hookableTokenAddress;
    |
    |    modifier onlyHookableTokenAddress {
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(396)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |    }
    |
  > |    function onMint(address _sender, address _to, uint256 _amount) onlyHookableTokenAddress {
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(407)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |    }
    |
  > |    function onBurn(address _sender, uint256 _value) onlyHookableTokenAddress {
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(410)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |    }
    |
  > |    function onTransfer(address _sender, address _to, uint256 _value) onlyHookableTokenAddress {
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(413)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |    }
    |
  > |    function onTransferFrom(address _sender, address _from, address _to, uint256 _value) onlyHookableTokenAddress {
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(416)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |    }
    |
  > |    function onApprove(address _sender, address _spender, uint256 _value) onlyHookableTokenAddress {
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(419)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |    }
    |
  > |    function onIncreaseApproval(address _sender, address _spender, uint _addedValue) onlyHookableTokenAddress {
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(422)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |    }
    |
  > |    function onDecreaseApproval(address _sender, address _spender, uint _subtractedValue) onlyHookableTokenAddress {
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(425)

[33mWarning[0m for MissingInputValidation in contract 'Consumer':
    |    }
    |
  > |    function onTaxTransfer(address _from, uint _tokensAmount) onlyHookableTokenAddress {
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'Consumer':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Consumer':
    |
    |    function setHookableTokenAddress(address _hookableTokenAddress) onlyOwner {
  > |        hookableTokenAddress = _hookableTokenAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(404)

[33mWarning[0m for LockedEther in contract 'HookableToken':
    |}
    |
  > |contract HookableToken is MintableToken, PausableToken, BurnableToken {
    |
    |    Consumer public consumerAddress;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(432)

[33mWarning[0m for UnhandledException in contract 'HookableToken':
    |
    |    function mint(address _to, uint256 _amount) public returns (bool){
  > |        consumerAddress.onMint(msg.sender,_to, _amount);
    |        return super.mint(_to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(451)

[33mWarning[0m for UnhandledException in contract 'HookableToken':
    |
    |    function burn(uint256 _value) public {
  > |        consumerAddress.onBurn(msg.sender, _value);
    |        return super.burn(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(456)

[33mWarning[0m for UnhandledException in contract 'HookableToken':
    |
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        consumerAddress.onTransfer(msg.sender, _to, _value);
    |        return super.transfer(_to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(461)

[33mWarning[0m for UnhandledException in contract 'HookableToken':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
  > |        consumerAddress.onTransferFrom(msg.sender, _from, _to, _value);
    |        return super.transferFrom(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(466)

[33mWarning[0m for UnhandledException in contract 'HookableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        consumerAddress.onApprove(msg.sender, _spender, _value);
    |        return super.approve(_spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(471)

[33mWarning[0m for UnhandledException in contract 'HookableToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success) {
  > |        consumerAddress.onIncreaseApproval(msg.sender, _spender, _addedValue);
    |        return super.increaseApproval(_spender, _addedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(476)

[33mWarning[0m for UnhandledException in contract 'HookableToken':
    |
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool success) {
  > |        consumerAddress.onDecreaseApproval(msg.sender, _spender, _subtractedValue);
    |        return super.decreaseApproval(_spender, _subtractedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HookableToken':
    |
    |    function mint(address _to, uint256 _amount) public returns (bool){
  > |        consumerAddress.onMint(msg.sender,_to, _amount);
    |        return super.mint(_to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(451)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HookableToken':
    |
    |    function burn(uint256 _value) public {
  > |        consumerAddress.onBurn(msg.sender, _value);
    |        return super.burn(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HookableToken':
    |
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        consumerAddress.onTransfer(msg.sender, _to, _value);
    |        return super.transfer(_to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(461)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HookableToken':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
  > |        consumerAddress.onTransferFrom(msg.sender, _from, _to, _value);
    |        return super.transferFrom(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(466)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HookableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        consumerAddress.onApprove(msg.sender, _spender, _value);
    |        return super.approve(_spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(471)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HookableToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success) {
  > |        consumerAddress.onIncreaseApproval(msg.sender, _spender, _addedValue);
    |        return super.increaseApproval(_spender, _addedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(476)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HookableToken':
    |
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool success) {
  > |        consumerAddress.onDecreaseApproval(msg.sender, _spender, _subtractedValue);
    |        return super.decreaseApproval(_spender, _subtractedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'HookableToken':
    |    function setConsumerAddress(address _newConsumerAddress) public onlyOwner {
    |        require(_newConsumerAddress != address(0));
  > |        consumerAddress = Consumer(_newConsumerAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(447)

[33mWarning[0m for LockedEther in contract 'ICOToken':
    | * `StandardToken` functions.
    | */
  > |contract ICOToken is MintableToken, PausableToken, HookableToken {
    |
    |    string public constant name = "Artificial Intelligence Quotient";
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(494)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |
    |    function mint(address _to, uint256 _amount) public returns (bool){
  > |        consumerAddress.onMint(msg.sender,_to, _amount);
    |        return super.mint(_to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(451)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |
    |    function burn(uint256 _value) public {
  > |        consumerAddress.onBurn(msg.sender, _value);
    |        return super.burn(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(456)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        consumerAddress.onTransfer(msg.sender, _to, _value);
    |        return super.transfer(_to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(461)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
  > |        consumerAddress.onTransferFrom(msg.sender, _from, _to, _value);
    |        return super.transferFrom(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(466)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        consumerAddress.onApprove(msg.sender, _spender, _value);
    |        return super.approve(_spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(471)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success) {
  > |        consumerAddress.onIncreaseApproval(msg.sender, _spender, _addedValue);
    |        return super.increaseApproval(_spender, _addedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(476)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool success) {
  > |        consumerAddress.onDecreaseApproval(msg.sender, _spender, _subtractedValue);
    |        return super.decreaseApproval(_spender, _subtractedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(481)

[33mWarning[0m for UnhandledException in contract 'ICOToken':
    |        balances[_to] = balances[_to].add(_tokensAmount);
    |
  > |        consumerAddress.onTaxTransfer(_from, _tokensAmount);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(516)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOToken':
    |
    |    function mint(address _to, uint256 _amount) public returns (bool){
  > |        consumerAddress.onMint(msg.sender,_to, _amount);
    |        return super.mint(_to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(451)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOToken':
    |
    |    function burn(uint256 _value) public {
  > |        consumerAddress.onBurn(msg.sender, _value);
    |        return super.burn(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOToken':
    |
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        consumerAddress.onTransfer(msg.sender, _to, _value);
    |        return super.transfer(_to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(461)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOToken':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
  > |        consumerAddress.onTransferFrom(msg.sender, _from, _to, _value);
    |        return super.transferFrom(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(466)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        consumerAddress.onApprove(msg.sender, _spender, _value);
    |        return super.approve(_spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(471)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success) {
  > |        consumerAddress.onIncreaseApproval(msg.sender, _spender, _addedValue);
    |        return super.increaseApproval(_spender, _addedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(476)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOToken':
    |
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool success) {
  > |        consumerAddress.onDecreaseApproval(msg.sender, _spender, _subtractedValue);
    |        return super.decreaseApproval(_spender, _subtractedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOToken':
    |        balances[_to] = balances[_to].add(_tokensAmount);
    |
  > |        consumerAddress.onTaxTransfer(_from, _tokensAmount);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |        require(_to != address(0));
    |
  > |        balances[_from] = balances[_from].sub(_tokensAmount);
    |        balances[_to] = balances[_to].add(_tokensAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |
    |        balances[_from] = balances[_from].sub(_tokensAmount);
  > |        balances[_to] = balances[_to].add(_tokensAmount);
    |
    |        consumerAddress.onTaxTransfer(_from, _tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(514)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOToken':
    |    function setConsumerAddress(address _newConsumerAddress) public onlyOwner {
    |        require(_newConsumerAddress != address(0));
  > |        consumerAddress = Consumer(_newConsumerAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(447)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(387)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(84)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(128)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(128)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7bf0e89efde791ad80e3d23c0403b7d68272e63b.sol(287)


