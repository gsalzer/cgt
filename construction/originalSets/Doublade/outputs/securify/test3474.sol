Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:CappedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:RichToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(145)

[33mWarning[0m for LockedEther in contract 'CappedToken':
    |
    |
  > |contract CappedToken is MintableToken {
    |
    |    uint256 public cap;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |          allowed[msg.sender][_spender] = 0;
    |        } else {
    |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |          allowed[msg.sender][_spender] = 0;
    |        } else {
  > |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    */
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(286)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    event Mint(address indexed to, uint256 amount);
    |    event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |          allowed[msg.sender][_spender] = 0;
    |        } else {
    |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |          allowed[msg.sender][_spender] = 0;
    |        } else {
  > |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    */
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(286)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @dev Allows the current owner to relinquish control of the contract.
    |    */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(49)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @dev Allows the current owner to relinquish control of the contract.
    |    */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(319)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(341)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @dev called by the owner to unpause, returns to normal state
    |    */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(350)

[31mViolation[0m for LockedEther in contract 'PausableToken':
    |}
    |
  > |contract PausableToken is StandardToken, Pausable {
    |    
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(355)

[31mViolation[0m for UnrestrictedWrite in contract 'PausableToken':
    |    function batchFreeze(address[] _addresses, bool _freeze) onlyOwner public {
    |        for (uint i = 0; i < _addresses.length; i++) {
  > |            frozenAccount[_addresses[i]] = _freeze;
    |            emit FrozenFunds(_addresses[i], _freeze);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |          allowed[msg.sender][_spender] = 0;
    |        } else {
    |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |          allowed[msg.sender][_spender] = 0;
    |        } else {
  > |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(_value > 0 && balances[msg.sender] >= amount);
    |    
  > |        balances[msg.sender] = balances[msg.sender].sub(amount);
    |        for (uint i = 0; i < cnt; i++) {
    |            require (_receivers[i] != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(balances[msg.sender] >= amount);
    |    
  > |        balances[msg.sender] = balances[msg.sender].sub(amount);
    |        for (uint j = 0; j < cnt; j++) {
    |            require (_receivers[j] != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(350)

[31mViolation[0m for LockedEther in contract 'RichToken':
    |}
    |
  > |contract RichToken is CappedToken, PausableToken {
    |    string public constant name = "Rich";
    |    string public constant symbol = "RICH";
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(446)

[31mViolation[0m for UnrestrictedWrite in contract 'RichToken':
    |    function batchFreeze(address[] _addresses, bool _freeze) onlyOwner public {
    |        for (uint i = 0; i < _addresses.length; i++) {
  > |            frozenAccount[_addresses[i]] = _freeze;
    |            emit FrozenFunds(_addresses[i], _freeze);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |          allowed[msg.sender][_spender] = 0;
    |        } else {
    |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |          allowed[msg.sender][_spender] = 0;
    |        } else {
  > |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |    */
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |        require(_value > 0 && balances[msg.sender] >= amount);
    |    
  > |        balances[msg.sender] = balances[msg.sender].sub(amount);
    |        for (uint i = 0; i < cnt; i++) {
    |            require (_receivers[i] != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |        for (uint i = 0; i < cnt; i++) {
    |            require (_receivers[i] != 0x0);
  > |            balances[_receivers[i]] = balances[_receivers[i]].add(_value);
    |            emit Transfer(msg.sender, _receivers[i], _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |        require(balances[msg.sender] >= amount);
    |    
  > |        balances[msg.sender] = balances[msg.sender].sub(amount);
    |        for (uint j = 0; j < cnt; j++) {
    |            require (_receivers[j] != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |        for (uint j = 0; j < cnt; j++) {
    |            require (_receivers[j] != 0x0);
  > |            balances[_receivers[j]] = balances[_receivers[j]].add(_values[j]);
    |            emit Transfer(msg.sender, _receivers[j], _values[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(427)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |    */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |    */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'RichToken':
    |    */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(350)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(57)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |          allowed[msg.sender][_spender] = 0;
    |        } else {
    |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |          allowed[msg.sender][_spender] = 0;
    |        } else {
  > |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe3b192bb07cf2577277ca2161ad8890102765d8a.sol(248)


