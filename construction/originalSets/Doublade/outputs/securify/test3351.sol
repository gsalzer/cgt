Processing contract: /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol:LescovexERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol:Lescovex_ISC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'LescovexERC20':
    |//////////////////////////////////////////////////////////////
    |
  > |contract LescovexERC20 is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(79)

[33mWarning[0m for UnhandledException in contract 'LescovexERC20':
    |
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LescovexERC20':
    |
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |
    |/*
  > |    Copyright 2018, Vicent Nos, Enrique Santos & Mireia Puig
    |
    |    This program is free software: you can redistribute it and/or modify
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |//////////////////////////////////////////////////////////////
    |
  > |contract LescovexERC20 is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |
    |        // records the accumulated holded amount
  > |        holded[_to].amount.push(accumulatedValue);
    |        holded[_to].time.push(block.timestamp);
    |        holded[_to].length++;
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |        // records the accumulated holded amount
    |        holded[_to].amount.push(accumulatedValue);
  > |        holded[_to].time.push(block.timestamp);
    |        holded[_to].length++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |        holded[_to].amount.push(accumulatedValue);
    |        holded[_to].time.push(block.timestamp);
  > |        holded[_to].length++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |        require(_value <= balances[msg.sender]);
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |        delete holded[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |        delete holded[_from];
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |
    |    function setHoldTime(uint256 _value) external onlyOwner{
  > |      holdTime = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'LescovexERC20':
    |
    |    function setHoldMax(uint256 _value) external onlyOwner{
  > |      holdMax = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(157)

[33mWarning[0m for DAOConstantGas in contract 'Lescovex_ISC':
    |        hold(msg.sender,balances[msg.sender]);
    |        //send eth to owner address
  > |        msg.sender.transfer(ethAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(284)

[33mWarning[0m for DAOConstantGas in contract 'Lescovex_ISC':
    |    function withdraw(uint256 value) external onlyOwner {
    |        //send eth to owner address
  > |        msg.sender.transfer(value);
    |        //executes event to register the changes
    |        emit LogWithdrawal(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(289)

[33mWarning[0m for LockedEther in contract 'Lescovex_ISC':
    |
    |
  > |contract Lescovex_ISC is LescovexERC20 {
    |
    |    uint256 public contractBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(238)

[33mWarning[0m for TODAmount in contract 'Lescovex_ISC':
    |    function withdraw(uint256 value) external onlyOwner {
    |        //send eth to owner address
  > |        msg.sender.transfer(value);
    |        //executes event to register the changes
    |        emit LogWithdrawal(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(289)

[33mWarning[0m for TODReceiver in contract 'Lescovex_ISC':
    |        hold(msg.sender,balances[msg.sender]);
    |        //send eth to owner address
  > |        msg.sender.transfer(ethAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(284)

[33mWarning[0m for TODReceiver in contract 'Lescovex_ISC':
    |    function withdraw(uint256 value) external onlyOwner {
    |        //send eth to owner address
  > |        msg.sender.transfer(value);
    |        //executes event to register the changes
    |        emit LogWithdrawal(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(289)

[33mWarning[0m for UnhandledException in contract 'Lescovex_ISC':
    |
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(226)

[33mWarning[0m for UnhandledException in contract 'Lescovex_ISC':
    |        hold(msg.sender,balances[msg.sender]);
    |        //send eth to owner address
  > |        msg.sender.transfer(ethAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(284)

[33mWarning[0m for UnhandledException in contract 'Lescovex_ISC':
    |    function withdraw(uint256 value) external onlyOwner {
    |        //send eth to owner address
  > |        msg.sender.transfer(value);
    |        //executes event to register the changes
    |        emit LogWithdrawal(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lescovex_ISC':
    |
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lescovex_ISC':
    |    function withdraw(uint256 value) external onlyOwner {
    |        //send eth to owner address
  > |        msg.sender.transfer(value);
    |        //executes event to register the changes
    |        emit LogWithdrawal(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |
    |/*
  > |    Copyright 2018, Vicent Nos, Enrique Santos & Mireia Puig
    |
    |    This program is free software: you can redistribute it and/or modify
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |
    |        // records the accumulated holded amount
  > |        holded[_to].amount.push(accumulatedValue);
    |        holded[_to].time.push(block.timestamp);
    |        holded[_to].length++;
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |        // records the accumulated holded amount
    |        holded[_to].amount.push(accumulatedValue);
  > |        holded[_to].time.push(block.timestamp);
    |        holded[_to].length++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |        holded[_to].amount.push(accumulatedValue);
    |        holded[_to].time.push(block.timestamp);
  > |        holded[_to].length++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |        require(_value <= balances[msg.sender]);
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |        delete holded[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |        delete holded[_from];
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |
    |
  > |contract Lescovex_ISC is LescovexERC20 {
    |
    |    uint256 public contractBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |
    |    function setHoldTime(uint256 _value) external onlyOwner{
  > |      holdTime = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |
    |    function setHoldMax(uint256 _value) external onlyOwner{
  > |      holdMax = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Lescovex_ISC':
    |
    |    function deposit() external payable onlyOwner returns(bool success) {
  > |        contractBalance = contractAddr.balance;
    |        //executes event to reflect the changes
    |        emit LogDeposit(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(266)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xdc33d6c4997ed9c6f07644eca9c0ba72a6882052.sol(21)


