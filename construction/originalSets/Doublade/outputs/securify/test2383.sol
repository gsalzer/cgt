Processing contract: /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol:MannaCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'MannaCoin':
    |  
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(212)

[33mWarning[0m for LockedEther in contract 'MannaCoin':
    |}
    |
  > |contract MannaCoin is ERC20Interface, Owned{
    |    using SafeMath for uint;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(65)

[33mWarning[0m for TODAmount in contract 'MannaCoin':
    |  
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(212)

[33mWarning[0m for TODReceiver in contract 'MannaCoin':
    |  
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(212)

[33mWarning[0m for UnhandledException in contract 'MannaCoin':
    |  
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MannaCoin':
    |  
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |        require(balances[msg.sender] >= tokens );
    |        require(balances[to] + tokens >= balances[to]);
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender,to,tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |        require(balances[to] + tokens >= balances[to]);
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender,to,tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |        require(balances[_to] + _tokens >= balances[_to]);
    |        balances[this] = balances[this].sub(_tokens);
  > |        balances[_to] = balances[_to].add(_tokens);
    |        emit Transfer(this,_to,_tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success){
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender,spender,tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |        require(balances[from] >= tokens);
    |        balances[from] = balances[from].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        emit Transfer(from,to,tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |        balances[from] = balances[from].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        emit Transfer(from,to,tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |        require(balances[this] >= _tokens);
    |        require(balances[_to] + _tokens >= balances[_to]);
  > |        balances[this] = balances[this].sub(_tokens);
    |        balances[_to] = balances[_to].add(_tokens);
    |        emit Transfer(this,_to,_tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |        require(tokens <= allowed[from][msg.sender]); //check allowance
    |        require(balances[from] >= tokens);
  > |        balances[from] = balances[from].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'MannaCoin':
    |    
    |        // update state
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(186)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(24)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x9b03d6b95bb730d1be29658f6b879ecf6c1c64a8.sol(31)


