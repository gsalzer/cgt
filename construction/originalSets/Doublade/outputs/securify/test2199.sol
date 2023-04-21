Processing contract: /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol:Oracle
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol:eUSD
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(83)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(90)

[33mWarning[0m for DAOConstantGas in contract 'eUSD':
    |        require(address(oracle) != address(0));
    |        require(msg.value >= 20 finney); //0.02 ETH
  > |        address(oracle).transfer(address(this).balance);
    |        oracle.callOracle(msg.sender, msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(177)

[33mWarning[0m for LockedEther in contract 'eUSD':
    | * @title eUSD
    | */
  > |contract eUSD is Ownable, ERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(155)

[31mViolation[0m for TODAmount in contract 'eUSD':
    |        require(address(oracle) != address(0));
    |        require(msg.value >= 20 finney); //0.02 ETH
  > |        address(oracle).transfer(address(this).balance);
    |        oracle.callOracle(msg.sender, msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(177)

[31mViolation[0m for TODReceiver in contract 'eUSD':
    |        require(address(oracle) != address(0));
    |        require(msg.value >= 20 finney); //0.02 ETH
  > |        address(oracle).transfer(address(this).balance);
    |        oracle.callOracle(msg.sender, msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(177)

[33mWarning[0m for UnhandledException in contract 'eUSD':
    |        require(address(oracle) != address(0));
    |        require(msg.value >= 20 finney); //0.02 ETH
  > |        address(oracle).transfer(address(this).balance);
    |        oracle.callOracle(msg.sender, msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(177)

[33mWarning[0m for UnhandledException in contract 'eUSD':
    |        require(msg.value >= 20 finney); //0.02 ETH
    |        address(oracle).transfer(address(this).balance);
  > |        oracle.callOracle(msg.sender, msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'eUSD':
    |        require(msg.value >= 20 finney); //0.02 ETH
    |        address(oracle).transfer(address(this).balance);
  > |        oracle.callOracle(msg.sender, msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |   */
    |    function mint(address _to, uint256 _amount) private returns (bool){
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |    function mint(address _to, uint256 _amount) private returns (bool){
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'eUSD':
    |    */
    |    function setOracle(address _oracle) public onlyOwner {
  > |        oracle = Oracle(_oracle);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f46325b00536da3714eb8646b10ed653d5b17f2.sol(186)


