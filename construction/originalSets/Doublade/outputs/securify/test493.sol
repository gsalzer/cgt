Processing contract: /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol:FutouristToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol:ItokenRecipient
Processing contract: /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol:LockableOwned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'FutouristToken':
    |
    |
  > |contract FutouristToken is Token {
    |
    |  /* Initializes contract */
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(185)

[33mWarning[0m for UnhandledException in contract 'FutouristToken':
    |    ItokenRecipient spender = ItokenRecipient(_spender);            // Cast spender to tokenRecipient contract
    |    approve(_spender, _value);                                      // Set approval to contract for _value
  > |    spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(152)

[33mWarning[0m for UnhandledException in contract 'FutouristToken':
    |
    |  function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner{
  > |    IERC20Token(_tokenAddress).transfer(_to, _amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FutouristToken':
    |    ItokenRecipient spender = ItokenRecipient(_spender);            // Cast spender to tokenRecipient contract
    |    approve(_spender, _value);                                      // Set approval to contract for _value
  > |    spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FutouristToken':
    |
    |  function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner{
  > |    IERC20Token(_tokenAddress).transfer(_to, _amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |
    |  function lockUntil(uint256 _untilTime, string _reason) onlyOwner {
  > |    lockedUntilTime = _untilTime;
    |    ContractLocked(_untilTime, _reason);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |  function transfer(address _to, uint256 _value) lockAffected returns (bool success) {
    |    require(_to != 0x0 && _to != address(this));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value); // Deduct senders balance
    |    balances[_to] = balances[_to].add(_value);               // Add receivers balance
    |    Transfer(msg.sender, _to, _value);                       // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |    require(_to != 0x0 && _to != address(this));
    |    balances[msg.sender] = balances[msg.sender].sub(_value); // Deduct senders balance
  > |    balances[_to] = balances[_to].add(_value);               // Add receivers balance
    |    Transfer(msg.sender, _to, _value);                       // Raise Transfer event
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |  /* Approve other address to spend tokens on your account */
    |  function approve(address _spender, uint256 _value) lockAffected returns (bool success) {
  > |    allowances[msg.sender][_spender] = _value;        // Set allowance
    |    Approval(msg.sender, _spender, _value);           // Raise Approval event
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |  function transferFrom(address _from, address _to, uint256 _value) lockAffected returns (bool success) {
    |    require(_to != 0x0 && _to != address(this));
  > |    balances[_from] = balances[_from].sub(_value);                              // Deduct senders balance
    |    balances[_to] = balances[_to].add(_value);                                  // Add recipient balance
    |    allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);  // Deduct allowance for this address
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |    require(_to != 0x0 && _to != address(this));
    |    balances[_from] = balances[_from].sub(_value);                              // Deduct senders balance
  > |    balances[_to] = balances[_to].add(_value);                                  // Add recipient balance
    |    allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);  // Deduct allowance for this address
    |    Transfer(_from, _to, _value);                                               // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |    balances[_from] = balances[_from].sub(_value);                              // Deduct senders balance
    |    balances[_to] = balances[_to].add(_value);                                  // Add recipient balance
  > |    allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);  // Deduct allowance for this address
    |    Transfer(_from, _to, _value);                                               // Raise Transfer event
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |    require(msg.sender == crowdsaleContractAddress);
    |
  > |    supply = supply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |
    |    supply = supply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'FutouristToken':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(71)

[33mWarning[0m for LockedEther in contract 'LockableOwned':
    |
    |
  > |contract LockableOwned is Owned{
    |
    |  uint256 public lockedUntilTime;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'LockableOwned':
    |
    |
  > |  function lockUntil(uint256 _untilTime, string _reason) onlyOwner {
    |    lockedUntilTime = _untilTime;
    |    ContractLocked(_untilTime, _reason);
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'LockableOwned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'LockableOwned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Owned() public{
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'LockableOwned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'LockableOwned':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'LockableOwned':
    |contract LockableOwned is Owned{
    |
  > |  uint256 public lockedUntilTime;
    |
    |  event ContractLocked(uint256 _untilTime, string _reason);
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'LockableOwned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'LockableOwned':
    |
    |  function lockUntil(uint256 _untilTime, string _reason) onlyOwner {
  > |    lockedUntilTime = _untilTime;
    |    ContractLocked(_untilTime, _reason);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'LockableOwned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'LockableOwned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(71)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Owned() public{
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(23)

[31mViolation[0m for LockedEther in contract 'Token':
    |
    |
  > |contract Token is IERC20Token, LockableOwned {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(102)

[33mWarning[0m for UnhandledException in contract 'Token':
    |    ItokenRecipient spender = ItokenRecipient(_spender);            // Cast spender to tokenRecipient contract
    |    approve(_spender, _value);                                      // Set approval to contract for _value
  > |    spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(152)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |  function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner{
  > |    IERC20Token(_tokenAddress).transfer(_to, _amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |    ItokenRecipient spender = ItokenRecipient(_spender);            // Cast spender to tokenRecipient contract
    |    approve(_spender, _value);                                      // Set approval to contract for _value
  > |    spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |  function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner{
  > |    IERC20Token(_tokenAddress).transfer(_to, _amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |  function lockUntil(uint256 _untilTime, string _reason) onlyOwner {
  > |    lockedUntilTime = _untilTime;
    |    ContractLocked(_untilTime, _reason);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |  function transfer(address _to, uint256 _value) lockAffected returns (bool success) {
    |    require(_to != 0x0 && _to != address(this));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value); // Deduct senders balance
    |    balances[_to] = balances[_to].add(_value);               // Add receivers balance
    |    Transfer(msg.sender, _to, _value);                       // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(_to != 0x0 && _to != address(this));
    |    balances[msg.sender] = balances[msg.sender].sub(_value); // Deduct senders balance
  > |    balances[_to] = balances[_to].add(_value);               // Add receivers balance
    |    Transfer(msg.sender, _to, _value);                       // Raise Transfer event
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |  /* Approve other address to spend tokens on your account */
    |  function approve(address _spender, uint256 _value) lockAffected returns (bool success) {
  > |    allowances[msg.sender][_spender] = _value;        // Set allowance
    |    Approval(msg.sender, _spender, _value);           // Raise Approval event
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |  function transferFrom(address _from, address _to, uint256 _value) lockAffected returns (bool success) {
    |    require(_to != 0x0 && _to != address(this));
  > |    balances[_from] = balances[_from].sub(_value);                              // Deduct senders balance
    |    balances[_to] = balances[_to].add(_value);                                  // Add recipient balance
    |    allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);  // Deduct allowance for this address
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(_to != 0x0 && _to != address(this));
    |    balances[_from] = balances[_from].sub(_value);                              // Deduct senders balance
  > |    balances[_to] = balances[_to].add(_value);                                  // Add recipient balance
    |    allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);  // Deduct allowance for this address
    |    Transfer(_from, _to, _value);                                               // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    balances[_from] = balances[_from].sub(_value);                              // Deduct senders balance
    |    balances[_to] = balances[_to].add(_value);                                  // Add recipient balance
  > |    allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);  // Deduct allowance for this address
    |    Transfer(_from, _to, _value);                                               // Raise Transfer event
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(msg.sender == crowdsaleContractAddress);
    |
  > |    supply = supply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    supply = supply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2023dcf7c438c8c8c0b0f28dbae15520b4f3ee20.sol(71)


