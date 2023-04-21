Processing contract: /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol:ListingsERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'ListingsERC20':
    |        ERC20 tokenContract = ERC20(contractAddress);
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
  > |        seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        sold[listingId] = allowance.sub(amount);
    |        ListingBought(listingId, contractAddress, price, amount, now, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(165)

[33mWarning[0m for DAOConstantGas in contract 'ListingsERC20':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(this.balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(109)

[33mWarning[0m for LockedEther in contract 'ListingsERC20':
    |  }
    |}
  > |contract ListingsERC20 is Ownable {
    |      using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(80)

[31mViolation[0m for TODAmount in contract 'ListingsERC20':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(this.balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(109)

[33mWarning[0m for TODAmount in contract 'ListingsERC20':
    |        ERC20 tokenContract = ERC20(contractAddress);
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
  > |        seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        sold[listingId] = allowance.sub(amount);
    |        ListingBought(listingId, contractAddress, price, amount, now, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(165)

[31mViolation[0m for TODReceiver in contract 'ListingsERC20':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(this.balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(109)

[33mWarning[0m for TODReceiver in contract 'ListingsERC20':
    |        ERC20 tokenContract = ERC20(contractAddress);
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
  > |        seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        sold[listingId] = allowance.sub(amount);
    |        ListingBought(listingId, contractAddress, price, amount, now, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(165)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(this.balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(109)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20':
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  > |        assert(ERC20(token).approve(owner, amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(112)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20':
    |    }
    |    function getBalance(address tokenContract, address seller) internal constant returns (uint256) {
  > |        return ERC20(tokenContract).balanceOf.gas(GAS_LIMIT)(seller);
    |    }
    |    function getAllowance(address tokenContract, address seller, address listingContract) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(125)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20':
    |    }
    |    function getAllowance(address tokenContract, address seller, address listingContract) internal constant returns (uint256) {
  > |        return ERC20(tokenContract).allowance.gas(GAS_LIMIT)(seller, listingContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(128)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20':
    |        require(msg.value == sale);
    |        ERC20 tokenContract = ERC20(contractAddress);
  > |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        sold[listingId] = allowance.sub(amount);
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(164)

[33mWarning[0m for UnhandledException in contract 'ListingsERC20':
    |        ERC20 tokenContract = ERC20(contractAddress);
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
  > |        seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        sold[listingId] = allowance.sub(amount);
    |        ListingBought(listingId, contractAddress, price, amount, now, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(165)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'ListingsERC20':
    |        ERC20 tokenContract = ERC20(contractAddress);
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
  > |        seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        sold[listingId] = allowance.sub(amount);
    |        ListingBought(listingId, contractAddress, price, amount, now, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20':
    |
    |    function withdrawBalance() onlyOwner external {
  > |        assert(owner.send(this.balance));
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20':
    |    }
    |    function approveToken(address token, uint256 amount) onlyOwner external {
  > |        assert(ERC20(token).approve(owner, amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20':
    |    }
    |    function getBalance(address tokenContract, address seller) internal constant returns (uint256) {
  > |        return ERC20(tokenContract).balanceOf.gas(GAS_LIMIT)(seller);
    |    }
    |    function getAllowance(address tokenContract, address seller, address listingContract) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(125)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20':
    |    }
    |    function getAllowance(address tokenContract, address seller, address listingContract) internal constant returns (uint256) {
  > |        return ERC20(tokenContract).allowance.gas(GAS_LIMIT)(seller, listingContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ListingsERC20':
    |        require(msg.value == sale);
    |        ERC20 tokenContract = ERC20(contractAddress);
  > |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
    |        sold[listingId] = allowance.sub(amount);
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'ListingsERC20':
    |        require(tokenContract.transferFrom(seller, msg.sender, amount));
    |        seller.transfer(sale - (sale.mul(ownerPercentage).div(10000)));
  > |        sold[listingId] = allowance.sub(amount);
    |        ListingBought(listingId, contractAddress, price, amount, now, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'ListingsERC20':
    |        bytes32 listingId = getHashInternal(tokenContractAddress, price, allowance, dateEnds, salt);
    |        Listing memory listing = Listing(msg.sender, tokenContractAddress, price, allowance, now, dateEnds);
  > |        listings[listingId] = listing;
    |        ListingCreated(listingId, tokenContractAddress, price, allowance, now, dateEnds, msg.sender);
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'ListingsERC20':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'ListingsERC20':
    |
    |    function updateOwnerPercentage(uint256 percentage) external onlyOwner {
  > |        ownerPercentage = percentage;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'ListingsERC20':
    |        Listing storage listing = listings[listingId];
    |        require(msg.sender == listing.seller);
  > |        delete listings[listingId];
    |        ListingCancelled(listingId, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(147)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.18;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(35)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4e3b8c663d1a6620730dd68d65966b867d9e2f80.sol(52)


