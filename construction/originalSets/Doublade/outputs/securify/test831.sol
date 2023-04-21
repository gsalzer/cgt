Processing contract: /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol:RepuX
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(89)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    address public ownerCandidate;
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public ownerCandidate;
    |    event OwnerTransfer(address originalOwner, address currentOwner);
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public ownerCandidate;
    |    event OwnerTransfer(address originalOwner, address currentOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function proposeNewOwner(address newOwner) public onlyOwner {
    |        require(newOwner != address(0) && newOwner != owner);
    |        ownerCandidate = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnerTransfer() public {
    |        require(msg.sender == ownerCandidate);
    |        OwnerTransfer(owner, ownerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function proposeNewOwner(address newOwner) public onlyOwner {
    |        require(newOwner != address(0) && newOwner != owner);
  > |        ownerCandidate = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(msg.sender == ownerCandidate);
    |        OwnerTransfer(owner, ownerCandidate);
  > |        owner = ownerCandidate;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(56)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * By OpenZeppelin: https://github.com/OpenZeppelin/zeppelin-solidity/contracts/SafeMath.sol
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x35516eddadb9a3b88e43ebcd271a56c130ea41b6.sol(172)


