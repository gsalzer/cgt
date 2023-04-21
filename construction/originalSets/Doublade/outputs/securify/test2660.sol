Processing contract: /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol:HundredEtherWall
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'HundredEtherWall':
    |    uint price = ad.width * ad.height * pixelPrice;
    |
  > |    receiver.transfer(msg.value);
    |    emit MarketBuy(_idx, ad.owner, ad.forSale, price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(167)

[33mWarning[0m for DAOConstantGas in contract 'HundredEtherWall':
    |  //contractOwner === deployer of the contract
    |  function withdraw() public onlyContractOwner {
  > |    contractOwner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(190)

[33mWarning[0m for LockedEther in contract 'HundredEtherWall':
    |//take a look at the HomePage.js component
    |
  > |contract HundredEtherWall {
    |  address public contractOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(9)

[31mViolation[0m for TODAmount in contract 'HundredEtherWall':
    |  //contractOwner === deployer of the contract
    |  function withdraw() public onlyContractOwner {
  > |    contractOwner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(190)

[31mViolation[0m for TODReceiver in contract 'HundredEtherWall':
    |    uint price = ad.width * ad.height * pixelPrice;
    |
  > |    receiver.transfer(msg.value);
    |    emit MarketBuy(_idx, ad.owner, ad.forSale, price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(167)

[33mWarning[0m for TODReceiver in contract 'HundredEtherWall':
    |  //contractOwner === deployer of the contract
    |  function withdraw() public onlyContractOwner {
  > |    contractOwner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(190)

[33mWarning[0m for UnhandledException in contract 'HundredEtherWall':
    |    uint price = ad.width * ad.height * pixelPrice;
    |
  > |    receiver.transfer(msg.value);
    |    emit MarketBuy(_idx, ad.owner, ad.forSale, price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(167)

[33mWarning[0m for UnhandledException in contract 'HundredEtherWall':
    |  //contractOwner === deployer of the contract
    |  function withdraw() public onlyContractOwner {
  > |    contractOwner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HundredEtherWall':
    |    uint price = ad.width * ad.height * pixelPrice;
    |
  > |    receiver.transfer(msg.value);
    |    emit MarketBuy(_idx, ad.owner, ad.forSale, price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HundredEtherWall':
    |  //contractOwner === deployer of the contract
    |  function withdraw() public onlyContractOwner {
  > |    contractOwner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(190)

[31mViolation[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |pragma solidity ^0.4.18;
    |
  > |//this is the smart contract for the Hundred Ether Wall
    |//please take note that the contract contains a constructor That
    |//declares the contract owner, only the contract owner can withdraw funds
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |                revert();
    |            }
  > |            grid[_x / 25 + i][_y / 25 + j] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |    //store the ad, return the index
    |    Ad memory ad = Ad(msg.sender, _x, _y, _width, _height, _title, _link, _ipfsHash, false, true, price);
  > |    idx = ads.push(ad) - 1;
    |
    |    //trigger transaction with the buy event
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |//take a look at the HomePage.js component
    |
  > |contract HundredEtherWall {
    |  address public contractOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(9)

[33mWarning[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |    require(msg.sender == ad.owner);
    |
  > |    ad.forSale = _sale;
    |    ad.marketPrice = _marketPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |
    |    ad.forSale = _sale;
  > |    ad.marketPrice = _marketPrice;
    |
    |    emit SetSale(_idx, ad.forSale, ad.marketPrice);
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |    require(ad.forSale == true);
    |
  > |    receiver = ad.owner;
    |
    |    ad.owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |    receiver = ad.owner;
    |
  > |    ad.owner = msg.sender;
    |    ad.forSale = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |
    |    ad.owner = msg.sender;
  > |    ad.forSale = false;
    |
    |    //set the ad back to its original price
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'HundredEtherWall':
    |    Ad storage ad = ads[_idx];
    |
  > |    ad.active = _active;
    |
    |    emit SetActive(_idx, ad.active);
  at /home/jiaming/mavs_srcs/contract@0xada203072fe674c878c18f44cf1a5411921124f9.sol(176)


