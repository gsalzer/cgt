Processing contract: /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol:HumanStandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol:YEEToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    | function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(5)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |.*/
    |
  > |contract StandardToken is Token {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |    } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        allowed[msg.sender][_spender] = 0;
    |    } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(146)

[33mWarning[0m for LockedEther in contract 'YEEToken':
    |}
    |
  > |contract YEEToken is HumanStandardToken(10000000000000000000000000000,"Yee - A Blockchain-powered & Cloud-based Social Ecosystem",18,"YEE"){
    | function () public {
    |        //if ether is sent to this address, send it back.
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(203)

[33mWarning[0m for UnhandledException in contract 'YEEToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YEEToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        if(!_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'YEEToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'YEEToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'YEEToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'YEEToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'YEEToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |    } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'YEEToken':
    |        allowed[msg.sender][_spender] = 0;
    |    } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'YEEToken':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x922105fad8153f516bcfb829f56dc097a0e1d705.sol(192)


