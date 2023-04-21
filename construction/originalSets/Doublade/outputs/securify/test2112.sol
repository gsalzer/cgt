Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol:NashvilleBeerToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol:Token
[33mWarning[0m for LockedEther in contract 'HumanStandardToken':
    |
    |
  > |contract HumanStandardToken is StandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';  
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';  
    |    function HumanStandardToken(
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H0.1';  
    |    function HumanStandardToken(
    |        uint256 _initialAmount,
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(123)

[33mWarning[0m for UnhandledException in contract 'HumanStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(139)

[33mWarning[0m for DAOConstantGas in contract 'NashvilleBeerToken':
    |        totalSupply += 1;
    |        require(totalSupply <= maxSupply);
  > |        RECIPIENT.transfer(msg.value);
    |        Transfer(address(0), msg.sender, 1);
    |        LogBeerBought(now, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    * Or just transfer to the Nashville Ethereum Meetup Address
    |    */
  > |    function registerName(bytes32 _name) {
    |        names[msg.sender] = _name;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |
    |
  > |    function nameOf(address _owner) constant public returns (bytes32) {
    |        return names[_owner];    
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';  
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;                 //An identifier: eg SBX
    |    string public version = 'H0.1';  
    |    function HumanStandardToken(
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    uint8 public decimals;                //How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;                 //An identifier: eg SBX
  > |    string public version = 'H0.1';  
    |    function HumanStandardToken(
    |        uint256 _initialAmount,
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |
    |contract NashvilleBeerToken is HumanStandardToken {
  > |    address public constant RECIPIENT = 0xB1384DfE8ac77a700F460C94352bdD47Dc0327eF;
    |    bytes32[] public claimedList;
    |    mapping(address => bytes32) names;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |contract NashvilleBeerToken is HumanStandardToken {
    |    address public constant RECIPIENT = 0xB1384DfE8ac77a700F460C94352bdD47Dc0327eF;
  > |    bytes32[] public claimedList;
    |    mapping(address => bytes32) names;
    |    uint256 public maxSupply;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    bytes32[] public claimedList;
    |    mapping(address => bytes32) names;
  > |    uint256 public maxSupply;
    |
    |    event LogBeerBought(uint date, address owner);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'NashvilleBeerToken':
    |    }
    |    
  > |    function claimBeer() payable {
    |        require(msg.value == .015 ether);
    |        balances[msg.sender] += 1;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(183)

[33mWarning[0m for TODReceiver in contract 'NashvilleBeerToken':
    |        totalSupply += 1;
    |        require(totalSupply <= maxSupply);
  > |        RECIPIENT.transfer(msg.value);
    |        Transfer(address(0), msg.sender, 1);
    |        LogBeerBought(now, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(188)

[33mWarning[0m for UnhandledException in contract 'NashvilleBeerToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(145)

[33mWarning[0m for UnhandledException in contract 'NashvilleBeerToken':
    |        totalSupply += 1;
    |        require(totalSupply <= maxSupply);
  > |        RECIPIENT.transfer(msg.value);
    |        Transfer(address(0), msg.sender, 1);
    |        LogBeerBought(now, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NashvilleBeerToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |        require(msg.value == .015 ether);
    |        balances[msg.sender] += 1;
  > |        totalSupply += 1;
    |        require(totalSupply <= maxSupply);
    |        RECIPIENT.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |    */
    |    function registerName(bytes32 _name) {
  > |        names[msg.sender] = _name;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'NashvilleBeerToken':
    |    function claimBeer() payable {
    |        require(msg.value == .015 ether);
  > |        balances[msg.sender] += 1;
    |        totalSupply += 1;
    |        require(totalSupply <= maxSupply);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(185)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a4472ac1b6a5858668345b1408af850129758ea.sol(95)


