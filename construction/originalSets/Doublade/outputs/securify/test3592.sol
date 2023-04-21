Processing contract: /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol:EONToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EONToken':
    |}
    |
  > |contract EONToken is StandardToken {
    |  string public constant name = "EOS Network";
    |  string public constant symbol = "EON";
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'EONToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'EONToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'EONToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'EONToken':
    |
    |  function claim() public returns (bool) {
  > |    claimed[msg.sender] = true;
    |    emit Claim(msg.sender);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(142)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeb96f4caaea05e69f41c25ae42b58ffff7df628d.sol(113)


