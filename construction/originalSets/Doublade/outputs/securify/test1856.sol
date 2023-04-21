Processing contract: /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol:PeonyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |* @dev see https://github.com/ethereum/EIPs/issues/20
    |*/
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |*/
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  * @param newOwner The address to transfer ownership to.
    |  */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(62)

[33mWarning[0m for LockedEther in contract 'PeonyToken':
    |* @dev see https://github.com/ethereum/EIPs/issues/20
    |*/
  > |contract PeonyToken is Ownable, ERC20 {
    |  using SafeMath for uint256;
    |  string public version;
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |    require(totalSupplyLimit == 0 || totalSupply.add(amount) <= totalSupplyLimit);
    |
  > |    balances[owner] = balances[owner].add(amount);
    |    totalSupply = totalSupply.add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |
    |    balances[owner] = balances[owner].add(amount);
  > |    totalSupply = totalSupply.add(amount);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |    require(balances[owner].sub(amount) >= 0);
    |    require(totalSupply.sub(amount) >= 0);
  > |    balances[owner] = balances[owner].sub(amount);
    |    totalSupply = totalSupply.sub(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |    require(totalSupply.sub(amount) >= 0);
    |    balances[owner] = balances[owner].sub(amount);
  > |    totalSupply = totalSupply.sub(amount);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |  */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'PeonyToken':
    |    require(_address != 0x0);
    |
  > |    peony = _address;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(167)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |*Math operations with safety checks
    |*/
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x76b969cdcd7b03f76aed454d0e4a57421a8229e1.sol(242)


