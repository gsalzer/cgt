Processing contract: /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol:Extreme
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol:ExtremeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol:newToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Extreme':
    |}
    |
  > | contract Extreme is StandardToken, Ownable {
    |  string public constant name = "Extreme Coin";
    |  string public constant symbol = "XT";
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Extreme':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Extreme':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Extreme':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Extreme':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(117)

[33mWarning[0m for LockedEther in contract 'ExtremeToken':
    |}
    |
  > |contract ExtremeToken is Ownable, Extreme {
    |
    |    /* Initializes contract with initial supply tokens to the creator of the contract */
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'ExtremeToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'ExtremeToken':
    |    // Check is not needed because sub(_allowance, _value) will already throw if this condition is not met
    |    // if (_value > _allowance) throw;
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'ExtremeToken':
    |    // if (_value > _allowance) throw;
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'ExtremeToken':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ExtremeToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'ExtremeToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'ExtremeToken':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'ExtremeToken':
    |  }
    |   function mintToken(address target, uint256 mintedAmount) onlyOwner {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ExtremeToken':
    |   function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(173)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    function Ownable() {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(59)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |There is no law stronger than the code
    |*/
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is newToken, ERC20 {
    |  mapping (address => mapping (address => uint)) allowed;
    |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) {
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(117)

[33mWarning[0m for LockedEther in contract 'newToken':
    |}
    |
  > |contract newToken is ERC20Basic {
    |  
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'newToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'newToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x23a20f8e0b5c79f39a2b4395a610a60fb30bc71d.sol(91)


