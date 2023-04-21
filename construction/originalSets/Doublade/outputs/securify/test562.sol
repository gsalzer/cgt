Processing contract: /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol:EncryptedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol:tokenRecipient
[31mViolation[0m for DAOConstantGas in contract 'EncryptedToken':
    |    
    |    function () payable public {
  > |    		owner.send(msg.value);//
    |    		uint amount = msg.value * buyPrice;               // calculates the amount
    |    		_transfer(owner, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(157)

[33mWarning[0m for LockedEther in contract 'EncryptedToken':
    |}
    |
  > |contract EncryptedToken is owned, TokenERC20 {
    |  uint256 INITIAL_SUPPLY = 900000000;
    |  uint256 public buyPrice = 1;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(115)

[31mViolation[0m for TODReceiver in contract 'EncryptedToken':
    |    
    |    function () payable public {
  > |    		owner.send(msg.value);//
    |    		uint amount = msg.value * buyPrice;               // calculates the amount
    |    		_transfer(owner, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(157)

[31mViolation[0m for UnhandledException in contract 'EncryptedToken':
    |    
    |    function () payable public {
  > |    		owner.send(msg.value);//
    |    		uint amount = msg.value * buyPrice;               // calculates the amount
    |    		_transfer(owner, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(157)

[33mWarning[0m for UnhandledException in contract 'EncryptedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(90)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EncryptedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'EncryptedToken':
    |
    |    function setPrices(uint256 newBuyPrice) onlyOwner public {
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(148)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |  
  > |    mapping (address => uint256) public balanceOf;
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    
    |
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract TokenERC20 {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;  
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;  
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;  
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol;
    |    uint8 public decimals = 18;  
  > |    uint256 public totalSupply;
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(95)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(90)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(108)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x241c248b0db328e25921a91d04f43c985dedbd07.sol(16)


