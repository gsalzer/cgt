Processing contract: /home/jiaming/mavs_srcs/contract@0x836175e10c294d76fb44135d666b3eb76a62e0f0.sol:AtlantisCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x836175e10c294d76fb44135d666b3eb76a62e0f0.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'AtlantisCoin':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract AtlantisCoin {
    |    string public version = '0.1';
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x836175e10c294d76fb44135d666b3eb76a62e0f0.sol(5)

[33mWarning[0m for UnhandledException in contract 'AtlantisCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x836175e10c294d76fb44135d666b3eb76a62e0f0.sol(60)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AtlantisCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x836175e10c294d76fb44135d666b3eb76a62e0f0.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'AtlantisCoin':
    |        if (balances[msg.sender] < _value) return false;
    |        if (balances[_to] + _value < balances[_to]) return false;
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x836175e10c294d76fb44135d666b3eb76a62e0f0.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'AtlantisCoin':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowances[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x836175e10c294d76fb44135d666b3eb76a62e0f0.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'AtlantisCoin':
    |        balances[_from] -= _value;
    |        balances[_to] += _value;
  > |        allowances[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x836175e10c294d76fb44135d666b3eb76a62e0f0.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'AtlantisCoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] < _value) return false;
  > |        balances[msg.sender] -= _value;
    |        _totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x836175e10c294d76fb44135d666b3eb76a62e0f0.sol(79)


