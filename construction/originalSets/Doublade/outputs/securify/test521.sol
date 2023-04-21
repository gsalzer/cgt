Processing contract: /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol:ECMMaths
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol:ECMStandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol:Electrim
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol:ElectrimToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ECMMaths':
    | */
    |
  > |library ECMMaths {
    |// Saftey Checks for Multiplication Tasks
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(73)

[33mWarning[0m for LockedEther in contract 'ECMStandardToken':
    |
    |
  > |contract ECMStandardToken is ElectrimToken, Ownable {
    |    
    |    using ECMMaths for uint256;
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'ECMStandardToken':
    |    function transferOwnership(address _newOwner) onlyOwner {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'ECMStandardToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'ECMStandardToken':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'ECMStandardToken':
    |            //most of these things are not necesary
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'ECMStandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'ECMStandardToken':
    |        
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        // Notify anyone listening that this approval done
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(196)

[33mWarning[0m for LockedEther in contract 'Electrim':
    |  
    |}
  > |contract Electrim is ECMStandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(208)

[33mWarning[0m for UnhandledException in contract 'Electrim':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(236)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Electrim':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Electrim':
    |    function transferOwnership(address _newOwner) onlyOwner {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Electrim':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Electrim':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'Electrim':
    |            //most of these things are not necesary
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Electrim':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Electrim':
    |        
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        // Notify anyone listening that this approval done
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Electrim':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(230)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    /** 
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) onlyOwner {
    |        if (_newOwner != address(0)) {
    |            owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) onlyOwner {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x21dc1c2da6a347b44857a2fe7455a085d9b08dc6.sol(132)


