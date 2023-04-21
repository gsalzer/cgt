Processing contract: /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol:BRI
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol:MyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BRI':
    |}
    |
  > |contract BRI is StandardToken, Ownable {
    |  string public constant name = "Briant Coin";
    |  string public constant symbol = "BRI";
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BRI':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BRI':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'BRI':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BRI':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(109)

[33mWarning[0m for LockedEther in contract 'MyToken':
    |}
    |
  > |contract MyToken is ERC20Basic {
    |  
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(86)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    function Ownable() {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(54)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |  }
    |}
  > |contract StandardToken is MyToken, ERC20 {
    |  mapping (address => mapping (address => uint)) allowed;
    |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) {
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x678105d3ea35a0465a2968b93f592c0775087694.sol(109)


