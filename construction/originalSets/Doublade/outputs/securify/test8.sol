Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:BLTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:BLTTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:PriceUpdate
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:SalePausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BLTToken':
    |}
    |
  > |contract BLTToken is StandardToken, Ownable, PriceUpdate, Pausable, SalePausable {
    |	using SafeMath for uint256;
    |	mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |    returns (bool success) 
    |    {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |
    |	function transfer(address _to, uint256 _value) whenNotPaused returns (bool success) {
  > |	    balances[msg.sender] = balances[msg.sender].sub(_value);
    |	    balances[_to] = balances[_to].add(_value);
    |	    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |	    balances[_to] = balances[_to].add(_value);
    |	    balances[_from] = balances[_from].sub(_value);
  > |	    allowed[_from][msg.sender] = allowance.sub(_value);
    |	    Transfer(_from, _to, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |
    |	function approve(address _spender, uint256 _value) returns (bool success) {
  > |	    allowed[msg.sender][_spender] = _value;
    |	    Approval(msg.sender, _spender, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |    //@dev called by the owner to pause, triggers stopped state
    |  function pause() onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |    //@dev called by the owner to unpause, returns to normal state
    |  function unpause() onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |    //@dev called by the owner to pause, triggers stopped state
    |  function salePause() onlyOwner saleWhenNotPaused {
  > |    salePaused = true;
    |    SalePause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |    //@dev called by the owner to unpause, returns to normal state
    |  function saleUnpause() onlyOwner saleWhenPaused {
  > |    salePaused = false;
    |    SaleUnpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTToken':
    |  function newPrice(uint256 _newPrice) onlyOwner {
    |    require(_newPrice > 0);
  > |    price = _newPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(257)

[33mWarning[0m for DAOConstantGas in contract 'BLTTokenSale':
    |      //forwards ether to storage wallet  
    |      function forwardFunds() internal {
  > |        ethDeposits.transfer(msg.value);
    |        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(386)

[33mWarning[0m for LockedEther in contract 'BLTTokenSale':
    |
    |
  > |contract BLTTokenSale is BLTToken {
    |    using SafeMath for uint256;    
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(336)

[33mWarning[0m for UnhandledException in contract 'BLTTokenSale':
    |      //forwards ether to storage wallet  
    |      function forwardFunds() internal {
  > |        ethDeposits.transfer(msg.value);
    |        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(386)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BLTTokenSale':
    |      //forwards ether to storage wallet  
    |      function forwardFunds() internal {
  > |        ethDeposits.transfer(msg.value);
    |        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |    returns (bool success) 
    |    {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |
    |	function transfer(address _to, uint256 _value) whenNotPaused returns (bool success) {
  > |	    balances[msg.sender] = balances[msg.sender].sub(_value);
    |	    balances[_to] = balances[_to].add(_value);
    |	    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |	function transfer(address _to, uint256 _value) whenNotPaused returns (bool success) {
    |	    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |	    balances[_to] = balances[_to].add(_value);
    |	    Transfer(msg.sender, _to, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |	    var allowance = allowed[_from][msg.sender];
    |	    
  > |	    balances[_to] = balances[_to].add(_value);
    |	    balances[_from] = balances[_from].sub(_value);
    |	    allowed[_from][msg.sender] = allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |	    
    |	    balances[_to] = balances[_to].add(_value);
  > |	    balances[_from] = balances[_from].sub(_value);
    |	    allowed[_from][msg.sender] = allowance.sub(_value);
    |	    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |	    balances[_to] = balances[_to].add(_value);
    |	    balances[_from] = balances[_from].sub(_value);
  > |	    allowed[_from][msg.sender] = allowance.sub(_value);
    |	    Transfer(_from, _to, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |
    |	function approve(address _spender, uint256 _value) returns (bool success) {
  > |	    allowed[msg.sender][_spender] = _value;
    |	    Approval(msg.sender, _spender, _value);
    |	    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |        if (remainingTokenSuppy >= tokens) {                                        //only works if there is still a supply in the master account
    |            require(mint(_recipient, tokens));                                      //execute the movement of tokens
  > |            etherRaised = etherRaised.add(_value);
    |            forwardFunds();
    |            RecievedEther(msg.sender,_value);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |	    var allowance = allowed[_from][owner];
    |	    
  > |	    balances[_to] = balances[_to].add(_tokens);
    |	    balances[_from] = balances[_from].sub(_tokens);
    |	    allowed[_from][owner] = allowance.sub(_tokens);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |	    
    |	    balances[_to] = balances[_to].add(_tokens);
  > |	    balances[_from] = balances[_from].sub(_tokens);
    |	    allowed[_from][owner] = allowance.sub(_tokens);
    |        Transfer(_from, _to, _tokens);                                               //capture event in logs
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |	    balances[_to] = balances[_to].add(_tokens);
    |	    balances[_from] = balances[_from].sub(_tokens);
  > |	    allowed[_from][owner] = allowance.sub(_tokens);
    |        Transfer(_from, _to, _tokens);                                               //capture event in logs
    |	    MintedToken(_from,_to, _tokens); 
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |    //@dev called by the owner to pause, triggers stopped state
    |  function pause() onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |    //@dev called by the owner to unpause, returns to normal state
    |  function unpause() onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |    //@dev called by the owner to pause, triggers stopped state
    |  function salePause() onlyOwner saleWhenNotPaused {
  > |    salePaused = true;
    |    SalePause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |    //@dev called by the owner to unpause, returns to normal state
    |  function saleUnpause() onlyOwner saleWhenPaused {
  > |    salePaused = false;
    |    SaleUnpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'BLTTokenSale':
    |  function newPrice(uint256 _newPrice) onlyOwner {
    |    require(_newPrice > 0);
  > |    price = _newPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(257)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(58)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |    //@dev The Ownable constructor sets the original `owner` of the contract to the sender account.
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    //@dev Allows the current owner to transfer control of the contract to a newOwner.
    |    //@param newOwner The address to transfer ownership to.
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(177)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |    //@title Pausable
    |    //@dev Base contract which allows children to implement an emergency stop mechanism for trading.
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |    //@dev The Ownable constructor sets the original `owner` of the contract to the sender account.
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    //@dev Allows the current owner to transfer control of the contract to a newOwner.
    |    //@param newOwner The address to transfer ownership to.
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |    //@dev Modifier to make a function callable only when the contract is not paused.
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |    //@dev called by the owner to pause, triggers stopped state
  > |  function pause() onlyOwner whenNotPaused {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |    //@dev called by the owner to unpause, returns to normal state
  > |  function unpause() onlyOwner whenPaused {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    //@dev called by the owner to pause, triggers stopped state
    |  function pause() onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    //@dev called by the owner to unpause, returns to normal state
    |  function unpause() onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(209)

[33mWarning[0m for LockedEther in contract 'PriceUpdate':
    |}
    |
  > |contract PriceUpdate is Ownable {
    |  uint256 public price;
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'PriceUpdate':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |    //@dev The Ownable constructor sets the original `owner` of the contract to the sender account.
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'PriceUpdate':
    |    //@dev Allows the current owner to transfer control of the contract to a newOwner.
    |    //@param newOwner The address to transfer ownership to.
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'PriceUpdate':
    |
    |contract PriceUpdate is Ownable {
  > |  uint256 public price;
    |
    |    //@dev The Ownable constructor sets the original `price` of the BLT token to the sender account.
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'PriceUpdate':
    |
    |    //@dev Allows the current owner to change the price of the token per ether.
  > |  function newPrice(uint256 _newPrice) onlyOwner {
    |    require(_newPrice > 0);
    |    price = _newPrice;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'PriceUpdate':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'PriceUpdate':
    |  function newPrice(uint256 _newPrice) onlyOwner {
    |    require(_newPrice > 0);
  > |    price = _newPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(257)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(4)

[33mWarning[0m for LockedEther in contract 'SalePausable':
    |    //@title Pausable
    |    //@dev Base contract which allows children to implement an emergency stop mechanism for crowdsale.
  > |contract SalePausable is Ownable {
    |  event SalePause();
    |  event SaleUnpause();
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'SalePausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |    //@dev The Ownable constructor sets the original `owner` of the contract to the sender account.
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'SalePausable':
    |    //@dev Allows the current owner to transfer control of the contract to a newOwner.
    |    //@param newOwner The address to transfer ownership to.
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'SalePausable':
    |  event SaleUnpause();
    |
  > |  bool public salePaused = false;
    |
    |    //@dev Modifier to make a function callable only when the contract is not paused.
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'SalePausable':
    |
    |    //@dev called by the owner to pause, triggers stopped state
  > |  function salePause() onlyOwner saleWhenNotPaused {
    |    salePaused = true;
    |    SalePause();
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'SalePausable':
    |  }
    |    //@dev called by the owner to unpause, returns to normal state
  > |  function saleUnpause() onlyOwner saleWhenPaused {
    |    salePaused = false;
    |    SaleUnpause();
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'SalePausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'SalePausable':
    |    //@dev called by the owner to pause, triggers stopped state
    |  function salePause() onlyOwner saleWhenNotPaused {
  > |    salePaused = true;
    |    SalePause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'SalePausable':
    |    //@dev called by the owner to unpause, returns to normal state
    |  function saleUnpause() onlyOwner saleWhenPaused {
  > |    salePaused = false;
    |    SaleUnpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(241)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool success) 
    |    {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x007a422fd7e5b47dd2cb078f250388b406548cd4.sol(150)


