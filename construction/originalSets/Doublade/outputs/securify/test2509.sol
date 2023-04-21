Processing contract: /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol:BestToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol:ETH033
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol:RomanLanskoj
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol:newToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BestToken':
    |}
    |
  > |contract BestToken is newToken, ERC20 {
    |  mapping (address => mapping (address => uint)) allowed;
    |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) {
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BestToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'BestToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BestToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(112)

[33mWarning[0m for DAOConstantGas in contract 'ETH033':
    |    balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |    revenue = amount * sellPrice;
  > |    if (!msg.sender.send(revenue)) {                   // sends ether to the seller: it's important
    |        throw;                                         // to do this last to prevent recursion attacks
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(198)

[33mWarning[0m for LockedEther in contract 'ETH033':
    |}
    |
  > |contract ETH033 is Ownable, RomanLanskoj {
    |
    |    /* Initializes contract with initial supply tokens to the creator of the contract */
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(136)

[33mWarning[0m for TODAmount in contract 'ETH033':
    |    balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |    revenue = amount * sellPrice;
  > |    if (!msg.sender.send(revenue)) {                   // sends ether to the seller: it's important
    |        throw;                                         // to do this last to prevent recursion attacks
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(198)

[33mWarning[0m for TODReceiver in contract 'ETH033':
    |    balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |    revenue = amount * sellPrice;
  > |    if (!msg.sender.send(revenue)) {                   // sends ether to the seller: it's important
    |        throw;                                         // to do this last to prevent recursion attacks
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(198)

[33mWarning[0m for UnhandledException in contract 'ETH033':
    |    balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |    revenue = amount * sellPrice;
  > |    if (!msg.sender.send(revenue)) {                   // sends ether to the seller: it's important
    |        throw;                                         // to do this last to prevent recursion attacks
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(198)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'ETH033':
    |    balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |    revenue = amount * sellPrice;
  > |    if (!msg.sender.send(revenue)) {                   // sends ether to the seller: it's important
    |        throw;                                         // to do this last to prevent recursion attacks
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'ETH033':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'ETH033':
    |    // Check is not needed because sub(_allowance, _value) will already throw if this condition is not met
    |    // if (_value > _allowance) throw;
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'ETH033':
    |    // if (_value > _allowance) throw;
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'ETH033':
    |    if (balanceOf[this] < amount) throw;               // checks if it has enough to sell
    |    balanceOf[msg.sender] += amount;                   // adds the amount to buyer's balance
  > |    balanceOf[this] -= amount;                         // subtracts amount from seller's balance
    |    Transfer(this, msg.sender, amount);                // execute an event reflecting the change
    |    return amount;                                     // ends function and returns
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'ETH033':
    |function sell(uint amount) returns (uint revenue){
    |    if (balanceOf[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
  > |    balanceOf[this] += amount;                         // adds the amount to owner's balance
    |    balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |    revenue = amount * sellPrice;
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |    amount = msg.value / buyPrice;                     // calculates the amount
    |    if (balanceOf[this] < amount) throw;               // checks if it has enough to sell
  > |    balanceOf[msg.sender] += amount;                   // adds the amount to buyer's balance
    |    balanceOf[this] -= amount;                         // subtracts amount from seller's balance
    |    Transfer(this, msg.sender, amount);                // execute an event reflecting the change
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |    if (balanceOf[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
    |    balanceOf[this] += amount;                         // adds the amount to owner's balance
  > |    balanceOf[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |    revenue = amount * sellPrice;
    |    if (!msg.sender.send(revenue)) {                   // sends ether to the seller: it's important
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |  }
    |   function mintToken(address target, uint256 mintedAmount) onlyOwner {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |   function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |
    |function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner {
  > |    sellPrice = 3;
    |    buyPrice = 100;
    |}
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ETH033':
    |function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner {
    |    sellPrice = 3;
  > |    buyPrice = 100;
    |}
    |  
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(181)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    function Ownable() {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(54)

[33mWarning[0m for LockedEther in contract 'RomanLanskoj':
    |}
    |
  > | contract RomanLanskoj is BestToken, Ownable {
    |  string public constant name = "YourCoin";
    |  string public constant symbol = "ICO";
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'RomanLanskoj':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'RomanLanskoj':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'RomanLanskoj':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'RomanLanskoj':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(112)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(3)

[33mWarning[0m for LockedEther in contract 'newToken':
    |}
    |
  > |contract newToken is ERC20Basic {
    |  
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'newToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'newToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa47178da1119218bc2a8dd9e3251ee89b7c7e7f0.sol(86)


