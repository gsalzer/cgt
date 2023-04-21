Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:Consts
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:FreezableMintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:FreezableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:MainToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(97)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(566)

[33mWarning[0m for LockedEther in contract 'Consts':
    |
    |
  > |contract Consts {
    |    uint public constant TOKEN_DECIMALS = 18;
    |    uint8 public constant TOKEN_DECIMALS_UINT8 = 18;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(647)

[33mWarning[0m for MissingInputValidation in contract 'Consts':
    |
    |contract Consts {
  > |    uint public constant TOKEN_DECIMALS = 18;
    |    uint8 public constant TOKEN_DECIMALS_UINT8 = 18;
    |    uint public constant TOKEN_DECIMAL_MULTIPLIER = 10 ** TOKEN_DECIMALS;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(648)

[33mWarning[0m for MissingInputValidation in contract 'Consts':
    |contract Consts {
    |    uint public constant TOKEN_DECIMALS = 18;
  > |    uint8 public constant TOKEN_DECIMALS_UINT8 = 18;
    |    uint public constant TOKEN_DECIMAL_MULTIPLIER = 10 ** TOKEN_DECIMALS;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(649)

[33mWarning[0m for MissingInputValidation in contract 'Consts':
    |    uint public constant TOKEN_DECIMALS = 18;
    |    uint8 public constant TOKEN_DECIMALS_UINT8 = 18;
  > |    uint public constant TOKEN_DECIMAL_MULTIPLIER = 10 ** TOKEN_DECIMALS;
    |
    |    string public constant TOKEN_NAME = "CarnaLife Token";
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(650)

[33mWarning[0m for MissingInputValidation in contract 'Consts':
    |    uint public constant TOKEN_DECIMAL_MULTIPLIER = 10 ** TOKEN_DECIMALS;
    |
  > |    string public constant TOKEN_NAME = "CarnaLife Token";
    |    string public constant TOKEN_SYMBOL = "CLC";
    |    bool public constant PAUSED = false;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(652)

[33mWarning[0m for MissingInputValidation in contract 'Consts':
    |
    |    string public constant TOKEN_NAME = "CarnaLife Token";
  > |    string public constant TOKEN_SYMBOL = "CLC";
    |    bool public constant PAUSED = false;
    |    address public constant TARGET_USER = 0x69D8fD25c05d07D3Fc5280040ba0BDe4d5C4d399;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(653)

[33mWarning[0m for MissingInputValidation in contract 'Consts':
    |    string public constant TOKEN_NAME = "CarnaLife Token";
    |    string public constant TOKEN_SYMBOL = "CLC";
  > |    bool public constant PAUSED = false;
    |    address public constant TARGET_USER = 0x69D8fD25c05d07D3Fc5280040ba0BDe4d5C4d399;
    |    
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(654)

[33mWarning[0m for MissingInputValidation in contract 'Consts':
    |    string public constant TOKEN_SYMBOL = "CLC";
    |    bool public constant PAUSED = false;
  > |    address public constant TARGET_USER = 0x69D8fD25c05d07D3Fc5280040ba0BDe4d5C4d399;
    |    
    |    bool public constant CONTINUE_MINTING = true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(655)

[33mWarning[0m for MissingInputValidation in contract 'Consts':
    |    address public constant TARGET_USER = 0x69D8fD25c05d07D3Fc5280040ba0BDe4d5C4d399;
    |    
  > |    bool public constant CONTINUE_MINTING = true;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(657)

[33mWarning[0m for LockedEther in contract 'FreezableMintableToken':
    |
    |
  > |contract FreezableMintableToken is FreezableToken, MintableToken {
    |    /**
    |     * @dev Mint the specified amount of token to the specified address and freeze it until the specified date.
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(620)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        require(_amount <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        uint amount = freezings[currentKey];
  > |        delete freezings[currentKey];
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        delete freezings[currentKey];
    |
  > |        balances[msg.sender] = balances[msg.sender].add(amount);
    |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  > |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
    |        if (next == 0) {
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        if (next == 0) {
  > |            delete chains[headKey];
    |        } else {
    |            chains[headKey] = next;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |            delete chains[headKey];
    |        } else {
  > |            chains[headKey] = next;
    |            delete chains[currentKey];
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        } else {
    |            chains[headKey] = next;
  > |            delete chains[currentKey];
    |        }
    |        emit Released(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        if (next == 0) {
  > |            chains[parentKey] = _until;
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        if (next != 0) {
  > |            chains[key] = next;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        }
    |
  > |        chains[parentKey] = _until;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |     */
    |    function mintAndFreeze(address _to, uint _amount, uint64 _until) public onlyOwner canMint returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(631)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(634)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(635)

[33mWarning[0m for LockedEther in contract 'FreezableToken':
    |
    |
  > |contract FreezableToken is StandardToken {
    |    // freezing chains
    |    mapping (bytes32 => uint64) internal chains;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        require(_amount <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        uint amount = freezings[currentKey];
  > |        delete freezings[currentKey];
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        delete freezings[currentKey];
    |
  > |        balances[msg.sender] = balances[msg.sender].add(amount);
    |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  > |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
    |        if (next == 0) {
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        if (next == 0) {
  > |            delete chains[headKey];
    |        } else {
    |            chains[headKey] = next;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |            delete chains[headKey];
    |        } else {
  > |            chains[headKey] = next;
    |            delete chains[currentKey];
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        } else {
    |            chains[headKey] = next;
  > |            delete chains[currentKey];
    |        }
    |        emit Released(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        if (next == 0) {
  > |            chains[parentKey] = _until;
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        if (next != 0) {
  > |            chains[key] = next;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        }
    |
  > |        chains[parentKey] = _until;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(540)

[33mWarning[0m for LockedEther in contract 'MainToken':
    |
    |
  > |contract MainToken is Consts, FreezableMintableToken, BurnableToken, Pausable
    |    
    |{
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(663)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        require(_amount <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        uint amount = freezings[currentKey];
  > |        delete freezings[currentKey];
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        delete freezings[currentKey];
    |
  > |        balances[msg.sender] = balances[msg.sender].add(amount);
    |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  > |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
    |        if (next == 0) {
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        if (next == 0) {
  > |            delete chains[headKey];
    |        } else {
    |            chains[headKey] = next;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |            delete chains[headKey];
    |        } else {
  > |            chains[headKey] = next;
    |            delete chains[currentKey];
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        } else {
    |            chains[headKey] = next;
  > |            delete chains[currentKey];
    |        }
    |        emit Released(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        if (next == 0) {
  > |            chains[parentKey] = _until;
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        if (next != 0) {
  > |            chains[key] = next;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        }
    |
  > |        chains[parentKey] = _until;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(566)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(567)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(606)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(614)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |     */
    |    function mintAndFreeze(address _to, uint _amount, uint64 _until) public onlyOwner canMint returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(631)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(634)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(635)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(369)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(264)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(303)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(314)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(579)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(303)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(311)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(583)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(605)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(613)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(606)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(614)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(22)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc014502643ca2ef9ff00443a4a1e5b178184a95.sol(249)


