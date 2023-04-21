Processing contract: /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol:DOCTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol:DOCTokenSaleConfig
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol:FlexibleTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol:TokenTransfer
[31mViolation[0m for DAOConstantGas in contract 'DOCTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(300)

[33mWarning[0m for LockedEther in contract 'DOCTokenSale':
    |}
    |
  > |contract DOCTokenSale is FlexibleTokenSale, DOCTokenSaleConfig {
    |
    |    function DOCTokenSale() public
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(340)

[31mViolation[0m for TODReceiver in contract 'DOCTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(300)

[33mWarning[0m for UnhandledException in contract 'DOCTokenSale':
    |
    |        // Check how many tokens are still available for sale.
  > |        uint256 saleBalance = token.balanceOf(address(this));
    |        assert(saleBalance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(269)

[33mWarning[0m for UnhandledException in contract 'DOCTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(300)

[33mWarning[0m for UnhandledException in contract 'DOCTokenSale':
    |
    |        // Transfer tokens to the beneficiary.
  > |        require(token.transfer(_beneficiary, tokens));
    |
    |        TokensPurchased(_beneficiary, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(307)

[33mWarning[0m for UnhandledException in contract 'DOCTokenSale':
    |    function reclaimTokens() external onlyOwner returns (bool) {
    |
  > |        uint256 tokens = token.balanceOf(address(this));
    |
    |        if (tokens == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(318)

[33mWarning[0m for UnhandledException in contract 'DOCTokenSale':
    |        }
    |
  > |        require(token.transfer(owner, tokens));
    |
    |        TokensReclaimed(tokens);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DOCTokenSale':
    |
    |        // Check how many tokens are still available for sale.
  > |        uint256 saleBalance = token.balanceOf(address(this));
    |        assert(saleBalance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DOCTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DOCTokenSale':
    |
    |        // Transfer tokens to the beneficiary.
  > |        require(token.transfer(_beneficiary, tokens));
    |
    |        TokensPurchased(_beneficiary, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DOCTokenSale':
    |    function reclaimTokens() external onlyOwner returns (bool) {
    |
  > |        uint256 tokens = token.balanceOf(address(this));
    |
    |        if (tokens == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DOCTokenSale':
    |        }
    |
  > |        require(token.transfer(owner, tokens));
    |
    |        TokensReclaimed(tokens);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        uint256 contribution =msg.value;
    |        walletAddress.transfer(contribution);
  > |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
    |        // Update our stats counters.
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |
    |        // Update our stats counters.
  > |        totalTokensSold = totalTokensSold.add(tokens);
    |
    |        // Transfer tokens to the beneficiary.
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        }
    |        //if not then first it will do address(0( then it will return true.
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        require(isOwner(_walletAddress) == false);
    |
  > |        walletAddress = _walletAddress;
    |
    |        WalletAddressUpdated(_walletAddress);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        require(_tokenPrice >= 100 && _tokenPrice <= 100000);
    |
  > |        tokenPrice=_tokenPrice;
    |
    |        TokenPriceUpdated(_tokenPrice);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        require(_minToken > 0);
    |
  > |        contributionMin = _minToken;
    |
    |        TokenMinUpdated(_minToken);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        }
    |
  > |        suspended = true;
    |
    |        SaleSuspended();
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        }
    |
  > |        suspended = false;
    |
    |        SaleResumed();
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |        require(_etherPrice > 0);
    |        require(msg.sender == priceUpdateAddress || msg.sender == owner);
  > |        tokenPerEther=_etherPrice;
    |        TokenPerEtherUpdated(_etherPrice);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCTokenSale':
    |    function updatePriceAddress(address _newAddress) public onlyOwner returns(bool){
    |        require(_newAddress != address(0));
  > |        priceUpdateAddress=_newAddress;
    |        PriceAddressUpdated(_newAddress);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(286)

[33mWarning[0m for LockedEther in contract 'DOCTokenSaleConfig':
    |}
    |
  > |contract DOCTokenSaleConfig {
    |    address WALLET_ADDRESS = 0xcd6b3d0c0dd850bad071cd20e428940d2e25120f;
    |    address TOKEN_ADDRESS = 0x39a87Dc12a7199AA012c18F114B763e27D0decA4;
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(332)

[31mViolation[0m for DAOConstantGas in contract 'FlexibleTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(300)

[33mWarning[0m for LockedEther in contract 'FlexibleTokenSale':
    |}
    |
  > |contract FlexibleTokenSale is  Owned {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(95)

[31mViolation[0m for TODReceiver in contract 'FlexibleTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(300)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |
    |        // Check how many tokens are still available for sale.
  > |        uint256 saleBalance = token.balanceOf(address(this));
    |        assert(saleBalance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(269)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(300)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |
    |        // Transfer tokens to the beneficiary.
  > |        require(token.transfer(_beneficiary, tokens));
    |
    |        TokensPurchased(_beneficiary, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(307)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |    function reclaimTokens() external onlyOwner returns (bool) {
    |
  > |        uint256 tokens = token.balanceOf(address(this));
    |
    |        if (tokens == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(318)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |        }
    |
  > |        require(token.transfer(owner, tokens));
    |
    |        TokensReclaimed(tokens);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |
    |        // Check how many tokens are still available for sale.
  > |        uint256 saleBalance = token.balanceOf(address(this));
    |        assert(saleBalance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |
    |        // Transfer tokens to the beneficiary.
  > |        require(token.transfer(_beneficiary, tokens));
    |
    |        TokensPurchased(_beneficiary, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |    function reclaimTokens() external onlyOwner returns (bool) {
    |
  > |        uint256 tokens = token.balanceOf(address(this));
    |
    |        if (tokens == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |        }
    |
  > |        require(token.transfer(owner, tokens));
    |
    |        TokensReclaimed(tokens);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        uint256 contribution =msg.value;
    |        walletAddress.transfer(contribution);
  > |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
    |        // Update our stats counters.
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |
    |        // Update our stats counters.
  > |        totalTokensSold = totalTokensSold.add(tokens);
    |
    |        // Transfer tokens to the beneficiary.
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        }
    |        //if not then first it will do address(0( then it will return true.
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(isOwner(_walletAddress) == false);
    |
  > |        walletAddress = _walletAddress;
    |
    |        WalletAddressUpdated(_walletAddress);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(_tokenPrice >= 100 && _tokenPrice <= 100000);
    |
  > |        tokenPrice=_tokenPrice;
    |
    |        TokenPriceUpdated(_tokenPrice);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(_minToken > 0);
    |
  > |        contributionMin = _minToken;
    |
    |        TokenMinUpdated(_minToken);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        }
    |
  > |        suspended = true;
    |
    |        SaleSuspended();
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        }
    |
  > |        suspended = false;
    |
    |        SaleResumed();
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(_etherPrice > 0);
    |        require(msg.sender == priceUpdateAddress || msg.sender == owner);
  > |        tokenPerEther=_etherPrice;
    |        TokenPerEtherUpdated(_etherPrice);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |    function updatePriceAddress(address _newAddress) public onlyOwner returns(bool){
    |        require(_newAddress != address(0));
  > |        priceUpdateAddress=_newAddress;
    |        PriceAddressUpdated(_newAddress);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(286)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public proposedOwner = address(0);
    |
    |    event OwnershipTransferInitiated(address indexed _proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function isOwner(address _address) public view returns (bool) {
    |        return (_address == owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function initiateOwnershipTransfer(address _proposedOwner) public onlyOwner returns (bool) {
    |        require(_proposedOwner != address(0));
    |        require(_proposedOwner != address(this));
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function cancelOwnershipTransfer() public onlyOwner returns (bool) {
    |        //if proposedOwner address already address(0) then it will return true.
    |        if (proposedOwner == address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function completeOwnershipTransfer() public returns (bool) {
    |
    |        require(msg.sender == proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        }
    |        //if not then first it will do address(0( then it will return true.
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(80)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x6f9e77dc013e6a7156a5aeb26fb095f3405fd911.sol(2)


