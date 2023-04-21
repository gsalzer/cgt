Processing contract: /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol:BriantToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol:YESToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol:newToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BriantToken':
    |}
    |
  > | contract BriantToken is StandardToken, Ownable {
    |  string public constant name = "Briant New Coin 4";
    |  string public constant symbol = "BRI4";
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BriantToken':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BriantToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'BriantToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BriantToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'BriantToken':
    |  // Constructor
    |  function Briant2Token() { 
  > |      balances[msg.sender] = 100000000; 
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(129)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    function Ownable() {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(54)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is newToken, ERC20 {
    |  mapping (address => mapping (address => uint)) allowed;
    |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) {
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(112)

[33mWarning[0m for LockedEther in contract 'YESToken':
    |}
    |
  > |contract YESToken is Ownable, BriantToken {
    |
    |    /* Initializes contract with initial supply tokens to the creator of the contract */
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'YESToken':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'YESToken':
    |  // Constructor
    |  function Briant2Token() { 
  > |      balances[msg.sender] = 100000000; 
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'YESToken':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'YESToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'YESToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'YESToken':
    |  }
    |   function mintToken(address target, uint256 mintedAmount) onlyOwner {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'YESToken':
    |   function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(165)

[33mWarning[0m for LockedEther in contract 'newToken':
    |}
    |
  > |contract newToken is ERC20Basic {
    |  
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'newToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'newToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdc448e8a2a92a5ce799b197e982d773c605318a4.sol(86)


