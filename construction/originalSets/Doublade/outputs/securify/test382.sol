Processing contract: /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol:PullPayment
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol:UmbrellaCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(67)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(151)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  bool public stopped;
    |
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Pausable is Ownable {
  > |  bool public stopped;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function emergencyStop() external onlyOwner {
    |    stopped = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function release() external onlyOwner onlyInEmergency {
    |    stopped = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  // called by the owner on emergency, triggers stopped state
    |  function emergencyStop() external onlyOwner {
  > |    stopped = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function release() external onlyOwner onlyInEmergency {
  > |    stopped = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(176)

[33mWarning[0m for DAOConstantGas in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    require (payee.send(payment));
    |    
    |    LogRefundETH(payee,payment);
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(131)

[33mWarning[0m for LockedEther in contract 'PullPayment':
    |}
    |
  > |contract PullPayment {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'PullPayment':
    |  using SafeMath for uint;
    |  
  > |  mapping(address => uint) public payments;
    |
    |  event LogRefundETH(address to, uint value);
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'PullPayment':
    |
    |  // withdraw accumulated balance, called by payee
  > |  function withdrawPayments() {
    |    address payee = msg.sender;
    |    uint payment = payments[payee];
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(122)

[33mWarning[0m for TODReceiver in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    require (payee.send(payment));
    |    
    |    LogRefundETH(payee,payment);
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(131)

[33mWarning[0m for UnhandledException in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    require (payee.send(payment));
    |    
    |    LogRefundETH(payee,payment);
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'PullPayment':
    |    require (this.balance >= payment);
    |
  > |    payments[payee] = 0;
    |
    |    require (payee.send(payment));
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(129)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.2;
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is BasicToken, ERC20 {
    |  mapping (address => mapping (address => uint)) allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(96)

[33mWarning[0m for LockedEther in contract 'UmbrellaCoin':
    | *  UmbrellaCoin token contract.
    | */
  > |contract UmbrellaCoin is StandardToken, Ownable {
    |  string public constant name = "UmbrellaCoin";
    |  string public constant symbol = "UMC";
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'UmbrellaCoin':
    |
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'UmbrellaCoin':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'UmbrellaCoin':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) revert();
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'UmbrellaCoin':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x190fb342aa6a15eb82903323ae78066ff8616746.sol(151)


