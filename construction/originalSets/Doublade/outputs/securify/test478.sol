Processing contract: /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol:TokenSafe
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |  
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |  
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(44)

[33mWarning[0m for LockedEther in contract 'TokenSafe':
    |}
    |
  > |contract TokenSafe {
    |  mapping (uint256 => uint256) allocations;
    |  mapping (address => bool) isAddressInclude;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'TokenSafe':
    |  mapping (uint256 => uint256) allocations;
    |  mapping (address => bool) isAddressInclude;
  > |  uint256 public unlockTimeLine;
    |  uint256 public constant firstTimeLine = 1514044800;
    |  uint256 public constant secondTimeLine = 1521820800;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'TokenSafe':
    |  mapping (address => bool) isAddressInclude;
    |  uint256 public unlockTimeLine;
  > |  uint256 public constant firstTimeLine = 1514044800;
    |  uint256 public constant secondTimeLine = 1521820800;
    |  uint256 public constant thirdTimeLine = 1529769600;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'TokenSafe':
    |  uint256 public unlockTimeLine;
    |  uint256 public constant firstTimeLine = 1514044800;
  > |  uint256 public constant secondTimeLine = 1521820800;
    |  uint256 public constant thirdTimeLine = 1529769600;
    |  address public originalContract;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'TokenSafe':
    |  uint256 public constant firstTimeLine = 1514044800;
    |  uint256 public constant secondTimeLine = 1521820800;
  > |  uint256 public constant thirdTimeLine = 1529769600;
    |  address public originalContract;
    |  uint256 public constant exponent = 10**8;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'TokenSafe':
    |  uint256 public constant secondTimeLine = 1521820800;
    |  uint256 public constant thirdTimeLine = 1529769600;
  > |  address public originalContract;
    |  uint256 public constant exponent = 10**8;
    |  uint256 public constant limitAmount = 1500000000*exponent;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'TokenSafe':
    |  uint256 public constant thirdTimeLine = 1529769600;
    |  address public originalContract;
  > |  uint256 public constant exponent = 10**8;
    |  uint256 public constant limitAmount = 1500000000*exponent;
    |  uint256 public balance = 1500000000*exponent;
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'TokenSafe':
    |  address public originalContract;
    |  uint256 public constant exponent = 10**8;
  > |  uint256 public constant limitAmount = 1500000000*exponent;
    |  uint256 public balance = 1500000000*exponent;
    |  
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'TokenSafe':
    |  uint256 public constant exponent = 10**8;
    |  uint256 public constant limitAmount = 1500000000*exponent;
  > |  uint256 public balance = 1500000000*exponent;
    |  
    |
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'TokenSafe':
    |  }
    |
  > |  function unlock() external{
    |    require(now > firstTimeLine); //prevent untimely call
    |    require(isAddressInclude[msg.sender] == true); //prevent address unauthorized
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(85)

[33mWarning[0m for UnhandledException in contract 'TokenSafe':
    |    require(canWithdrawAmount > 0);
    |    
  > |    if (!StandardToken(originalContract).transfer(msg.sender, canWithdrawAmount )){
    |        //failed
    |        revert();
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSafe':
    |    require(canWithdrawAmount > 0);
    |    
  > |    if (!StandardToken(originalContract).transfer(msg.sender, canWithdrawAmount )){
    |        //failed
    |        revert();
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenSafe':
    |    
    |    if(now >= firstTimeLine){
  > |        unlockTimeLine = 1;
    |    }
    |    if(now >= secondTimeLine){
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenSafe':
    |    }
    |    if(now >= secondTimeLine){
  > |        unlockTimeLine = 2;
    |    }
    |    if (now >= thirdTimeLine){
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenSafe':
    |    }
    |    if (now >= thirdTimeLine){
  > |        unlockTimeLine = 3;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenSafe':
    |    
    |    //success
  > |    balance = balance - canWithdrawAmount;
    |    
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ef07a7888f70a1b0dfa9e482885b437b1d44f16.sol(110)


