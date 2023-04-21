Processing contract: /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol:JigsawAI
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol(99)

[33mWarning[0m for LockedEther in contract 'JigsawAI':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract JigsawAI is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'JigsawAI':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'JigsawAI':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'JigsawAI':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'JigsawAI':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'JigsawAI':
    |   }
    |    function changeOwner(address _newOwner) public onlyOwner{
  > |       owner = _newOwner;
    |   }
    |   /**
  at /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol(172)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2e56774cc17726ca4e32c2a226e8d7d1afa9956e.sol(6)


