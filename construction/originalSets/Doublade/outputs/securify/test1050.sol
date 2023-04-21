Processing contract: /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol:NSilkRoadCoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol:limitedFactor
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol:standardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'NSilkRoadCoinToken':
    |    function withDraw(address _walletAddress) public payable onlyOwner {
    |        require (_walletAddress != address(0));
  > |        _walletAddress.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(216)

[33mWarning[0m for LockedEther in contract 'NSilkRoadCoinToken':
    |}
    |
  > |contract NSilkRoadCoinToken is standardToken,Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(165)

[31mViolation[0m for TODAmount in contract 'NSilkRoadCoinToken':
    |    function withDraw(address _walletAddress) public payable onlyOwner {
    |        require (_walletAddress != address(0));
  > |        _walletAddress.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(216)

[33mWarning[0m for TODReceiver in contract 'NSilkRoadCoinToken':
    |    function withDraw(address _walletAddress) public payable onlyOwner {
    |        require (_walletAddress != address(0));
  > |        _walletAddress.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(216)

[33mWarning[0m for UnhandledException in contract 'NSilkRoadCoinToken':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(142)

[33mWarning[0m for UnhandledException in contract 'NSilkRoadCoinToken':
    |    function withDraw(address _walletAddress) public payable onlyOwner {
    |        require (_walletAddress != address(0));
  > |        _walletAddress.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NSilkRoadCoinToken':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NSilkRoadCoinToken':
    |    function withDraw(address _walletAddress) public payable onlyOwner {
    |        require (_walletAddress != address(0));
  > |        _walletAddress.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if overflow detected
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance
  > |        balances[_from] -= _value;                          // Deduct senders balance
    |        balances[_to] += _value;                            // Add recipient blaance
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance
    |        balances[_from] -= _value;                          // Deduct senders balance
  > |        balances[_to] += _value;                            // Add recipient blaance
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
    |        Transfer(_from, _to, _value);                       // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |            require (balances[reciver] + value >= balances[reciver]);  // Throw if owerflow detected
    |            balances[msg.sender] -= value;                     // Deduct senders balance
  > |            balances[reciver] += value;                            // Add recivers blaance
    |            Transfer(msg.sender, reciver, value);                  // Raise Transfer event
    |        }
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |        require (balances[msg.sender] >= _value);           // Throw if sender has insufficient balance
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if owerflow detected
  > |        balances[msg.sender] -= _value;                     // Deduct senders balance
    |        balances[_to] += _value;                            // Add recivers blaance
    |        Transfer(msg.sender, _to, _value);                  // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        allowances[msg.sender][_spender] = _value;          // Set allowance
    |        Approval(msg.sender, _spender, _value);             // Raise Approval event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |        balances[_from] -= _value;                          // Deduct senders balance
    |        balances[_to] += _value;                            // Add recipient blaance
  > |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
    |        Transfer(_from, _to, _value);                       // Raise Transfer event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |            require (balances[msg.sender] >= value);           // Throw if sender has insufficient balance
    |            require (balances[reciver] + value >= balances[reciver]);  // Throw if owerflow detected
  > |            balances[msg.sender] -= value;                     // Deduct senders balance
    |            balances[reciver] += value;                            // Add recivers blaance
    |            Transfer(msg.sender, reciver, value);                  // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |
    |    function changeOwner(address _newOwner) public onlyOwner{
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if owerflow detected
    |        balances[msg.sender] -= _value;                     // Deduct senders balance
  > |        balances[_to] += _value;                            // Add recivers blaance
    |        Transfer(msg.sender, _to, _value);                  // Raise Transfer event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |    function mintTokens(address _to, uint256 _amount) internal {
    |        require (balances[_to] + _amount >= balances[_to]);     // Check for overflows
  > |        balances[_to] = balances[_to].add(_amount);             // Set minted coins to target
    |        totalSupply = totalSupply.add(_amount);
    |        require(totalSupply <= topTotalSupply);
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |        require (balances[_to] + _amount >= balances[_to]);     // Check for overflows
    |        balances[_to] = balances[_to].add(_amount);             // Set minted coins to target
  > |        totalSupply = totalSupply.add(_amount);
    |        require(totalSupply <= topTotalSupply);
    |        Transfer(0x0, _to, _amount);                            // Create Transfer event from 0x
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |        onlyOwner 
    |    {
  > |        FoundationAddress = _FoundationAddress;
    |        TeamAddress = _TeamAddress;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |    {
    |        FoundationAddress = _FoundationAddress;
  > |        TeamAddress = _TeamAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'NSilkRoadCoinToken':
    |        require(balances[FoundationAddress] == 0);
    |        mintTokens(FoundationAddress, FoundationSupply);
  > |        FoundationAddressFreezeTime = now;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(243)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function changeOwner(address _newOwner) public onlyOwner{
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    modifier onlyOwner() {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(6)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function changeOwner(address _newOwner) public onlyOwner{
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(16)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths, borrowed from OpenZeppelin
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |
    |  function mul(uint a, uint b) internal pure returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(23)

[33mWarning[0m for LockedEther in contract 'limitedFactor':
    |}
    |
  > |contract limitedFactor {
    |    uint256 public FoundationAddressFreezeTime;
    |    address public FoundationAddress;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'limitedFactor':
    |
    |contract limitedFactor {
  > |    uint256 public FoundationAddressFreezeTime;
    |    address public FoundationAddress;
    |    address public TeamAddress;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'limitedFactor':
    |contract limitedFactor {
    |    uint256 public FoundationAddressFreezeTime;
  > |    address public FoundationAddress;
    |    address public TeamAddress;
    |    modifier FoundationAccountNeedFreezeOneYear(address _address) {
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'limitedFactor':
    |    uint256 public FoundationAddressFreezeTime;
    |    address public FoundationAddress;
  > |    address public TeamAddress;
    |    modifier FoundationAccountNeedFreezeOneYear(address _address) {
    |        if(_address == FoundationAddress) {
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(103)

[33mWarning[0m for LockedEther in contract 'standardToken':
    |
    |}
  > |contract standardToken is ERC20Token, limitedFactor {
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowances;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |    mapping (address => mapping (address => uint256)) allowances;
    |
  > |    function balanceOf(address _owner) constant public returns (uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |
    |    /* Transfers tokens from your address to other */
  > |    function transfer(address _to, uint256 _value) public FoundationAccountNeedFreezeOneYear(msg.sender) returns (bool success) {
    |        require (balances[msg.sender] >= _value);           // Throw if sender has insufficient balance
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if owerflow detected
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require (balances[_from] >= _value);                // Throw if sender does not have enough balance
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if overflow detected
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |
    |    /* Get the amount of allowed tokens to spend */
  > |    function allowance(address _owner, address _spender) constant public returns (uint256 remaining) {
    |        return allowances[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'standardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'standardToken':
    |
    |contract limitedFactor {
  > |    uint256 public FoundationAddressFreezeTime;
    |    address public FoundationAddress;
    |    address public TeamAddress;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'standardToken':
    |contract limitedFactor {
    |    uint256 public FoundationAddressFreezeTime;
  > |    address public FoundationAddress;
    |    address public TeamAddress;
    |    modifier FoundationAccountNeedFreezeOneYear(address _address) {
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'standardToken':
    |    uint256 public FoundationAddressFreezeTime;
    |    address public FoundationAddress;
  > |    address public TeamAddress;
    |    modifier FoundationAccountNeedFreezeOneYear(address _address) {
    |        if(_address == FoundationAddress) {
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(103)

[33mWarning[0m for UnhandledException in contract 'standardToken':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'standardToken':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'standardToken':
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if overflow detected
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance
  > |        balances[_from] -= _value;                          // Deduct senders balance
    |        balances[_to] += _value;                            // Add recipient blaance
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'standardToken':
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance
    |        balances[_from] -= _value;                          // Deduct senders balance
  > |        balances[_to] += _value;                            // Add recipient blaance
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
    |        Transfer(_from, _to, _value);                       // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'standardToken':
    |        require (balances[msg.sender] >= _value);           // Throw if sender has insufficient balance
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if owerflow detected
  > |        balances[msg.sender] -= _value;                     // Deduct senders balance
    |        balances[_to] += _value;                            // Add recivers blaance
    |        Transfer(msg.sender, _to, _value);                  // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'standardToken':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        allowances[msg.sender][_spender] = _value;          // Set allowance
    |        Approval(msg.sender, _spender, _value);             // Raise Approval event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'standardToken':
    |        balances[_from] -= _value;                          // Deduct senders balance
    |        balances[_to] += _value;                            // Add recipient blaance
  > |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
    |        Transfer(_from, _to, _value);                       // Raise Transfer event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'standardToken':
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if owerflow detected
    |        balances[msg.sender] -= _value;                     // Deduct senders balance
  > |        balances[_to] += _value;                            // Add recivers blaance
    |        Transfer(msg.sender, _to, _value);                  // Raise Transfer event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x42c2ef80c2d5b59f7adc3ed56f53e7ba09c58141.sol(125)


