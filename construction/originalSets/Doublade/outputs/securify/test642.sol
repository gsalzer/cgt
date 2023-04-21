Processing contract: /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'ERC20':
    |}
    |
  > |contract ERC20 is Ownable{
    |    /* Public variables of the token */
    |    string public standard = 'CREDITS';
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(22)

[33mWarning[0m for UnhandledException in contract 'ERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(78)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |}
    |
  > |contract ERC20 is Ownable{
    |    /* Public variables of the token */
    |    string public standard = 'CREDITS';
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require (balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value); // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require (_value <= allowance[_from][msg.sender]) ; // Check allowance
    |      
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |      
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        require (balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
  > |        balanceOf[msg.sender] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value); // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function approve(address _spender, uint256 _value)public
    |    returns(bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function burn(uint256 _value) public onlyOwner  returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |}
    |
  > |contract ERC20 is Ownable{
    |    /* Public variables of the token */
    |    string public standard = 'CREDITS';
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    }
    |    function setICOAddress(address _address) public onlyOwner{
  > |        ICOAddress=_address;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    
    |   function setIsFrozen(bool _IsFrozen)public onlyOwner{
  > |      IsFrozen=_IsFrozen;
    |    }
    |    /* Send coins */
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(100)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x292317a267adfb97d1b4e3ffd04f9da399cf973b.sol(5)


