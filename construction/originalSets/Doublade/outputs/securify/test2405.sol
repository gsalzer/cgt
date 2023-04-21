Processing contract: /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol:Bussiness
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol:ERC20BasicInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol:IERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Bussiness':
    |  function removePrice(uint256 tokenId) public returns (uint256){
    |      require(erc721Address.ownerOf(tokenId) == msg.sender);
  > |      if (prices[tokenId].fee > 0) msg.sender.transfer(prices[tokenId].fee);
    |      else if (prices[tokenId].hbfee > 0) hbwalletToken.transfer(msg.sender, prices[tokenId].hbfee);
    |      resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(160)

[31mViolation[0m for DAOConstantGas in contract 'Bussiness':
    |    require(prices[tokenId].price > 0 && prices[tokenId].price == msg.value);
    |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
  > |    prices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(200)

[33mWarning[0m for DAOConstantGas in contract 'Bussiness':
    |    function withdraw(address _address, uint256 amount) public onlyCeoAddress {
    |        require(_address != address(0) && amount > 0 && address(this).balance > amount);
  > |        _address.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(193)

[33mWarning[0m for LockedEther in contract 'Bussiness':
    |    uint8 public decimals;
    |}
  > |contract Bussiness is Ownable {
    |  address public ceoAddress = address(0x6c3e879bdd20e9686cfd9bbd1bfd4b2dd6d47079);
    |  IERC721 public erc721Address = IERC721(0xdceaf1652a131f32a821468dc03a92df0edd86ea);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(76)

[33mWarning[0m for TODAmount in contract 'Bussiness':
    |    function withdraw(address _address, uint256 amount) public onlyCeoAddress {
    |        require(_address != address(0) && amount > 0 && address(this).balance > amount);
  > |        _address.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(193)

[33mWarning[0m for TODReceiver in contract 'Bussiness':
    |  function removePrice(uint256 tokenId) public returns (uint256){
    |      require(erc721Address.ownerOf(tokenId) == msg.sender);
  > |      if (prices[tokenId].fee > 0) msg.sender.transfer(prices[tokenId].fee);
    |      else if (prices[tokenId].hbfee > 0) hbwalletToken.transfer(msg.sender, prices[tokenId].hbfee);
    |      resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(160)

[33mWarning[0m for TODReceiver in contract 'Bussiness':
    |    function withdraw(address _address, uint256 amount) public onlyCeoAddress {
    |        require(_address != address(0) && amount > 0 && address(this).balance > amount);
  > |        _address.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(193)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function ownerOf(uint256 _tokenId) public view returns (address){
  > |      return erc721Address.ownerOf(_tokenId);
    |  }
    |  function balanceOf() public view returns (uint256){
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(106)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function getApproved(uint256 _tokenId) public view returns (address){
  > |      return erc721Address.getApproved(_tokenId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(112)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |
    |  function setPrice(uint256 _tokenId, uint256 _ethPrice, uint256 _usdtPrice) public {
  > |      require(erc721Address.ownerOf(_tokenId) == msg.sender);
    |      prices[_tokenId] = Price(msg.sender, _ethPrice, 0, 0);
    |      usdtPrices[_tokenId] = Price(msg.sender, _usdtPrice, 0, 0);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(116)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function setPriceFeeEth(uint256 _tokenId, uint256 _ethPrice) public payable {
  > |      require(erc721Address.ownerOf(_tokenId) == msg.sender && prices[_tokenId].price != _ethPrice);
    |      uint256 ethfee;
    |      if(prices[_tokenId].price < _ethPrice) {
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(121)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function setPriceFeeHBWALLET(uint256 _tokenId, uint256 _ethPrice) public returns (bool){
  > |      require(erc721Address.ownerOf(_tokenId) == msg.sender && prices[_tokenId].price != _ethPrice);
    |      uint256 fee;
    |      uint256 ethfee;
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(139)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |          fee = ethfee * HBWALLETExchange / 2 / (10 ** 16); // ethfee * HBWALLETExchange / 2 * (10 ** 2) / (10 ** 18)
    |          if(fee >= limitHBWALLETFee) {
  > |              require(hbwalletToken.transferFrom(msg.sender, address(this), fee));
    |          } else {
    |              require(hbwalletToken.transferFrom(msg.sender, address(this), limitHBWALLETFee));
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(146)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |              require(hbwalletToken.transferFrom(msg.sender, address(this), fee));
    |          } else {
  > |              require(hbwalletToken.transferFrom(msg.sender, address(this), limitHBWALLETFee));
    |          }
    |          fee += prices[_tokenId].hbfee;
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(148)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function removePrice(uint256 tokenId) public returns (uint256){
  > |      require(erc721Address.ownerOf(tokenId) == msg.sender);
    |      if (prices[tokenId].fee > 0) msg.sender.transfer(prices[tokenId].fee);
    |      else if (prices[tokenId].hbfee > 0) hbwalletToken.transfer(msg.sender, prices[tokenId].hbfee);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(159)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  function removePrice(uint256 tokenId) public returns (uint256){
    |      require(erc721Address.ownerOf(tokenId) == msg.sender);
  > |      if (prices[tokenId].fee > 0) msg.sender.transfer(prices[tokenId].fee);
    |      else if (prices[tokenId].hbfee > 0) hbwalletToken.transfer(msg.sender, prices[tokenId].hbfee);
    |      resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(160)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |      require(erc721Address.ownerOf(tokenId) == msg.sender);
    |      if (prices[tokenId].fee > 0) msg.sender.transfer(prices[tokenId].fee);
  > |      else if (prices[tokenId].hbfee > 0) hbwalletToken.transfer(msg.sender, prices[tokenId].hbfee);
    |      resetPrice(tokenId);
    |      return prices[tokenId].price;
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(161)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |
    |  function getPrice(uint256 tokenId) public view returns (address, address, uint256, uint256){
  > |      address currentOwner = erc721Address.ownerOf(tokenId);
    |      if(prices[tokenId].tokenOwner != currentOwner){
    |           resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(167)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |    function withdraw(address _address, uint256 amount) public onlyCeoAddress {
    |        require(_address != address(0) && amount > 0 && address(this).balance > amount);
  > |        _address.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(193)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |    require(getApproved(tokenId) == address(this));
    |    require(prices[tokenId].price > 0 && prices[tokenId].price == msg.value);
  > |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
    |    prices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(199)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |    require(prices[tokenId].price > 0 && prices[tokenId].price == msg.value);
    |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
  > |    prices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(200)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  }
    |  function buyByUsdt(uint256 tokenId) public {
  > |    require(usdtPrices[tokenId].price > 0 && erc721Address.getApproved(tokenId) == address(this));
    |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(204)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |  function buyByUsdt(uint256 tokenId) public {
    |    require(usdtPrices[tokenId].price > 0 && erc721Address.getApproved(tokenId) == address(this));
  > |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
    |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(205)

[33mWarning[0m for UnhandledException in contract 'Bussiness':
    |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
  > |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
    |    resetPrice(tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function ownerOf(uint256 _tokenId) public view returns (address){
  > |      return erc721Address.ownerOf(_tokenId);
    |  }
    |  function balanceOf() public view returns (uint256){
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function getApproved(uint256 _tokenId) public view returns (address){
  > |      return erc721Address.getApproved(_tokenId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |
    |  function setPrice(uint256 _tokenId, uint256 _ethPrice, uint256 _usdtPrice) public {
  > |      require(erc721Address.ownerOf(_tokenId) == msg.sender);
    |      prices[_tokenId] = Price(msg.sender, _ethPrice, 0, 0);
    |      usdtPrices[_tokenId] = Price(msg.sender, _usdtPrice, 0, 0);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function setPriceFeeEth(uint256 _tokenId, uint256 _ethPrice) public payable {
  > |      require(erc721Address.ownerOf(_tokenId) == msg.sender && prices[_tokenId].price != _ethPrice);
    |      uint256 ethfee;
    |      if(prices[_tokenId].price < _ethPrice) {
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function setPriceFeeHBWALLET(uint256 _tokenId, uint256 _ethPrice) public returns (bool){
  > |      require(erc721Address.ownerOf(_tokenId) == msg.sender && prices[_tokenId].price != _ethPrice);
    |      uint256 fee;
    |      uint256 ethfee;
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |          fee = ethfee * HBWALLETExchange / 2 / (10 ** 16); // ethfee * HBWALLETExchange / 2 * (10 ** 2) / (10 ** 18)
    |          if(fee >= limitHBWALLETFee) {
  > |              require(hbwalletToken.transferFrom(msg.sender, address(this), fee));
    |          } else {
    |              require(hbwalletToken.transferFrom(msg.sender, address(this), limitHBWALLETFee));
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |              require(hbwalletToken.transferFrom(msg.sender, address(this), fee));
    |          } else {
  > |              require(hbwalletToken.transferFrom(msg.sender, address(this), limitHBWALLETFee));
    |          }
    |          fee += prices[_tokenId].hbfee;
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function removePrice(uint256 tokenId) public returns (uint256){
  > |      require(erc721Address.ownerOf(tokenId) == msg.sender);
    |      if (prices[tokenId].fee > 0) msg.sender.transfer(prices[tokenId].fee);
    |      else if (prices[tokenId].hbfee > 0) hbwalletToken.transfer(msg.sender, prices[tokenId].hbfee);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  function removePrice(uint256 tokenId) public returns (uint256){
    |      require(erc721Address.ownerOf(tokenId) == msg.sender);
  > |      if (prices[tokenId].fee > 0) msg.sender.transfer(prices[tokenId].fee);
    |      else if (prices[tokenId].hbfee > 0) hbwalletToken.transfer(msg.sender, prices[tokenId].hbfee);
    |      resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |      require(erc721Address.ownerOf(tokenId) == msg.sender);
    |      if (prices[tokenId].fee > 0) msg.sender.transfer(prices[tokenId].fee);
  > |      else if (prices[tokenId].hbfee > 0) hbwalletToken.transfer(msg.sender, prices[tokenId].hbfee);
    |      resetPrice(tokenId);
    |      return prices[tokenId].price;
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |
    |  function getPrice(uint256 tokenId) public view returns (address, address, uint256, uint256){
  > |      address currentOwner = erc721Address.ownerOf(tokenId);
    |      if(prices[tokenId].tokenOwner != currentOwner){
    |           resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |    require(getApproved(tokenId) == address(this));
    |    require(prices[tokenId].price > 0 && prices[tokenId].price == msg.value);
  > |    erc721Address.transferFrom(prices[tokenId].tokenOwner, msg.sender, tokenId);
    |    prices[tokenId].tokenOwner.transfer(msg.value);
    |    resetPrice(tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  }
    |  function buyByUsdt(uint256 tokenId) public {
  > |    require(usdtPrices[tokenId].price > 0 && erc721Address.getApproved(tokenId) == address(this));
    |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |  function buyByUsdt(uint256 tokenId) public {
    |    require(usdtPrices[tokenId].price > 0 && erc721Address.getApproved(tokenId) == address(this));
  > |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
    |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |    require(usdtToken.transferFrom(msg.sender, usdtPrices[tokenId].tokenOwner, usdtPrices[tokenId].price));
    |
  > |    erc721Address.transferFrom(usdtPrices[tokenId].tokenOwner, msg.sender, tokenId);
    |    resetPrice(tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bussiness':
    |    function withdraw(address _address, uint256 amount) public onlyCeoAddress {
    |        require(_address != address(0) && amount > 0 && address(this).balance > amount);
  > |        _address.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |  function setPrice(uint256 _tokenId, uint256 _ethPrice, uint256 _usdtPrice) public {
    |      require(erc721Address.ownerOf(_tokenId) == msg.sender);
  > |      prices[_tokenId] = Price(msg.sender, _ethPrice, 0, 0);
    |      usdtPrices[_tokenId] = Price(msg.sender, _usdtPrice, 0, 0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |      require(erc721Address.ownerOf(_tokenId) == msg.sender);
    |      prices[_tokenId] = Price(msg.sender, _ethPrice, 0, 0);
  > |      usdtPrices[_tokenId] = Price(msg.sender, _usdtPrice, 0, 0);
    |  }
    |  function setPriceFeeEth(uint256 _tokenId, uint256 _ethPrice) public payable {
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |          ethfee += prices[_tokenId].fee;
    |      } else ethfee = _ethPrice * ETHFee / Percen;
  > |      prices[_tokenId] = Price(msg.sender, _ethPrice, ethfee, 0);
    |  }
    |  function setPriceFeeHBWALLETTest(uint256 _tokenId, uint256 _ethPrice) public view returns (uint256, uint256){
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |          fee = ethfee * HBWALLETExchange / 2 / (10 ** 16);
    |      }
  > |      prices[_tokenId] = Price(msg.sender, _ethPrice, 0, fee);
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |  function setFee(uint256 _ethFee, uint256 _HBWALLETExchange) public view onlyOwner returns (uint256, uint256){
    |        require(_ethFee > 0 && _HBWALLETExchange > 0);
  > |        ETHFee = _ethFee;
    |        HBWALLETExchange = _HBWALLETExchange;
    |        return (ETHFee, HBWALLETExchange);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |        require(_ethFee > 0 && _HBWALLETExchange > 0);
    |        ETHFee = _ethFee;
  > |        HBWALLETExchange = _HBWALLETExchange;
    |        return (ETHFee, HBWALLETExchange);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |    function setLimitFee(uint256 _ethlimitFee, uint256 _hbWalletlimitFee) public view onlyOwner returns (uint256, uint256){
    |        require(_ethlimitFee > 0 && _hbWalletlimitFee > 0);
  > |        limitETHFee = _ethlimitFee;
    |        limitHBWALLETFee = _hbWalletlimitFee;
    |        return (limitETHFee, limitHBWALLETFee);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |        require(_ethlimitFee > 0 && _hbWalletlimitFee > 0);
    |        limitETHFee = _ethlimitFee;
  > |        limitHBWALLETFee = _hbWalletlimitFee;
    |        return (limitETHFee, limitHBWALLETFee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |  }
    |  function resetPrice(uint256 tokenId) private {
  > |    prices[tokenId] = Price(address(0), 0, 0, 0);
    |    usdtPrices[tokenId] = Price(address(0), 0, 0, 0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'Bussiness':
    |  function resetPrice(uint256 tokenId) private {
    |    prices[tokenId] = Price(address(0), 0, 0, 0);
  > |    usdtPrices[tokenId] = Price(address(0), 0, 0, 0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(213)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9c1748249a6bc40c4d9b27853b216a075b5f6b9c.sol(38)


