Processing contract: /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol:TokenTrader
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol:x888
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(43)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned 
    |{
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner 
    |    {
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned 
    |{
  > |    address public owner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(129)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(102)

[33mWarning[0m for DAO in contract 'TokenTrader':
    |        {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(502)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(487)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |            if (change > 0) 
    |            {
  > |                require(msg.sender.send(change));
    |            }
    |            if (order > 0) 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(522)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |            TakerBoughtAsset(msg.sender, msg.value, change, order * units);
    |        }
  > |        else require (msg.sender.send(msg.value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(531)

[33mWarning[0m for DAOConstantGas in contract 'TokenTrader':
    |            {
    |                require(ERC20(asset).transferFrom(msg.sender, address(this), order * units));
  > |                require(msg.sender.send(order * buyPrice));
    |            }
    |            TakerSoldAsset(msg.sender, amountOfTokensToSell, order * units, buyPrice * units);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(546)

[33mWarning[0m for LockedEther in contract 'TokenTrader':
    |}
    |
  > |contract TokenTrader is Owned 
    |{
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(371)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner 
    |    {
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function activate (
    |        address _asset,
    |        uint256 _units,
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(419)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function makerWithdrawAsset(uint256 tokens) onlyOwner returns (bool ok) 
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(446)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function makerTransferAsset(
    |        TokenTrader toTokenTrader,
    |        uint256 tokens
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(455)

[31mViolation[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function makerWithdrawERC20Token(
    |        address tokenAddress,
    |        uint256 tokens
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |contract Owned 
    |{
  > |    address public owner;
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |{
    |    using SafeMath for uint256;
  > |    address public asset;       // address of token
    |    address public exchange;    // address of meta exchange
    |    address public baseowner;   // address of meta exchange
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(374)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    using SafeMath for uint256;
    |    address public asset;       // address of token
  > |    address public exchange;    // address of meta exchange
    |    address public baseowner;   // address of meta exchange
    |    uint256 public units;       // fractionality of asset token 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    address public asset;       // address of token
    |    address public exchange;    // address of meta exchange
  > |    address public baseowner;   // address of meta exchange
    |    uint256 public units;       // fractionality of asset token 
    |    uint256 public buyPrice;    // contract buys lots of token at this price
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(376)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    address public exchange;    // address of meta exchange
    |    address public baseowner;   // address of meta exchange
  > |    uint256 public units;       // fractionality of asset token 
    |    uint256 public buyPrice;    // contract buys lots of token at this price
    |    uint256 public sellPrice;   // contract sells lots at this price
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(377)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    address public baseowner;   // address of meta exchange
    |    uint256 public units;       // fractionality of asset token 
  > |    uint256 public buyPrice;    // contract buys lots of token at this price
    |    uint256 public sellPrice;   // contract sells lots at this price
    |    uint256 public exchFee;     // exchange fee
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(378)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    uint256 public units;       // fractionality of asset token 
    |    uint256 public buyPrice;    // contract buys lots of token at this price
  > |    uint256 public sellPrice;   // contract sells lots at this price
    |    uint256 public exchFee;     // exchange fee
    |    bool public buysTokens;     // is contract buying
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    uint256 public buyPrice;    // contract buys lots of token at this price
    |    uint256 public sellPrice;   // contract sells lots at this price
  > |    uint256 public exchFee;     // exchange fee
    |    bool public buysTokens;     // is contract buying
    |    bool public sellsTokens;    // is contract selling
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    uint256 public sellPrice;   // contract sells lots at this price
    |    uint256 public exchFee;     // exchange fee
  > |    bool public buysTokens;     // is contract buying
    |    bool public sellsTokens;    // is contract selling
    |    
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(381)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    uint256 public exchFee;     // exchange fee
    |    bool public buysTokens;     // is contract buying
  > |    bool public sellsTokens;    // is contract selling
    |    
    |    event ActivatedEvent(bool buys, bool sells);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(382)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function makerDepositEther() payable onlyOwner 
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(439)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function makerTransferEther(
    |        TokenTrader toTokenTrader,
    |        uint256 ethers
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(491)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function takerBuyAsset() payable 
    |    {
    |        if (sellsTokens || msg.sender == owner) 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(506)

[33mWarning[0m for MissingInputValidation in contract 'TokenTrader':
    |    }
    |
  > |    function takerSellAsset(uint256 amountOfTokensToSell) public  
    |    {
    |        if (buysTokens || msg.sender == owner) 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(534)

[33mWarning[0m for TODAmount in contract 'TokenTrader':
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(487)

[33mWarning[0m for TODAmount in contract 'TokenTrader':
    |        {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(502)

[33mWarning[0m for TODAmount in contract 'TokenTrader':
    |            {
    |                require(ERC20(asset).transferFrom(msg.sender, address(this), order * units));
  > |                require(msg.sender.send(order * buyPrice));
    |            }
    |            TakerSoldAsset(msg.sender, amountOfTokensToSell, order * units, buyPrice * units);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(546)

[31mViolation[0m for TODReceiver in contract 'TokenTrader':
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(487)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |        {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(502)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |            if (change > 0) 
    |            {
  > |                require(msg.sender.send(change));
    |            }
    |            if (order > 0) 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(522)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |            TakerBoughtAsset(msg.sender, msg.value, change, order * units);
    |        }
  > |        else require (msg.sender.send(msg.value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(531)

[33mWarning[0m for TODReceiver in contract 'TokenTrader':
    |            {
    |                require(ERC20(asset).transferFrom(msg.sender, address(this), order * units));
  > |                require(msg.sender.send(order * buyPrice));
    |            }
    |            TakerSoldAsset(msg.sender, amountOfTokensToSell, order * units, buyPrice * units);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(546)

[31mViolation[0m for UnhandledException in contract 'TokenTrader':
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(487)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    ) onlyOwner 
    |    {
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        asset       = _asset;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(428)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        asset       = _asset;
    |        units       = _units;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(429)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    function makerDepositEther() payable onlyOwner 
    |    {
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerDepositedEther(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(441)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerDepositedEther(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(442)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    function makerWithdrawAsset(uint256 tokens) onlyOwner returns (bool ok) 
    |    {
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewAsset(tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(448)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewAsset(tokens);
    |        ERC20(asset).approve(owner, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(449)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewAsset(tokens);
  > |        ERC20(asset).approve(owner, tokens);
    |        return ERC20(asset).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(451)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        MakerWithdrewAsset(tokens);
    |        ERC20(asset).approve(owner, tokens);
  > |        return ERC20(asset).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(452)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    ) onlyOwner returns (bool ok) 
    |    {
  > |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
    |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(460)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    {
    |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerTransferredAsset(toTokenTrader, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(461)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerTransferredAsset(toTokenTrader, tokens);
    |        ERC20(asset).approve(toTokenTrader,tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(462)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerTransferredAsset(toTokenTrader, tokens);
  > |        ERC20(asset).approve(toTokenTrader,tokens);
    |        return ERC20(asset).transfer(toTokenTrader, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(464)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        MakerTransferredAsset(toTokenTrader, tokens);
    |        ERC20(asset).approve(toTokenTrader,tokens);
  > |        return ERC20(asset).transfer(toTokenTrader, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(465)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    ) onlyOwner returns (bool ok) 
    |    {
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(473)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
    |        ERC20(tokenAddress).approve(owner, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(474)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
  > |        ERC20(tokenAddress).approve(owner, tokens);
    |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(476)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
    |        ERC20(tokenAddress).approve(owner, tokens);
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(477)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        if (this.balance >= ethers) 
    |        {
  > |            require(ERC20(exchange).approve(baseowner,exchFee));
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            MakerWithdrewEther(ethers);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(484)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        {
    |            require(ERC20(exchange).approve(baseowner,exchFee));
  > |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            MakerWithdrewEther(ethers);
    |            return owner.send(ethers);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(485)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    ) onlyOwner returns (bool) 
    |    {
  > |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
    |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(496)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |    {
    |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        if (this.balance >= ethers) 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(497)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        if (this.balance >= ethers) 
    |        {
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(498)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(502)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        if (sellsTokens || msg.sender == owner) 
    |        {
  > |            require(ERC20(exchange).approve(baseowner,exchFee));
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 order    =  msg.value / sellPrice;                        ///max tokens in order
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(510)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        {
    |            require(ERC20(exchange).approve(baseowner,exchFee));
  > |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 order    =  msg.value / sellPrice;                        ///max tokens in order
    |            uint256 can_sell =  ERC20(asset).balanceOf(address(this))/units;  ///current balance in token
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(511)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 order    =  msg.value / sellPrice;                        ///max tokens in order
  > |            uint256 can_sell =  ERC20(asset).balanceOf(address(this))/units;  ///current balance in token
    |            uint256 change = 0;
    |            if (msg.value > (can_sell * sellPrice))
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(513)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            if (change > 0) 
    |            {
  > |                require(msg.sender.send(change));
    |            }
    |            if (order > 0) 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(522)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            if (order > 0) 
    |            {
  > |                require (ERC20(asset).approve(msg.sender, order * units));
    |                require (ERC20(asset).transfer(msg.sender, order * units));
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(526)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            {
    |                require (ERC20(asset).approve(msg.sender, order * units));
  > |                require (ERC20(asset).transfer(msg.sender, order * units));
    |            }
    |            TakerBoughtAsset(msg.sender, msg.value, change, order * units);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(527)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            TakerBoughtAsset(msg.sender, msg.value, change, order * units);
    |        }
  > |        else require (msg.sender.send(msg.value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(531)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        if (buysTokens || msg.sender == owner) 
    |        {
  > |            require(ERC20(exchange).approve(baseowner,exchFee));
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 can_buy = this.balance / buyPrice;          //limit of ethers 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(538)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |        {
    |            require(ERC20(exchange).approve(baseowner,exchFee));
  > |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 can_buy = this.balance / buyPrice;          //limit of ethers 
    |            uint256 order = amountOfTokensToSell / units;       //limit of tokens to sell
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(539)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            if (order > 0) 
    |            {
  > |                require(ERC20(asset).transferFrom(msg.sender, address(this), order * units));
    |                require(msg.sender.send(order * buyPrice));
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(545)

[33mWarning[0m for UnhandledException in contract 'TokenTrader':
    |            {
    |                require(ERC20(asset).transferFrom(msg.sender, address(this), order * units));
  > |                require(msg.sender.send(order * buyPrice));
    |            }
    |            TakerSoldAsset(msg.sender, amountOfTokensToSell, order * units, buyPrice * units);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(546)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    ) onlyOwner 
    |    {
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        asset       = _asset;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        asset       = _asset;
    |        units       = _units;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(429)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    function makerDepositEther() payable onlyOwner 
    |    {
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerDepositedEther(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerDepositedEther(msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    function makerWithdrawAsset(uint256 tokens) onlyOwner returns (bool ok) 
    |    {
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewAsset(tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(448)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewAsset(tokens);
    |        ERC20(asset).approve(owner, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(449)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewAsset(tokens);
  > |        ERC20(asset).approve(owner, tokens);
    |        return ERC20(asset).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(451)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        MakerWithdrewAsset(tokens);
    |        ERC20(asset).approve(owner, tokens);
  > |        return ERC20(asset).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(452)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    ) onlyOwner returns (bool ok) 
    |    {
  > |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
    |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(460)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    {
    |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerTransferredAsset(toTokenTrader, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(461)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerTransferredAsset(toTokenTrader, tokens);
    |        ERC20(asset).approve(toTokenTrader,tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(462)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerTransferredAsset(toTokenTrader, tokens);
  > |        ERC20(asset).approve(toTokenTrader,tokens);
    |        return ERC20(asset).transfer(toTokenTrader, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(464)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        MakerTransferredAsset(toTokenTrader, tokens);
    |        ERC20(asset).approve(toTokenTrader,tokens);
  > |        return ERC20(asset).transfer(toTokenTrader, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(465)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    ) onlyOwner returns (bool ok) 
    |    {
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(473)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    {
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
    |        ERC20(tokenAddress).approve(owner, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(474)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
  > |        ERC20(tokenAddress).approve(owner, tokens);
    |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(476)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        MakerWithdrewERC20Token(tokenAddress, tokens);
    |        ERC20(tokenAddress).approve(owner, tokens);
  > |        return ERC20(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(477)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        if (this.balance >= ethers) 
    |        {
  > |            require(ERC20(exchange).approve(baseowner,exchFee));
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            MakerWithdrewEther(ethers);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        {
    |            require(ERC20(exchange).approve(baseowner,exchFee));
  > |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            MakerWithdrewEther(ethers);
    |            return owner.send(ethers);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(485)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    ) onlyOwner returns (bool) 
    |    {
  > |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
    |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(496)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |    {
    |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
  > |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        if (this.balance >= ethers) 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(497)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        require (owner == toTokenTrader.owner() || asset == toTokenTrader.asset()); 
    |        require(ERC20(exchange).approve(baseowner,exchFee));
  > |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        if (this.balance >= ethers) 
    |        {
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(498)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        if (sellsTokens || msg.sender == owner) 
    |        {
  > |            require(ERC20(exchange).approve(baseowner,exchFee));
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 order    =  msg.value / sellPrice;                        ///max tokens in order
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(510)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        {
    |            require(ERC20(exchange).approve(baseowner,exchFee));
  > |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 order    =  msg.value / sellPrice;                        ///max tokens in order
    |            uint256 can_sell =  ERC20(asset).balanceOf(address(this))/units;  ///current balance in token
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(511)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 order    =  msg.value / sellPrice;                        ///max tokens in order
  > |            uint256 can_sell =  ERC20(asset).balanceOf(address(this))/units;  ///current balance in token
    |            uint256 change = 0;
    |            if (msg.value > (can_sell * sellPrice))
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(513)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |            if (order > 0) 
    |            {
  > |                require (ERC20(asset).approve(msg.sender, order * units));
    |                require (ERC20(asset).transfer(msg.sender, order * units));
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(526)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |            {
    |                require (ERC20(asset).approve(msg.sender, order * units));
  > |                require (ERC20(asset).transfer(msg.sender, order * units));
    |            }
    |            TakerBoughtAsset(msg.sender, msg.value, change, order * units);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(527)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        if (buysTokens || msg.sender == owner) 
    |        {
  > |            require(ERC20(exchange).approve(baseowner,exchFee));
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 can_buy = this.balance / buyPrice;          //limit of ethers 
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(538)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        {
    |            require(ERC20(exchange).approve(baseowner,exchFee));
  > |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            uint256 can_buy = this.balance / buyPrice;          //limit of ethers 
    |            uint256 order = amountOfTokensToSell / units;       //limit of tokens to sell
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(539)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |            if (order > 0) 
    |            {
  > |                require(ERC20(asset).transferFrom(msg.sender, address(this), order * units));
    |                require(msg.sender.send(order * buyPrice));
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(545)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |            require(ERC20(exchange).transfer(baseowner,exchFee));
    |            MakerWithdrewEther(ethers);
  > |            return owner.send(ethers);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTrader':
    |        {
    |            MakerTransferredEther(toTokenTrader, ethers);
  > |            toTokenTrader.makerDepositEther.value(ethers)();
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |    {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |        require(ERC20(exchange).approve(baseowner,exchFee));
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
  > |        asset       = _asset;
    |        units       = _units;
    |        buyPrice    = _buyPrice;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |        require(ERC20(exchange).transfer(baseowner,exchFee));
    |        asset       = _asset;
  > |        units       = _units;
    |        buyPrice    = _buyPrice;
    |        sellPrice   = _sellPrice;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |        asset       = _asset;
    |        units       = _units;
  > |        buyPrice    = _buyPrice;
    |        sellPrice   = _sellPrice;
    |        buysTokens  = _buysTokens;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |        units       = _units;
    |        buyPrice    = _buyPrice;
  > |        sellPrice   = _sellPrice;
    |        buysTokens  = _buysTokens;
    |        sellsTokens = _sellsTokens;
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(433)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |        buyPrice    = _buyPrice;
    |        sellPrice   = _sellPrice;
  > |        buysTokens  = _buysTokens;
    |        sellsTokens = _sellsTokens;
    |        ActivatedEvent(buysTokens, sellsTokens);
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTrader':
    |        sellPrice   = _sellPrice;
    |        buysTokens  = _buysTokens;
  > |        sellsTokens = _sellsTokens;
    |        ActivatedEvent(buysTokens, sellsTokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd14b221dfb7c7a4d19d464e41affe3e2e182c90e.sol(435)


