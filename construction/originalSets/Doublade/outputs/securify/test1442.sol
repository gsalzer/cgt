Processing contract: /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol:EmrCrowdfund
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EmrCrowdfund':
    |    /// @notice Withdraw ether to owner account
    |    function withdrawAll() onlyOwner public {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(114)

[33mWarning[0m for LockedEther in contract 'EmrCrowdfund':
    |}
    |
  > |contract EmrCrowdfund is owned {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |    function owned() public {owner = msg.sender;}
    |    modifier onlyOwner { require(msg.sender == owner); _;}
  > |    function transferOwnership(address newOwner) onlyOwner public {owner = newOwner;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |    uint256 public tokenPrice;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => bool) public frozenAccount;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public onlyOwner returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        balanceOf[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |    *   @param _tokenPrice Price the users can buy
    |    */
  > |    function setPrices(uint256 _tokenPrice) onlyOwner public {
    |        tokenPrice = _tokenPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |    * @param _value the amount of tokens
    |    */
  > |    function manualTransfer(address _to, uint256 _value) public onlyOwner returns (bool success) {
    |        require (totalSupply >= _value);
    |        require(!frozenAccount[_to]);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |
    |contract owned {
  > |    address public owner;
    |    function owned() public {owner = msg.sender;}
    |    modifier onlyOwner { require(msg.sender == owner); _;}
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |
    |contract EmrCrowdfund is owned {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |contract EmrCrowdfund is owned {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |    uint256 public tokenPrice;
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |    uint256 public tokenPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  > |    uint256 public tokenPrice;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);
    |        require (balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |     * @param _value the amount to send
    |     */
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value / tokenPrice;
    |        require (totalSupply >= amount);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'EmrCrowdfund':
    |
    |    /// @notice Withdraw ether to owner account
  > |    function withdrawAll() onlyOwner public {
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(113)

[31mViolation[0m for TODAmount in contract 'EmrCrowdfund':
    |    /// @notice Withdraw ether to owner account
    |    function withdrawAll() onlyOwner public {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(114)

[31mViolation[0m for TODReceiver in contract 'EmrCrowdfund':
    |    /// @notice Withdraw ether to owner account
    |    function withdrawAll() onlyOwner public {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(114)

[33mWarning[0m for UnhandledException in contract 'EmrCrowdfund':
    |    /// @notice Withdraw ether to owner account
    |    function withdrawAll() onlyOwner public {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmrCrowdfund':
    |    /// @notice Withdraw ether to owner account
    |    function withdrawAll() onlyOwner public {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |        require(!frozenAccount[_to]);
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |        require (totalSupply >= amount);
    |        require(!frozenAccount[msg.sender]);
  > |        totalSupply -= amount;
    |        balanceOf[msg.sender] += amount;
    |        emit Transfer(address(0), msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |        require(!frozenAccount[msg.sender]);
    |        totalSupply -= amount;
  > |        balanceOf[msg.sender] += amount;
    |        emit Transfer(address(0), msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |    function owned() public {owner = msg.sender;}
    |    modifier onlyOwner { require(msg.sender == owner); _;}
  > |    function transferOwnership(address newOwner) onlyOwner public {owner = newOwner;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |    function burnFrom(address _from, uint256 _value) public onlyOwner returns (bool success) {
    |        require(balanceOf[_from] >= _value);
  > |        balanceOf[_from] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |        require(balanceOf[_from] >= _value);
    |        balanceOf[_from] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |    */
    |    function setPrices(uint256 _tokenPrice) onlyOwner public {
  > |        tokenPrice = _tokenPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |        require (totalSupply >= _value);
    |        require(!frozenAccount[_to]);
  > |        totalSupply -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(address(0), _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'EmrCrowdfund':
    |        require(!frozenAccount[_to]);
    |        totalSupply -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(address(0), _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(107)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.21;
    |
  > |contract owned {
    |    address public owner;
    |    function owned() public {owner = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    function owned() public {owner = msg.sender;}
    |    modifier onlyOwner { require(msg.sender == owner); _;}
  > |    function transferOwnership(address newOwner) onlyOwner public {owner = newOwner;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |    function owned() public {owner = msg.sender;}
    |    modifier onlyOwner { require(msg.sender == owner); _;}
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    function owned() public {owner = msg.sender;}
    |    modifier onlyOwner { require(msg.sender == owner); _;}
  > |    function transferOwnership(address newOwner) onlyOwner public {owner = newOwner;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5b5d0fbbd75d4501e5cdc854c445fb0eabcb0afc.sol(7)


