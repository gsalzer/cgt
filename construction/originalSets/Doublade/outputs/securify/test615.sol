Processing contract: /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol:Ballot
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol:CATEXION
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ballot':
    |    }
    |}pragma solidity >=0.4.22 <0.6.0;
  > |contract Ballot {
    |
    |    struct Voter {
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'Ballot':
    |    }
    |
  > |    function winningProposal() public view returns (uint8 _winningProposal) {
    |        uint256 winningVoteCount = 0;
    |        for (uint8 prop = 0; prop < proposals.length; prop++)
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Ballot':
    |    function giveRightToVote(address toVoter) public {
    |        if (msg.sender != chairperson || voters[toVoter].voted) return;
  > |        voters[toVoter].weight = 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Ballot':
    |            to = voters[to].delegate;
    |        if (to == msg.sender) return;
  > |        sender.voted = true;
    |        sender.delegate = to;
    |        Voter storage delegateTo = voters[to];
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'Ballot':
    |        if (to == msg.sender) return;
    |        sender.voted = true;
  > |        sender.delegate = to;
    |        Voter storage delegateTo = voters[to];
    |        if (delegateTo.voted)
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Ballot':
    |        Voter storage delegateTo = voters[to];
    |        if (delegateTo.voted)
  > |            proposals[delegateTo.vote].voteCount += sender.weight;
    |        else
    |            delegateTo.weight += sender.weight;
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'Ballot':
    |            proposals[delegateTo.vote].voteCount += sender.weight;
    |        else
  > |            delegateTo.weight += sender.weight;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Ballot':
    |        Voter storage sender = voters[msg.sender];
    |        if (sender.voted || toProposal >= proposals.length) return;
  > |        sender.voted = true;
    |        sender.vote = toProposal;
    |        proposals[toProposal].voteCount += sender.weight;
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Ballot':
    |        if (sender.voted || toProposal >= proposals.length) return;
    |        sender.voted = true;
  > |        sender.vote = toProposal;
    |        proposals[toProposal].voteCount += sender.weight;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(186)

[33mWarning[0m for LockedEther in contract 'CATEXION':
    |}
    |
  > |contract CATEXION is StandardToken { 
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'CATEXION':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |    
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'CATEXION':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |     
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'CATEXION':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'CATEXION':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'CATEXION':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'CATEXION':
    |
    |    /* Approves and then calls the receiving contract */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'CATEXION':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'CATEXION':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                  
    |    uint8 public decimals;                
    |    string public symbol;                 
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'CATEXION':
    |    */
    |    string public name;                  
  > |    uint8 public decimals;                
    |    string public symbol;                 
    |    string public version = 'CAEX1.0'; 
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'CATEXION':
    |    string public name;                  
    |    uint8 public decimals;                
  > |    string public symbol;                 
    |    string public version = 'CAEX1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'CATEXION':
    |    uint8 public decimals;                
    |    string public symbol;                 
  > |    string public version = 'CAEX1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;         
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'CATEXION':
    |    string public symbol;                 
    |    string public version = 'CAEX1.0'; 
  > |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;         
    |    address public fundsWallet;           
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'CATEXION':
    |    string public version = 'CAEX1.0'; 
    |    uint256 public unitsOneEthCanBuy;     
  > |    uint256 public totalEthInWei;         
    |    address public fundsWallet;           
    |
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'CATEXION':
    |    uint256 public unitsOneEthCanBuy;     
    |    uint256 public totalEthInWei;         
  > |    address public fundsWallet;           
    |
    |   
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(99)

[33mWarning[0m for UnhandledException in contract 'CATEXION':
    |
    |       
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CATEXION':
    |
    |       
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'CATEXION':
    |    
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'CATEXION':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'CATEXION':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'CATEXION':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(127)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |    
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |     
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(69)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.25;
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x275e36ccb1f2ec17493e939e22605f1ef1a5ced5.sol(3)


