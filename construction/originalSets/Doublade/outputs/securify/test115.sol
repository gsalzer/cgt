Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:Consts
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:ERC223Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:ERC223Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:ERC223ReceiverWithoutTokenFallback
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:ERC223Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:FailingERC223Receiver
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:FreezableMintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:FreezableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:MainToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol:SuccessfulERC223Receiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(72)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(504)

[33mWarning[0m for LockedEther in contract 'Consts':
    |}
    |
  > |contract Consts {
    |    uint constant TOKEN_DECIMALS = 18;
    |    uint8 constant TOKEN_DECIMALS_UINT8 = 18;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(583)

[33mWarning[0m for LockedEther in contract 'ERC223ReceiverWithoutTokenFallback':
    |}
    |
  > |contract ERC223ReceiverWithoutTokenFallback {
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(482)

[33mWarning[0m for LockedEther in contract 'ERC223Token':
    | * @title Reference implementation of the ERC223 standard token.
    | */
  > |contract ERC223Token is ERC223Basic, BasicToken, FailingERC223Receiver {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(602)

[33mWarning[0m for UnhandledException in contract 'ERC223Token':
    |        if(codeLength > 0) {
    |            ERC223Receiver receiver = ERC223Receiver(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(630)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC223Token':
    |        if(codeLength > 0) {
    |            ERC223Receiver receiver = ERC223Receiver(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(630)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        if(codeLength > 0) {
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(626)

[33mWarning[0m for LockedEther in contract 'FailingERC223Receiver':
    |}
    |
  > |contract FailingERC223Receiver is ERC223Receiver {
    |    function tokenFallback(address, uint, bytes) public {
    |        revert();
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(476)

[33mWarning[0m for LockedEther in contract 'FreezableMintableToken':
    |
    |
  > |contract FreezableMintableToken is FreezableToken, MintableToken {
    |    /**
    |     * @dev Mint the specified amount of token to the specified address and freeze it until the specified date.
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        require(_amount <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        uint amount = freezings[currentKey];
  > |        delete freezings[currentKey];
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        delete freezings[currentKey];
    |
  > |        balances[msg.sender] = balances[msg.sender].add(amount);
    |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  > |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
    |        if (next == 0) {
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        if (next == 0) {
  > |            delete chains[headKey];
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        }
    |        else {
  > |            chains[headKey] = next;
    |            delete chains[currentKey];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        else {
    |            chains[headKey] = next;
  > |            delete chains[currentKey];
    |        }
    |        Released(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        if (next == 0) {
  > |            chains[parentKey] = _until;
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        if (next != 0) {
  > |            chains[key] = next;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        }
    |
  > |        chains[parentKey] = _until;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |     */
    |    function mintAndFreeze(address _to, uint _amount, uint64 _until) onlyOwner canMint public returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(572)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableMintableToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(573)

[33mWarning[0m for LockedEther in contract 'FreezableToken':
    |
    |
  > |contract FreezableToken is StandardToken {
    |    // freezing chains
    |    mapping (bytes32 => uint64) internal chains;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        require(_amount <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        uint amount = freezings[currentKey];
  > |        delete freezings[currentKey];
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        delete freezings[currentKey];
    |
  > |        balances[msg.sender] = balances[msg.sender].add(amount);
    |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  > |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
    |        if (next == 0) {
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        if (next == 0) {
  > |            delete chains[headKey];
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        }
    |        else {
  > |            chains[headKey] = next;
    |            delete chains[currentKey];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        else {
    |            chains[headKey] = next;
  > |            delete chains[currentKey];
    |        }
    |        Released(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        if (next == 0) {
  > |            chains[parentKey] = _until;
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |
    |        if (next != 0) {
  > |            chains[key] = next;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'FreezableToken':
    |        }
    |
  > |        chains[parentKey] = _until;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(443)

[33mWarning[0m for LockedEther in contract 'MainToken':
    |
    |
  > |contract MainToken is Consts, FreezableMintableToken, BurnableToken, Pausable
    |    
    |{
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(652)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        require(_amount <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        uint amount = freezings[currentKey];
  > |        delete freezings[currentKey];
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        delete freezings[currentKey];
    |
  > |        balances[msg.sender] = balances[msg.sender].add(amount);
    |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        balances[msg.sender] = balances[msg.sender].add(amount);
  > |        freezingBalance[msg.sender] = freezingBalance[msg.sender].sub(amount);
    |
    |        if (next == 0) {
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        if (next == 0) {
  > |            delete chains[headKey];
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        }
    |        else {
  > |            chains[headKey] = next;
    |            delete chains[currentKey];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        else {
    |            chains[headKey] = next;
  > |            delete chains[currentKey];
    |        }
    |        Released(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        if (next == 0) {
  > |            chains[parentKey] = _until;
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        if (next != 0) {
  > |            chains[key] = next;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        }
    |
  > |        chains[parentKey] = _until;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(505)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(543)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(551)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |     */
    |    function mintAndFreeze(address _to, uint _amount, uint64 _until) onlyOwner canMint public returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |
    |        bytes32 currentKey = toKey(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |
    |        bytes32 currentKey = toKey(_to, _until);
  > |        freezings[currentKey] = freezings[currentKey].add(_amount);
    |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(572)

[33mWarning[0m for UnrestrictedWrite in contract 'MainToken':
    |        bytes32 currentKey = toKey(_to, _until);
    |        freezings[currentKey] = freezings[currentKey].add(_amount);
  > |        freezingBalance[_to] = freezingBalance[_to].add(_amount);
    |
    |        freeze(_to, _until);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(573)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(269)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(224)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(516)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(520)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(542)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(550)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(543)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(551)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(22)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(177)

[33mWarning[0m for LockedEther in contract 'SuccessfulERC223Receiver':
    |
    |
  > |contract SuccessfulERC223Receiver is ERC223Receiver {
    |    event Invoked(address from, uint value, bytes data);
    |
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(468)

[31mViolation[0m for MissingInputValidation in contract 'SuccessfulERC223Receiver':
    |    event Invoked(address from, uint value, bytes data);
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public {
    |        Invoked(_from, _value, _data);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07862180fc7e445d8532ef39f00a3cfc0700eb96.sol(471)


