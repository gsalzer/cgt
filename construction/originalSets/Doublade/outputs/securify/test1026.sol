Processing contract: /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol:TheMoveToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |    */
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(60)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(155)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(22)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        // require (_value <= _allowance);
    |
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(113)

[33mWarning[0m for DAOConstantGas in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(301)

[33mWarning[0m for LockedEther in contract 'TheMoveToken':
    |}
    |
  > |contract TheMoveToken is StandardToken, Ownable {
    |    string public constant name = "MOVE Token";
    |    string public constant symbol = "MOVE";
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(160)

[33mWarning[0m for TODAmount in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(301)

[31mViolation[0m for TODReceiver in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(301)

[33mWarning[0m for UnhandledException in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TheMoveToken':
    |
    |    function withdrawEther(uint256 amount) external onlyOwner {
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    */
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        // require (_value <= _allowance);
    |
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function setupPREICOPeriod(uint _start, uint _end) public onlyOwner {
    |        require(_start < _end);
  > |        preicoStartDate = _start;
    |        preicoEndDate = _end;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        require(_start < _end);
    |        preicoStartDate = _start;
  > |        preicoEndDate = _end;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function setupICOPeriod(uint _start, uint _end) public onlyOwner {
    |        require(_start < _end);
  > |        icoStartDate = _start;
    |        icoEndDate = _end;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        require(_start < _end);
    |        icoStartDate = _start;
  > |        icoEndDate = _end;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    
    |    function setRate(uint256 _rate) public onlyOwner {
  > |        rate = _rate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        int256 amountToBurn = int256(preicoSupply) - int256(tokensSold);
    |        if (amountToBurn > 0) {
  > |            balances[this] = balances[this].sub(uint256(amountToBurn));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |
    |        issueTokens(_sender, tokens);
  > |        tokensSold += tokens;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    // Use with extreme caution this will burn the rest of the tokens in the contract
    |    function burnICOTokens() public onlyOwner {
  > |        balances[this] = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        int256 amountToBurn = int256(bonusesSupply) - int256(bonusesSold);
    |        if (amountToBurn > 0) {
  > |            balances[this] = balances[this].sub(uint256(amountToBurn));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |        uint256 weiAmount = msg.value;
    |
  > |        raisedForEther = raisedForEther.add(weiAmount);
    |
    |        // calculate token amount to be created
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |
    |        issueTokens(_sender, tokens);
  > |        tokensSold += tokens;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    
    |    function setTokensSold(uint256 amount) public onlyOwner {
  > |        tokensSold = amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |                bonuses = 0;
    |            } else {
  > |                bonusesSold += bonuses;
    |            }
    |            return bonuses;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |
    |    function issueTokens(address _to, uint256 _value) internal returns (bool) {
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[this] = balances[this].sub(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'TheMoveToken':
    |    function issueTokens(address _to, uint256 _value) internal returns (bool) {
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[this] = balances[this].sub(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x40c505929f4ebeba65c84cc0f2ca6f48b05919c4.sol(371)


