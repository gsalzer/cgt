Processing contract: /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol:ERC20Constant
Processing contract: /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol:ERC20Stateful
Processing contract: /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol:TokenTrader
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol:TokenTraderFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |    function transfer( address to, uint value) returns (bool ok);
    |}
  > |contract ERC20Events {
    |    event Transfer(address indexed from, address indexed to, uint value);
    |}
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(11)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |    {
    |        if(this.balance >= _value) {
  > |            return owner.send(_value);
    |        }
    |        UpdateEvent();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(91)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |                uint256 change = msg.value - (can_sell * sellPrice);
    |                order = can_sell;
  > |                if(!msg.sender.send(change)) throw;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(107)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |            UpdateEvent();
    |        }
  > |        else if(!msg.sender.send(msg.value)) throw;  // return user funds if the contract is not selling
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(115)

[33mWarning[0m for LockedEther in contract 'TokenTrader':
    |// prices are in amount of wei per batch of token units
    |
  > |contract TokenTrader is owned {
    |
    |    address public asset;       // address of token
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |
    |    // modify trading behavior
  > |    function activate (
    |        bool    _sellsTokens
    |        ) onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |
    |    // allow owner to remove trade token
  > |    function withdrawAsset(uint256 _value) onlyOwner returns (bool ok)
    |    {
    |        return ERC20(asset).transfer(owner,_value);
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    // allow owner to remove arbitrary tokens
    |    // included just in case contract receives wrong token
  > |    function withdrawToken(address _token, uint256 _value) onlyOwner returns (bool ok)
    |    {
    |        return ERC20(_token).transfer(owner,_value);
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |contract TokenTrader is owned {
    |
  > |    address public asset;       // address of token
    |    uint256 public sellPrice;   // contract sells lots of tokens at this price
    |    uint256 public units;       // lot size (token-wei)
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |
    |    address public asset;       // address of token
  > |    uint256 public sellPrice;   // contract sells lots of tokens at this price
    |    uint256 public units;       // lot size (token-wei)
    |
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    address public asset;       // address of token
    |    uint256 public sellPrice;   // contract sells lots of tokens at this price
  > |    uint256 public units;       // lot size (token-wei)
    |
    |    bool public sellsTokens;    // is contract selling
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    uint256 public units;       // lot size (token-wei)
    |
  > |    bool public sellsTokens;    // is contract selling
    |
    |    event ActivatedEvent(bool sells);
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |
    |    //user buys token with ETH
  > |    function buy() payable {
    |        if(sellsTokens || msg.sender == owner) 
    |        {
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(97)

[33mWarning[0m for TODAmount in contract 'TokenTrader':
    |    {
    |        if(this.balance >= _value) {
  > |            return owner.send(_value);
    |        }
    |        UpdateEvent();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(91)

[31mViolation[0m for TODReceiver in contract 'TokenTrader':
    |    {
    |        if(this.balance >= _value) {
  > |            return owner.send(_value);
    |        }
    |        UpdateEvent();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(91)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |                uint256 change = msg.value - (can_sell * sellPrice);
    |                order = can_sell;
  > |                if(!msg.sender.send(change)) throw;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(107)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |            UpdateEvent();
    |        }
  > |        else if(!msg.sender.send(msg.value)) throw;  // return user funds if the contract is not selling
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(115)

[31mViolation[0m for UnhandledException in contract 'TokenTrader':
    |    {
    |        if(this.balance >= _value) {
  > |            return owner.send(_value);
    |        }
    |        UpdateEvent();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(91)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    function withdrawAsset(uint256 _value) onlyOwner returns (bool ok)
    |    {
  > |        return ERC20(asset).transfer(owner,_value);
    |        UpdateEvent();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(75)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    function withdrawToken(address _token, uint256 _value) onlyOwner returns (bool ok)
    |    {
  > |        return ERC20(_token).transfer(owner,_value);
    |        UpdateEvent();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(83)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        {
    |            uint order   = msg.value / sellPrice; 
  > |            uint can_sell = ERC20(asset).balanceOf(address(this)) / units;
    |
    |            if(order > can_sell)
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(101)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |                uint256 change = msg.value - (can_sell * sellPrice);
    |                order = can_sell;
  > |                if(!msg.sender.send(change)) throw;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(107)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |
    |            if(order > 0) {
  > |                if(!ERC20(asset).transfer(msg.sender,order * units)) throw;
    |            }
    |            UpdateEvent();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(111)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            UpdateEvent();
    |        }
  > |        else if(!msg.sender.send(msg.value)) throw;  // return user funds if the contract is not selling
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    function withdrawAsset(uint256 _value) onlyOwner returns (bool ok)
    |    {
  > |        return ERC20(asset).transfer(owner,_value);
    |        UpdateEvent();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    function withdrawToken(address _token, uint256 _value) onlyOwner returns (bool ok)
    |    {
  > |        return ERC20(_token).transfer(owner,_value);
    |        UpdateEvent();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        {
    |            uint order   = msg.value / sellPrice; 
  > |            uint can_sell = ERC20(asset).balanceOf(address(this)) / units;
    |
    |            if(order > can_sell)
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |
    |            if(order > 0) {
  > |                if(!ERC20(asset).transfer(msg.sender,order * units)) throw;
    |            }
    |            UpdateEvent();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(111)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    {
    |        if(this.balance >= _value) {
  > |            return owner.send(_value);
    |        }
    |        UpdateEvent();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |        ) onlyOwner
    |    {
  > |          sellsTokens   = _sellsTokens;
    |
    |          ActivatedEvent(sellsTokens);
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(67)

[33mWarning[0m for LockedEther in contract 'TokenTraderFactory':
    |// trade pairs are identified with sha3(asset,units)
    |
  > |contract TokenTraderFactory {
    |
    |    event TradeListing(bytes32 bookid, address owner, address addr);
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'TokenTraderFactory':
    |    mapping( bytes32 => bool ) pairExits;
    |    
  > |    function verify(address tradeContract)  constant returns (
    |        bool valid,
    |        address asset, 
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'TokenTraderFactory':
    |    }
    |
  > |    function createTradeContract(       
    |        address _asset, 
    |        uint256 _sellPrice, 
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'TokenTraderFactory':
    |// trade pairs are identified with sha3(asset,units)
    |
  > |contract TokenTraderFactory {
    |
    |    event TradeListing(bytes32 bookid, address owner, address addr);
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(127)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |                TokenTrader t = TokenTrader(tradeContract);
    |                
  > |                asset = t.asset();
    |                sellPrice = t.sellPrice();
    |                units = t.units();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(148)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |                
    |                asset = t.asset();
  > |                sellPrice = t.sellPrice();
    |                units = t.units();
    |                sellsTokens = t.sellsTokens();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(149)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |                asset = t.asset();
    |                sellPrice = t.sellPrice();
  > |                units = t.units();
    |                sellsTokens = t.sellsTokens();
    |            }
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(150)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |                sellPrice = t.sellPrice();
    |                units = t.units();
  > |                sellsTokens = t.sellsTokens();
    |            }
    |        
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(151)

[33mWarning[0m for UnhandledException in contract 'TokenTraderFactory':
    |        _verify[trader] = true; // record that this factory created the trader
    |
  > |        TokenTrader(trader).transferOwnership(msg.sender); // set the owner to whoever called the function
    |
    |        if(pairExits[bookid] == false) {
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(175)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |                TokenTrader t = TokenTrader(tradeContract);
    |                
  > |                asset = t.asset();
    |                sellPrice = t.sellPrice();
    |                units = t.units();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |                
    |                asset = t.asset();
  > |                sellPrice = t.sellPrice();
    |                units = t.units();
    |                sellsTokens = t.sellsTokens();
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |                asset = t.asset();
    |                sellPrice = t.sellPrice();
  > |                units = t.units();
    |                sellsTokens = t.sellsTokens();
    |            }
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(150)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |                sellPrice = t.sellPrice();
    |                units = t.units();
  > |                sellsTokens = t.sellsTokens();
    |            }
    |        
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTraderFactory':
    |        _verify[trader] = true; // record that this factory created the trader
    |
  > |        TokenTrader(trader).transferOwnership(msg.sender); // set the owner to whoever called the function
    |
    |        if(pairExits[bookid] == false) {
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTraderFactory':
    |        var bookid = sha3(_asset,_units);
    |
  > |        _verify[trader] = true; // record that this factory created the trader
    |
    |        TokenTrader(trader).transferOwnership(msg.sender); // set the owner to whoever called the function
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTraderFactory':
    |
    |        if(pairExits[bookid] == false) {
  > |            pairExits[bookid] = true;
    |            NewBook(bookid, _asset, _units);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(178)

[33mWarning[0m for LockedEther in contract 'owned':
    |contract ERC20 is ERC20Constant, ERC20Stateful, ERC20Events {}
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x453a4d401d29bcdd9b1bbc705a559435d69d2bda.sol(29)


