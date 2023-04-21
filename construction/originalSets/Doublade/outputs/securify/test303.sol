Processing contract: /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol:FlexibleTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol:HCXTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol:HCXTokenSaleConfig
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol:TokenTransfer
[31mViolation[0m for DAOConstantGas in contract 'FlexibleTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(300)

[33mWarning[0m for LockedEther in contract 'FlexibleTokenSale':
    |}
    |
  > |contract FlexibleTokenSale is  Owned {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(95)

[31mViolation[0m for TODReceiver in contract 'FlexibleTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(300)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |
    |        // Check how many tokens are still available for sale.
  > |        uint256 saleBalance = token.balanceOf(address(this));
    |        assert(saleBalance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(269)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(300)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |
    |        // Transfer tokens to the beneficiary.
  > |        require(token.transfer(_beneficiary, tokens));
    |
    |        emit TokensPurchased(_beneficiary, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(307)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |    function reclaimTokens() external onlyOwner returns (bool) {
    |
  > |        uint256 tokens = token.balanceOf(address(this));
    |
    |        if (tokens == 0) {
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(318)

[33mWarning[0m for UnhandledException in contract 'FlexibleTokenSale':
    |        }
    |
  > |        require(token.transfer(owner, tokens));
    |
    |        emit TokensReclaimed(tokens);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |
    |        // Check how many tokens are still available for sale.
  > |        uint256 saleBalance = token.balanceOf(address(this));
    |        assert(saleBalance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |
    |        // Transfer tokens to the beneficiary.
  > |        require(token.transfer(_beneficiary, tokens));
    |
    |        emit TokensPurchased(_beneficiary, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |    function reclaimTokens() external onlyOwner returns (bool) {
    |
  > |        uint256 tokens = token.balanceOf(address(this));
    |
    |        if (tokens == 0) {
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexibleTokenSale':
    |        }
    |
  > |        require(token.transfer(owner, tokens));
    |
    |        emit TokensReclaimed(tokens);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        uint256 contribution =msg.value;
    |        walletAddress.transfer(contribution);
  > |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
    |        // Update our stats counters.
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |
    |        // Update our stats counters.
  > |        totalTokensSold = totalTokensSold.add(tokens);
    |
    |        // Transfer tokens to the beneficiary.
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        emit OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        }
    |        //if not then first it will do address(0( then it will return true.
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(isOwner(_walletAddress) == false);
    |
  > |        walletAddress = _walletAddress;
    |
    |        emit WalletAddressUpdated(_walletAddress);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(_tokenPrice >= 100 && _tokenPrice <= 100000);
    |
  > |        tokenPrice=_tokenPrice;
    |
    |        emit TokenPriceUpdated(_tokenPrice);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(_minToken > 0);
    |
  > |        contributionMin = _minToken;
    |
    |        emit TokenMinUpdated(_minToken);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        }
    |
  > |        suspended = true;
    |
    |        emit SaleSuspended();
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        }
    |
  > |        suspended = false;
    |
    |        emit SaleResumed();
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |        require(_etherPrice > 0);
    |        require(msg.sender == priceUpdateAddress || msg.sender == owner);
  > |        tokenPerEther=_etherPrice;
    |        emit TokenPerEtherUpdated(_etherPrice);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexibleTokenSale':
    |    function updatePriceAddress(address _newAddress) public onlyOwner returns(bool){
    |        require(_newAddress != address(0));
  > |        priceUpdateAddress=_newAddress;
    |        emit PriceAddressUpdated(_newAddress);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(286)

[31mViolation[0m for DAOConstantGas in contract 'HCXTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(300)

[33mWarning[0m for LockedEther in contract 'HCXTokenSale':
    |}
    |
  > |contract  HCXTokenSale is FlexibleTokenSale, HCXTokenSaleConfig {
    |
    |    constructor() public
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(339)

[31mViolation[0m for TODReceiver in contract 'HCXTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(300)

[33mWarning[0m for UnhandledException in contract 'HCXTokenSale':
    |
    |        // Check how many tokens are still available for sale.
  > |        uint256 saleBalance = token.balanceOf(address(this));
    |        assert(saleBalance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(269)

[33mWarning[0m for UnhandledException in contract 'HCXTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(300)

[33mWarning[0m for UnhandledException in contract 'HCXTokenSale':
    |
    |        // Transfer tokens to the beneficiary.
  > |        require(token.transfer(_beneficiary, tokens));
    |
    |        emit TokensPurchased(_beneficiary, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(307)

[33mWarning[0m for UnhandledException in contract 'HCXTokenSale':
    |    function reclaimTokens() external onlyOwner returns (bool) {
    |
  > |        uint256 tokens = token.balanceOf(address(this));
    |
    |        if (tokens == 0) {
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(318)

[33mWarning[0m for UnhandledException in contract 'HCXTokenSale':
    |        }
    |
  > |        require(token.transfer(owner, tokens));
    |
    |        emit TokensReclaimed(tokens);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HCXTokenSale':
    |
    |        // Check how many tokens are still available for sale.
  > |        uint256 saleBalance = token.balanceOf(address(this));
    |        assert(saleBalance > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HCXTokenSale':
    |        // This is the actual amount of ETH that can be sent to the wallet.
    |        uint256 contribution =msg.value;
  > |        walletAddress.transfer(contribution);
    |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(300)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HCXTokenSale':
    |
    |        // Transfer tokens to the beneficiary.
  > |        require(token.transfer(_beneficiary, tokens));
    |
    |        emit TokensPurchased(_beneficiary, msg.value, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HCXTokenSale':
    |    function reclaimTokens() external onlyOwner returns (bool) {
    |
  > |        uint256 tokens = token.balanceOf(address(this));
    |
    |        if (tokens == 0) {
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HCXTokenSale':
    |        }
    |
  > |        require(token.transfer(owner, tokens));
    |
    |        emit TokensReclaimed(tokens);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        uint256 contribution =msg.value;
    |        walletAddress.transfer(contribution);
  > |        totalEtherCollected = totalEtherCollected.add(contribution);
    |
    |        // Update our stats counters.
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |
    |        // Update our stats counters.
  > |        totalTokensSold = totalTokensSold.add(tokens);
    |
    |        // Transfer tokens to the beneficiary.
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        emit OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        }
    |        //if not then first it will do address(0( then it will return true.
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        require(isOwner(_walletAddress) == false);
    |
  > |        walletAddress = _walletAddress;
    |
    |        emit WalletAddressUpdated(_walletAddress);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        require(_tokenPrice >= 100 && _tokenPrice <= 100000);
    |
  > |        tokenPrice=_tokenPrice;
    |
    |        emit TokenPriceUpdated(_tokenPrice);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        require(_minToken > 0);
    |
  > |        contributionMin = _minToken;
    |
    |        emit TokenMinUpdated(_minToken);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        }
    |
  > |        suspended = true;
    |
    |        emit SaleSuspended();
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        }
    |
  > |        suspended = false;
    |
    |        emit SaleResumed();
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |        require(_etherPrice > 0);
    |        require(msg.sender == priceUpdateAddress || msg.sender == owner);
  > |        tokenPerEther=_etherPrice;
    |        emit TokenPerEtherUpdated(_etherPrice);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXTokenSale':
    |    function updatePriceAddress(address _newAddress) public onlyOwner returns(bool){
    |        require(_newAddress != address(0));
  > |        priceUpdateAddress=_newAddress;
    |        emit PriceAddressUpdated(_newAddress);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(286)

[33mWarning[0m for LockedEther in contract 'HCXTokenSaleConfig':
    |}
    |
  > |contract HCXTokenSaleConfig {
    |    address WALLET_ADDRESS = 0x6E22277b9A32a88cba52d5108ca7E836d994859f;
    |    address TOKEN_ADDRESS = 0x44F2cEF73E136E97Abc7923634ebEB447F8a48Ed;
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(332)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public proposedOwner = address(0);
    |
    |    event OwnershipTransferInitiated(address indexed _proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function isOwner(address _address) public view returns (bool) {
    |        return (_address == owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function initiateOwnershipTransfer(address _proposedOwner) public onlyOwner returns (bool) {
    |        require(_proposedOwner != address(0));
    |        require(_proposedOwner != address(this));
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function cancelOwnershipTransfer() public onlyOwner returns (bool) {
    |        //if proposedOwner address already address(0) then it will return true.
    |        if (proposedOwner == address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function completeOwnershipTransfer() public returns (bool) {
    |
    |        require(msg.sender == proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        emit OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        }
    |        //if not then first it will do address(0( then it will return true.
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(80)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x1489759a50554d23d1e10b82ae9dbaf209dbb4e8.sol(2)


