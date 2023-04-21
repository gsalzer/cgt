Processing contract: /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol:Consulteth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol:Lockable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Consulteth':
    | 
    | 
  > | contract Consulteth is ERC20, Lockable { 
    | 
    |
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'Consulteth':
    |
    | 
  > |   function balanceOf( address who ) constant returns (uint value) { 
    |     return _balances[who]; 
    |   } 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'Consulteth':
    | 
    | 
  > |   function allowance(address owner, address spender) constant returns (uint _allowance) { 
    |     return _approvals[owner][spender]; 
    |   } 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'Consulteth':
    | 
    | 
  > |   function transfer(address to, uint value) isTokenSwapOn returns (bool ok) { 
    | 
    | 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'Consulteth':
    | 
    | 
  > |   function transferFrom(address from, address to, uint value) isTokenSwapOn returns (bool ok) { 
    |     // if you don't have enough balance, throw 
    |     if( _balances[from] < value ) { 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'Consulteth':
    |   } 
    | 
  > |   function approve(address spender, uint value) 
    |     isTokenSwapOn 
    |     returns (bool ok) { 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'Consulteth':
    |   // can only be called during the tokenswap period 
    |   
  > |function mintMiniICOTokens(address newTokenHolder, uint etherAmount) onlyFromMiniWallet
    |    external { 
    | 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(197)

[31mViolation[0m for MissingInputValidation in contract 'Consulteth':
    |
    |
  > |function kickStartICO(address ico_Wallet, uint mint_Factorial) onlyDev  { 
    |    if (ico_Wallet == address(0x0)) throw; 
    |         // Allow setting only once 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(225)

[31mViolation[0m for MissingInputValidation in contract 'Consulteth':
    |   // amount of ether sent to the wallet contract. The function 
    |   // can only be called during the tokenswap period 
  > |   function mintICOTokens(address newTokenHolder, uint etherAmount) onlyFromWallet
    |    external { 
    | 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    | 
    | contract Lockable {  
  > |     uint public creationTime;
    |     bool public tokenSwapLock; 
    |     
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    | contract Lockable {  
    |     uint public creationTime;
  > |     bool public tokenSwapLock; 
    |     
    |     address public dev;
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    |     bool public tokenSwapLock; 
    |     
  > |     address public dev;
    | 
    |     // This modifier should prevent tokens transfers while the tokenswap 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    |   mapping( address => mapping( address => uint ) ) _approvals; 
    |   
  > |   uint public foundationAsset;
    |   uint public CTX_Cap;
    |   uint _supply; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    |   
    |   uint public foundationAsset;
  > |   uint public CTX_Cap;
    |   uint _supply; 
    |   
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    |   uint _supply; 
    |   
  > |   address public wallet_Mini_Address;
    |   address public wallet_Address;
    |   
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    |   
    |   address public wallet_Mini_Address;
  > |   address public wallet_Address;
    |   
    |   uint public factorial_ICO;
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    |   address public wallet_Address;
    |   
  > |   uint public factorial_ICO;
    |   
    |   event TokenMint(address newTokenHolder, uint amountOfTokens); 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    | 
    | 
  > |   function totalSupply() constant returns (uint supply) { 
    |     return _supply; 
    |   } 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    | 
    |   // A helper to notify if overflow occurs 
  > |   function safeToAdd(uint a, uint b) internal returns (bool) { 
    |     return (a + b >= a && a + b >= b); 
    |   } 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    | 
    | 
  > |   function kickStartMiniICO(address ico_Mini_Wallet) onlyDev  { 
    |    if (ico_Mini_Wallet == address(0x0)) throw; 
    |         // Allow setting only once 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    |   // between consulteum tokens and Ether during the pre-ICO token swap period 
    |   
  > |   function preICOSwapRate() constant returns(uint) { 
    |       if (creationTime + 1 weeks > now) { 
    |           return 1000; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    |   // contract once the token swap has reached its end conditions 
    |
  > |   function disableMiniSwapLock() onlyFromMiniWallet
    |     external { 
    |         tokenSwapLock = false; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    | 
    |  
  > |   function ICOSwapRate() constant returns(uint) { 
    |       if (creationTime + 1 weeks > now) { 
    |           return factorial_ICO; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'Consulteth':
    |   // The function disableICOSwapLock() is called by the wallet 
    |   // contract once the token swap has reached its end conditions 
  > |   function disableICOSwapLock() onlyFromWallet
    |     external { 
    |         tokenSwapLock = false; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(281)

[31mViolation[0m for UnrestrictedWrite in contract 'Consulteth':
    | 
    |     _balances[msg.sender] -= value; 
  > |     _balances[to] += value; 
    |     Transfer( msg.sender, to, value ); 
    |     return true; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'Consulteth':
    |     // transfer and return true 
    |     _approvals[from][msg.sender] -= value; 
  > |     _balances[from] -= value; 
    |     _balances[to] += value; 
    |     Transfer( from, to, value ); 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'Consulteth':
    |     _approvals[from][msg.sender] -= value; 
    |     _balances[from] -= value; 
  > |     _balances[to] += value; 
    |     Transfer( from, to, value ); 
    |     return true; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'Consulteth':
    | 
    | 
  > |         _balances[newTokenHolder] += tokensAmount; 
    |         _supply += tokensAmount; 
    | 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(207)

[31mViolation[0m for UnrestrictedWrite in contract 'Consulteth':
    | 
    |         _balances[newTokenHolder] += tokensAmount; 
  > |         _supply += tokensAmount; 
    | 
    | 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'Consulteth':
    | 
    | 
  > |         _balances[newTokenHolder] += tokensAmount; 
    |         _supply += tokensAmount; 
    | 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(271)

[31mViolation[0m for UnrestrictedWrite in contract 'Consulteth':
    | 
    |         _balances[newTokenHolder] += tokensAmount; 
  > |         _supply += tokensAmount; 
    | 
    | 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    | 
    | 
  > |     _balances[msg.sender] -= value; 
    |     _balances[to] += value; 
    |     Transfer( msg.sender, to, value ); 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |     } 
    |     // transfer and return true 
  > |     _approvals[from][msg.sender] -= value; 
    |     _balances[from] -= value; 
    |     _balances[to] += value; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |     isTokenSwapOn 
    |     returns (bool ok) { 
  > |     _approvals[msg.sender][spender] = value; 
    |     Approval( msg.sender, spender, value ); 
    |     return true; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |         // Allow setting only once 
    |    if (wallet_Mini_Address != address(0x0)) throw; 
  > |         wallet_Mini_Address = ico_Mini_Wallet;
    |         
    |         creationTime = now; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |         wallet_Mini_Address = ico_Mini_Wallet;
    |         
  > |         creationTime = now; 
    |         tokenSwapLock = true;  
    |   }
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |         
    |         creationTime = now; 
  > |         tokenSwapLock = true;  
    |   }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |   function disableMiniSwapLock() onlyFromMiniWallet
    |     external { 
  > |         tokenSwapLock = false; 
    |         TokenSwapOver(); 
    |   }    
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |    if (wallet_Address != address(0x0)) throw; 
    |         
  > |         wallet_Address = ico_Wallet;
    |         factorial_ICO = mint_Factorial;
    |         
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |         
    |         wallet_Address = ico_Wallet;
  > |         factorial_ICO = mint_Factorial;
    |         
    |         creationTime = now; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |         factorial_ICO = mint_Factorial;
    |         
  > |         creationTime = now; 
    |         tokenSwapLock = true;  
    |   }
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |         
    |         creationTime = now; 
  > |         tokenSwapLock = true;  
    |   }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Consulteth':
    |   function disableICOSwapLock() onlyFromWallet
    |     external { 
  > |         tokenSwapLock = false; 
    |         TokenSwapOver(); 
    |   } 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(283)

[33mWarning[0m for LockedEther in contract 'Lockable':
    | 
    | 
  > | contract Lockable {  
    |     uint public creationTime;
    |     bool public tokenSwapLock; 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    | 
    | contract Lockable {  
  > |     uint public creationTime;
    |     bool public tokenSwapLock; 
    |     
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    | contract Lockable {  
    |     uint public creationTime;
  > |     bool public tokenSwapLock; 
    |     
    |     address public dev;
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |     bool public tokenSwapLock; 
    |     
  > |     address public dev;
    | 
    |     // This modifier should prevent tokens transfers while the tokenswap 
  at /home/jiaming/mavs_srcs/contract@0x5310aadc315a6e9eb2ea62629e41e35bbd580071.sol(16)


