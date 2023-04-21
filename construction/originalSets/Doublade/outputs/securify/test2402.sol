Processing contract: /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Token':
    |        balanceOf[msg.sender] -= _tokenAmount;
    |        balanceOf[owner] += _tokenAmount;
  > |        msg.sender.transfer(ethValue);
    |        Transfer(msg.sender, owner, _tokenAmount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(100)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.16;
    |
  > |contract Token {
    |    uint8 public decimals = 6;
    |    uint8 public referralPromille = 20;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(3)

[33mWarning[0m for TODAmount in contract 'Token':
    |        balanceOf[msg.sender] -= _tokenAmount;
    |        balanceOf[owner] += _tokenAmount;
  > |        msg.sender.transfer(ethValue);
    |        Transfer(msg.sender, owner, _tokenAmount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(100)

[33mWarning[0m for TODReceiver in contract 'Token':
    |        balanceOf[msg.sender] -= _tokenAmount;
    |        balanceOf[owner] += _tokenAmount;
  > |        msg.sender.transfer(ethValue);
    |        Transfer(msg.sender, owner, _tokenAmount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(100)

[33mWarning[0m for UnhandledException in contract 'Token':
    |        balanceOf[msg.sender] -= _tokenAmount;
    |        balanceOf[owner] += _tokenAmount;
  > |        msg.sender.transfer(ethValue);
    |        Transfer(msg.sender, owner, _tokenAmount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(100)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Token':
    |        balanceOf[msg.sender] -= _tokenAmount;
    |        balanceOf[owner] += _tokenAmount;
  > |        msg.sender.transfer(ethValue);
    |        Transfer(msg.sender, owner, _tokenAmount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(26)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        allowance[_from][msg.sender] -= _value;
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(37)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        allowance[_from][msg.sender] -= _value;
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[owner] >= value);
    |        require(balanceOf[msg.sender] + value > balanceOf[msg.sender]);
  > |        balanceOf[owner] -= value;
    |        balanceOf[msg.sender] += value;
    |        Transfer(owner, msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[msg.sender] + value > balanceOf[msg.sender]);
    |        require(balanceOf[_referral] + bonus >= balanceOf[_referral]);
  > |        balanceOf[owner] -= value + bonus;
    |        balanceOf[msg.sender] += value;
    |        balanceOf[_referral] += bonus;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        balanceOf[owner] -= value + bonus;
    |        balanceOf[msg.sender] += value;
  > |        balanceOf[_referral] += bonus;
    |        Transfer(owner, msg.sender, value);
    |        Transfer(owner, _referral, bonus);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[owner] + _tokenAmount > balanceOf[owner]);
    |        balanceOf[msg.sender] -= _tokenAmount;
  > |        balanceOf[owner] += _tokenAmount;
    |        msg.sender.transfer(ethValue);
    |        Transfer(msg.sender, owner, _tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[_from] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        allowance[_from][msg.sender] -= _value;
    |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[msg.sender] + value > balanceOf[msg.sender]);
    |        balanceOf[owner] -= value;
  > |        balanceOf[msg.sender] += value;
    |        Transfer(owner, msg.sender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[_referral] + bonus >= balanceOf[_referral]);
    |        balanceOf[owner] -= value + bonus;
  > |        balanceOf[msg.sender] += value;
    |        balanceOf[_referral] += bonus;
    |        Transfer(owner, msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[msg.sender] >= _tokenAmount);
    |        require(balanceOf[owner] + _tokenAmount > balanceOf[owner]);
  > |        balanceOf[msg.sender] -= _tokenAmount;
    |        balanceOf[owner] += _tokenAmount;
    |        msg.sender.transfer(ethValue);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function setBlocking(address _address, bool _state) public onlyOwner returns (bool) {
  > |        lock[_address] = _state;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function setReferralPromille(uint8 _promille) public onlyOwner returns (bool) {
    |        require(_promille < 100);
  > |        referralPromille = _promille;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_sellPrice > 0);
    |        require(_buyPrice > _sellPrice);
  > |        buyPrice = _buyPrice;
    |        sellPrice = _sellPrice;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_buyPrice > _sellPrice);
    |        buyPrice = _buyPrice;
  > |        sellPrice = _sellPrice;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        if(_add) {
    |            require(balanceOf[owner] + _value > balanceOf[owner]);
  > |            balanceOf[owner] += _value;
    |            totalSupply += _value;
    |            Transfer(0, owner, _value);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            require(balanceOf[owner] + _value > balanceOf[owner]);
    |            balanceOf[owner] += _value;
  > |            totalSupply += _value;
    |            Transfer(0, owner, _value);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        } else {
    |            require(balanceOf[owner] >= _value);
  > |            balanceOf[owner] -= _value;
    |            totalSupply -= _value;
    |            Transfer(owner, 0, _value);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            require(balanceOf[owner] >= _value);
    |            balanceOf[owner] -= _value;
  > |            totalSupply -= _value;
    |            Transfer(owner, 0, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[_reversed] >= _value);
    |        require(balanceOf[owner] + _value > balanceOf[owner]);
  > |        balanceOf[_reversed] -= _value;
    |        balanceOf[owner] += _value;
    |        Transfer(_reversed, owner, _value);
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[owner] + _value > balanceOf[owner]);
    |        balanceOf[_reversed] -= _value;
  > |        balanceOf[owner] += _value;
    |        Transfer(_reversed, owner, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9bf393afac08096f8c7c9b9b932afc106f65b615.sol(130)


