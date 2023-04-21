Processing contract: /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol:PlatformTeamCoinVer02
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'PlatformTeamCoinVer02':
    |_transfer(msg.sender, this, amount);
    |// makes the transfers
  > |msg.sender.transfer(amount * sellPrice);
    |// sends ether to the seller. It's important to do this last to avoid recursion attacks
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(242)

[33mWarning[0m for LockedEther in contract 'PlatformTeamCoinVer02':
    |/* PlatformTeamCoinVer01 TOKEN STARTS HERE       */
    |/******************************************/
  > |contract PlatformTeamCoinVer02 is owned, TokenERC20 {
    |uint256 public sellPrice;
    |uint256 public buyPrice;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |_;
    |}
  > |function transferOwnership(address newOwner) onlyOwner public {
    |owner = newOwner;
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |uint256 public totalSupply;
    |// This creates an array with all balances
  > |mapping (address => uint256) public balanceOf;
    |mapping (address => mapping (address => uint256)) public allowance;
    |// This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |// This creates an array with all balances
    |mapping (address => uint256) public balanceOf;
  > |mapping (address => mapping (address => uint256)) public allowance;
    |// This generates a public event on the blockchain that will notify clients
    |event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |* @param _value the amount to send
    |*/
  > |function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |require(_value <= allowance[_from][msg.sender]);
    |// Check allowance
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |* @param _value the max amount they can spend
    |*/
  > |function approve(address _spender, uint256 _value) public
    |returns (bool success) {
    |allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |* @param _extraData some extra information to send to the approved contract
    |*/
  > |function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |public
    |returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |* @param _value the amount of money to burn
    |*/
  > |function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |require(balanceOf[_from] >= _value);
    |// Check if the targeted balance is enough
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(156)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |uint256 public sellPrice;
    |uint256 public buyPrice;
  > |mapping (address => bool) public frozenAccount;
    |/* This generates a public event on the blockchain that will notify clients */
    |event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |/// @param target Address to receive the tokens
    |/// @param mintedAmount the amount of tokens it will receive
  > |function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |balanceOf[target] += mintedAmount;
    |totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |/// @param target Address to be frozen
    |/// @param freeze either to freeze it or not
  > |function freezeAccount(address target, bool freeze) onlyOwner public {
    |frozenAccount[target] = freeze;
    |emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |/// @param newSellPrice Price the users can sell to the contract
    |/// @param newBuyPrice Price users can buy from the contract
  > |function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |sellPrice = newSellPrice;
    |buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |pragma solidity ^0.4.24;
    |contract owned {
  > |address public owner;
    |constructor () public {
    |owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |contract TokenERC20 {
    |// Public variables of the token
  > |string public name;
    |string public symbol;
    |uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |// Public variables of the token
    |string public name;
  > |string public symbol;
    |uint8 public decimals = 8;
    |// 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |string public name;
    |string public symbol;
  > |uint8 public decimals = 8;
    |// 18 decimals is the strongly suggested default, avoid changing it
    |uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |uint8 public decimals = 8;
    |// 18 decimals is the strongly suggested default, avoid changing it
  > |uint256 public totalSupply;
    |// This creates an array with all balances
    |mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |* @param _value the amount of money to burn
    |*/
  > |function burn(uint256 _value) public returns (bool success) {
    |require(balanceOf[msg.sender] >= _value);
    |// Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |/******************************************/
    |contract PlatformTeamCoinVer02 is owned, TokenERC20 {
  > |uint256 public sellPrice;
    |uint256 public buyPrice;
    |mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |contract PlatformTeamCoinVer02 is owned, TokenERC20 {
    |uint256 public sellPrice;
  > |uint256 public buyPrice;
    |mapping (address => bool) public frozenAccount;
    |/* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |) TokenERC20(initialSupply, tokenName, tokenSymbol) public {}
    |/* Internal transfer, only can be called by this contract */
  > |function _transfer(address _from, address _to, uint _value) internal {
    |require (_to != 0x0);
    |// Prevent transfer to 0x0 address. Use burn() instead
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTeamCoinVer02':
    |}
    |/// @notice Buy tokens from contract by sending ether
  > |function buy() payable public {
    |uint amount = msg.value / buyPrice;
    |// calculates the amount
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(228)

[33mWarning[0m for TODAmount in contract 'PlatformTeamCoinVer02':
    |_transfer(msg.sender, this, amount);
    |// makes the transfers
  > |msg.sender.transfer(amount * sellPrice);
    |// sends ether to the seller. It's important to do this last to avoid recursion attacks
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(242)

[33mWarning[0m for TODReceiver in contract 'PlatformTeamCoinVer02':
    |_transfer(msg.sender, this, amount);
    |// makes the transfers
  > |msg.sender.transfer(amount * sellPrice);
    |// sends ether to the seller. It's important to do this last to avoid recursion attacks
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(242)

[33mWarning[0m for UnhandledException in contract 'PlatformTeamCoinVer02':
    |tokenRecipient spender = tokenRecipient(_spender);
    |if (approve(_spender, _value)) {
  > |spender.receiveApproval(msg.sender, _value, this, _extraData);
    |return true;
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(127)

[33mWarning[0m for UnhandledException in contract 'PlatformTeamCoinVer02':
    |_transfer(msg.sender, this, amount);
    |// makes the transfers
  > |msg.sender.transfer(amount * sellPrice);
    |// sends ether to the seller. It's important to do this last to avoid recursion attacks
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlatformTeamCoinVer02':
    |tokenRecipient spender = tokenRecipient(_spender);
    |if (approve(_spender, _value)) {
  > |spender.receiveApproval(msg.sender, _value, this, _extraData);
    |return true;
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |balanceOf[msg.sender] -= _value;
    |// Subtract from the sender
  > |totalSupply -= _value;
    |// Updates totalSupply
    |emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |require(_value <= allowance[_from][msg.sender]);
    |// Check allowance
  > |balanceOf[_from] -= _value;
    |// Subtract from the targeted balance
    |allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |allowance[_from][msg.sender] -= _value;
    |// Subtract from the sender's allowance
  > |totalSupply -= _value;
    |// Update totalSupply
    |emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |require(!frozenAccount[_to]);
    |// Check if recipient is frozen
  > |balanceOf[_from] -= _value;
    |// Subtract from the sender
    |balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |balanceOf[_from] -= _value;
    |// Subtract from the sender
  > |balanceOf[_to] += _value;
    |// Add the same to the recipient
    |emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |require(_value <= allowance[_from][msg.sender]);
    |// Check allowance
  > |allowance[_from][msg.sender] -= _value;
    |_transfer(_from, _to, _value);
    |return true;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |function approve(address _spender, uint256 _value) public
    |returns (bool success) {
  > |allowance[msg.sender][_spender] = _value;
    |emit Approval(msg.sender, _spender, _value);
    |return true;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |require(balanceOf[msg.sender] >= _value);
    |// Check if the sender has enough
  > |balanceOf[msg.sender] -= _value;
    |// Subtract from the sender
    |totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |balanceOf[_from] -= _value;
    |// Subtract from the targeted balance
  > |allowance[_from][msg.sender] -= _value;
    |// Subtract from the sender's allowance
    |totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |require(!frozenAccount[_to]);
    |// Check if recipient is frozen
  > |balanceOf[_from] -= _value;
    |// Subtract from the sender
    |balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |balanceOf[_from] -= _value;
    |// Subtract from the sender
  > |balanceOf[_to] += _value;
    |// Add the same to the recipient
    |emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |}
    |function transferOwnership(address newOwner) onlyOwner public {
  > |owner = newOwner;
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(12)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |/// @param mintedAmount the amount of tokens it will receive
    |function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |balanceOf[target] += mintedAmount;
    |totalSupply += mintedAmount;
    |emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |balanceOf[target] += mintedAmount;
  > |totalSupply += mintedAmount;
    |emit Transfer(0, this, mintedAmount);
    |emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |/// @param freeze either to freeze it or not
    |function freezeAccount(address target, bool freeze) onlyOwner public {
  > |frozenAccount[target] = freeze;
    |emit FrozenFunds(target, freeze);
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |/// @param newBuyPrice Price users can buy from the contract
    |function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |sellPrice = newSellPrice;
    |buyPrice = newBuyPrice;
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatformTeamCoinVer02':
    |function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |sellPrice = newSellPrice;
  > |buyPrice = newBuyPrice;
    |}
    |/// @notice Buy tokens from contract by sending ether
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(225)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |}
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
  > |contract TokenERC20 {
    |// Public variables of the token
    |string public name;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |uint256 public totalSupply;
    |// This creates an array with all balances
  > |mapping (address => uint256) public balanceOf;
    |mapping (address => mapping (address => uint256)) public allowance;
    |// This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |// This creates an array with all balances
    |mapping (address => uint256) public balanceOf;
  > |mapping (address => mapping (address => uint256)) public allowance;
    |// This generates a public event on the blockchain that will notify clients
    |event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |* @param _value the amount to send
    |*/
  > |function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |require(_value <= allowance[_from][msg.sender]);
    |// Check allowance
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |* @param _value the max amount they can spend
    |*/
  > |function approve(address _spender, uint256 _value) public
    |returns (bool success) {
    |allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |* @param _extraData some extra information to send to the approved contract
    |*/
  > |function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |public
    |returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |* @param _value the amount of money to burn
    |*/
  > |function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |require(balanceOf[_from] >= _value);
    |// Check if the targeted balance is enough
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |// Public variables of the token
  > |string public name;
    |string public symbol;
    |uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |// Public variables of the token
    |string public name;
  > |string public symbol;
    |uint8 public decimals = 8;
    |// 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |string public name;
    |string public symbol;
  > |uint8 public decimals = 8;
    |// 18 decimals is the strongly suggested default, avoid changing it
    |uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |uint8 public decimals = 8;
    |// 18 decimals is the strongly suggested default, avoid changing it
  > |uint256 public totalSupply;
    |// This creates an array with all balances
    |mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |* Internal transfer, only can be called by this contract
    |*/
  > |function _transfer(address _from, address _to, uint _value) internal {
    |// Prevent transfer to 0x0 address. Use burn() instead
    |require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |* @param _value the amount of money to burn
    |*/
  > |function burn(uint256 _value) public returns (bool success) {
    |require(balanceOf[msg.sender] >= _value);
    |// Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(138)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |tokenRecipient spender = tokenRecipient(_spender);
    |if (approve(_spender, _value)) {
  > |spender.receiveApproval(msg.sender, _value, this, _extraData);
    |return true;
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |tokenRecipient spender = tokenRecipient(_spender);
    |if (approve(_spender, _value)) {
  > |spender.receiveApproval(msg.sender, _value, this, _extraData);
    |return true;
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |// Subtract from the sender
  > |balanceOf[_from] -= _value;
    |// Add the same to the recipient
    |balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |balanceOf[_from] -= _value;
    |// Add the same to the recipient
  > |balanceOf[_to] += _value;
    |emit Transfer(_from, _to, _value);
    |// Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |balanceOf[msg.sender] -= _value;
    |// Subtract from the sender
  > |totalSupply -= _value;
    |// Updates totalSupply
    |emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |require(_value <= allowance[_from][msg.sender]);
    |// Check allowance
  > |balanceOf[_from] -= _value;
    |// Subtract from the targeted balance
    |allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |allowance[_from][msg.sender] -= _value;
    |// Subtract from the sender's allowance
  > |totalSupply -= _value;
    |// Update totalSupply
    |emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |// Subtract from the sender
  > |balanceOf[_from] -= _value;
    |// Add the same to the recipient
    |balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |require(_value <= allowance[_from][msg.sender]);
    |// Check allowance
  > |allowance[_from][msg.sender] -= _value;
    |_transfer(_from, _to, _value);
    |return true;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |function approve(address _spender, uint256 _value) public
    |returns (bool success) {
  > |allowance[msg.sender][_spender] = _value;
    |emit Approval(msg.sender, _spender, _value);
    |return true;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |require(balanceOf[msg.sender] >= _value);
    |// Check if the sender has enough
  > |balanceOf[msg.sender] -= _value;
    |// Subtract from the sender
    |totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |balanceOf[_from] -= _value;
    |// Subtract from the targeted balance
  > |allowance[_from][msg.sender] -= _value;
    |// Subtract from the sender's allowance
    |totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(163)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.24;
  > |contract owned {
    |address public owner;
    |constructor () public {
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(2)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |_;
    |}
  > |function transferOwnership(address newOwner) onlyOwner public {
    |owner = newOwner;
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |pragma solidity ^0.4.24;
    |contract owned {
  > |address public owner;
    |constructor () public {
    |owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |}
    |function transferOwnership(address newOwner) onlyOwner public {
  > |owner = newOwner;
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0x4db8cee6107b24e761ede7a333ad49004fb8a00d.sol(12)


