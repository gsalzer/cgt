Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:FUNBOXtoken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:FreezableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(131)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(167)

[33mWarning[0m for LockedEther in contract 'FUNBOXtoken':
    | * @title FUNBOXtoken
    | */
  > |contract FUNBOXtoken is FreezableToken, PausableToken, BurnableToken {
    |    string public constant name = "FUNBOX";
    |    string public constant symbol = "FUN";
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(414)

[31mViolation[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |        require(distributionContractAdded == false);
    |
  > |        distributionContract = _contract;
    |        distributionContractAdded = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |
    |        distributionContract = _contract;
  > |        distributionContractAdded = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |       
    |        
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |        
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |
    |    function freezeAccount(address target) public onlyOwner {
  > |        frozenAccounts[target] = true;
    |        FrozenFunds(target, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'FUNBOXtoken':
    |
    |    function unFreezeAccount(address target) public onlyOwner {
  > |        frozenAccounts[target] = false;
    |        FrozenFunds(target, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(384)

[33mWarning[0m for LockedEther in contract 'FreezableToken':
    | * @title FreezableToken
    | */
  > |contract FreezableToken is StandardToken, Ownable {
    |    mapping (address => bool) public frozenAccounts;
    |    event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |    function freezeAccount(address target) public onlyOwner {
  > |        frozenAccounts[target] = true;
    |        FrozenFunds(target, true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |    function unFreezeAccount(address target) public onlyOwner {
  > |        frozenAccounts[target] = false;
    |        FrozenFunds(target, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(384)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(84)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    address public distributionContract;
    |
    |    bool distributionContractAdded;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(291)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |    bool distributionContractAdded;
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev Add distribution smart contract address
    |    */
  > |    function addDistributionContract(address _contract) external {
    |        require(_contract != address(0));
    |        require(distributionContractAdded == false);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(328)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(336)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(distributionContractAdded == false);
    |
  > |        distributionContract = _contract;
    |        distributionContractAdded = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |        distributionContract = _contract;
  > |        distributionContractAdded = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(337)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |    function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(distributionContractAdded == false);
    |
  > |        distributionContract = _contract;
    |        distributionContractAdded = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |        distributionContract = _contract;
  > |        distributionContractAdded = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |       
    |        
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(337)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc1c873a29b682c9741f0a21abc02acebdd8d5cfe.sol(274)


