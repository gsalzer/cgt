Processing contract: /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol:TEST_Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol:token
[33mWarning[0m for LockedEther in contract 'TEST_Crowdsale':
    |}
    |
  > |contract TEST_Crowdsale {
    |    
    |    token public sharesTokenAddress; 
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |contract TEST_Crowdsale {
    |    
  > |    token public sharesTokenAddress; 
    |    address public owner;
    |    address public safeContract;
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |    
    |    token public sharesTokenAddress; 
  > |    address public owner;
    |    address public safeContract;
    |
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |    token public sharesTokenAddress; 
    |    address public owner;
  > |    address public safeContract;
    |
    |	uint public TIMEstartICO = 1513728000; 
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |    address public safeContract;
    |
  > |	uint public TIMEstartICO = 1513728000; 
    |	uint public stopICO = 1521504000;
    |	uint febr20 = 1519084800;
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |
    |	uint public TIMEstartICO = 1513728000; 
  > |	uint public stopICO = 1521504000;
    |	uint febr20 = 1519084800;
    |	uint jan20 = 1516406400;
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |	uint febr20 = 1519084800;
    |	uint jan20 = 1516406400;
  > |	uint public price = 0.0035 * 1 ether; 
    |	uint coeff = 100000; 
    |	
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |	uint coeff = 100000; 
    |	
  > |	uint256 public tokenSold = 0;
    |	uint256 public tokenFree = 0; 
    |	bool public crowdsaleClosed = false;
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |	
    |	uint256 public tokenSold = 0;
  > |	uint256 public tokenFree = 0; 
    |	bool public crowdsaleClosed = false;
    |    bool public tokenWithdraw = false;
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |	uint256 public tokenSold = 0;
    |	uint256 public tokenFree = 0; 
  > |	bool public crowdsaleClosed = false;
    |    bool public tokenWithdraw = false;
    |	
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TEST_Crowdsale':
    |	uint256 public tokenFree = 0; 
    |	bool public crowdsaleClosed = false;
  > |    bool public tokenWithdraw = false;
    |	
    |	event TokenFree(uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x403087fc37c9cd53475e77ce24071383c6ed02b6.sol(24)


