Processing contract: /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol:GigaGivingToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol:Token
[31mViolation[0m for DAOConstantGas in contract 'GigaGivingToken':
    |            ethBalanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (!msg.sender.send(amount)) {
    |                    ethBalanceOf[msg.sender] = amount;
    |                }
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(182)

[31mViolation[0m for DAOConstantGas in contract 'GigaGivingToken':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                this.transfer(msg.sender, tokenSupply);
    |            } else {               
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(189)

[33mWarning[0m for LockedEther in contract 'GigaGivingToken':
    |}
    |
  > |contract GigaGivingToken is StandardToken {
    |    using SafeMath for uint256;
    |         
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(80)

[31mViolation[0m for TODAmount in contract 'GigaGivingToken':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                this.transfer(msg.sender, tokenSupply);
    |            } else {               
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(189)

[33mWarning[0m for TODReceiver in contract 'GigaGivingToken':
    |            ethBalanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (!msg.sender.send(amount)) {
    |                    ethBalanceOf[msg.sender] = amount;
    |                }
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(182)

[33mWarning[0m for UnhandledException in contract 'GigaGivingToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(132)

[33mWarning[0m for UnhandledException in contract 'GigaGivingToken':
    |            ethBalanceOf[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (!msg.sender.send(amount)) {
    |                    ethBalanceOf[msg.sender] = amount;
    |                }
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(182)

[33mWarning[0m for UnhandledException in contract 'GigaGivingToken':
    |
    |        if (fundingGoalReached && beneficiary == msg.sender) {
  > |            if (beneficiary.send(amountRaised)) {
    |                this.transfer(msg.sender, tokenSupply);
    |            } else {               
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(189)

[33mWarning[0m for UnhandledException in contract 'GigaGivingToken':
    |        if (fundingGoalReached && beneficiary == msg.sender) {
    |            if (beneficiary.send(amountRaised)) {
  > |                this.transfer(msg.sender, tokenSupply);
    |            } else {               
    |                fundingGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GigaGivingToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GigaGivingToken':
    |        if (fundingGoalReached && beneficiary == msg.sender) {
    |            if (beneficiary.send(amountRaised)) {
  > |                this.transfer(msg.sender, tokenSupply);
    |            } else {               
    |                fundingGoalReached = false;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(190)

[31mViolation[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {      
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |    function checkGoalReached() public afterDeadline {
    |        if (amountRaised >= fundingGoal) {
  > |            fundingGoalReached = true;
    |        }
    |        crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |            fundingGoalReached = true;
    |        }
  > |        crowdsaleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |        address sender = msg.sender;
    |        require(balances[sender] >= _value);
  > |        balances[sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |        require(balances[sender] >= _value);
    |        balances[sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |  
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |        }
    |
  > |        ethBalanceOf[msg.sender] = ethBalanceOf[msg.sender].add(amount);              
    |        balances[msg.sender] = balances[msg.sender].add(coinTotal);
    |        balances[this] = balances[this].sub(coinTotal);
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |
    |        ethBalanceOf[msg.sender] = ethBalanceOf[msg.sender].add(amount);              
  > |        balances[msg.sender] = balances[msg.sender].add(coinTotal);
    |        balances[this] = balances[this].sub(coinTotal);
    |        amountRaised = amountRaised.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |        if (refundsOpen) {
    |            uint amount = ethBalanceOf[msg.sender];
  > |            ethBalanceOf[msg.sender] = 0;
    |            if (amount > 0) {
    |                if (!msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |            if (amount > 0) {
    |                if (!msg.sender.send(amount)) {
  > |                    ethBalanceOf[msg.sender] = amount;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'GigaGivingToken':
    |    function enableRefunds() public afterDeadline {
    |        require(msg.sender == beneficiary);
  > |        refundsOpen = true;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(199)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(56)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => mapping (address => uint256)) allowed;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {       
    |        address sender = msg.sender;
    |        require(balances[sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {      
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract Token {   
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(9)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[sender] >= _value);
    |        balances[sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {      
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        address sender = msg.sender;
    |        require(balances[sender] >= _value);
  > |        balances[sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x464e6abc2f9a61cd17e6c52ad06802fbb4af7eab.sol(46)


