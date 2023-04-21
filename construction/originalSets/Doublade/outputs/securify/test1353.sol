Processing contract: /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol:Aligato
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol:Burnable
Processing contract: /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol:Permissioned
Processing contract: /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'Aligato':
    |    returns (bool){
    |        require(_amount <= address(this).balance, "Not enough balance!");
  > |        owner.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(339)

[33mWarning[0m for LockedEther in contract 'Aligato':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract Aligato is ERC20Interface, Owned, Permissioned, Burnable {
    |
    |    using SafeMath for uint256; //Be aware of overflows
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(113)

[33mWarning[0m for TODAmount in contract 'Aligato':
    |    returns (bool){
    |        require(_amount <= address(this).balance, "Not enough balance!");
  > |        owner.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(339)

[31mViolation[0m for TODReceiver in contract 'Aligato':
    |    returns (bool){
    |        require(_amount <= address(this).balance, "Not enough balance!");
  > |        owner.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(339)

[33mWarning[0m for UnhandledException in contract 'Aligato':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(262)

[33mWarning[0m for UnhandledException in contract 'Aligato':
    |    returns (bool){
    |        require(_amount <= address(this).balance, "Not enough balance!");
  > |        owner.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(339)

[33mWarning[0m for UnhandledException in contract 'Aligato':
    |    external onlyOwner
    |    returns(bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, _value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Aligato':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Aligato':
    |    returns (bool){
    |        require(_amount <= address(this).balance, "Not enough balance!");
  > |        owner.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(339)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Aligato':
    |    external onlyOwner
    |    returns(bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, _value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |    function transferOwnership(address _newOwner)
    |    external onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |    external {
    |        require(msg.sender == newOwner, "You are not new Owner!");
  > |        owner = newOwner;
    |        newOwner = address(0);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |        require(msg.sender == newOwner, "You are not new Owner!");
    |        owner = newOwner;
  > |        newOwner = address(0);
    |        emit OwnershipTransferred(owner, newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |    {
    |        require (isLocked == true, "It is unlocked already!"); //you can unlock only once
  > |        isLocked = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |        require(_balanceOf[_from] >= _value, "Not enough balance!");
    |        // Subtract from the sender
  > |        _balanceOf[_from] = _balanceOf[_from].sub(_value);
    |        // Add the same to the recipient
    |        _balanceOf[_to] = _balanceOf[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |        _balanceOf[_from] = _balanceOf[_from].sub(_value);
    |        // Add the same to the recipient
  > |        _balanceOf[_to] = _balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |        // Check balance
    |        require(_value <= _balanceOf[_from], "Not enough balance!");
  > |        _allowance[_from][msg.sender] = _allowance[_from][msg.sender].sub(_value);
    |        _transfer(_from, _to, _value);
    |        emit Approval(_from, _to, _allowance[_from][_to]);
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |    public
    |    returns(bool success) {
  > |        _allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |        require(_value <= _balanceOf[_from], "Insuffient balance!");
    |        // Subtract from the sender's allowance
  > |        _allowance[_from][msg.sender] = _allowance[_from][msg.sender].sub(_value);
    |        _burn(_from, _value);
    |        emit Approval(_from, msg.sender, _allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |        require(_balanceOf[_from] >= _value, "Insuffient balance!");
    |        // Subtract from the sender
  > |        _balanceOf[_from] = _balanceOf[_from].sub(_value);
    |        // Updates totalSupply
    |        totalSupply = totalSupply.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'Aligato':
    |        _balanceOf[_from] = _balanceOf[_from].sub(_value);
    |        // Updates totalSupply
  > |        totalSupply = totalSupply.sub(_value);
    |        emit Burn(msg.sender, _value);
    |        emit Transfer(_from, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(322)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner)
    |    external onlyOwner {
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership()
    |    external {
    |        require(msg.sender == newOwner, "You are not new Owner!");
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner)
    |    external onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    external {
    |        require(msg.sender == newOwner, "You are not new Owner!");
  > |        owner = newOwner;
    |        newOwner = address(0);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner, "You are not new Owner!");
    |        owner = newOwner;
  > |        newOwner = address(0);
    |        emit OwnershipTransferred(owner, newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(88)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |* @dev Math operations with safety checks that throw on error
    |*/
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x55dca321ca5c612d398ee90e98fd8b4df5e912ea.sol(7)


