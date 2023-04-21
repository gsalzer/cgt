Processing contract: /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol:DaiMaker
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol:IMaker
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol:IWETH
[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(43)

[33mWarning[0m for DAO in contract 'DaiMaker':
    |
    |    function makeDai(uint256 daiAmount, address cdpOwner, address daiOwner) payable public returns (bytes32 cdpId) {
  > |        IWETH(weth).deposit.value(msg.value)();      // wrap eth in weth token
    |        weth.approve(maker, msg.value);              // allow maker to pull weth
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(127)

[33mWarning[0m for LockedEther in contract 'DaiMaker':
    |}
    |
  > |contract DaiMaker is DSMath {
    |    IMaker public maker;
    |    ERC20 public weth;
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(111)

[33mWarning[0m for TODAmount in contract 'DaiMaker':
    |
    |    function makeDai(uint256 daiAmount, address cdpOwner, address daiOwner) payable public returns (bytes32 cdpId) {
  > |        IWETH(weth).deposit.value(msg.value)();      // wrap eth in weth token
    |        weth.approve(maker, msg.value);              // allow maker to pull weth
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(127)

[33mWarning[0m for TODReceiver in contract 'DaiMaker':
    |
    |    function makeDai(uint256 daiAmount, address cdpOwner, address daiOwner) payable public returns (bytes32 cdpId) {
  > |        IWETH(weth).deposit.value(msg.value)();      // wrap eth in weth token
    |        weth.approve(maker, msg.value);              // allow maker to pull weth
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(127)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |
    |    function makeDai(uint256 daiAmount, address cdpOwner, address daiOwner) payable public returns (bytes32 cdpId) {
  > |        IWETH(weth).deposit.value(msg.value)();      // wrap eth in weth token
    |        weth.approve(maker, msg.value);              // allow maker to pull weth
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(127)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |    function makeDai(uint256 daiAmount, address cdpOwner, address daiOwner) payable public returns (bytes32 cdpId) {
    |        IWETH(weth).deposit.value(msg.value)();      // wrap eth in weth token
  > |        weth.approve(maker, msg.value);              // allow maker to pull weth
    |
    |        // calculate how much peth we need to enter with
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(128)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |
    |        // calculate how much peth we need to enter with
  > |        uint256 inverseAsk = rdiv(msg.value, wmul(maker.gap(), maker.per())) - 1;
    |
    |        maker.join(inverseAsk);                      // convert weth to peth
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(131)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |        uint256 inverseAsk = rdiv(msg.value, wmul(maker.gap(), maker.per())) - 1;
    |
  > |        maker.join(inverseAsk);                      // convert weth to peth
    |        uint256 pethAmount = peth.balanceOf(this);
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(133)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |
    |        maker.join(inverseAsk);                      // convert weth to peth
  > |        uint256 pethAmount = peth.balanceOf(this);
    |
    |        peth.approve(maker, pethAmount);             // allow maker to pull peth
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(134)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |        uint256 pethAmount = peth.balanceOf(this);
    |
  > |        peth.approve(maker, pethAmount);             // allow maker to pull peth
    |
    |        cdpId = maker.open();                        // create cdp in maker
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(136)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |        peth.approve(maker, pethAmount);             // allow maker to pull peth
    |
  > |        cdpId = maker.open();                        // create cdp in maker
    |        maker.lock(cdpId, pethAmount);               // lock peth into cdp
    |        maker.draw(cdpId, daiAmount);                // create dai from cdp
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(138)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |
    |        cdpId = maker.open();                        // create cdp in maker
  > |        maker.lock(cdpId, pethAmount);               // lock peth into cdp
    |        maker.draw(cdpId, daiAmount);                // create dai from cdp
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(139)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |        cdpId = maker.open();                        // create cdp in maker
    |        maker.lock(cdpId, pethAmount);               // lock peth into cdp
  > |        maker.draw(cdpId, daiAmount);                // create dai from cdp
    |
    |        dai.transfer(daiOwner, daiAmount);           // transfer dai to owner
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(140)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |        maker.draw(cdpId, daiAmount);                // create dai from cdp
    |
  > |        dai.transfer(daiOwner, daiAmount);           // transfer dai to owner
    |        maker.give(cdpId, cdpOwner);                 // transfer cdp to owner
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(142)

[33mWarning[0m for UnhandledException in contract 'DaiMaker':
    |
    |        dai.transfer(daiOwner, daiAmount);           // transfer dai to owner
  > |        maker.give(cdpId, cdpOwner);                 // transfer cdp to owner
    |
    |        MakeDai(daiOwner, cdpOwner, msg.value, daiAmount, pethAmount);
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |    function makeDai(uint256 daiAmount, address cdpOwner, address daiOwner) payable public returns (bytes32 cdpId) {
    |        IWETH(weth).deposit.value(msg.value)();      // wrap eth in weth token
  > |        weth.approve(maker, msg.value);              // allow maker to pull weth
    |
    |        // calculate how much peth we need to enter with
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |
    |        // calculate how much peth we need to enter with
  > |        uint256 inverseAsk = rdiv(msg.value, wmul(maker.gap(), maker.per())) - 1;
    |
    |        maker.join(inverseAsk);                      // convert weth to peth
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |        uint256 inverseAsk = rdiv(msg.value, wmul(maker.gap(), maker.per())) - 1;
    |
  > |        maker.join(inverseAsk);                      // convert weth to peth
    |        uint256 pethAmount = peth.balanceOf(this);
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |
    |        maker.join(inverseAsk);                      // convert weth to peth
  > |        uint256 pethAmount = peth.balanceOf(this);
    |
    |        peth.approve(maker, pethAmount);             // allow maker to pull peth
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |        uint256 pethAmount = peth.balanceOf(this);
    |
  > |        peth.approve(maker, pethAmount);             // allow maker to pull peth
    |
    |        cdpId = maker.open();                        // create cdp in maker
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |        peth.approve(maker, pethAmount);             // allow maker to pull peth
    |
  > |        cdpId = maker.open();                        // create cdp in maker
    |        maker.lock(cdpId, pethAmount);               // lock peth into cdp
    |        maker.draw(cdpId, daiAmount);                // create dai from cdp
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |
    |        cdpId = maker.open();                        // create cdp in maker
  > |        maker.lock(cdpId, pethAmount);               // lock peth into cdp
    |        maker.draw(cdpId, daiAmount);                // create dai from cdp
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |        cdpId = maker.open();                        // create cdp in maker
    |        maker.lock(cdpId, pethAmount);               // lock peth into cdp
  > |        maker.draw(cdpId, daiAmount);                // create dai from cdp
    |
    |        dai.transfer(daiOwner, daiAmount);           // transfer dai to owner
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |        maker.draw(cdpId, daiAmount);                // create dai from cdp
    |
  > |        dai.transfer(daiOwner, daiAmount);           // transfer dai to owner
    |        maker.give(cdpId, cdpOwner);                 // transfer cdp to owner
    |
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DaiMaker':
    |
    |        dai.transfer(daiOwner, daiAmount);           // transfer dai to owner
  > |        maker.give(cdpId, cdpOwner);                 // transfer cdp to owner
    |
    |        MakeDai(daiOwner, cdpOwner, msg.value, daiAmount, pethAmount);
  at /home/jiaming/mavs_srcs/contract@0x9d43c34a050d5c1a865b09993a0d1d04ec4432ab.sol(143)


