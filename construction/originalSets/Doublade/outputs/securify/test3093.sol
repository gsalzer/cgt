Processing contract: /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol:Terrus
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Terrus':
    |    authorisedSaleAddresses[x][y] = 0x0;
    |    authorisedSalePrices[x][y] = 0;
  > |    seller.transfer(forSeller);
    |    PlotSale(x, y, seller, buyer, price, false);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(106)

[33mWarning[0m for DAOConstantGas in contract 'Terrus':
    |    require(this.balance >= amount);
    |    address recipient = msg.sender;
  > |    recipient.transfer(amount);
    |    Withdrawal(recipient, amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(194)

[33mWarning[0m for LockedEther in contract 'Terrus':
    |pragma solidity ^0.4.18;
    |
  > |contract Terrus {
    |  event PlotSale(
    |    uint indexed _x,
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Terrus':
    |
    |  // Public
  > |  function authoriseSale(uint x, uint y, address buyer, uint amount) public returns (bool) {
    |    Plot memory plot = plots[x][y];
    |    require(plot.owned);
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function completeSale(uint x, uint y) public payable returns (bool) {
    |    address buyer = msg.sender;
    |    require(authorisedSaleAddresses[x][y] != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function deAuthoriseSale(uint x, uint y) public returns (bool) {
    |    Plot storage plot = plots[x][y];
    |    require(plot.owned);
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function getInitialTerrain(uint x, uint y) public pure returns (bytes32) {
    |    return sha256(x, y);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function giftPlot(uint x, uint y, address recipient) public ownerOnly xyBounded(x, y) returns (bool) {
    |    require(!plots[x][y].owned);
    |    plots[x][y] = Plot({
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(156)

[31mViolation[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function setOwner(address newOwner) public ownerOnly returns (bool) {
    |    owner = newOwner;
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'Terrus':
    |pragma solidity ^0.4.18;
    |
  > |contract Terrus {
    |  event PlotSale(
    |    uint indexed _x,
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function getOwner() public view returns (address) {
    |    return owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function getPlotPrice() public pure returns (uint) {
    |    return 0.01 ether;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function getSaleFee() public pure returns (uint) {
    |    return 0.01 ether;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function ping() public pure returns (bytes4) {
    |    return "pong";
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'Terrus':
    |  }
    |
  > |  function withdrawEther(uint amount) public ownerOnly returns (bool) {
    |    require(this.balance >= amount);
    |    address recipient = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(191)

[33mWarning[0m for TODAmount in contract 'Terrus':
    |    require(this.balance >= amount);
    |    address recipient = msg.sender;
  > |    recipient.transfer(amount);
    |    Withdrawal(recipient, amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(194)

[33mWarning[0m for TODReceiver in contract 'Terrus':
    |    require(this.balance >= amount);
    |    address recipient = msg.sender;
  > |    recipient.transfer(amount);
    |    Withdrawal(recipient, amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(194)

[33mWarning[0m for UnhandledException in contract 'Terrus':
    |    authorisedSaleAddresses[x][y] = 0x0;
    |    authorisedSalePrices[x][y] = 0;
  > |    seller.transfer(forSeller);
    |    PlotSale(x, y, seller, buyer, price, false);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(106)

[33mWarning[0m for UnhandledException in contract 'Terrus':
    |
    |  function getInitialTerrain(uint x, uint y) public pure returns (bytes32) {
  > |    return sha256(x, y);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(121)

[33mWarning[0m for UnhandledException in contract 'Terrus':
    |    require(this.balance >= amount);
    |    address recipient = msg.sender;
  > |    recipient.transfer(amount);
    |    Withdrawal(recipient, amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Terrus':
    |    authorisedSaleAddresses[x][y] = 0x0;
    |    authorisedSalePrices[x][y] = 0;
  > |    seller.transfer(forSeller);
    |    PlotSale(x, y, seller, buyer, price, false);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Terrus':
    |
    |  function getInitialTerrain(uint x, uint y) public pure returns (bytes32) {
  > |    return sha256(x, y);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Terrus':
    |    require(this.balance >= amount);
    |    address recipient = msg.sender;
  > |    recipient.transfer(amount);
    |    Withdrawal(recipient, amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'Terrus':
    |    require(price == msg.value);
    |    address buyer = msg.sender;
  > |    plots[x][y] = Plot({
    |      owned: true,
    |      owner: buyer,
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'Terrus':
    |  function giftPlot(uint x, uint y, address recipient) public ownerOnly xyBounded(x, y) returns (bool) {
    |    require(!plots[x][y].owned);
  > |    plots[x][y] = Plot({
    |      owned: true,
    |      owner: recipient,
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'Terrus':
    |    uint setPrice = getSetNewTerrainPrice(x, y, newTerrain);
    |    require(msg.value == setPrice);
  > |    plot.terrain = newTerrain;
    |    PlotTerrainUpdate(x, y, msg.sender, msg.value, newTerrain);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'Terrus':
    |    uint fee = getSaleFee();
    |    require(amount >= fee);
  > |    authorisedSaleAddresses[x][y] = buyer;
    |    authorisedSalePrices[x][y] = amount;
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Terrus':
    |    require(amount >= fee);
    |    authorisedSaleAddresses[x][y] = buyer;
  > |    authorisedSalePrices[x][y] = amount;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Terrus':
    |    Plot storage plot = plots[x][y];
    |    address seller = plot.owner;
  > |    plot.owner = buyer;
    |    plot.saleCount += 1;
    |    authorisedSaleAddresses[x][y] = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Terrus':
    |    address seller = plot.owner;
    |    plot.owner = buyer;
  > |    plot.saleCount += 1;
    |    authorisedSaleAddresses[x][y] = 0x0;
    |    authorisedSalePrices[x][y] = 0;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Terrus':
    |    plot.owner = buyer;
    |    plot.saleCount += 1;
  > |    authorisedSaleAddresses[x][y] = 0x0;
    |    authorisedSalePrices[x][y] = 0;
    |    seller.transfer(forSeller);
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Terrus':
    |    plot.saleCount += 1;
    |    authorisedSaleAddresses[x][y] = 0x0;
  > |    authorisedSalePrices[x][y] = 0;
    |    seller.transfer(forSeller);
    |    PlotSale(x, y, seller, buyer, price, false);
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Terrus':
    |    require(plot.owned);
    |    require(plot.owner == msg.sender);
  > |    authorisedSaleAddresses[x][y] = 0x0;
    |    authorisedSalePrices[x][y] = 0;
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Terrus':
    |    require(plot.owner == msg.sender);
    |    authorisedSaleAddresses[x][y] = 0x0;
  > |    authorisedSalePrices[x][y] = 0;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Terrus':
    |
    |  function setOwner(address newOwner) public ownerOnly returns (bool) {
  > |    owner = newOwner;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcb156d1458aaeb64a8bcb7f843c701d03c68baf3.sol(187)


