Processing contract: /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address owner;
    |    address newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(
    |        address _newOwner) 
    |        public 
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function viewOwner()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function viewTransferCount()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function isTransferPending() 
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership()
    |         public 
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        onlyOwner 
    |    {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |
  > |        owner = newOwner;
    |        newOwner = address(0);
    |        transferCount++;
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        owner = newOwner;
  > |        newOwner = address(0);
    |        transferCount++;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        owner = newOwner;
    |        newOwner = address(0);
  > |        transferCount++;
    |
    |        emit TransferOwnership(
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(117)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function add(
    |        uint256 a, 
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(126)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is ERC20Interface, Owned {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(180)

[33mWarning[0m for UnhandledException in contract 'Token':
    |    {
    |        if (approve(_spender, _value)) {
  > |            require(ApproveAndCallFallBack(_spender).receiveApproval(msg.sender, _value, this, _data) == true);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |    {
    |        if (approve(_spender, _value)) {
  > |            require(ApproveAndCallFallBack(_spender).receiveApproval(msg.sender, _value, this, _data) == true);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[_from] = balances[_from].sub(_value);  
  > |        balances[_to] = balances[_to].add(_value);   
    |
    |        incomes[_to] = incomes[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_to] = balances[_to].add(_value);   
    |
  > |        incomes[_to] = incomes[_to].add(_value);
    |        expenses[_from] = expenses[_from].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require (balances[_from] >= _value);
    |
  > |        balances[_from] = balances[_from].sub(_value);  
    |        balances[_to] = balances[_to].add(_value);   
    |
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        incomes[_to] = incomes[_to].add(_value);
  > |        expenses[_from] = expenses[_from].add(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require (_spender != 0x0);
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        returns (bool success) 
    |    {
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        return _transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        onlyOwner 
    |    {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(msg.sender == newOwner);
    |
  > |        owner = newOwner;
    |        newOwner = address(0);
    |        transferCount++;
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        owner = newOwner;
  > |        newOwner = address(0);
    |        transferCount++;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        owner = newOwner;
    |        newOwner = address(0);
  > |        transferCount++;
    |
    |        emit TransferOwnership(
  at /home/jiaming/mavs_srcs/contract@0xdf733b5e9eb99356da3700033b653169deea34ce.sol(117)


