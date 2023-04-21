Processing contract: /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol:TheMoveToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |    // timestamps for PRE-ICO phase
    |    uint public preicoStartDate;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        require(now > icoEndDate);
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(now > icoEndDate);
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(68)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(163)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(22)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        require(now > icoEndDate);
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        // require (_value <= _allowance);
    |
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(now > icoEndDate);
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(121)

[33mWarning[0m for DAOConstantGas in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(299)

[33mWarning[0m for LockedEther in contract 'TheMoveToken':
    |}
    |
  > |contract TheMoveToken is StandardToken, Ownable {
    |    string public constant name = "MOVE Token";
    |    string public constant symbol = "MOVE";
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(168)

[33mWarning[0m for TODAmount in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(299)

[31mViolation[0m for TODReceiver in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(299)

[33mWarning[0m for UnhandledException in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        require(now > icoEndDate);
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        require(now > icoEndDate);
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        // require (_value <= _allowance);
    |
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function setupPREICOPeriod(uint _start, uint _end) public onlyOwner {
    |        require(_start < _end);
  > |        preicoStartDate = _start;
    |        preicoEndDate = _end;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        require(_start < _end);
    |        preicoStartDate = _start;
  > |        preicoEndDate = _end;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function setupICOPeriod(uint _start, uint _end) public onlyOwner {
    |        require(_start < _end);
  > |        icoStartDate = _start;
    |        icoEndDate = _end;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        require(_start < _end);
    |        icoStartDate = _start;
  > |        icoEndDate = _end;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        int256 amountToBurn = int256(preicoSupply) - int256(tokensSold);
    |        if (amountToBurn > 0) {
  > |            balances[this] = balances[this].sub(uint256(amountToBurn));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    // Use with extreme caution this will burn the rest of the tokens in the contract
    |    function burnICOTokens() public onlyOwner {
  > |        balances[this] = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        int256 amountToBurn = int256(bonusesSupply) - int256(bonusesSold);
    |        if (amountToBurn > 0) {
  > |            balances[this] = balances[this].sub(uint256(amountToBurn));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        uint256 weiAmount = msg.value;
    |
  > |        raisedForEther = raisedForEther.add(weiAmount);
    |
    |        // calculate token amount to be issued
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |
    |        issueTokens(_sender, tokens);
  > |        tokensSold += tokens;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |
    |        issueTokens(_sender, tokens);
  > |        tokensSold += tokens;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |                bonuses = 0;
    |            } else {
  > |                bonusesSold += bonuses;
    |            }
    |            return bonuses;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    // This function transfers tokens to the contributor's account.
    |    function issueTokens(address _to, uint256 _value) internal returns (bool) {
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[this] = balances[this].sub(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function issueTokens(address _to, uint256 _value) internal returns (bool) {
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[this] = balances[this].sub(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfbd592011527e69d86961f6d70f9169195f17ca5.sol(366)


