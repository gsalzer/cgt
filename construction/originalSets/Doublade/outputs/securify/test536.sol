Processing contract: /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol:Bussiness
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol:ERC20BasicInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol:IERC721
[31mViolation[0m for DAOConstantGas in contract 'Bussiness':
    |    require(prices[tokenId].price == msg.value);
    |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
  > |    prices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(75)

[31mViolation[0m for DAOConstantGas in contract 'Bussiness':
    |
    |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
  > |    usdtPrices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'Bussiness':
    |  }
    |
  > |  mapping(uint256 => Price) public prices;
    |  mapping(uint256 => Price) public usdtPrices;
    |  function ownerOf(uint256 _tokenId) public view returns (address){
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Bussiness':
    |
    |  mapping(uint256 => Price) public prices;
  > |  mapping(uint256 => Price) public usdtPrices;
    |  function ownerOf(uint256 _tokenId) public view returns (address){
    |      return erc721Address.ownerOf(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'Bussiness':
    |  mapping(uint256 => Price) public prices;
    |  mapping(uint256 => Price) public usdtPrices;
  > |  function ownerOf(uint256 _tokenId) public view returns (address){
    |      return erc721Address.ownerOf(_tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Bussiness':
    |      return erc721Address.ownerOf(_tokenId);
    |  }
  > |  function setPrice(uint256 _tokenId, uint256 _ethPrice, uint256 _usdtPrice) public {
    |      require(erc721Address.ownerOf(_tokenId) == msg.sender);
    |      prices[_tokenId] = Price(msg.sender, _ethPrice);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'Bussiness':
    |      usdtPrices[_tokenId] = Price(msg.sender, _usdtPrice);
    |  }
  > |  function removePrice(uint256 tokenId) public returns (uint256){
    |      require(erc721Address.ownerOf(tokenId) == msg.sender);
    |      resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Bussiness':
    |  }
    |
  > |  function getPrice(uint256 tokenId) public returns (address, address, uint256, uint256){
    |      address currentOwner = erc721Address.ownerOf(tokenId);
    |      if(prices[tokenId].tokenOwner != currentOwner){
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'Bussiness':
    |
    |  }
  > |  function buy(uint256 tokenId) public payable {
    |    require(erc721Address.getApproved(tokenId) == address(this));
    |    require(prices[tokenId].price == msg.value);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Bussiness':
    |    resetPrice(tokenId);
    |  }
  > |  function buyByUsdt(uint256 tokenId) public {
    |    require(erc721Address.getApproved(tokenId) == address(this));
    |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Bussiness':
    |}
    |contract Bussiness {
  > |  IERC721 public erc721Address;
    |  ERC20BasicInterface usdtToken = ERC20BasicInterface(0xdac17f958d2ee523a2206206994597c13d831ec7);
    |  constructor(IERC721 token) public {
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Bussiness':
    |
    |  }
  > |  function resetPrice(uint256 tokenId) private {
    |    prices[tokenId] = Price(address(0), 0);
    |    usdtPrices[tokenId] = Price(address(0), 0);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(87)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  mapping(uint256 => Price) public usdtPrices;
    |  function ownerOf(uint256 _tokenId) public view returns (address){
  > |      return erc721Address.ownerOf(_tokenId);
    |  }
    |  function setPrice(uint256 _tokenId, uint256 _ethPrice, uint256 _usdtPrice) public {
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(50)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function setPrice(uint256 _tokenId, uint256 _ethPrice, uint256 _usdtPrice) public {
  > |      require(erc721Address.ownerOf(_tokenId) == msg.sender);
    |      prices[_tokenId] = Price(msg.sender, _ethPrice);
    |      usdtPrices[_tokenId] = Price(msg.sender, _usdtPrice);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(53)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function removePrice(uint256 tokenId) public returns (uint256){
  > |      require(erc721Address.ownerOf(tokenId) == msg.sender);
    |      resetPrice(tokenId);
    |      return prices[tokenId].price;
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(58)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |
    |  function getPrice(uint256 tokenId) public returns (address, address, uint256, uint256){
  > |      address currentOwner = erc721Address.ownerOf(tokenId);
    |      if(prices[tokenId].tokenOwner != currentOwner){
    |           resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(64)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function buy(uint256 tokenId) public payable {
  > |    require(erc721Address.getApproved(tokenId) == address(this));
    |    require(prices[tokenId].price == msg.value);
    |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(72)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |    require(erc721Address.getApproved(tokenId) == address(this));
    |    require(prices[tokenId].price == msg.value);
  > |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
    |    prices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(74)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |    require(prices[tokenId].price == msg.value);
    |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
  > |    prices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(75)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function buyByUsdt(uint256 tokenId) public {
  > |    require(erc721Address.getApproved(tokenId) == address(this));
    |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(79)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  function buyByUsdt(uint256 tokenId) public {
    |    require(erc721Address.getApproved(tokenId) == address(this));
  > |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
    |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(80)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
  > |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
    |    usdtPrices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(82)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |
    |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
  > |    usdtPrices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  mapping(uint256 => Price) public usdtPrices;
    |  function ownerOf(uint256 _tokenId) public view returns (address){
  > |      return erc721Address.ownerOf(_tokenId);
    |  }
    |  function setPrice(uint256 _tokenId, uint256 _ethPrice, uint256 _usdtPrice) public {
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(50)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function setPrice(uint256 _tokenId, uint256 _ethPrice, uint256 _usdtPrice) public {
  > |      require(erc721Address.ownerOf(_tokenId) == msg.sender);
    |      prices[_tokenId] = Price(msg.sender, _ethPrice);
    |      usdtPrices[_tokenId] = Price(msg.sender, _usdtPrice);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(53)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function removePrice(uint256 tokenId) public returns (uint256){
  > |      require(erc721Address.ownerOf(tokenId) == msg.sender);
    |      resetPrice(tokenId);
    |      return prices[tokenId].price;
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(58)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |
    |  function getPrice(uint256 tokenId) public returns (address, address, uint256, uint256){
  > |      address currentOwner = erc721Address.ownerOf(tokenId);
    |      if(prices[tokenId].tokenOwner != currentOwner){
    |           resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(64)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function buy(uint256 tokenId) public payable {
  > |    require(erc721Address.getApproved(tokenId) == address(this));
    |    require(prices[tokenId].price == msg.value);
    |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(72)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |    require(erc721Address.getApproved(tokenId) == address(this));
    |    require(prices[tokenId].price == msg.value);
  > |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
    |    prices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function buyByUsdt(uint256 tokenId) public {
  > |    require(erc721Address.getApproved(tokenId) == address(this));
    |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  function buyByUsdt(uint256 tokenId) public {
    |    require(erc721Address.getApproved(tokenId) == address(this));
  > |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
    |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(80)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
  > |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
    |    usdtPrices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'Bussiness':
    |  }
    |  function resetPrice(uint256 tokenId) private {
  > |    prices[tokenId] = Price(address(0), 0);
    |    usdtPrices[tokenId] = Price(address(0), 0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'Bussiness':
    |  function resetPrice(uint256 tokenId) private {
    |    prices[tokenId] = Price(address(0), 0);
  > |    usdtPrices[tokenId] = Price(address(0), 0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |  function setPrice(uint256 _tokenId, uint256 _ethPrice, uint256 _usdtPrice) public {
    |      require(erc721Address.ownerOf(_tokenId) == msg.sender);
  > |      prices[_tokenId] = Price(msg.sender, _ethPrice);
    |      usdtPrices[_tokenId] = Price(msg.sender, _usdtPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |      require(erc721Address.ownerOf(_tokenId) == msg.sender);
    |      prices[_tokenId] = Price(msg.sender, _ethPrice);
  > |      usdtPrices[_tokenId] = Price(msg.sender, _usdtPrice);
    |  }
    |  function removePrice(uint256 tokenId) public returns (uint256){
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |  }
    |  function resetPrice(uint256 tokenId) private {
  > |    prices[tokenId] = Price(address(0), 0);
    |    usdtPrices[tokenId] = Price(address(0), 0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |  function resetPrice(uint256 tokenId) private {
    |    prices[tokenId] = Price(address(0), 0);
  > |    usdtPrices[tokenId] = Price(address(0), 0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2294650c8da1d74eb371ad5f6cfb946b485be712.sol(89)


