Processing contract: /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol:Trust
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
  at /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol(99)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol(6)

[33mWarning[0m for LockedEther in contract 'Trust':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract Trust is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Trust':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'Trust':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Trust':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Trust':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Trust':
    |   }
    |    function changeOwner(address _newOwner) public onlyOwner{
  > |       owner = _newOwner;
    |   }
    |   /**
  at /home/jiaming/mavs_srcs/contract@0xfb4df048903728fa2e805cebfdc4a31fd3024862.sol(172)


