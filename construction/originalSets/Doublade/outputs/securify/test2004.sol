Processing contract: /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol:CERB_Coin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'CERB_Coin':
    |            if((msg.sender == owner) || (msg.sender ==  bkaddress))
    |            {
  > |                benAddress.transfer(amountWith);
    |            }
    |            else
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(126)

[33mWarning[0m for DAOConstantGas in contract 'CERB_Coin':
    |            {
    |                var amountWith = this.balance - 10000000000000000;
  > |                benAddress.transfer(amountWith);
    |            }
    |            else
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(139)

[33mWarning[0m for LockedEther in contract 'CERB_Coin':
    |pragma solidity ^0.4.21;
    |contract tokenRecipient { function receiveApproval(address from, uint256 value, address token, bytes extraData) public; }
  > |contract CERB_Coin
    |  { 
    |     /* Variables  */
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |     /* Array  */
    |    mapping (address => uint256) public balanceOf;                              // array of all balances
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
    |    
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |    mapping (address => uint256) public balanceOf;                              // array of all balances
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |    mapping (address => bool) public frozenAccount;
    |    
    |    /* Events  */
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |    }    
    |    
  > |    function setEthRate (uint newEthRate) public  onlyOwner                    // Set ether price
    |    {
    |        ethRate = newEthRate;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |    }
    |    
  > |    function setTokenPrice (uint newTokenRate) public  onlyOwner               // Set one token price
    |    {
    |        icoTokenPrice = newTokenRate;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |    
    |    
  > |    function setTransferStatus (uint status) public  onlyOwner                 // Set transfer status
    |    {
    |        allowTransferToken = status;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |    }   
    |    
  > |    function changeIcoStatus (uint8 statx)  public onlyOwner                   // Change ICO Status
    |    {
    |        icoStatus = statx;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |    
    |
  > |    function withdraw(uint amountWith) public onlyOwner                        // withdraw partical amount
    |        {
    |            if((msg.sender == owner) || (msg.sender ==  bkaddress))
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |		
    |
  > |    function freezeAccount(address target, bool freeze) public onlyOwner 
    |        {
    |            frozenAccount[target] = freeze;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |        }        
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) 
    |        {
    |            return balanceOf[_owner];
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |
    |
  > |    function transferOwnership(address newOwner) public onlyOwner 
    |        { 
    |            balanceOf[owner] = 0;                        
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |      }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) 
    |      {
    |          require (_value < allowance[_from][msg.sender]);                      // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |      }
    |
  > |  function approve(address _spender, uint256 _value) public returns (bool success) 
    |      {
    |          allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |      }
    |
  > |  function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success)
    |      {
    |          tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'CERB_Coin':
    |      }
    |
  > |  function burnFrom(address _from, uint256 _value) public returns (bool success) 
    |      {
    |          require(balanceOf[_from] >= _value);                                  // Check if the targeted balance is enough
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |  { 
    |     /* Variables  */
  > |    string  public name;                                                        // name  of contract
    |    string  public symbol;                                                      // symbol of contract
    |    uint8   public decimals;                                                    // how many decimals to keep , 18 is best 
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |     /* Variables  */
    |    string  public name;                                                        // name  of contract
  > |    string  public symbol;                                                      // symbol of contract
    |    uint8   public decimals;                                                    // how many decimals to keep , 18 is best 
    |    uint256 public totalSupply;                                                 // how many tokens to create
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    string  public name;                                                        // name  of contract
    |    string  public symbol;                                                      // symbol of contract
  > |    uint8   public decimals;                                                    // how many decimals to keep , 18 is best 
    |    uint256 public totalSupply;                                                 // how many tokens to create
    |    uint256 public remaining;                                                   // how many tokens has left
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    string  public symbol;                                                      // symbol of contract
    |    uint8   public decimals;                                                    // how many decimals to keep , 18 is best 
  > |    uint256 public totalSupply;                                                 // how many tokens to create
    |    uint256 public remaining;                                                   // how many tokens has left
    |    uint    public ethRate;                                                     // current rate of ether
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    uint8   public decimals;                                                    // how many decimals to keep , 18 is best 
    |    uint256 public totalSupply;                                                 // how many tokens to create
  > |    uint256 public remaining;                                                   // how many tokens has left
    |    uint    public ethRate;                                                     // current rate of ether
    |    address public owner;                                                       // contract creator
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    uint256 public totalSupply;                                                 // how many tokens to create
    |    uint256 public remaining;                                                   // how many tokens has left
  > |    uint    public ethRate;                                                     // current rate of ether
    |    address public owner;                                                       // contract creator
    |    uint256 public amountCollected;                                             // how much funds has been collected
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    uint256 public remaining;                                                   // how many tokens has left
    |    uint    public ethRate;                                                     // current rate of ether
  > |    address public owner;                                                       // contract creator
    |    uint256 public amountCollected;                                             // how much funds has been collected
    |    uint    public icoStatus;                                                   // allow / disallow online purchase
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    uint    public ethRate;                                                     // current rate of ether
    |    address public owner;                                                       // contract creator
  > |    uint256 public amountCollected;                                             // how much funds has been collected
    |    uint    public icoStatus;                                                   // allow / disallow online purchase
    |    uint    public icoTokenPrice;                                               // token price, start with 10 cents
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    address public owner;                                                       // contract creator
    |    uint256 public amountCollected;                                             // how much funds has been collected
  > |    uint    public icoStatus;                                                   // allow / disallow online purchase
    |    uint    public icoTokenPrice;                                               // token price, start with 10 cents
    |    address public benAddress;                                                  // funds withdraw address
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    uint256 public amountCollected;                                             // how much funds has been collected
    |    uint    public icoStatus;                                                   // allow / disallow online purchase
  > |    uint    public icoTokenPrice;                                               // token price, start with 10 cents
    |    address public benAddress;                                                  // funds withdraw address
    |    address public bkaddress;                                                   
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    uint    public icoStatus;                                                   // allow / disallow online purchase
    |    uint    public icoTokenPrice;                                               // token price, start with 10 cents
  > |    address public benAddress;                                                  // funds withdraw address
    |    address public bkaddress;                                                   
    |    uint    public allowTransferToken;                                          // allow / disallow token transfer for members
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    uint    public icoTokenPrice;                                               // token price, start with 10 cents
    |    address public benAddress;                                                  // funds withdraw address
  > |    address public bkaddress;                                                   
    |    uint    public allowTransferToken;                                          // allow / disallow token transfer for members
    |    
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    address public benAddress;                                                  // funds withdraw address
    |    address public bkaddress;                                                   
  > |    uint    public allowTransferToken;                                          // allow / disallow token transfer for members
    |    
    |     /* Array  */
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |    }
    |    
  > |    function getEthRate() onlyOwner public constant returns  (uint)            // Get current rate of ether 
    |    {
    |        return ethRate;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |
    |    
  > |    function getConBal() onlyOwner public constant returns  (uint)            // Get  Balance 
    |    {
    |        return this.balance;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |
    |
  > |    function getTokenPrice() onlyOwner public constant returns  (uint)         // Get current token price
    |    {
    |        return icoTokenPrice;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |        }
    |
  > |    function withdraw_all() public onlyOwner                                   // call to withdraw all available balance
    |        {
    |            if((msg.sender == owner) || (msg.sender ==  bkaddress) )
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |        }
    |
  > |    function mintToken(uint256 tokensToMint) public onlyOwner 
    |        {
    |            if(tokensToMint > 0)
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |            
    |
  > |    function getCollectedAmount() onlyOwner public constant returns (uint256 balance) 
    |        {
    |            return amountCollected;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |
    |  /* Internal transfer, only can be called by this contract */
  > |  function _transfer(address _from, address _to, uint _value) internal 
    |      {
    |          if(allowTransferToken == 1 || _from == owner )
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'CERB_Coin':
    |      }        
    |
  > |  function burn(uint256 _value) public returns (bool success) 
    |      {
    |          require (balanceOf[msg.sender] > _value);                             // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(243)

[31mViolation[0m for TODAmount in contract 'CERB_Coin':
    |            {
    |                var amountWith = this.balance - 10000000000000000;
  > |                benAddress.transfer(amountWith);
    |            }
    |            else
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(139)

[33mWarning[0m for TODAmount in contract 'CERB_Coin':
    |            if((msg.sender == owner) || (msg.sender ==  bkaddress))
    |            {
  > |                benAddress.transfer(amountWith);
    |            }
    |            else
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(126)

[33mWarning[0m for UnhandledException in contract 'CERB_Coin':
    |            if((msg.sender == owner) || (msg.sender ==  bkaddress))
    |            {
  > |                benAddress.transfer(amountWith);
    |            }
    |            else
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(126)

[33mWarning[0m for UnhandledException in contract 'CERB_Coin':
    |            {
    |                var amountWith = this.balance - 10000000000000000;
  > |                benAddress.transfer(amountWith);
    |            }
    |            else
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(139)

[33mWarning[0m for UnhandledException in contract 'CERB_Coin':
    |          tokenRecipient spender = tokenRecipient(_spender);
    |          if (approve(_spender, _value)) {
  > |              spender.receiveApproval(msg.sender, _value, this, _extraData);
    |              return true;
    |          }
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CERB_Coin':
    |            if((msg.sender == owner) || (msg.sender ==  bkaddress))
    |            {
  > |                benAddress.transfer(amountWith);
    |            }
    |            else
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CERB_Coin':
    |            {
    |                var amountWith = this.balance - 10000000000000000;
  > |                benAddress.transfer(amountWith);
    |            }
    |            else
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CERB_Coin':
    |          tokenRecipient spender = tokenRecipient(_spender);
    |          if (approve(_spender, _value)) {
  > |              spender.receiveApproval(msg.sender, _value, this, _extraData);
    |              return true;
    |          }
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |              require (balanceOf[_from] > _value);                              // Check if the sender has enough
    |              require (balanceOf[_to] + _value > balanceOf[_to]);               // Check for overflows
  > |              balanceOf[_from] -= _value;                                       // Subtract from the sender
    |              balanceOf[_to] += _value;                                         // Add to the recipient
    |              Transfer(_from, _to, _value);                                     // raise event
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |              require (balanceOf[_to] + _value > balanceOf[_to]);               // Check for overflows
    |              balanceOf[_from] -= _value;                                       // Subtract from the sender
  > |              balanceOf[_to] += _value;                                         // Add to the recipient
    |              Transfer(_from, _to, _value);                                     // raise event
    |          }
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |          require (balanceOf[msg.sender] > _value);                             // Check if the sender has enough
    |          balanceOf[msg.sender] -= _value;                                      // Subtract from the sender
  > |          totalSupply -= _value;                                                // Updates totalSupply
    |          Burn(msg.sender, _value);
    |          return true;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |          require(balanceOf[_from] >= _value);                                  // Check if the targeted balance is enough
    |          require(_value <= allowance[_from][msg.sender]);                      // Check allowance
  > |          balanceOf[_from] -= _value;                                           // Subtract from the targeted balance
    |          allowance[_from][msg.sender] -= _value;                               // Subtract from the sender's allowance
    |          totalSupply -= _value;                                                // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |          balanceOf[_from] -= _value;                                           // Subtract from the targeted balance
    |          allowance[_from][msg.sender] -= _value;                               // Subtract from the sender's allowance
  > |          totalSupply -= _value;                                                // Update totalSupply
    |          Burn(_from, _value);
    |          return true;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |              require (balanceOf[_from] > _value);                              // Check if the sender has enough
    |              require (balanceOf[_to] + _value > balanceOf[_to]);               // Check for overflows
  > |              balanceOf[_from] -= _value;                                       // Subtract from the sender
    |              balanceOf[_to] += _value;                                         // Add to the recipient
    |              Transfer(_from, _to, _value);                                     // raise event
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |      {
    |          require (_value < allowance[_from][msg.sender]);                      // Check allowance
  > |          allowance[_from][msg.sender] -= _value;
    |          _transfer(_from, _to, _value);
    |          return true;
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |  function approve(address _spender, uint256 _value) public returns (bool success) 
    |      {
  > |          allowance[msg.sender][_spender] = _value;
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |      {
    |          require (balanceOf[msg.sender] > _value);                             // Check if the sender has enough
  > |          balanceOf[msg.sender] -= _value;                                      // Subtract from the sender
    |          totalSupply -= _value;                                                // Updates totalSupply
    |          Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |          require(_value <= allowance[_from][msg.sender]);                      // Check allowance
    |          balanceOf[_from] -= _value;                                           // Subtract from the targeted balance
  > |          allowance[_from][msg.sender] -= _value;                               // Subtract from the sender's allowance
    |          totalSupply -= _value;                                                // Update totalSupply
    |          Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |            if(finalTokens < remaining)
    |                {
  > |                    remaining = remaining - finalTokens;
    |                    _transfer(owner,rec_address, finalTokens);    
    |                    TransferSell(owner, rec_address, finalTokens,'Offline');
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |    function setEthRate (uint newEthRate) public  onlyOwner                    // Set ether price
    |    {
  > |        ethRate = newEthRate;
    |    } 
    |
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |    function setTokenPrice (uint newTokenRate) public  onlyOwner               // Set one token price
    |    {
  > |        icoTokenPrice = newTokenRate;
    |    }     
    |    
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |    function setTransferStatus (uint status) public  onlyOwner                 // Set transfer status
    |    {
  > |        allowTransferToken = status;
    |    }   
    |    
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |    function changeIcoStatus (uint8 statx)  public onlyOwner                   // Change ICO Status
    |    {
  > |        icoStatus = statx;
    |    } 
    |    
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |            {
    |                var totalTokenToMint = tokensToMint * (10 ** 18);
  > |                balanceOf[owner] += totalTokenToMint;
    |                totalSupply += totalTokenToMint;
    |                Transfer(0, owner, totalTokenToMint);
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |                var totalTokenToMint = tokensToMint * (10 ** 18);
    |                balanceOf[owner] += totalTokenToMint;
  > |                totalSupply += totalTokenToMint;
    |                Transfer(0, owner, totalTokenToMint);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |    function freezeAccount(address target, bool freeze) public onlyOwner 
    |        {
  > |            frozenAccount[target] = freeze;
    |            FrozenFunds(target, freeze);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |    function transferOwnership(address newOwner) public onlyOwner 
    |        { 
  > |            balanceOf[owner] = 0;                        
    |            balanceOf[newOwner] = remaining;               
    |            owner = newOwner; 
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |        { 
    |            balanceOf[owner] = 0;                        
  > |            balanceOf[newOwner] = remaining;               
    |            owner = newOwner; 
    |        }        
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'CERB_Coin':
    |            balanceOf[owner] = 0;                        
    |            balanceOf[newOwner] = remaining;               
  > |            owner = newOwner; 
    |        }        
    |
  at /home/jiaming/mavs_srcs/contract@0x81d4703c5b3499b57397c999a72f492fc681410d.sol(193)


