Processing contract: /home/jiaming/mavs_srcs/contract@0x86ba01f38a92ed31b83565395841887d0c467b3d.sol:IndirectBuyRSC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x86ba01f38a92ed31b83565395841887d0c467b3d.sol:RoseCoin
[33mWarning[0m for DAO in contract 'IndirectBuyRSC':
    |    RoseCoin constant coin = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    |    function buy(address _receiver) payable{
  > |        coin.buy.value(msg.value)();
    |        coin.transfer(_receiver, coin.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x86ba01f38a92ed31b83565395841887d0c467b3d.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'IndirectBuyRSC':
    |contract IndirectBuyRSC{
    |    RoseCoin constant coin = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
  > |    function buy(address _receiver) payable{
    |        coin.buy.value(msg.value)();
    |        coin.transfer(_receiver, coin.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x86ba01f38a92ed31b83565395841887d0c467b3d.sol(14)

[33mWarning[0m for TODReceiver in contract 'IndirectBuyRSC':
    |    RoseCoin constant coin = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    |    function buy(address _receiver) payable{
  > |        coin.buy.value(msg.value)();
    |        coin.transfer(_receiver, coin.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x86ba01f38a92ed31b83565395841887d0c467b3d.sol(15)

[33mWarning[0m for UnhandledException in contract 'IndirectBuyRSC':
    |    RoseCoin constant coin = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    |    function buy(address _receiver) payable{
  > |        coin.buy.value(msg.value)();
    |        coin.transfer(_receiver, coin.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x86ba01f38a92ed31b83565395841887d0c467b3d.sol(15)

[33mWarning[0m for UnhandledException in contract 'IndirectBuyRSC':
    |    function buy(address _receiver) payable{
    |        coin.buy.value(msg.value)();
  > |        coin.transfer(_receiver, coin.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x86ba01f38a92ed31b83565395841887d0c467b3d.sol(16)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IndirectBuyRSC':
    |    function buy(address _receiver) payable{
    |        coin.buy.value(msg.value)();
  > |        coin.transfer(_receiver, coin.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x86ba01f38a92ed31b83565395841887d0c467b3d.sol(16)


