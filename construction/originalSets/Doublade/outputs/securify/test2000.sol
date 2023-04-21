Processing contract: /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol:MyartPoint
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MyartPoint':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract MyartPoint is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(90)

[33mWarning[0m for UnhandledException in contract 'MyartPoint':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(267)

[33mWarning[0m for UnhandledException in contract 'MyartPoint':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyartPoint':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(267)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyartPoint':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        recordNewAddress(to);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        if (frozenAccount[msg.sender] || frozenAccount[spender]) revert();
    |
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        if (frozenAccount[msg.sender] || frozenAccount[spender]) revert();
    |
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |    function recordNewAddress(address _adr) internal {
    |        if (exists[_adr] == false) {
  > |            exists[_adr] = true;
    |            indices[number] = _adr;
    |            number++;
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        if (exists[_adr] == false) {
    |            exists[_adr] = true;
  > |            indices[number] = _adr;
    |            number++;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |            exists[_adr] = true;
    |            indices[number] = _adr;
  > |            number++;
    |        } 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |    // ------------------------------------------------------------------------
    |    function setEmergentHalt(bool _tag) public onlyOwner {
  > |        halted = _tag;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        recordNewAddress(to);
    |
  > |        balances[owner] = balances[owner].sub(amount);
    |        balances[to] = balances[to].add(amount);
    |        emit Transfer(address(0), to, amount);
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |
    |        balances[owner] = balances[owner].sub(amount);
  > |        balances[to] = balances[to].add(amount);
    |        emit Transfer(address(0), to, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |    function freeze(address account, bool tag) public onlyOwner {
    |        require(account != address(0));
  > |        frozenAccount[account] = tag;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        recordNewAddress(to);
    |
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'MyartPoint':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(243)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x818a6f5515e18a94ada2d6e30bf7748d8e45cc48.sol(10)


