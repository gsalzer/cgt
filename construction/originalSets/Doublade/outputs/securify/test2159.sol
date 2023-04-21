Processing contract: /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol:NEXPARA
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'NEXPARA':
    |        require(this.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(147)

[33mWarning[0m for LockedEther in contract 'NEXPARA':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract NEXPARA is owned {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |	
  > |    function multiPartyTransfer(address[] _toAddresses, uint256[] _amounts) public {
    |        require(_toAddresses.length <= 255);
    |        require(_toAddresses.length == _amounts.length);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function multiPartyTransferFrom(address _from, address[] _toAddresses, uint256[] _amounts) public {
    |        require(_toAddresses.length <= 255);
    |        require(_toAddresses.length == _amounts.length);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    event FrozenFunds(address target, bool frozen);
    |
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |
    |contract owned {
  > |    address public owner;
    |    function owned() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |
    |contract NEXPARA is owned {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |contract NEXPARA is owned {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 8;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 8;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |    string public symbol;
    |    uint8 public decimals = 8;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'NEXPARA':
    |    }
    |
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;
    |        _transfer(this, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(139)

[33mWarning[0m for TODReceiver in contract 'NEXPARA':
    |        require(this.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(147)

[33mWarning[0m for UnhandledException in contract 'NEXPARA':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(92)

[33mWarning[0m for UnhandledException in contract 'NEXPARA':
    |        require(this.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NEXPARA':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'NEXPARA':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'NEXPARA':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'NEXPARA':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'NEXPARA':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'NEXPARA':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |    }
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'NEXPARA':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(136)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |    function owned() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    }
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d1b194a384b70f3c7d804309af323a383b1a291.sol(13)


