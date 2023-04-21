Processing contract: /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol:IMPBSCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IMPBSCoin':
    | * @title IMPCoin implementation based on ERC20 standard token
    | */
  > |contract IMPBSCoin is StandardToken {
    |    
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'IMPBSCoin':
    |        require(_to != address(0));
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'IMPBSCoin':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'IMPBSCoin':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'IMPBSCoin':
    |    */
    |    function increaseApproval(address _spender,uint256 _addedValue) public returns (bool){
  > |        allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'IMPBSCoin':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'IMPBSCoin':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(213)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(32)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_to != address(0));
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function increaseApproval(address _spender,uint256 _addedValue) public returns (bool){
  > |        allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x47262403ba87b0eae03d110a5ca03ad503545305.sol(213)


