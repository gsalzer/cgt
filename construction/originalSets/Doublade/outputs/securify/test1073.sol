Processing contract: /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol:GITToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(76)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |  event Burn(address indexed burner, uint256 value);
    |
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(111)

[33mWarning[0m for LockedEther in contract 'GITToken':
    |}
    |
  > |contract GITToken is StandardToken, Ownable {
    |    string public name = "Golden Island Token";
    |    string public symbol = "GIT";
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
    |    emit Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |   /** require((_value == 0) || (allowed[msg.sender][_spender] == 0)); **/
  > |    allowed[msg.sender][_spender] = _value;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |        require(isNotInit);
    |        totalSupply_ = INITIAL_SUPPLY;
  > |        balances[msg.sender] = totalSupply_;
    |        emit Transfer(address(this), msg.sender, INITIAL_SUPPLY);
    |        isNotInit = false;
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |    function airdrop(address[] addressList, uint256[] amountList) external onlyOwner {
    |        for (uint i = 0; i < addressList.length; i++) {
  > |            balances[addressList[i]] = balances[addressList[i]].add(amountList[i]);
    |            totalSupply_ = totalSupply_.add(amountList[i]);
    |            emit Transfer(address(this), addressList[i], amountList[i]);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |        for (uint i = 0; i < addressList.length; i++) {
    |            balances[addressList[i]] = balances[addressList[i]].add(amountList[i]);
  > |            totalSupply_ = totalSupply_.add(amountList[i]);
    |            emit Transfer(address(this), addressList[i], amountList[i]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |    function deleteTokens(address[] addressList, uint256[] amountList) external onlyOwner {
    |        for (uint i = 0; i < addressList.length; i++) {
  > |            balances[addressList[i]] = balances[addressList[i]].sub(amountList[i]);
    |            totalSupply_ = totalSupply_.sub(amountList[i]);
    |            emit Transfer(addressList[i], address(this), amountList[i]);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |        for (uint i = 0; i < addressList.length; i++) {
    |            balances[addressList[i]] = balances[addressList[i]].sub(amountList[i]);
  > |            totalSupply_ = totalSupply_.sub(amountList[i]);
    |            emit Transfer(addressList[i], address(this), amountList[i]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |    function initContract() external onlyOwner {
    |        require(isNotInit);
  > |        totalSupply_ = INITIAL_SUPPLY;
    |        balances[msg.sender] = totalSupply_;
    |        emit Transfer(address(this), msg.sender, INITIAL_SUPPLY);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'GITToken':
    |        balances[msg.sender] = totalSupply_;
    |        emit Transfer(address(this), msg.sender, INITIAL_SUPPLY);
  > |        isNotInit = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(241)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  /**
    |  * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BurnableToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint256 _value) public returns (bool) {
    |   /** require((_value == 0) || (allowed[msg.sender][_spender] == 0)); **/
  > |    allowed[msg.sender][_spender] = _value;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x43a850055acf1047986773d2687b284b7913e38f.sol(142)


