Processing contract: /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |}
    |
  > |contract TokenERC20 is owned {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(20)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(169)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |}
    |
  > |contract TokenERC20 is owned {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |    returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |pragma solidity ^0.4.18;
    |
  > |interface tokenRecipient {
    |    function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external;
    |}
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |}
    |
  > |contract TokenERC20 is owned {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(20)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |    address public owner = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner = msg.sender;
    |
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(8)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x260cc4d721112a1b49ad2a84cee2b05e38a556fc.sol(16)


