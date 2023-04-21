Processing contract: /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol:FixedSupplyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol:TokenToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol:TokenTrader
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol:TokenTraderFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FixedSupplyToken':
    |}
    |
  > |contract FixedSupplyToken is ERC20 {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(465)

[31mViolation[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |
    |    // What is the balance of a particular account?
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(496)

[31mViolation[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    // deliberately authorized the sender of the message via some mechanism; we propose
    |    // these standardized APIs for approval:
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(520)

[31mViolation[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    // Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |    // If this function is called again it overwrites the current allowance with _value.
  > |    function approve(address _spender, uint256 _amount) returns (bool success) {
    |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(541)

[31mViolation[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(547)

[33mWarning[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |
    |contract FixedSupplyToken is ERC20 {
  > |    string public name;
    |    string public symbol;
    |    uint256 _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(466)

[33mWarning[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |contract FixedSupplyToken is ERC20 {
    |    string public name;
  > |    string public symbol;
    |    uint256 _totalSupply;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(467)

[33mWarning[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    string public symbol;
    |    uint256 _totalSupply;
  > |    uint8 public decimals;
    |
    |    // Balances for each account
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(469)

[33mWarning[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    }
    |
  > |    function totalSupply() constant returns (uint256 totalSupply) {
    |        totalSupply = _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(505)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(530)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(542)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(60)

[31mViolation[0m for DAOConstantGas in contract 'TokenToken':
    |    for (uint i = 0; i < tokenExchanges.length; ++i) {
    |      TokenTrader tokenExchange = tokenExchanges[i];
  > |      tokenExchange.transfer(msg.value * tokenRatios[i] / 1e18);
    |    }
    |    tokensBought += amount;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(630)

[33mWarning[0m for DAOConstantGas in contract 'TokenToken':
    |
    |    tokensBought -= amount;
  > |    msg.sender.transfer(revenue);
    |    Transfer(msg.sender, this, amount);            // executes an event reflecting on the change
    |    return revenue;                                // ends function and returns
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(656)

[33mWarning[0m for DAOConstantGas in contract 'TokenToken':
    |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
    |
  > |    toExchange.transfer(revenue); // Make purchase with new contract.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(684)

[33mWarning[0m for LockedEther in contract 'TokenToken':
    |}
    |
  > |contract TokenToken is FixedSupplyToken{
    |  TokenTrader[] public tokenExchanges;
    |  uint256[] public tokenRatios; // Measured in per 1e18, e.g.g 5e17 = 50%
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(552)

[31mViolation[0m for TODAmount in contract 'TokenToken':
    |
    |    tokensBought -= amount;
  > |    msg.sender.transfer(revenue);
    |    Transfer(msg.sender, this, amount);            // executes an event reflecting on the change
    |    return revenue;                                // ends function and returns
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(656)

[33mWarning[0m for TODAmount in contract 'TokenToken':
    |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
    |
  > |    toExchange.transfer(revenue); // Make purchase with new contract.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(684)

[33mWarning[0m for TODReceiver in contract 'TokenToken':
    |
    |    tokensBought -= amount;
  > |    msg.sender.transfer(revenue);
    |    Transfer(msg.sender, this, amount);            // executes an event reflecting on the change
    |    return revenue;                                // ends function and returns
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(656)

[33mWarning[0m for TODReceiver in contract 'TokenToken':
    |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
    |
  > |    toExchange.transfer(revenue); // Make purchase with new contract.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(684)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |    totalPrice = 0;
    |    for (uint i = 0; i < tokenExchanges.length; ++i) {
  > |      totalPrice += tokenExchanges[i].buyPrice() * tokenRatios[i] / 1e18;
    |    }
    |    return totalPrice;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(609)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |    totalPrice = 0;
    |    for (uint i = 0; i < tokenExchanges.length; ++i) {
  > |      totalPrice += tokenExchanges[i].sellPrice() * tokenRatios[i] / 1e18;
    |    }
    |    return totalPrice;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(617)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |    for (uint i = 0; i < tokenExchanges.length; ++i) {
    |      TokenTrader tokenExchange = tokenExchanges[i];
  > |      tokenExchange.transfer(msg.value * tokenRatios[i] / 1e18);
    |    }
    |    tokensBought += amount;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(630)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |    for (uint i = 0; i < tokenExchanges.length; ++i) { // Unsafe code: what if the loop errors halfway?
    |      TokenTrader tokenExchange = tokenExchanges[i];
  > |      subTokensToSell = ERC20(tokenExchange.asset()).balanceOf(this)*amount/tokensBought;
    |
    |      revenue += subTokensToSell * tokenExchange.sellPrice();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(648)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |      subTokensToSell = ERC20(tokenExchange.asset()).balanceOf(this)*amount/tokensBought;
    |
  > |      revenue += subTokensToSell * tokenExchange.sellPrice();
    |      ERC20(tokenExchange.asset()).approve(address(tokenExchange), subTokensToSell); // Approve sale
    |      tokenExchange.takerSellAsset(subTokensToSell); // Make Sale
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(650)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |
    |      revenue += subTokensToSell * tokenExchange.sellPrice();
  > |      ERC20(tokenExchange.asset()).approve(address(tokenExchange), subTokensToSell); // Approve sale
    |      tokenExchange.takerSellAsset(subTokensToSell); // Make Sale
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(651)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |      revenue += subTokensToSell * tokenExchange.sellPrice();
    |      ERC20(tokenExchange.asset()).approve(address(tokenExchange), subTokensToSell); // Approve sale
  > |      tokenExchange.takerSellAsset(subTokensToSell); // Make Sale
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(652)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |
    |    tokensBought -= amount;
  > |    msg.sender.transfer(revenue);
    |    Transfer(msg.sender, this, amount);            // executes an event reflecting on the change
    |    return revenue;                                // ends function and returns
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(656)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |    for (uint i = 0; i < tokenExchanges.length; ++i) { // Unsafe code: what if the loop errors halfway?
    |      TokenTrader tokenExchange = tokenExchanges[i];
  > |      subTokensToSell = ERC20(tokenExchange.asset()).balanceOf(this)*amount/tokensBought;
    |      ERC20(tokenExchange.asset()).transfer(msg.sender, subTokensToSell);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(669)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |      TokenTrader tokenExchange = tokenExchanges[i];
    |      subTokensToSell = ERC20(tokenExchange.asset()).balanceOf(this)*amount/tokensBought;
  > |      ERC20(tokenExchange.asset()).transfer(msg.sender, subTokensToSell);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(670)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |
    |  function rebalance(TokenTrader fromExchange, TokenTrader toExchange, uint256 fromPercent) onlyOwner {
  > |    uint256 subTokensToSell = ERC20(fromExchange.asset()).balanceOf(this) * fromPercent / 1e18;
    |
    |    uint256 revenue = subTokensToSell * fromExchange.sellPrice();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(678)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |    uint256 subTokensToSell = ERC20(fromExchange.asset()).balanceOf(this) * fromPercent / 1e18;
    |
  > |    uint256 revenue = subTokensToSell * fromExchange.sellPrice();
    |    ERC20(fromExchange.asset()).approve(address(fromExchange), subTokensToSell); // Approve sale
    |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(680)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |
    |    uint256 revenue = subTokensToSell * fromExchange.sellPrice();
  > |    ERC20(fromExchange.asset()).approve(address(fromExchange), subTokensToSell); // Approve sale
    |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(681)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |    uint256 revenue = subTokensToSell * fromExchange.sellPrice();
    |    ERC20(fromExchange.asset()).approve(address(fromExchange), subTokensToSell); // Approve sale
  > |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
    |
    |    toExchange.transfer(revenue); // Make purchase with new contract.
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(682)

[33mWarning[0m for UnhandledException in contract 'TokenToken':
    |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
    |
  > |    toExchange.transfer(revenue); // Make purchase with new contract.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(684)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |    totalPrice = 0;
    |    for (uint i = 0; i < tokenExchanges.length; ++i) {
  > |      totalPrice += tokenExchanges[i].buyPrice() * tokenRatios[i] / 1e18;
    |    }
    |    return totalPrice;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(609)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |    totalPrice = 0;
    |    for (uint i = 0; i < tokenExchanges.length; ++i) {
  > |      totalPrice += tokenExchanges[i].sellPrice() * tokenRatios[i] / 1e18;
    |    }
    |    return totalPrice;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(617)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |    for (uint i = 0; i < tokenExchanges.length; ++i) { // Unsafe code: what if the loop errors halfway?
    |      TokenTrader tokenExchange = tokenExchanges[i];
  > |      subTokensToSell = ERC20(tokenExchange.asset()).balanceOf(this)*amount/tokensBought;
    |
    |      revenue += subTokensToSell * tokenExchange.sellPrice();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(648)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |      subTokensToSell = ERC20(tokenExchange.asset()).balanceOf(this)*amount/tokensBought;
    |
  > |      revenue += subTokensToSell * tokenExchange.sellPrice();
    |      ERC20(tokenExchange.asset()).approve(address(tokenExchange), subTokensToSell); // Approve sale
    |      tokenExchange.takerSellAsset(subTokensToSell); // Make Sale
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(650)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |
    |      revenue += subTokensToSell * tokenExchange.sellPrice();
  > |      ERC20(tokenExchange.asset()).approve(address(tokenExchange), subTokensToSell); // Approve sale
    |      tokenExchange.takerSellAsset(subTokensToSell); // Make Sale
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(651)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |      revenue += subTokensToSell * tokenExchange.sellPrice();
    |      ERC20(tokenExchange.asset()).approve(address(tokenExchange), subTokensToSell); // Approve sale
  > |      tokenExchange.takerSellAsset(subTokensToSell); // Make Sale
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(652)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |    for (uint i = 0; i < tokenExchanges.length; ++i) { // Unsafe code: what if the loop errors halfway?
    |      TokenTrader tokenExchange = tokenExchanges[i];
  > |      subTokensToSell = ERC20(tokenExchange.asset()).balanceOf(this)*amount/tokensBought;
    |      ERC20(tokenExchange.asset()).transfer(msg.sender, subTokensToSell);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(669)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |      TokenTrader tokenExchange = tokenExchanges[i];
    |      subTokensToSell = ERC20(tokenExchange.asset()).balanceOf(this)*amount/tokensBought;
  > |      ERC20(tokenExchange.asset()).transfer(msg.sender, subTokensToSell);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(670)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |
    |  function rebalance(TokenTrader fromExchange, TokenTrader toExchange, uint256 fromPercent) onlyOwner {
  > |    uint256 subTokensToSell = ERC20(fromExchange.asset()).balanceOf(this) * fromPercent / 1e18;
    |
    |    uint256 revenue = subTokensToSell * fromExchange.sellPrice();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(678)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |    uint256 subTokensToSell = ERC20(fromExchange.asset()).balanceOf(this) * fromPercent / 1e18;
    |
  > |    uint256 revenue = subTokensToSell * fromExchange.sellPrice();
    |    ERC20(fromExchange.asset()).approve(address(fromExchange), subTokensToSell); // Approve sale
    |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(680)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |
    |    uint256 revenue = subTokensToSell * fromExchange.sellPrice();
  > |    ERC20(fromExchange.asset()).approve(address(fromExchange), subTokensToSell); // Approve sale
    |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(681)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |    uint256 revenue = subTokensToSell * fromExchange.sellPrice();
    |    ERC20(fromExchange.asset()).approve(address(fromExchange), subTokensToSell); // Approve sale
  > |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
    |
    |    toExchange.transfer(revenue); // Make purchase with new contract.
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(682)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenToken':
    |    fromExchange.takerSellAsset(subTokensToSell); // Make sale
    |
  > |    toExchange.transfer(revenue); // Make purchase with new contract.
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(684)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenToken':
    |}
    |
  > |contract TokenToken is FixedSupplyToken{
    |  TokenTrader[] public tokenExchanges;
    |  uint256[] public tokenRatios; // Measured in per 1e18, e.g.g 5e17 = 50%
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(552)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenToken':
    |      tokenExchange.transfer(msg.value * tokenRatios[i] / 1e18);
    |    }
  > |    tokensBought += amount;
    |    balances[msg.sender] += amount;                   // adds the amount to buyer's balance
    |    balances[this] -= amount;                         // subtracts amount from seller's balance
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(632)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenToken':
    |    tokensBought += amount;
    |    balances[msg.sender] += amount;                   // adds the amount to buyer's balance
  > |    balances[this] -= amount;                         // subtracts amount from seller's balance
    |    Transfer(this, msg.sender, amount);                // execute an event reflecting the change
    |    return amount;                                     // ends function and returns
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(634)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenToken':
    |  function sell(uint amount) returns (uint revenue){   // Sell in tokens
    |    if (balances[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
  > |    balances[this] += amount;                         // adds the amount to owner's balance
    |    balances[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(641)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenToken':
    |  function breakdown(uint amount) {   // Breakdown in tokens
    |    if (balances[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
  > |    balances[this] += amount;                         // adds the amount to owner's balance
    |    balances[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(663)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(505)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(530)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenToken':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(542)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenToken':
    |    }
    |    tokensBought += amount;
  > |    balances[msg.sender] += amount;                   // adds the amount to buyer's balance
    |    balances[this] -= amount;                         // subtracts amount from seller's balance
    |    Transfer(this, msg.sender, amount);                // execute an event reflecting the change
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(633)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenToken':
    |    if (balances[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
    |    balances[this] += amount;                         // adds the amount to owner's balance
  > |    balances[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |
    |    uint256 subTokensToSell = 0;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(642)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenToken':
    |    if (balances[msg.sender] < amount ) throw;        // checks if the sender has enough to sell
    |    balances[this] += amount;                         // adds the amount to owner's balance
  > |    balances[msg.sender] -= amount;                   // subtracts the amount from seller's balance
    |
    |    uint256 subTokensToSell = 0;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(664)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenToken':
    |}
    |
  > |contract TokenToken is FixedSupplyToken{
    |  TokenTrader[] public tokenExchanges;
    |  uint256[] public tokenRatios; // Measured in per 1e18, e.g.g 5e17 = 50%
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(552)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |      OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(591)

[33mWarning[0m for DAO in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(248)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(220)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |            }
    |            if (change > 0) {
  > |                if (!msg.sender.send(change)) throw;
    |            }
    |            if (order > 0) {
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(275)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |        }
    |        // Return user funds if the contract is not selling
  > |        else if (!msg.sender.send(msg.value)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(283)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |                if (!ERC20(asset).transferFrom(msg.sender, address(this), order * units)) throw;
    |                // Pay user
  > |                if (!msg.sender.send(order * buyPrice)) throw;
    |            }
    |            TakerSoldAsset(msg.sender, amountOfTokensToSell, order * units, order * buyPrice);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(317)

[33mWarning[0m for LockedEther in contract 'TokenTrader':
    |// prices are in amount of wei per batch of token units
    |
  > |contract TokenTrader is Owned {
    |
    |    address public asset;       // address of token
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    //   sellsTokens  this contract can sell asset tokens
    |    //
  > |    function activate (
    |        bool _buysTokens,
    |        bool _sellsTokens
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    // This method was called withdrawAsset() in the old version
    |    //
  > |    function makerWithdrawAsset(uint256 tokens) onlyOwner returns (bool ok) {
    |        MakerWithdrewAsset(tokens);
    |        return ERC20(asset).transfer(owner, tokens);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    // to the other contract
    |    //
  > |    function makerTransferAsset(
    |        TokenTrader toTokenTrader,
    |        uint256 tokens
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(179)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    // This method was called withdrawToken() in the old version
    |    //
  > |    function makerWithdrawERC20Token(
    |        address tokenAddress,
    |        uint256 tokens
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |
    |contract Owned {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |contract TokenTrader is Owned {
    |
  > |    address public asset;       // address of token
    |    uint256 public buyPrice;    // contract buys lots of token at this price
    |    uint256 public sellPrice;   // contract sells lots at this price
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |
    |    address public asset;       // address of token
  > |    uint256 public buyPrice;    // contract buys lots of token at this price
    |    uint256 public sellPrice;   // contract sells lots at this price
    |    uint256 public units;       // lot size (token-wei)
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    address public asset;       // address of token
    |    uint256 public buyPrice;    // contract buys lots of token at this price
  > |    uint256 public sellPrice;   // contract sells lots at this price
    |    uint256 public units;       // lot size (token-wei)
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    uint256 public buyPrice;    // contract buys lots of token at this price
    |    uint256 public sellPrice;   // contract sells lots at this price
  > |    uint256 public units;       // lot size (token-wei)
    |
    |    bool public buysTokens;     // is contract buying
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    uint256 public units;       // lot size (token-wei)
    |
  > |    bool public buysTokens;     // is contract buying
    |    bool public sellsTokens;    // is contract selling
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |
    |    bool public buysTokens;     // is contract buying
  > |    bool public sellsTokens;    // is contract selling
    |
    |    event ActivatedEvent(bool buys, bool sells);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    // This method was called deposit() in the old version
    |    //
  > |    function makerDepositEther() payable onlyOwnerOrTokenTraderWithSameOwner {
    |        MakerDepositedEther(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    //   ethers  is the number of ethers deposited by the maker
    |    //
  > |    function makerTransferEther(
    |        TokenTrader toTokenTrader,
    |        uint256 ethers
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(239)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    // This method was called buy() in the old version
    |    //
  > |    function takerBuyAsset() payable {
    |        if (sellsTokens || msg.sender == owner) {
    |            // Note that sellPrice has already been validated as > 0
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(263)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    // This method was called sell() in the old version
    |    //
  > |    function takerSellAsset(uint256 amountOfTokensToSell) {
    |        if (buysTokens || msg.sender == owner) {
    |            // Maximum number of token the contract can buy
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(303)

[33mWarning[0m for TODAmount in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(220)

[33mWarning[0m for TODAmount in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(248)

[33mWarning[0m for TODAmount in contract 'TokenTrader':
    |                if (!ERC20(asset).transferFrom(msg.sender, address(this), order * units)) throw;
    |                // Pay user
  > |                if (!msg.sender.send(order * buyPrice)) throw;
    |            }
    |            TakerSoldAsset(msg.sender, amountOfTokensToSell, order * units, order * buyPrice);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(317)

[31mViolation[0m for TODReceiver in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(220)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(248)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |            }
    |            if (change > 0) {
  > |                if (!msg.sender.send(change)) throw;
    |            }
    |            if (order > 0) {
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(275)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |        }
    |        // Return user funds if the contract is not selling
  > |        else if (!msg.sender.send(msg.value)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(283)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |                if (!ERC20(asset).transferFrom(msg.sender, address(this), order * units)) throw;
    |                // Pay user
  > |                if (!msg.sender.send(order * buyPrice)) throw;
    |            }
    |            TakerSoldAsset(msg.sender, amountOfTokensToSell, order * units, order * buyPrice);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(317)

[31mViolation[0m for UnhandledException in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(220)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |
    |    modifier onlyOwnerOrTokenTraderWithSameOwner {
  > |        if (msg.sender != owner && TokenTrader(msg.sender).owner() != owner) throw;
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(54)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    function makerWithdrawAsset(uint256 tokens) onlyOwner returns (bool ok) {
    |        MakerWithdrewAsset(tokens);
  > |        return ERC20(asset).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(161)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        uint256 tokens
    |    ) onlyOwner returns (bool ok) {
  > |        if (owner != toTokenTrader.owner() || asset != toTokenTrader.asset()) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(183)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        }
    |        MakerTransferredAsset(toTokenTrader, tokens);
  > |        return ERC20(asset).transfer(toTokenTrader, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(187)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    ) onlyOwner returns (bool ok) {
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(207)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        uint256 ethers
    |    ) onlyOwner returns (bool ok) {
  > |        if (owner != toTokenTrader.owner() || asset != toTokenTrader.asset()) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(243)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(248)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            uint order    = msg.value / sellPrice;
    |            // Note that units has already been validated as > 0
  > |            uint can_sell = ERC20(asset).balanceOf(address(this)) / units;
    |            uint256 change = 0;
    |            if (msg.value > (can_sell * sellPrice)) {
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(268)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            }
    |            if (change > 0) {
  > |                if (!msg.sender.send(change)) throw;
    |            }
    |            if (order > 0) {
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(275)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            }
    |            if (order > 0) {
  > |                if (!ERC20(asset).transfer(msg.sender, order * units)) throw;
    |            }
    |            TakerBoughtAsset(msg.sender, msg.value, change, order * units);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(278)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        }
    |        // Return user funds if the contract is not selling
  > |        else if (!msg.sender.send(msg.value)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(283)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            if (order > 0) {
    |                // Extract user tokens
  > |                if (!ERC20(asset).transferFrom(msg.sender, address(this), order * units)) throw;
    |                // Pay user
    |                if (!msg.sender.send(order * buyPrice)) throw;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(315)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |                if (!ERC20(asset).transferFrom(msg.sender, address(this), order * units)) throw;
    |                // Pay user
  > |                if (!msg.sender.send(order * buyPrice)) throw;
    |            }
    |            TakerSoldAsset(msg.sender, amountOfTokensToSell, order * units, order * buyPrice);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |
    |    modifier onlyOwnerOrTokenTraderWithSameOwner {
  > |        if (msg.sender != owner && TokenTrader(msg.sender).owner() != owner) throw;
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(54)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    function makerWithdrawAsset(uint256 tokens) onlyOwner returns (bool ok) {
    |        MakerWithdrewAsset(tokens);
  > |        return ERC20(asset).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        uint256 tokens
    |    ) onlyOwner returns (bool ok) {
  > |        if (owner != toTokenTrader.owner() || asset != toTokenTrader.asset()) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        }
    |        MakerTransferredAsset(toTokenTrader, tokens);
  > |        return ERC20(asset).transfer(toTokenTrader, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    ) onlyOwner returns (bool ok) {
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        uint256 ethers
    |    ) onlyOwner returns (bool ok) {
  > |        if (owner != toTokenTrader.owner() || asset != toTokenTrader.asset()) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |            uint order    = msg.value / sellPrice;
    |            // Note that units has already been validated as > 0
  > |            uint can_sell = ERC20(asset).balanceOf(address(this)) / units;
    |            uint256 change = 0;
    |            if (msg.value > (can_sell * sellPrice)) {
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |            }
    |            if (order > 0) {
  > |                if (!ERC20(asset).transfer(msg.sender, order * units)) throw;
    |            }
    |            TakerBoughtAsset(msg.sender, msg.value, change, order * units);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |            if (order > 0) {
    |                // Extract user tokens
  > |                if (!ERC20(asset).transferFrom(msg.sender, address(this), order * units)) throw;
    |                // Pay user
    |                if (!msg.sender.send(order * buyPrice)) throw;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        if (this.balance >= ethers) {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |        bool _sellsTokens
    |    ) onlyOwner {
  > |        buysTokens  = _buysTokens;
    |        sellsTokens = _sellsTokens;
    |        ActivatedEvent(buysTokens, sellsTokens);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |    ) onlyOwner {
    |        buysTokens  = _buysTokens;
  > |        sellsTokens = _sellsTokens;
    |        ActivatedEvent(buysTokens, sellsTokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(120)

[33mWarning[0m for LockedEther in contract 'TokenTraderFactory':
    |
    |// This contract deploys TokenTrader contracts and logs the event
  > |contract TokenTraderFactory is Owned {
    |
    |    event TradeListing(address indexed ownerAddress, address indexed tokenTraderAddress,
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(330)

[31mViolation[0m for MissingInputValidation in contract 'TokenTraderFactory':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'TokenTraderFactory':
    |    //   sellsTokens  is the TokenTrader contract selling tokens?
    |    //
  > |    function verify(address tradeContract) constant returns (
    |        bool    valid,
    |        address owner,
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(353)

[31mViolation[0m for MissingInputValidation in contract 'TokenTraderFactory':
    |    //   sellsTokens         is the TokenTrader contract selling tokens?
    |    //
  > |    function createTradeContract(
    |        address asset,
    |        uint256 buyPrice,
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(408)

[31mViolation[0m for MissingInputValidation in contract 'TokenTraderFactory':
    |    //   tokens        is the number of tokens withdrawn by the maker
    |    //
  > |    function ownerWithdrawERC20Token(address tokenAddress, uint256 tokens) onlyOwner returns (bool ok) {
    |        OwnerWithdrewERC20Token(tokenAddress, tokens);
    |        return ERC20(tokenAddress).transfer(owner, tokens);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(454)

[33mWarning[0m for MissingInputValidation in contract 'TokenTraderFactory':
    |
    |contract Owned {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'TokenTraderFactory':
    |
    |// This contract deploys TokenTrader contracts and logs the event
  > |contract TokenTraderFactory is Owned {
    |
    |    event TradeListing(address indexed ownerAddress, address indexed tokenTraderAddress,
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(330)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |        if (valid) {
    |            TokenTrader t = TokenTrader(tradeContract);
  > |            owner         = t.owner();
    |            asset         = t.asset();
    |            buyPrice      = t.buyPrice();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(366)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |            TokenTrader t = TokenTrader(tradeContract);
    |            owner         = t.owner();
  > |            asset         = t.asset();
    |            buyPrice      = t.buyPrice();
    |            sellPrice     = t.sellPrice();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(367)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |            owner         = t.owner();
    |            asset         = t.asset();
  > |            buyPrice      = t.buyPrice();
    |            sellPrice     = t.sellPrice();
    |            units         = t.units();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(368)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |            asset         = t.asset();
    |            buyPrice      = t.buyPrice();
  > |            sellPrice     = t.sellPrice();
    |            units         = t.units();
    |            buysTokens    = t.buysTokens();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(369)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |            buyPrice      = t.buyPrice();
    |            sellPrice     = t.sellPrice();
  > |            units         = t.units();
    |            buysTokens    = t.buysTokens();
    |            sellsTokens   = t.sellsTokens();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(370)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |            sellPrice     = t.sellPrice();
    |            units         = t.units();
  > |            buysTokens    = t.buysTokens();
    |            sellsTokens   = t.sellsTokens();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(371)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |            units         = t.units();
    |            buysTokens    = t.buysTokens();
  > |            sellsTokens   = t.sellsTokens();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(372)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |        // is undefined to prevent GNTs from being used
    |        // with this factory
  > |        uint256 allowance = ERC20(asset).allowance(msg.sender, this);
    |        // Cannot set zero or negative price
    |        if (buyPrice <= 0 || sellPrice <= 0) throw;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(422)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |        _verify[trader] = true;
    |        // Set the owner to whoever called the function
  > |        TokenTrader(trader).transferOwnership(msg.sender);
    |        TradeListing(msg.sender, trader, asset, buyPrice, sellPrice, units, buysTokens, sellsTokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(440)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |    function ownerWithdrawERC20Token(address tokenAddress, uint256 tokens) onlyOwner returns (bool ok) {
    |        OwnerWithdrewERC20Token(tokenAddress, tokens);
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |        if (valid) {
    |            TokenTrader t = TokenTrader(tradeContract);
  > |            owner         = t.owner();
    |            asset         = t.asset();
    |            buyPrice      = t.buyPrice();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |            TokenTrader t = TokenTrader(tradeContract);
    |            owner         = t.owner();
  > |            asset         = t.asset();
    |            buyPrice      = t.buyPrice();
    |            sellPrice     = t.sellPrice();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |            owner         = t.owner();
    |            asset         = t.asset();
  > |            buyPrice      = t.buyPrice();
    |            sellPrice     = t.sellPrice();
    |            units         = t.units();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(368)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |            asset         = t.asset();
    |            buyPrice      = t.buyPrice();
  > |            sellPrice     = t.sellPrice();
    |            units         = t.units();
    |            buysTokens    = t.buysTokens();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(369)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |            buyPrice      = t.buyPrice();
    |            sellPrice     = t.sellPrice();
  > |            units         = t.units();
    |            buysTokens    = t.buysTokens();
    |            sellsTokens   = t.sellsTokens();
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(370)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |            sellPrice     = t.sellPrice();
    |            units         = t.units();
  > |            buysTokens    = t.buysTokens();
    |            sellsTokens   = t.sellsTokens();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(371)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |            units         = t.units();
    |            buysTokens    = t.buysTokens();
  > |            sellsTokens   = t.sellsTokens();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(372)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |        // is undefined to prevent GNTs from being used
    |        // with this factory
  > |        uint256 allowance = ERC20(asset).allowance(msg.sender, this);
    |        // Cannot set zero or negative price
    |        if (buyPrice <= 0 || sellPrice <= 0) throw;
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |        _verify[trader] = true;
    |        // Set the owner to whoever called the function
  > |        TokenTrader(trader).transferOwnership(msg.sender);
    |        TradeListing(msg.sender, trader, asset, buyPrice, sellPrice, units, buysTokens, sellsTokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(440)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |    function ownerWithdrawERC20Token(address tokenAddress, uint256 tokens) onlyOwner returns (bool ok) {
    |        OwnerWithdrewERC20Token(tokenAddress, tokens);
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(456)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTraderFactory':
    |            sellsTokens);
    |        // Record that this factory created the trader
  > |        _verify[trader] = true;
    |        // Set the owner to whoever called the function
    |        TokenTrader(trader).transferOwnership(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTraderFactory':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49b84450a9a56081ce570920aa578c35e0b2461f.sol(60)


