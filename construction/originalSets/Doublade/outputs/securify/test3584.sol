Processing contract: /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol:token
[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale {
    |
    |	token public sharesTokenAddress; // token address
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract Crowdsale {
    |
  > |	token public sharesTokenAddress; // token address
    |
    |	uint public startICO = now + 10 days; // start ICO
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	token public sharesTokenAddress; // token address
    |
  > |	uint public startICO = now + 10 days; // start ICO
    |	uint public periodICO; // duration ICO
    |	uint public stopICO; // end ICO
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	uint public startICO = now + 10 days; // start ICO
  > |	uint public periodICO; // duration ICO
    |	uint public stopICO; // end ICO
    |	uint public price = 0.0035 * 1 ether; // ETH for 1 package of tokens
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	uint public startICO = now + 10 days; // start ICO
    |	uint public periodICO; // duration ICO
  > |	uint public stopICO; // end ICO
    |	uint public price = 0.0035 * 1 ether; // ETH for 1 package of tokens
    |	uint coeff = 100000; // capacity of 1 package
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	uint public periodICO; // duration ICO
    |	uint public stopICO; // end ICO
  > |	uint public price = 0.0035 * 1 ether; // ETH for 1 package of tokens
    |	uint coeff = 100000; // capacity of 1 package
    |	
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	uint coeff = 100000; // capacity of 1 package
    |	
  > |	uint256 public tokenSold = 0; // tokens sold
    |	uint256 public tokenFree = 0; // tokens free
    |	bool public crowdsaleClosed = false;
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	
    |	uint256 public tokenSold = 0; // tokens sold
  > |	uint256 public tokenFree = 0; // tokens free
    |	bool public crowdsaleClosed = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	uint256 public tokenSold = 0; // tokens sold
    |	uint256 public tokenFree = 0; // tokens free
  > |	bool public crowdsaleClosed = false;
    |
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	bool public crowdsaleClosed = false;
    |
  > |	address public owner;
    |	
    |	event TokenFree(uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	}
    |	
  > |	function unsoldTokensBack(){ // after crowdsale we can take back all unsold tokens from crowdsale	    
    |	    require(crowdsaleClosed);
    |		require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(68)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |	    require(crowdsaleClosed);
    |		require(msg.sender == owner);
  > |	    sharesTokenAddress.transfer(owner, sharesTokenAddress.balanceOf(this));
    |		tokenFree = 0;
    |		crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(71)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |	    require(crowdsaleClosed);
    |		require(msg.sender == owner);
  > |	    sharesTokenAddress.transfer(owner, sharesTokenAddress.balanceOf(this));
    |		tokenFree = 0;
    |		crowdsaleClosed = true;
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |		require(msg.sender == owner);
    |	    sharesTokenAddress.transfer(owner, sharesTokenAddress.balanceOf(this));
  > |		tokenFree = 0;
    |		crowdsaleClosed = true;
    |	}	
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |	    sharesTokenAddress.transfer(owner, sharesTokenAddress.balanceOf(this));
    |		tokenFree = 0;
  > |		crowdsaleClosed = true;
    |	}	
    |}
  at /home/jiaming/mavs_srcs/contract@0xeab33e3394c51c1320133864d40a72b3295ff063.sol(73)


