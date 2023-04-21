Processing contract: /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol:BCTAToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'BCTAToken':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract BCTAToken is owned {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(72)

[33mWarning[0m for UnhandledException in contract 'BCTAToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCTAToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'BCTAToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'BCTAToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(233)

[31mViolation[0m for UnrestrictedWrite in contract 'BCTAToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |            previousBalances = balanceOf[_from] + balanceOf[_to];
    |            // Subtract from the sender
  > |            balanceOf[_from] -= _value;
    |            // Add the same to the recipient
    |            balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |            balanceOf[_from] -= _value;
    |            // Add the same to the recipient
  > |            balanceOf[_to] += _value;
    |            emit Transfer(_from, _to, _value);
    |            // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |            
    |            previousBalances = balanceOf[_from] + balanceOf[_to] + balanceOf[adminAddressForComissions];
  > |            balanceOf[_from] -= _value;
    |            
    |            balanceOf[_to] += _value.sub(comission);
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |            balanceOf[_from] -= _value;
    |            
  > |            balanceOf[_to] += _value.sub(comission);
    |            emit Transfer(_from, _to, _value.sub(comission));
    |            
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |            emit Transfer(_from, _to, _value.sub(comission));
    |            
  > |            balanceOf[adminAddressForComissions] += comission;
    |            emit Transfer(_from, adminAddressForComissions, comission);
    |            
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |    
    |    function setAdminAddressForComissions(address contractAddress) public onlyOwner {
  > |        adminAddressForComissions = contractAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BCTAToken':
    |    
    |    function changeCreatorBalance(uint256 newBalance) public onlyOwner {
  > |        balanceOf[owner] = newBalance;
    |    }
    |     
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(107)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(7)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |    address public owner;
    | 
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    | 
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5c523ddd4d9aa6072aaab890e3107e4471d06f31.sol(66)


