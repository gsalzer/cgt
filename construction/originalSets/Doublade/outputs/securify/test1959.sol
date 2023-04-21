Processing contract: /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol:Honte
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol(99)

[33mWarning[0m for LockedEther in contract 'Honte':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract Honte is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Honte':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'Honte':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Honte':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Honte':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Honte':
    |   }
    |    function changeOwner(address _newOwner) public onlyOwner{
  > |       owner = _newOwner;
    |   }
    |   /**
  at /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol(172)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7eb6e21af11d5382d702a994d92cbcd36a085e45.sol(6)


