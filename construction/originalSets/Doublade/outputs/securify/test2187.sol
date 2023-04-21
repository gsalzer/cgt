Processing contract: /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol:OpticalNetwork
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol:standardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'OpticalNetwork':
    |}
    |
  > |contract OpticalNetwork is standardToken, Owned {
    |    using SafeMath for uint;
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'OpticalNetwork':
    |    mapping (address => mapping (address => uint256)) allowances;
    |
  > |    function balanceOf(address _owner) constant public returns (uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'OpticalNetwork':
    |
    |    /* Transfers tokens from your address to other */
  > |    function transfer(address _to, uint256 _value) 
    |        public 
    |        returns (bool success) 
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'OpticalNetwork':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'OpticalNetwork':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require (balances[_from] >= _value);                // Throw if sender does not have enough balance
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if overflow detected
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(157)

[31mViolation[0m for MissingInputValidation in contract 'OpticalNetwork':
    |
    |    /* Get the amount of allowed tokens to spend */
  > |    function allowance(address _owner, address _spender) constant public returns (uint256 remaining) {
    |        return allowances[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'OpticalNetwork':
    |    /// 'owner' is the only address that can call a function with 
    |    /// this modifier
  > |    address public owner;
    |    address internal newOwner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'OpticalNetwork':
    |    
    |    ///change the owner
  > |    function changeOwner(address _newOwner) public onlyOwner returns(bool) {
    |        require(owner != _newOwner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'OpticalNetwork':
    |    
    |    /// accept the ownership
  > |    function acceptNewOwner() public returns(bool) {
    |        require(msg.sender == newOwner);
    |        emit updateOwner(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'OpticalNetwork':
    |    using SafeMath for uint;
    |    
  > |    string public name="Optical Network";
    |    string public symbol="OPTC";
    |    uint256 public decimals=18;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'OpticalNetwork':
    |    
    |    string public name="Optical Network";
  > |    string public symbol="OPTC";
    |    uint256 public decimals=18;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'OpticalNetwork':
    |    string public name="Optical Network";
    |    string public symbol="OPTC";
  > |    uint256 public decimals=18;
    |    uint256 public totalSupply = 0;
    |    uint256 public topTotalSupply = 36*10**8*10**decimals;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'OpticalNetwork':
    |    string public symbol="OPTC";
    |    uint256 public decimals=18;
  > |    uint256 public totalSupply = 0;
    |    uint256 public topTotalSupply = 36*10**8*10**decimals;
    |    /// @dev Fallback to calling deposit when ether is sent directly to contract.
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'OpticalNetwork':
    |    uint256 public decimals=18;
    |    uint256 public totalSupply = 0;
  > |    uint256 public topTotalSupply = 36*10**8*10**decimals;
    |    /// @dev Fallback to calling deposit when ether is sent directly to contract.
    |    function() public payable {
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(182)

[33mWarning[0m for UnhandledException in contract 'OpticalNetwork':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OpticalNetwork':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'OpticalNetwork':
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if owerflow detected
    |        balances[msg.sender] -= _value;                     // Deduct senders balance
  > |        balances[_to] += _value;                            // Add recivers blaance
    |        emit Transfer(msg.sender, _to, _value);             // Raise Transfer event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'OpticalNetwork':
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if overflow detected
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance
  > |        balances[_from] -= _value;                          // Deduct senders balance
    |        balances[_to] += _value;                            // Add recipient blaance
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'OpticalNetwork':
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance
    |        balances[_from] -= _value;                          // Deduct senders balance
  > |        balances[_to] += _value;                            // Add recipient blaance
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
    |        emit Transfer(_from, _to, _value);                  // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'OpticalNetwork':
    |        require (balances[msg.sender] >= _value);           // Throw if sender has insufficient balance
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if owerflow detected
  > |        balances[msg.sender] -= _value;                     // Deduct senders balance
    |        balances[_to] += _value;                            // Add recivers blaance
    |        emit Transfer(msg.sender, _to, _value);             // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'OpticalNetwork':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        allowances[msg.sender][_spender] = _value;          // Set allowance
    |        emit Approval(msg.sender, _spender, _value);        // Raise Approval event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'OpticalNetwork':
    |        balances[_from] -= _value;                          // Deduct senders balance
    |        balances[_to] += _value;                            // Add recipient blaance
  > |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
    |        emit Transfer(_from, _to, _value);                  // Raise Transfer event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'OpticalNetwork':
    |    function changeOwner(address _newOwner) public onlyOwner returns(bool) {
    |        require(owner != _newOwner);
  > |        newOwner = _newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'OpticalNetwork':
    |        require(msg.sender == newOwner);
    |        emit updateOwner(owner, newOwner);
  > |        owner = newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(35)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    
    |    /// 'owner' is the only address that can call a function with 
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// 'owner' is the only address that can call a function with 
    |    /// this modifier
  > |    address public owner;
    |    address internal newOwner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    
    |    ///change the owner
  > |    function changeOwner(address _newOwner) public onlyOwner returns(bool) {
    |        require(owner != _newOwner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    
    |    /// accept the ownership
  > |    function acceptNewOwner() public returns(bool) {
    |        require(msg.sender == newOwner);
    |        emit updateOwner(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function changeOwner(address _newOwner) public onlyOwner returns(bool) {
    |        require(owner != _newOwner);
  > |        newOwner = _newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit updateOwner(owner, newOwner);
  > |        owner = newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(35)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths, borrowed from OpenZeppelin
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |
    |  function mul(uint a, uint b) internal pure returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(42)

[33mWarning[0m for LockedEther in contract 'standardToken':
    |}
    |
  > |contract standardToken is ERC20Token {
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowances;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |    mapping (address => mapping (address => uint256)) allowances;
    |
  > |    function balanceOf(address _owner) constant public returns (uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |
    |    /* Transfers tokens from your address to other */
  > |    function transfer(address _to, uint256 _value) 
    |        public 
    |        returns (bool success) 
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |
    |    /* Approve and then communicate the approved contract in a single tx */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require (balances[_from] >= _value);                // Throw if sender does not have enough balance
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if overflow detected
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(157)

[31mViolation[0m for MissingInputValidation in contract 'standardToken':
    |
    |    /* Get the amount of allowed tokens to spend */
  > |    function allowance(address _owner, address _spender) constant public returns (uint256 remaining) {
    |        return allowances[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'standardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(85)

[33mWarning[0m for UnhandledException in contract 'standardToken':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'standardToken':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract
    |        approve(_spender, _value);                                      // Set approval to contract for _value
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'standardToken':
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if owerflow detected
    |        balances[msg.sender] -= _value;                     // Deduct senders balance
  > |        balances[_to] += _value;                            // Add recivers blaance
    |        emit Transfer(msg.sender, _to, _value);             // Raise Transfer event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'standardToken':
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if overflow detected
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance
  > |        balances[_from] -= _value;                          // Deduct senders balance
    |        balances[_to] += _value;                            // Add recipient blaance
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'standardToken':
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance
    |        balances[_from] -= _value;                          // Deduct senders balance
  > |        balances[_to] += _value;                            // Add recipient blaance
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
    |        emit Transfer(_from, _to, _value);                  // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'standardToken':
    |        require (balances[msg.sender] >= _value);           // Throw if sender has insufficient balance
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if owerflow detected
  > |        balances[msg.sender] -= _value;                     // Deduct senders balance
    |        balances[_to] += _value;                            // Add recivers blaance
    |        emit Transfer(msg.sender, _to, _value);             // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'standardToken':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        allowances[msg.sender][_spender] = _value;          // Set allowance
    |        emit Approval(msg.sender, _spender, _value);        // Raise Approval event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'standardToken':
    |        balances[_from] -= _value;                          // Deduct senders balance
    |        balances[_to] += _value;                            // Add recipient blaance
  > |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address
    |        emit Transfer(_from, _to, _value);                  // Raise Transfer event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8e91a9cbadb74ef60c456f1e4ba3e391b143aad9.sol(163)


