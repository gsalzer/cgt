Processing contract: /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address owner;
    |    address newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(
    |        address _newOwner) 
    |        public 
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function viewOwner()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function viewTransferCount()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function isTransferPending() 
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership()
    |         public 
    |    {
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        onlyOwner 
    |    {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |
  > |        owner = newOwner;
    |        newOwner = address(0);
    |        transferCount++;
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        owner = newOwner;
  > |        newOwner = address(0);
    |        transferCount++;
    |
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        owner = newOwner;
    |        newOwner = address(0);
  > |        transferCount++;
    |
    |        emit TransferOwnership(
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(116)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function add(
    |        uint256 a, 
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(127)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is ERC20Interface, Owned {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(182)

[33mWarning[0m for UnhandledException in contract 'Token':
    |    {
    |        if (approve(_to, _value)) {
  > |            ApproveAndCallFallBack(_to).receiveApproval(msg.sender, _value, this, _data);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(364)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |    {
    |        if (approve(_to, _value)) {
  > |            ApproveAndCallFallBack(_to).receiveApproval(msg.sender, _value, this, _data);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(!frozenAccount[_to]);
    |
  > |        balances[_from] = balances[_from].sub(_value);  
    |        balances[_to] = balances[_to].add(_value);   
    |
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        incomes[_to] = incomes[_to].add(_value);
  > |        expenses[_from] = expenses[_from].add(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(!frozenAccount[_to]);
    |
  > |        allowed[msg.sender][_to] = _value;
    |
    |        emit Approval(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(allowed[_from][_to] >= _value);
    |        
  > |        allowed[_from][_to] = allowed[_from][_to].sub(_value);
    |        return _transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balances[msg.sender] >= _value);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);   
    |        totalSupply = totalSupply.sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        onlyOwner 
    |    {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(msg.sender == newOwner);
    |
  > |        owner = newOwner;
    |        newOwner = address(0);
    |        transferCount++;
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        owner = newOwner;
  > |        newOwner = address(0);
    |        transferCount++;
    |
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        owner = newOwner;
    |        newOwner = address(0);
  > |        transferCount++;
    |
    |        emit TransferOwnership(
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[_from] = balances[_from].sub(_value);  
  > |        balances[_to] = balances[_to].add(_value);   
    |
    |        incomes[_to] = incomes[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_to] = balances[_to].add(_value);   
    |
  > |        incomes[_to] = incomes[_to].add(_value);
    |        expenses[_from] = expenses[_from].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        returns (bool success)
    |    {
  > |        frozenAccount[_address] = freeze;
    |
    |        emit FreezeAccount(_address, freeze);
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);   
  > |        totalSupply = totalSupply.sub(_value);
    |
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        returns (bool success)
    |    {
  > |        balances[owner] = balances[owner].add(_value);
    |        totalSupply = totalSupply.add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    {
    |        balances[owner] = balances[owner].add(_value);
  > |        totalSupply = totalSupply.add(_value);
    |
    |        emit MintToken(_value);
  at /home/jiaming/mavs_srcs/contract@0x2d1a7a52cce8dda4c69f88c1d7751fbcc44e6a84.sol(432)


