Processing contract: /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol:GameChainCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'GameChainCoin':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract GameChainCoin {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(5)

[33mWarning[0m for UnhandledException in contract 'GameChainCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChainCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |        string tokenSymbol
    |    ) public {
  > |        totalSupply = 900000000;  // Update total supply with the decimal amount
    |        balanceOf[msg.sender] = totalSupply;                // Give the creator all initial tokens
    |        name = "GameChainCoin";                                   // Set the name for display purposes
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |    ) public {
    |        totalSupply = 900000000;  // Update total supply with the decimal amount
  > |        balanceOf[msg.sender] = totalSupply;                // Give the creator all initial tokens
    |        name = "GameChainCoin";                                   // Set the name for display purposes
    |        symbol = "GCC";                               // Set the symbol for display purposes
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChainCoin':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xa63e0e27deb06f344b5a614757a189084445a59a.sol(148)


