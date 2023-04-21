Processing contract: /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol:VoxelX
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |
    |        // Send funds
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(316)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(246)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |        // Send tokens
  > |        token.transfer(beneficiary, tokens);
    |        emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(312)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |        // Send funds
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(316)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        finished = true;
    |        // send remaining tokens back to the owner
  > |        uint256 tokensLeft = token.balanceOf(this);
    |        token.transfer(owner, tokensLeft);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(366)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |        // send remaining tokens back to the owner
    |        uint256 tokensLeft = token.balanceOf(this);
  > |        token.transfer(owner, tokensLeft);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |        // Send tokens
  > |        token.transfer(beneficiary, tokens);
    |        emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |        // Send funds
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(316)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        finished = true;
    |        // send remaining tokens back to the owner
  > |        uint256 tokensLeft = token.balanceOf(this);
    |        token.transfer(owner, tokensLeft);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |        // send remaining tokens back to the owner
    |        uint256 tokensLeft = token.balanceOf(this);
  > |        token.transfer(owner, tokensLeft);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        // update total and individual contributions
  > |        weiRaised = weiRaised.add(weiAmount);
    |        contributions[beneficiary] = contributions[beneficiary].add(weiAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        // update total and individual contributions
    |        weiRaised = weiRaised.add(weiAmount);
  > |        contributions[beneficiary] = contributions[beneficiary].add(weiAmount);
    |
    |        // Send tokens
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // Escape hatch in case the sale needs to be urgently stopped
    |    function endSale() public onlyOwner {
  > |        finished = true;
    |        // send remaining tokens back to the owner
    |        uint256 tokensLeft = token.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // set rate for gray so we can handle time based sales rates
    |    function setRate(uint256 _rate) public onlyOwner {
  > |        rate = _rate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // set start time
    |    function setStartTime(uint256 _startTime) public onlyOwner {
  > |        startTime = _startTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // set end time
    |    function setEndTime(uint256 _endTime) public onlyOwner {
  > |        endTime = _endTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    // set finalized time so contract can be paused
    |    function setFinished(bool _finished) public onlyOwner {
  > |        finished = _finished;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(387)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(84)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(12)

[31mViolation[0m for LockedEther in contract 'Token':
    |contract tokenRecipient {function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public;}
    |
  > |contract Token is Ownable {
    |    // Public variables of the token
    |    string public name = "VoxelX GRAY";
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(91)

[33mWarning[0m for UnhandledException in contract 'Token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |contract tokenRecipient {function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public;}
    |
  > |contract Token is Ownable {
    |    // Public variables of the token
    |    string public name = "VoxelX GRAY";
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        balanceOf[msg.sender] -= _value;
    |        // Subtract from the sender
  > |        totalSupply -= _value;
    |        // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <= allowance[_from][msg.sender]);
    |        // Check allowance
  > |        balanceOf[_from] -= _value;
    |        // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(230)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        allowance[_from][msg.sender] -= _value;
    |        // Subtract from the sender's allowance
  > |        totalSupply -= _value;
    |        // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <= allowance[_from][msg.sender]);
    |        // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function approve(address _spender, uint256 _value) public
    |    returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[msg.sender] >= _value);
    |        // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;
    |        // Subtract from the sender
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balanceOf[_from] -= _value;
    |        // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;
    |        // Subtract from the sender's allowance
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |contract tokenRecipient {function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public;}
    |
  > |contract Token is Ownable {
    |    // Public variables of the token
    |    string public name = "VoxelX GRAY";
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(91)

[33mWarning[0m for LockedEther in contract 'VoxelX':
    |pragma solidity ^0.4.21;
    |
  > |contract VoxelX {
    |    /* Constructor */
    |    function VoxelX() public {
  at /home/jiaming/mavs_srcs/contract@0x9077dac7f64d4381f283a86a7aa687a4ad84e5c6.sol(6)


