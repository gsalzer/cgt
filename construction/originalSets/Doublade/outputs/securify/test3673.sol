Processing contract: /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol:EthercraftFarm
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol:ShopInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol:TokenDestructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Destructible':
    |}
    |
  > |contract Destructible is Ownable {
    |
    |  function Destructible() public payable { }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(62)

[33mWarning[0m for DAOConstantGas in contract 'EthercraftFarm':
    |        // Retrieve any accumulated ETH.
    |        if (msg.sender == owner)
  > |            owner.transfer(this.balance);
    |
    |        return ERC20Basic(_token).transfer(owner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(268)

[33mWarning[0m for LockedEther in contract 'EthercraftFarm':
    |}
    |
  > |contract EthercraftFarm is Ownable, ReentrancyGuard, Destructible, TokenDestructible, Pausable {
    |    using SafeMath for uint8;
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(203)

[31mViolation[0m for TODAmount in contract 'EthercraftFarm':
    |        // Retrieve any accumulated ETH.
    |        if (msg.sender == owner)
  > |            owner.transfer(this.balance);
    |
    |        uint256 balance = balanceOfToken[msg.sender][_object];
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(248)

[31mViolation[0m for TODAmount in contract 'EthercraftFarm':
    |        // Retrieve any accumulated ETH.
    |        if (msg.sender == owner)
  > |            owner.transfer(this.balance);
    |
    |        return ERC20Basic(_token).transfer(owner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(268)

[31mViolation[0m for TODReceiver in contract 'EthercraftFarm':
    |        // Retrieve any accumulated ETH.
    |        if (msg.sender == owner)
  > |            owner.transfer(this.balance);
    |
    |        uint256 balance = balanceOfToken[msg.sender][_object];
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(248)

[31mViolation[0m for TODReceiver in contract 'EthercraftFarm':
    |        // Retrieve any accumulated ETH.
    |        if (msg.sender == owner)
  > |            owner.transfer(this.balance);
    |
    |        return ERC20Basic(_token).transfer(owner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(268)

[33mWarning[0m for UnhandledException in contract 'EthercraftFarm':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(152)

[33mWarning[0m for UnhandledException in contract 'EthercraftFarm':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(153)

[33mWarning[0m for UnhandledException in contract 'EthercraftFarm':
    |        ShopInterface shop = ShopInterface(_shop);
    |        for (uint256 i = 0; i < _len.mul(100); i++)
  > |            shop.buyObject(this);
    |
    |        address object = shop.object();
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(232)

[33mWarning[0m for UnhandledException in contract 'EthercraftFarm':
    |            shop.buyObject(this);
    |
  > |        address object = shop.object();
    |        balanceOfToken[msg.sender][object] = balanceOfToken[msg.sender][object].add(uint256(_len.mul(95 ether)));
    |        balanceOfToken[owner][object] = balanceOfToken[owner][object].add(uint256(_len.mul(5 ether)));
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(234)

[33mWarning[0m for UnhandledException in contract 'EthercraftFarm':
    |        // Retrieve any accumulated ETH.
    |        if (msg.sender == owner)
  > |            owner.transfer(this.balance);
    |
    |        uint256 balance = balanceOfToken[msg.sender][_object];
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(248)

[33mWarning[0m for UnhandledException in contract 'EthercraftFarm':
    |        uint256 balance = balanceOfToken[msg.sender][_object];
    |        balance = balance.sub(balance % (1 ether)); // Round to whole token
  > |        ERC20Basic(_object).transfer(msg.sender, balance);
    |        balanceOfToken[msg.sender][_object] = 0;
    |        totalOfToken[_object] = totalOfToken[_object].sub(balance);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(252)

[33mWarning[0m for UnhandledException in contract 'EthercraftFarm':
    |        require(_value > 0);
    |        // Whatever remains after subtracting those in vaults
  > |        require(_value <= ERC20Basic(_token).balanceOf(this).sub(this.totalOfToken(_token)));
    |
    |        // Retrieve any accumulated ETH.
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(264)

[33mWarning[0m for UnhandledException in contract 'EthercraftFarm':
    |        // Retrieve any accumulated ETH.
    |        if (msg.sender == owner)
  > |            owner.transfer(this.balance);
    |
    |        return ERC20Basic(_token).transfer(owner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(268)

[33mWarning[0m for UnhandledException in contract 'EthercraftFarm':
    |            owner.transfer(this.balance);
    |
  > |        return ERC20Basic(_token).transfer(owner, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(270)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthercraftFarm':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthercraftFarm':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(153)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthercraftFarm':
    |        ShopInterface shop = ShopInterface(_shop);
    |        for (uint256 i = 0; i < _len.mul(100); i++)
  > |            shop.buyObject(this);
    |
    |        address object = shop.object();
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(232)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthercraftFarm':
    |            shop.buyObject(this);
    |
  > |        address object = shop.object();
    |        balanceOfToken[msg.sender][object] = balanceOfToken[msg.sender][object].add(uint256(_len.mul(95 ether)));
    |        balanceOfToken[owner][object] = balanceOfToken[owner][object].add(uint256(_len.mul(5 ether)));
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthercraftFarm':
    |        // Retrieve any accumulated ETH.
    |        if (msg.sender == owner)
  > |            owner.transfer(this.balance);
    |
    |        uint256 balance = balanceOfToken[msg.sender][_object];
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthercraftFarm':
    |        uint256 balance = balanceOfToken[msg.sender][_object];
    |        balance = balance.sub(balance % (1 ether)); // Round to whole token
  > |        ERC20Basic(_object).transfer(msg.sender, balance);
    |        balanceOfToken[msg.sender][_object] = 0;
    |        totalOfToken[_object] = totalOfToken[_object].sub(balance);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthercraftFarm':
    |        require(_value > 0);
    |        // Whatever remains after subtracting those in vaults
  > |        require(_value <= ERC20Basic(_token).balanceOf(this).sub(this.totalOfToken(_token)));
    |
    |        // Retrieve any accumulated ETH.
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthercraftFarm':
    |        // Retrieve any accumulated ETH.
    |        if (msg.sender == owner)
  > |            owner.transfer(this.balance);
    |
    |        return ERC20Basic(_token).transfer(owner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthercraftFarm':
    |            owner.transfer(this.balance);
    |
  > |        return ERC20Basic(_token).transfer(owner, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'EthercraftFarm':
    |  modifier nonReentrant() {
    |    require(!reentrancy_lock);
  > |    reentrancy_lock = true;
    |    _;
    |    reentrancy_lock = false;
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'EthercraftFarm':
    |    reentrancy_lock = true;
    |    _;
  > |    reentrancy_lock = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'EthercraftFarm':
    |
    |        address object = shop.object();
  > |        balanceOfToken[msg.sender][object] = balanceOfToken[msg.sender][object].add(uint256(_len.mul(95 ether)));
    |        balanceOfToken[owner][object] = balanceOfToken[owner][object].add(uint256(_len.mul(5 ether)));
    |        totalOfToken[object] = totalOfToken[object].add(uint256(_len.mul(100 ether)));
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'EthercraftFarm':
    |        balance = balance.sub(balance % (1 ether)); // Round to whole token
    |        ERC20Basic(_object).transfer(msg.sender, balance);
  > |        balanceOfToken[msg.sender][_object] = 0;
    |        totalOfToken[_object] = totalOfToken[_object].sub(balance);
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'EthercraftFarm':
    |        ERC20Basic(_object).transfer(msg.sender, balance);
    |        balanceOfToken[msg.sender][_object] = 0;
  > |        totalOfToken[_object] = totalOfToken[_object].sub(balance);
    |
    |        Reapped(_object, balance);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'EthercraftFarm':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'EthercraftFarm':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'EthercraftFarm':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(131)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(62)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(131)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    | */
    |
  > |contract ReentrancyGuard {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(8)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(161)

[33mWarning[0m for LockedEther in contract 'TokenDestructible':
    |}
    |
  > |contract TokenDestructible is Ownable {
    |
    |  function TokenDestructible() public payable { }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(136)

[33mWarning[0m for UnhandledException in contract 'TokenDestructible':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(152)

[33mWarning[0m for UnhandledException in contract 'TokenDestructible':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(153)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDestructible':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDestructible':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDestructible':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf0a0116885943f5466cb50ed8cf50b15b3d45801.sol(62)


