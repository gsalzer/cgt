Processing contract: /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol:CasinoTkoen
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol:DateTime
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol:FrozenableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CasinoTkoen':
    |}
    |
  > |contract CasinoTkoen is FrozenableToken{
    |    /**
    |     * Constructor function
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |    function transferOperator(address _newOperator) public onlyOwner {
    |        require(_newOperator != address(0));
  > |        operator = _newOperator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |
    |    function addBlackList(address _blackAddr) public onlyOperator {
  > |        blackList[_blackAddr] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |    
    |    function removeBlackList(address _blackAddr) public onlyOperator {
  > |        delete blackList[_blackAddr];
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        // Add the same to the recipient
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        // Add the same to the recipient
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |    function transferFrom(address _from, address _to, uint256 _value) public isNotBlack(msg.sender) returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |    function approve(address _spender, uint256 _value) public isNotBlack(msg.sender) returns (bool success) {
    |        require(_value <= balanceOf[msg.sender]);     // Check balance
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balanceOf[burner] = balanceOf[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |        address burner = msg.sender;
    |        balanceOf[burner] = balanceOf[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |        require(_value > 0);
    |        require(_value <= totalFrozen);
  > |        balanceOf[owner] = balanceOf[owner].add(_value);
    |        totalFrozen = totalFrozen.sub(_value);
    |        totalSupply = totalSupply.add(_value);
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |        require(_value <= totalFrozen);
    |        balanceOf[owner] = balanceOf[owner].add(_value);
  > |        totalFrozen = totalFrozen.sub(_value);
    |        totalSupply = totalSupply.add(_value);
    |        uint256 timestamp = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |        balanceOf[owner] = balanceOf[owner].add(_value);
    |        totalFrozen = totalFrozen.sub(_value);
  > |        totalSupply = totalSupply.add(_value);
    |        uint256 timestamp = block.timestamp;
    |        uint256 releasedDay = timestamp.toDay();
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'CasinoTkoen':
    |        uint256 releasedDay = timestamp.toDay();
    |        _transfer(owner,_receiver,_value);
  > |        unfreezeRecords[releasedDay] = UnfreezeRecord(_receiver, _value, timestamp);
    |        emit Unfreeze(_receiver, _value, timestamp);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(376)

[33mWarning[0m for LockedEther in contract 'Controlled':
    |}
    |
  > |contract Controlled{
    |    address public owner;
    |    address public operator;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    address public owner;
    |    address public operator;
  > |    mapping (address => bool) public blackList;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    }
    |
  > |    function addBlackList(address _blackAddr) public onlyOperator {
    |        blackList[_blackAddr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(239)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    }
    |    
  > |    function removeBlackList(address _blackAddr) public onlyOperator {
    |        delete blackList[_blackAddr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |
    |contract Controlled{
  > |    address public owner;
    |    address public operator;
    |    mapping (address => bool) public blackList;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |contract Controlled{
    |    address public owner;
  > |    address public operator;
    |    mapping (address => bool) public blackList;
    |
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    }
    |
  > |    function transferOperator(address _newOperator) public onlyOwner {
    |        require(_newOperator != address(0));
    |        operator = _newOperator;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    function transferOperator(address _newOperator) public onlyOwner {
    |        require(_newOperator != address(0));
  > |        operator = _newOperator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |
    |    function addBlackList(address _blackAddr) public onlyOperator {
  > |        blackList[_blackAddr] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    
    |    function removeBlackList(address _blackAddr) public onlyOperator {
  > |        delete blackList[_blackAddr];
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(244)

[33mWarning[0m for LockedEther in contract 'DateTime':
    |}
    |
  > |library DateTime {
    |        /*
    |         *  Date and Time utilities for ethereum contracts
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(30)

[33mWarning[0m for LockedEther in contract 'FrozenableToken':
    |}
    |
  > |contract FrozenableToken is TokenERC20{
    |    using SafeMath for uint;
    |    using DateTime for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |    function transferOperator(address _newOperator) public onlyOwner {
    |        require(_newOperator != address(0));
  > |        operator = _newOperator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |
    |    function addBlackList(address _blackAddr) public onlyOperator {
  > |        blackList[_blackAddr] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |    
    |    function removeBlackList(address _blackAddr) public onlyOperator {
  > |        delete blackList[_blackAddr];
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        // Add the same to the recipient
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        // Add the same to the recipient
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public isNotBlack(msg.sender) returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |    function approve(address _spender, uint256 _value) public isNotBlack(msg.sender) returns (bool success) {
    |        require(_value <= balanceOf[msg.sender]);     // Check balance
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balanceOf[burner] = balanceOf[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |        address burner = msg.sender;
    |        balanceOf[burner] = balanceOf[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |        require(_value > 0);
    |        require(_value <= totalFrozen);
  > |        balanceOf[owner] = balanceOf[owner].add(_value);
    |        totalFrozen = totalFrozen.sub(_value);
    |        totalSupply = totalSupply.add(_value);
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |        require(_value <= totalFrozen);
    |        balanceOf[owner] = balanceOf[owner].add(_value);
  > |        totalFrozen = totalFrozen.sub(_value);
    |        totalSupply = totalSupply.add(_value);
    |        uint256 timestamp = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |        balanceOf[owner] = balanceOf[owner].add(_value);
    |        totalFrozen = totalFrozen.sub(_value);
  > |        totalSupply = totalSupply.add(_value);
    |        uint256 timestamp = block.timestamp;
    |        uint256 releasedDay = timestamp.toDay();
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenableToken':
    |        uint256 releasedDay = timestamp.toDay();
    |        _transfer(owner,_receiver,_value);
  > |        unfreezeRecords[releasedDay] = UnfreezeRecord(_receiver, _value, timestamp);
    |        emit Unfreeze(_receiver, _value, timestamp);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(376)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(7)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |}
    |
  > |contract TokenERC20 is Controlled{
    |    using SafeMath for uint;
    |    // Public variables of the token
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        // Add the same to the recipient
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        // Add the same to the recipient
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public isNotBlack(msg.sender) returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public isNotBlack(msg.sender) returns (bool success) {
    |        require(_value <= balanceOf[msg.sender]);     // Check balance
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balanceOf[burner] = balanceOf[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        address burner = msg.sender;
    |        balanceOf[burner] = balanceOf[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(burner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferOperator(address _newOperator) public onlyOwner {
    |        require(_newOperator != address(0));
  > |        operator = _newOperator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function addBlackList(address _blackAddr) public onlyOperator {
  > |        blackList[_blackAddr] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    
    |    function removeBlackList(address _blackAddr) public onlyOperator {
  > |        delete blackList[_blackAddr];
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe5d078f380d67b72ece5c55c65c4e0ec97ea1439.sol(244)


