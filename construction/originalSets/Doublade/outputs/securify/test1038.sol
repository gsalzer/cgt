Processing contract: /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol:BXXTMaths
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol:BXXTStandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol:Bitshield
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol:BitshieldToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BXXTMaths':
    | */
    |
  > |library BXXTMaths {
    |// Saftey Checks for Multiplication Tasks
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(58)

[33mWarning[0m for LockedEther in contract 'BXXTStandardToken':
    |
    |
  > |contract BXXTStandardToken is BitshieldToken, Ownable {
    |    
    |    using BXXTMaths for uint256;
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'BXXTStandardToken':
    |    function transferOwnership(address _newOwner) onlyOwner {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BXXTStandardToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BXXTStandardToken':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BXXTStandardToken':
    |            //most of these things are not necesary
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BXXTStandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'BXXTStandardToken':
    |        
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        // Notify anyone listening that this approval done
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(182)

[33mWarning[0m for LockedEther in contract 'Bitshield':
    |  
    |}
  > |contract Bitshield is BXXTStandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(194)

[33mWarning[0m for UnhandledException in contract 'Bitshield':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bitshield':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitshield':
    |    function transferOwnership(address _newOwner) onlyOwner {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitshield':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitshield':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitshield':
    |            //most of these things are not necesary
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitshield':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitshield':
    |        
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        // Notify anyone listening that this approval done
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitshield':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(215)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    /** 
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) onlyOwner {
    |        if (_newOwner != address(0)) {
    |            owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) onlyOwner {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x41f08cdff7f90368476adffa271a911bd101d6a7.sol(117)


