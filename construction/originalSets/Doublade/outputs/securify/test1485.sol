Processing contract: /home/jiaming/mavs_srcs/contract@0x5e97a458f3d5794d3145cb863c93658a04cee75c.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5e97a458f3d5794d3145cb863c93658a04cee75c.sol:Polyion
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Polyion':
    |}
    |
  > |contract Polyion is ERC20Interface {
    |    string public constant symbol = "PLYN";
    |    string public constant name = "Polyion";
  at /home/jiaming/mavs_srcs/contract@0x5e97a458f3d5794d3145cb863c93658a04cee75c.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Polyion':
    |            if (balances[_to] + _amount > balances[_to]) {
    |
  > |                balances[msg.sender] -= _amount;
    |                balances[_to] += _amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x5e97a458f3d5794d3145cb863c93658a04cee75c.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Polyion':
    |
    |                balances[_from] -= _amount;
  > |                allowed[_from][msg.sender] -= _amount;
    |                balances[_to] += _amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x5e97a458f3d5794d3145cb863c93658a04cee75c.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'Polyion':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _amount) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5e97a458f3d5794d3145cb863c93658a04cee75c.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Polyion':
    |    function initialize(address _address) internal returns (bool success) {
    |        if (_totalSupply < _cutoff && !initialized[_address]) {
  > |            initialized[_address] = true;
    |            balances[_address] = _airdropAmount;
    |            _totalSupply += _airdropAmount;
  at /home/jiaming/mavs_srcs/contract@0x5e97a458f3d5794d3145cb863c93658a04cee75c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Polyion':
    |        if (_totalSupply < _cutoff && !initialized[_address]) {
    |            initialized[_address] = true;
  > |            balances[_address] = _airdropAmount;
    |            _totalSupply += _airdropAmount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5e97a458f3d5794d3145cb863c93658a04cee75c.sol(161)


