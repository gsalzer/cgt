Processing contract: /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol:ICloudSecToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ICloudSecToken':
    |
    |                if(msg.sender.balance < minBalanceForAccounts) {
  > |                    if(!msg.sender.send(gasForCLOUD)) throw;                  // Send eth to sender
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(206)

[33mWarning[0m for DAOConstantGas in contract 'ICloudSecToken':
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  > |                    if(!_to.send(gasForCLOUD)) throw;                         // Send eth to recipient
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(209)

[33mWarning[0m for DAOConstantGas in contract 'ICloudSecToken':
    |        revenue = safeMul(amount, sellPriceEth);                            // Revenue = eth that will be send to the user
    |        if (safeSub(this.balance, revenue) < gasReserve) throw;             // Keep min amount of eth in contract to provide gas for transactions
  > |        if (!msg.sender.send(revenue)) {                                    // Send ether to the seller. It's important
    |            throw;                                                          // To do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(234)

[33mWarning[0m for LockedEther in contract 'ICloudSecToken':
    |
    |/* ICloudSec Contract */
  > |contract ICloudSecToken is owned, SafeMath, StandardToken {
    |    string public name = "ICloudSec";                                       // Set the name for display purposes
    |    string public symbol = "CLOUD";                                         // Set the symbol for display purposes
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            balances[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'ICloudSecToken':
    |
    |/* Constructor parameters */
  > |    function setEtherPrices(uint256 newBuyPriceEth, uint256 newSellPriceEth) onlyOwner {
    |        buyPriceEth = newBuyPriceEth;                                       // Set prices to buy and sell CLOUD
    |        sellPriceEth = newSellPriceEth;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'ICloudSecToken':
    |        sellPriceEth = newSellPriceEth;
    |    }
  > |    function setGasForCLOUD(uint newGasAmountInWei) onlyOwner {
    |        gasForCLOUD = newGasAmountInWei;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'ICloudSecToken':
    |        gasForCLOUD = newGasAmountInWei;
    |    }
  > |    function setCLOUDForGas(uint newCLOUDAmount) onlyOwner {
    |        CLOUDForGas = newCLOUDAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(165)

[31mViolation[0m for MissingInputValidation in contract 'ICloudSecToken':
    |        CLOUDForGas = newCLOUDAmount;
    |    }
  > |    function setGasReserve(uint newGasReserveInWei) onlyOwner {
    |        gasReserve = newGasReserveInWei;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'ICloudSecToken':
    |        gasReserve = newGasReserveInWei;
    |    }
  > |    function setMinBalance(uint minimumBalanceInWei) onlyOwner {
    |        minBalanceForAccounts = minimumBalanceInWei;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner == 0x0) throw;
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |  //internals
    |
  > |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |/* ICloudSec Contract */
    |contract ICloudSecToken is owned, SafeMath, StandardToken {
  > |    string public name = "ICloudSec";                                       // Set the name for display purposes
    |    string public symbol = "CLOUD";                                         // Set the symbol for display purposes
    |    address public ICloudSecAddress = this;                                 // Address of the ICloudSec token
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |contract ICloudSecToken is owned, SafeMath, StandardToken {
    |    string public name = "ICloudSec";                                       // Set the name for display purposes
  > |    string public symbol = "CLOUD";                                         // Set the symbol for display purposes
    |    address public ICloudSecAddress = this;                                 // Address of the ICloudSec token
    |    uint8 public decimals = 0;                                              // Amount of decimals for display purposes
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    string public name = "ICloudSec";                                       // Set the name for display purposes
    |    string public symbol = "CLOUD";                                         // Set the symbol for display purposes
  > |    address public ICloudSecAddress = this;                                 // Address of the ICloudSec token
    |    uint8 public decimals = 0;                                              // Amount of decimals for display purposes
    |    uint256 public totalSupply = 200000000000;                             	// Set total supply of ICloudSecs
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    string public symbol = "CLOUD";                                         // Set the symbol for display purposes
    |    address public ICloudSecAddress = this;                                 // Address of the ICloudSec token
  > |    uint8 public decimals = 0;                                              // Amount of decimals for display purposes
    |    uint256 public totalSupply = 200000000000;                             	// Set total supply of ICloudSecs
    |    uint256 public buyPriceEth = 100000000000 wei;                                  // Buy price for ICloudSecs
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    address public ICloudSecAddress = this;                                 // Address of the ICloudSec token
    |    uint8 public decimals = 0;                                              // Amount of decimals for display purposes
  > |    uint256 public totalSupply = 200000000000;                             	// Set total supply of ICloudSecs
    |    uint256 public buyPriceEth = 100000000000 wei;                                  // Buy price for ICloudSecs
    |    uint256 public sellPriceEth = 100000000000 wei;                                 // Sell price for ICloudSecs
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    uint8 public decimals = 0;                                              // Amount of decimals for display purposes
    |    uint256 public totalSupply = 200000000000;                             	// Set total supply of ICloudSecs
  > |    uint256 public buyPriceEth = 100000000000 wei;                                  // Buy price for ICloudSecs
    |    uint256 public sellPriceEth = 100000000000 wei;                                 // Sell price for ICloudSecs
    |    uint256 public gasForCLOUD = 1 finney;                                  // Eth from contract against CLOUD to pay tx
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    uint256 public totalSupply = 200000000000;                             	// Set total supply of ICloudSecs
    |    uint256 public buyPriceEth = 100000000000 wei;                                  // Buy price for ICloudSecs
  > |    uint256 public sellPriceEth = 100000000000 wei;                                 // Sell price for ICloudSecs
    |    uint256 public gasForCLOUD = 1 finney;                                  // Eth from contract against CLOUD to pay tx
    |    uint256 public CLOUDForGas = 10;                                        // CLOUD to contract against eth to pay tx
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    uint256 public buyPriceEth = 100000000000 wei;                                  // Buy price for ICloudSecs
    |    uint256 public sellPriceEth = 100000000000 wei;                                 // Sell price for ICloudSecs
  > |    uint256 public gasForCLOUD = 1 finney;                                  // Eth from contract against CLOUD to pay tx
    |    uint256 public CLOUDForGas = 10;                                        // CLOUD to contract against eth to pay tx
    |    uint256 public gasReserve = 10 finney;                                  // Eth amount that remains in the contract for gas and can't be sold
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    uint256 public sellPriceEth = 100000000000 wei;                                 // Sell price for ICloudSecs
    |    uint256 public gasForCLOUD = 1 finney;                                  // Eth from contract against CLOUD to pay tx
  > |    uint256 public CLOUDForGas = 10;                                        // CLOUD to contract against eth to pay tx
    |    uint256 public gasReserve = 10 finney;                                  // Eth amount that remains in the contract for gas and can't be sold
    |    uint256 public minBalanceForAccounts = 1 finney;                       	// Minimal eth balance of sender and recipient
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    uint256 public gasForCLOUD = 1 finney;                                  // Eth from contract against CLOUD to pay tx
    |    uint256 public CLOUDForGas = 10;                                        // CLOUD to contract against eth to pay tx
  > |    uint256 public gasReserve = 10 finney;                                  // Eth amount that remains in the contract for gas and can't be sold
    |    uint256 public minBalanceForAccounts = 1 finney;                       	// Minimal eth balance of sender and recipient
    |    bool public directTradeAllowed = false;                                 // Halt trading CLOUD by sending to the contract directly
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    uint256 public CLOUDForGas = 10;                                        // CLOUD to contract against eth to pay tx
    |    uint256 public gasReserve = 10 finney;                                  // Eth amount that remains in the contract for gas and can't be sold
  > |    uint256 public minBalanceForAccounts = 1 finney;                       	// Minimal eth balance of sender and recipient
    |    bool public directTradeAllowed = false;                                 // Halt trading CLOUD by sending to the contract directly
    |
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |    uint256 public gasReserve = 10 finney;                                  // Eth amount that remains in the contract for gas and can't be sold
    |    uint256 public minBalanceForAccounts = 1 finney;                       	// Minimal eth balance of sender and recipient
  > |    bool public directTradeAllowed = false;                                 // Halt trading CLOUD by sending to the contract directly
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |
    |/* Halts or unhalts direct trades without the sell/buy functions below */
  > |    function haltDirectTrade() onlyOwner {
    |        directTradeAllowed = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |        directTradeAllowed = false;
    |    }
  > |    function unhaltDirectTrade() onlyOwner {
    |        directTradeAllowed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'ICloudSecToken':
    |
    |/* User buys ICloudSecs and pays in Ether */
  > |    function buyICloudSecsAgainstEther() payable returns (uint amount) {
    |        if (buyPriceEth == 0 || msg.value < buyPriceEth) throw;             // Avoid dividing 0, sending small amounts and spam
    |        amount = msg.value / buyPriceEth;                                   // Calculate the amount of ICloudSecs
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(217)

[31mViolation[0m for TODAmount in contract 'ICloudSecToken':
    |
    |                if(msg.sender.balance < minBalanceForAccounts) {
  > |                    if(!msg.sender.send(gasForCLOUD)) throw;                  // Send eth to sender
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(206)

[31mViolation[0m for TODAmount in contract 'ICloudSecToken':
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  > |                    if(!_to.send(gasForCLOUD)) throw;                         // Send eth to recipient
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(209)

[33mWarning[0m for TODReceiver in contract 'ICloudSecToken':
    |
    |                if(msg.sender.balance < minBalanceForAccounts) {
  > |                    if(!msg.sender.send(gasForCLOUD)) throw;                  // Send eth to sender
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(206)

[33mWarning[0m for TODReceiver in contract 'ICloudSecToken':
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  > |                    if(!_to.send(gasForCLOUD)) throw;                         // Send eth to recipient
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(209)

[33mWarning[0m for TODReceiver in contract 'ICloudSecToken':
    |        revenue = safeMul(amount, sellPriceEth);                            // Revenue = eth that will be send to the user
    |        if (safeSub(this.balance, revenue) < gasReserve) throw;             // Keep min amount of eth in contract to provide gas for transactions
  > |        if (!msg.sender.send(revenue)) {                                    // Send ether to the seller. It's important
    |            throw;                                                          // To do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(234)

[33mWarning[0m for TODReceiver in contract 'ICloudSecToken':
    |    function refundToOwner (uint256 amountOfEth, uint256 CLOUD) onlyOwner {
    |        uint256 eth = safeMul(amountOfEth, 1 ether);
  > |        if (!msg.sender.send(eth)) {                                        // Send ether to the owner. It's important
    |            throw;                                                          // To do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(248)

[33mWarning[0m for UnhandledException in contract 'ICloudSecToken':
    |
    |                if(msg.sender.balance < minBalanceForAccounts) {
  > |                    if(!msg.sender.send(gasForCLOUD)) throw;                  // Send eth to sender
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(206)

[33mWarning[0m for UnhandledException in contract 'ICloudSecToken':
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  > |                    if(!_to.send(gasForCLOUD)) throw;                         // Send eth to recipient
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(209)

[33mWarning[0m for UnhandledException in contract 'ICloudSecToken':
    |        revenue = safeMul(amount, sellPriceEth);                            // Revenue = eth that will be send to the user
    |        if (safeSub(this.balance, revenue) < gasReserve) throw;             // Keep min amount of eth in contract to provide gas for transactions
  > |        if (!msg.sender.send(revenue)) {                                    // Send ether to the seller. It's important
    |            throw;                                                          // To do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(234)

[33mWarning[0m for UnhandledException in contract 'ICloudSecToken':
    |    function refundToOwner (uint256 amountOfEth, uint256 CLOUD) onlyOwner {
    |        uint256 eth = safeMul(amountOfEth, 1 ether);
  > |        if (!msg.sender.send(eth)) {                                        // Send ether to the owner. It's important
    |            throw;                                                          // To do this last to avoid recursion attacks
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICloudSecToken':
    |
    |                if(msg.sender.balance < minBalanceForAccounts) {
  > |                    if(!msg.sender.send(gasForCLOUD)) throw;                  // Send eth to sender
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICloudSecToken':
    |                  }
    |                if(_to.balance < minBalanceForAccounts) {
  > |                    if(!_to.send(gasForCLOUD)) throw;                         // Send eth to recipient
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |            throw;                                                          // To do this last to avoid recursion attacks
    |        } else {
  > |            balances[this] = safeAdd(balances[this], amount);               // Add the amount to ICloudSec balance
    |            balances[msg.sender] = safeSub(balances[msg.sender], amount);   // Subtract the amount from seller's balance
    |            Transfer(this, msg.sender, revenue);                            // Execute an event reflecting on the change
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |        }
    |        if (balances[this] < CLOUD) throw;                                    // Check if it has enough to sell
  > |        balances[msg.sender] = safeAdd(balances[msg.sender], CLOUD);          // Add the amount to buyer's balance
    |        balances[this] = safeSub(balances[this], CLOUD);                      // Subtract amount from seller's balance
    |        Transfer(this, msg.sender, CLOUD);                                    // Execute an event reflecting the change
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(254)

[31mViolation[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |        if (balances[this] < CLOUD) throw;                                    // Check if it has enough to sell
    |        balances[msg.sender] = safeAdd(balances[msg.sender], CLOUD);          // Add the amount to buyer's balance
  > |        balances[this] = safeSub(balances[this], CLOUD);                      // Subtract amount from seller's balance
    |        Transfer(this, msg.sender, CLOUD);                                    // Execute an event reflecting the change
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |            balances[_from] -= _value;
    |            balances[_to] += _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {               // Check if sender has enough and for overflows
  > |            balances[msg.sender] = safeSub(balances[msg.sender], _value);   // Subtract CLOUD from the sender
    |
    |            if (msg.sender.balance >= minBalanceForAccounts && _to.balance >= minBalanceForAccounts) {    // Check if sender can pay gas and if recipient could
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |        amount = msg.value / buyPriceEth;                                   // Calculate the amount of ICloudSecs
    |        if (balances[this] < amount) throw;                                 // Check if it has enough to sell
  > |        balances[msg.sender] = safeAdd(balances[msg.sender], amount);       // Add the amount to buyer's balance
    |        balances[this] = safeSub(balances[this], amount);                   // Subtract amount from ICloudSec balance
    |        Transfer(this, msg.sender, amount);                                 // Execute an event reflecting the change
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner == 0x0) throw;
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |/* Constructor parameters */
    |    function setEtherPrices(uint256 newBuyPriceEth, uint256 newSellPriceEth) onlyOwner {
  > |        buyPriceEth = newBuyPriceEth;                                       // Set prices to buy and sell CLOUD
    |        sellPriceEth = newSellPriceEth;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |    function setEtherPrices(uint256 newBuyPriceEth, uint256 newSellPriceEth) onlyOwner {
    |        buyPriceEth = newBuyPriceEth;                                       // Set prices to buy and sell CLOUD
  > |        sellPriceEth = newSellPriceEth;
    |    }
    |    function setGasForCLOUD(uint newGasAmountInWei) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |    }
    |    function setGasForCLOUD(uint newGasAmountInWei) onlyOwner {
  > |        gasForCLOUD = newGasAmountInWei;
    |    }
    |    function setCLOUDForGas(uint newCLOUDAmount) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |    }
    |    function setCLOUDForGas(uint newCLOUDAmount) onlyOwner {
  > |        CLOUDForGas = newCLOUDAmount;
    |    }
    |    function setGasReserve(uint newGasReserveInWei) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |    }
    |    function setGasReserve(uint newGasReserveInWei) onlyOwner {
  > |        gasReserve = newGasReserveInWei;
    |    }
    |    function setMinBalance(uint minimumBalanceInWei) onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |    }
    |    function setMinBalance(uint minimumBalanceInWei) onlyOwner {
  > |        minBalanceForAccounts = minimumBalanceInWei;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |/* Halts or unhalts direct trades without the sell/buy functions below */
    |    function haltDirectTrade() onlyOwner {
  > |        directTradeAllowed = false;
    |    }
    |    function unhaltDirectTrade() onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'ICloudSecToken':
    |    }
    |    function unhaltDirectTrade() onlyOwner {
  > |        directTradeAllowed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(181)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Overflow aware uint math functions.
    | */
  > |contract SafeMath {
    |  //internals
    |
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(25)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            balances[_from] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_from] -= _value;
    |            balances[_to] += _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(122)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.8;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner == 0x0) throw;
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner == 0x0) throw;
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4e64e18f6e6f5d694725c8c02ec8ace180ade2d0.sol(17)


