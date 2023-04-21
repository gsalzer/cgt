Processing contract: /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol:LEF
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'LEF':
    |        balanceOf[msg.sender] -= amount;
    |        revenue = amount * sellPrice;
  > |        msg.sender.transfer(revenue);
    |        emit Transfer(msg.sender, this, amount);
    |        return revenue;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(99)

[33mWarning[0m for LockedEther in contract 'LEF':
    |
    |
  > |contract LEF is Owned {
    |
    |    string public name="LEF";
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'LEF':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'LEF':
    |    uint minBalanceForAccounts;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'LEF':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => bool) public frozenAccount;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'LEF':
    |    }
    |
  > |    function setMinBalance(uint minimumBalanceInFinney) onlyOwner public {
    |        minBalanceForAccounts = minimumBalanceInFinney * 1 finney;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'LEF':
    |    }
    |
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'LEF':
    |
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'LEF':
    |    }
    |
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |
    |contract Owned {
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |contract LEF is Owned {
    |
  > |    string public name="LEF";
    |    string public symbol="LEF";
    |    uint8  public decimals=18;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |
    |    string public name="LEF";
  > |    string public symbol="LEF";
    |    uint8  public decimals=18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |    string public name="LEF";
    |    string public symbol="LEF";
  > |    uint8  public decimals=18;
    |    uint256 public totalSupply;
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |    string public symbol="LEF";
    |    uint8  public decimals=18;
  > |    uint256 public totalSupply;
    |    uint256 public sellPrice;
    |    uint256 public buyPrice;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |    uint8  public decimals=18;
    |    uint256 public totalSupply;
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |    uint minBalanceForAccounts;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |    uint256 public totalSupply;
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |    uint minBalanceForAccounts;
    |
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |
    |    /* Internal transfer, can only be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);                // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |        emit Transfer(_from, _to, _value);
    |    }
  > |    function transfer(address _to, uint256 _value) public {
    |        require(!frozenAccount[msg.sender]);
    |        if (msg.sender.balance<minBalanceForAccounts) {
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'LEF':
    |
    |
  > |    function buy() payable public returns (uint amount) {
    |        amount = msg.value / buyPrice;
    |        require(balanceOf[this] >= amount);
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(85)

[31mViolation[0m for TODAmount in contract 'LEF':
    |        balanceOf[msg.sender] -= amount;
    |        revenue = amount * sellPrice;
  > |        msg.sender.transfer(revenue);
    |        emit Transfer(msg.sender, this, amount);
    |        return revenue;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(99)

[33mWarning[0m for TODAmount in contract 'LEF':
    |        balanceOf[msg.sender] -= amount;
    |        revenue = amount * sellPrice;
  > |        msg.sender.transfer(revenue);
    |        emit Transfer(msg.sender, this, amount);
    |        return revenue;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(99)

[33mWarning[0m for TODReceiver in contract 'LEF':
    |        balanceOf[msg.sender] -= amount;
    |        revenue = amount * sellPrice;
  > |        msg.sender.transfer(revenue);
    |        emit Transfer(msg.sender, this, amount);
    |        return revenue;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(99)

[33mWarning[0m for UnhandledException in contract 'LEF':
    |        balanceOf[msg.sender] -= amount;
    |        revenue = amount * sellPrice;
  > |        msg.sender.transfer(revenue);
    |        emit Transfer(msg.sender, this, amount);
    |        return revenue;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LEF':
    |        balanceOf[msg.sender] -= amount;
    |        revenue = amount * sellPrice;
  > |        msg.sender.transfer(revenue);
    |        emit Transfer(msg.sender, this, amount);
    |        return revenue;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'LEF':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'LEF':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'LEF':
    |        require(balanceOf[this] >= amount);
    |        balanceOf[msg.sender] += amount;
  > |        balanceOf[this] -= amount;
    |        emit Transfer(this, msg.sender, amount);
    |        return amount;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |        amount = msg.value / buyPrice;
    |        require(balanceOf[this] >= amount);
  > |        balanceOf[msg.sender] += amount;
    |        balanceOf[this] -= amount;
    |        emit Transfer(this, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |    function sell(uint amount) public returns (uint revenue) {
    |        require(balanceOf[msg.sender] >= amount);
  > |        balanceOf[this] += amount;
    |        balanceOf[msg.sender] -= amount;
    |        revenue = amount * sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |        require(balanceOf[msg.sender] >= amount);
    |        balanceOf[this] += amount;
  > |        balanceOf[msg.sender] -= amount;
    |        revenue = amount * sellPrice;
    |        msg.sender.transfer(revenue);
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |
    |    function setMinBalance(uint minimumBalanceInFinney) onlyOwner public {
  > |        minBalanceForAccounts = minimumBalanceInFinney * 1 finney;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, owner, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, owner, mintedAmount);
    |        emit Transfer(owner, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'LEF':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(81)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x54f61b89a0bac15c88c6bddf41573ddc1ba5bf6d.sol(17)


