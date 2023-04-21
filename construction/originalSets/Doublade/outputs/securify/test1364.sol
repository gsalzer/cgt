Processing contract: /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol:PixelOperationsContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'PixelOperationsContract':
    |		require(pixelsOwned[pxHash] == 0x0000000000000000000000000000000000000000);
    |		
  > |		owner.transfer(msg.value);
    |		pixelsOwned[pxHash] = msg.sender;
    |		pixelsSold = pixelsSold + pxCount;		
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(43)

[31mViolation[0m for DAOConstantGas in contract 'PixelOperationsContract':
    |
    |		address blockOwner = pixelsOwned[pxHash];
  > |		blockOwner.transfer(msg.value);
    |		pixelsOwned[pxHash] = msg.sender;
    |		
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(55)

[33mWarning[0m for LockedEther in contract 'PixelOperationsContract':
    |pragma solidity ^0.4.18;
    |
  > |contract PixelOperationsContract {	
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'PixelOperationsContract':
    | 	event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  > |	mapping(bytes32 => address) public pixelsOwned;
    |	mapping(bytes32 => pixelBlock) public pixelsOnSale;
    |
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'PixelOperationsContract':
    |
    |	mapping(bytes32 => address) public pixelsOwned;
  > |	mapping(bytes32 => pixelBlock) public pixelsOnSale;
    |
    |	function PixelOperationsContract() public {
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'PixelOperationsContract':
    |  	}
    |
  > |	function buyFreePixels(uint256 tX, uint256 tY, uint256 bX, uint256 bY) public payable returns(bool) {
    |		
    |		bytes32 pxHash = keccak256(tX,tY,bX,bY);
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'PixelOperationsContract':
    |	}
    |
  > |	function buyOwnedPixels(bytes32 pxHash) public payable returns(bool) {
    |		require(pixelsOnSale[pxHash].isValue == true);
    |		require(msg.value >= pixelsOnSale[pxHash].blockPrice);
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'PixelOperationsContract':
    |	}
    |
  > |	function sendPixelsToMarket(bytes32 pxHash, uint256 pxPrice) public returns(bool) {
    |		
    |		require(pixelsOwned[pxHash] == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'PixelOperationsContract':
    |	}
    |
  > |	function removePixelsFromMarket(bytes32 pxHash) public returns(bool) {
    |		require(pixelsOnSale[pxHash].blockOwner == msg.sender);		
    |		pixelsOnSale[pxHash].isValue = false;
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'PixelOperationsContract':
    |	}
    |	
  > |	function getPixels(bytes32 pxHash) public view returns (address) {
    |		return pixelsOwned[pxHash];
    |	}
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'PixelOperationsContract':
    |
    |contract PixelOperationsContract {	
  > |	address public owner;
    |
    |	uint256 private pixelsSold = 0;
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'PixelOperationsContract':
    |  	}
    |	
  > |	function transferOwnership(address newOwner) onlyOwner public {
    |   		require(newOwner != address(0));
    |    		OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'PixelOperationsContract':
    |	}
    |	
  > |	function getQuotes() internal returns(uint256) {
    |	    	uint256 pixelPrice = 0;
    |	    
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(82)

[31mViolation[0m for TODReceiver in contract 'PixelOperationsContract':
    |		require(pixelsOwned[pxHash] == 0x0000000000000000000000000000000000000000);
    |		
  > |		owner.transfer(msg.value);
    |		pixelsOwned[pxHash] = msg.sender;
    |		pixelsSold = pixelsSold + pxCount;		
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(43)

[33mWarning[0m for UnhandledException in contract 'PixelOperationsContract':
    |		require(pixelsOwned[pxHash] == 0x0000000000000000000000000000000000000000);
    |		
  > |		owner.transfer(msg.value);
    |		pixelsOwned[pxHash] = msg.sender;
    |		pixelsSold = pixelsSold + pxCount;		
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(43)

[33mWarning[0m for UnhandledException in contract 'PixelOperationsContract':
    |
    |		address blockOwner = pixelsOwned[pxHash];
  > |		blockOwner.transfer(msg.value);
    |		pixelsOwned[pxHash] = msg.sender;
    |		
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'PixelOperationsContract':
    |		
    |		owner.transfer(msg.value);
  > |		pixelsOwned[pxHash] = msg.sender;
    |		pixelsSold = pixelsSold + pxCount;		
    |
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'PixelOperationsContract':
    |		owner.transfer(msg.value);
    |		pixelsOwned[pxHash] = msg.sender;
  > |		pixelsSold = pixelsSold + pxCount;		
    |
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'PixelOperationsContract':
    |		address blockOwner = pixelsOwned[pxHash];
    |		blockOwner.transfer(msg.value);
  > |		pixelsOwned[pxHash] = msg.sender;
    |		
    |		pixelsOnSale[pxHash].isValue = false;
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'PixelOperationsContract':
    |		pixelsOwned[pxHash] = msg.sender;
    |		
  > |		pixelsOnSale[pxHash].isValue = false;
    |
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelOperationsContract':
    |   		require(newOwner != address(0));
    |    		OwnershipTransferred(owner, newOwner);
  > |    		owner = newOwner;
    |  	}
    |
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelOperationsContract':
    |		
    |		require(pixelsOwned[pxHash] == msg.sender);
  > |		pixelsOnSale[pxHash].blockPrice = pxPrice;
    |		pixelsOnSale[pxHash].blockOwner = msg.sender;
    |		pixelsOnSale[pxHash].isValue = true;
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelOperationsContract':
    |		require(pixelsOwned[pxHash] == msg.sender);
    |		pixelsOnSale[pxHash].blockPrice = pxPrice;
  > |		pixelsOnSale[pxHash].blockOwner = msg.sender;
    |		pixelsOnSale[pxHash].isValue = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelOperationsContract':
    |		pixelsOnSale[pxHash].blockPrice = pxPrice;
    |		pixelsOnSale[pxHash].blockOwner = msg.sender;
  > |		pixelsOnSale[pxHash].isValue = true;
    |
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelOperationsContract':
    |	function removePixelsFromMarket(bytes32 pxHash) public returns(bool) {
    |		require(pixelsOnSale[pxHash].blockOwner == msg.sender);		
  > |		pixelsOnSale[pxHash].isValue = false;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x568ad119417a50529ed0d296a9f1389a6525b49a.sol(75)


