Processing contract: /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol:IndirectBuyRSC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol:RoseCoin
[33mWarning[0m for DAO in contract 'IndirectBuyRSC':
    |    RoseCoin constant public abc = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    |    function buy(address _receiver) payable{
  > |        abc.buy.value(this.balance)();
    |        abc.transfer(_receiver, abc.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol(15)

[33mWarning[0m for LockedEther in contract 'IndirectBuyRSC':
    |}
    |
  > |contract IndirectBuyRSC{
    |    RoseCoin constant public abc = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    |    function buy(address _receiver) payable{
  at /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'IndirectBuyRSC':
    |contract IndirectBuyRSC{
    |    RoseCoin constant public abc = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
  > |    function buy(address _receiver) payable{
    |        abc.buy.value(this.balance)();
    |        abc.transfer(_receiver, abc.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'IndirectBuyRSC':
    |
    |contract IndirectBuyRSC{
  > |    RoseCoin constant public abc = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    |    function buy(address _receiver) payable{
    |        abc.buy.value(this.balance)();
  at /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol(13)

[31mViolation[0m for TODAmount in contract 'IndirectBuyRSC':
    |    RoseCoin constant public abc = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    |    function buy(address _receiver) payable{
  > |        abc.buy.value(this.balance)();
    |        abc.transfer(_receiver, abc.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol(15)

[33mWarning[0m for TODReceiver in contract 'IndirectBuyRSC':
    |    RoseCoin constant public abc = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    |    function buy(address _receiver) payable{
  > |        abc.buy.value(this.balance)();
    |        abc.transfer(_receiver, abc.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol(15)

[33mWarning[0m for UnhandledException in contract 'IndirectBuyRSC':
    |    RoseCoin constant public abc = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    |    function buy(address _receiver) payable{
  > |        abc.buy.value(this.balance)();
    |        abc.transfer(_receiver, abc.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol(15)

[33mWarning[0m for UnhandledException in contract 'IndirectBuyRSC':
    |    function buy(address _receiver) payable{
    |        abc.buy.value(this.balance)();
  > |        abc.transfer(_receiver, abc.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol(16)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IndirectBuyRSC':
    |    function buy(address _receiver) payable{
    |        abc.buy.value(this.balance)();
  > |        abc.transfer(_receiver, abc.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb2239c814081950de758d3bf601d3cacbce6477b.sol(16)


