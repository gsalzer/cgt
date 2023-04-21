Processing contract: /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol:CryptoEmojis
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CryptoEmojis':
    |        balances[oldOwner]--;
    |        balances[msg.sender]++;
  > |        oldOwner.transfer(oldPrice.div(100).mul(96));
    |        if (msg.value > oldPrice) msg.sender.transfer(msg.value.sub(oldPrice));
    |        emit Transfer(oldOwner, msg.sender, _id, oldPrice);
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(127)

[33mWarning[0m for DAOConstantGas in contract 'CryptoEmojis':
    |        balances[msg.sender]++;
    |        oldOwner.transfer(oldPrice.div(100).mul(96));
  > |        if (msg.value > oldPrice) msg.sender.transfer(msg.value.sub(oldPrice));
    |        emit Transfer(oldOwner, msg.sender, _id, oldPrice);
    |        emit PriceChange(_id, emojis[_id].price);
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(128)

[33mWarning[0m for DAOConstantGas in contract 'CryptoEmojis':
    |    /** @dev Withdraw all balance. This doesn't transfer users' money since the contract pay them instantly and doesn't hold anyone's money */
    |    function withdraw() public onlyDev() {
  > |        dev.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(142)

[33mWarning[0m for LockedEther in contract 'CryptoEmojis':
    | * @author CryptoEmojis
    | */
  > |contract CryptoEmojis {
    |    // Using SafeMath
    |    using SafeMath for uint256;    
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(7)

[31mViolation[0m for TODAmount in contract 'CryptoEmojis':
    |    /** @dev Withdraw all balance. This doesn't transfer users' money since the contract pay them instantly and doesn't hold anyone's money */
    |    function withdraw() public onlyDev() {
  > |        dev.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(142)

[33mWarning[0m for TODAmount in contract 'CryptoEmojis':
    |        balances[msg.sender]++;
    |        oldOwner.transfer(oldPrice.div(100).mul(96));
  > |        if (msg.value > oldPrice) msg.sender.transfer(msg.value.sub(oldPrice));
    |        emit Transfer(oldOwner, msg.sender, _id, oldPrice);
    |        emit PriceChange(_id, emojis[_id].price);
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(128)

[33mWarning[0m for TODReceiver in contract 'CryptoEmojis':
    |        balances[msg.sender]++;
    |        oldOwner.transfer(oldPrice.div(100).mul(96));
  > |        if (msg.value > oldPrice) msg.sender.transfer(msg.value.sub(oldPrice));
    |        emit Transfer(oldOwner, msg.sender, _id, oldPrice);
    |        emit PriceChange(_id, emojis[_id].price);
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(128)

[33mWarning[0m for UnhandledException in contract 'CryptoEmojis':
    |        balances[oldOwner]--;
    |        balances[msg.sender]++;
  > |        oldOwner.transfer(oldPrice.div(100).mul(96));
    |        if (msg.value > oldPrice) msg.sender.transfer(msg.value.sub(oldPrice));
    |        emit Transfer(oldOwner, msg.sender, _id, oldPrice);
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(127)

[33mWarning[0m for UnhandledException in contract 'CryptoEmojis':
    |        balances[msg.sender]++;
    |        oldOwner.transfer(oldPrice.div(100).mul(96));
  > |        if (msg.value > oldPrice) msg.sender.transfer(msg.value.sub(oldPrice));
    |        emit Transfer(oldOwner, msg.sender, _id, oldPrice);
    |        emit PriceChange(_id, emojis[_id].price);
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(128)

[33mWarning[0m for UnhandledException in contract 'CryptoEmojis':
    |    /** @dev Withdraw all balance. This doesn't transfer users' money since the contract pay them instantly and doesn't hold anyone's money */
    |    function withdraw() public onlyDev() {
  > |        dev.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoEmojis':
    |    /** @dev Withdraw all balance. This doesn't transfer users' money since the contract pay them instantly and doesn't hold anyone's money */
    |    function withdraw() public onlyDev() {
  > |        dev.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoEmojis':
    |
    |/**
  > | * @title CryptoEmojis
    | * @author CryptoEmojis
    | */
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoEmojis':
    | * @author CryptoEmojis
    | */
  > |contract CryptoEmojis {
    |    // Using SafeMath
    |    using SafeMath for uint256;    
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoEmojis':
    |    /** @dev Set the username of sender user  */
    |    function setUsername(bytes16 _username) public {
  > |        usernames[msg.sender] = _username;
    |        emit UsernameChange(msg.sender, _username);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoEmojis':
    |        emojis[_id].price = oldPrice.div(100).mul(115);
    |        balances[oldOwner]--;
  > |        balances[msg.sender]++;
    |        oldOwner.transfer(oldPrice.div(100).mul(96));
    |        if (msg.value > oldPrice) msg.sender.transfer(msg.value.sub(oldPrice));
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(126)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  /**
    |  * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x3793ea257ad168ef1b4d0ed56464f9b0ab388c12.sol(150)


