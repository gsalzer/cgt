Processing contract: /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol:BasicToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol:MKCStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol:MKCToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MKCStop':
    |// File: contracts/MKCStop.sol
    |
  > |contract MKCStop is Ownable {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'MKCStop':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'MKCStop':
    |contract MKCStop is Ownable {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'MKCStop':
    |        _;
    |    }
  > |    function stop() public onlyOwner {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'MKCStop':
    |        stopped = true;
    |    }
  > |    function start() public onlyOwner {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCStop':
    |    }
    |    function stop() public onlyOwner {
  > |        stopped = true;
    |    }
    |    function start() public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCStop':
    |    }
    |    function start() public onlyOwner {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(257)

[31mViolation[0m for LockedEther in contract 'MKCToken':
    |// File: contracts/MKCToken.sol
    |
  > |contract MKCToken is MKCStop, StandardToken{
    |    string public name = "MKC Token";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(264)

[31mViolation[0m for UnrestrictedWrite in contract 'MKCToken':
    |// File: contracts/MKCToken.sol
    |
  > |contract MKCToken is MKCStop, StandardToken{
    |    string public name = "MKC Token";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |    function destroy(uint256 _amount) external onlyOwner stoppable  returns (bool success){
    |        require(balances[msg.sender] >= _amount);
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        totalSupply_ = totalSupply_.sub(_amount);
    |        emit Destroy(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |        require(balances[msg.sender] >= _amount);
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        totalSupply_ = totalSupply_.sub(_amount);
    |        emit Destroy(msg.sender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |    }
    |    function stop() public onlyOwner {
  > |        stopped = true;
    |    }
    |    function start() public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |    }
    |    function start() public onlyOwner {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'MKCToken':
    |// File: contracts/MKCToken.sol
    |
  > |contract MKCToken is MKCStop, StandardToken{
    |    string public name = "MKC Token";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(264)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(11)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(57)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe65c81de85cf95b6835bc465963f98362c48b855.sol(235)


