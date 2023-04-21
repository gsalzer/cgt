Processing contract: /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol:FruitFarm
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'FruitFarm':
    |    }
    |    function withdrawEther() public {
  > |        owner.transfer(this.balance);
    |    }
    |    function getTokens(uint num, address tokenBuyerContract) public {
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(20)

[33mWarning[0m for LockedEther in contract 'FruitFarm':
    |    function balanceOf(address _owner) constant returns (uint balance);
    |}
  > |contract FruitFarm {
    |    address owner;
    |    function FruitFarm() {
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'FruitFarm':
    |        owner.transfer(this.balance);
    |    }
  > |    function getTokens(uint num, address tokenBuyerContract) public {
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'FruitFarm':
    |        owner = msg.sender;
    |    }
  > |    function getTokenBalance(address tokenContract) public returns (uint balance){
    |        Token tc = Token(tokenContract);
    |        return tc.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'FruitFarm':
    |        return tc.balanceOf(this);
    |    }
  > |    function withdrawTokens(address tokenContract) public {
    |        Token tc = Token(tokenContract);
    |        tc.transfer(owner, tc.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'FruitFarm':
    |        tc.transfer(owner, tc.balanceOf(this));
    |    }
  > |    function withdrawEther() public {
    |        owner.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(19)

[31mViolation[0m for TODAmount in contract 'FruitFarm':
    |    }
    |    function withdrawEther() public {
  > |        owner.transfer(this.balance);
    |    }
    |    function getTokens(uint num, address tokenBuyerContract) public {
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(20)

[33mWarning[0m for TODReceiver in contract 'FruitFarm':
    |    }
    |    function withdrawEther() public {
  > |        owner.transfer(this.balance);
    |    }
    |    function getTokens(uint num, address tokenBuyerContract) public {
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(20)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |    }
    |    function getTokens(uint num, address tokenBuyerContract) public {
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(23)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |    function getTokens(uint num, address tokenBuyerContract) public {
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(24)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(25)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(26)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(27)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(28)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(29)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(30)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(31)

[31mViolation[0m for UnhandledException in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(32)

[33mWarning[0m for UnhandledException in contract 'FruitFarm':
    |    function getTokenBalance(address tokenContract) public returns (uint balance){
    |        Token tc = Token(tokenContract);
  > |        return tc.balanceOf(this);
    |    }
    |    function withdrawTokens(address tokenContract) public {
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(13)

[33mWarning[0m for UnhandledException in contract 'FruitFarm':
    |    function withdrawTokens(address tokenContract) public {
    |        Token tc = Token(tokenContract);
  > |        tc.transfer(owner, tc.balanceOf(this));
    |    }
    |    function withdrawEther() public {
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(17)

[33mWarning[0m for UnhandledException in contract 'FruitFarm':
    |    }
    |    function withdrawEther() public {
  > |        owner.transfer(this.balance);
    |    }
    |    function getTokens(uint num, address tokenBuyerContract) public {
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(20)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |    function getTokenBalance(address tokenContract) public returns (uint balance){
    |        Token tc = Token(tokenContract);
  > |        return tc.balanceOf(this);
    |    }
    |    function withdrawTokens(address tokenContract) public {
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(13)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |    function withdrawTokens(address tokenContract) public {
    |        Token tc = Token(tokenContract);
  > |        tc.transfer(owner, tc.balanceOf(this));
    |    }
    |    function withdrawEther() public {
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(17)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |    }
    |    function getTokens(uint num, address tokenBuyerContract) public {
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(23)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |    function getTokens(uint num, address tokenBuyerContract) public {
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(24)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(25)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(26)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(27)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(28)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(29)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(30)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(31)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FruitFarm':
    |        tokenBuyerContract.call.value(0 wei)();
    |        tokenBuyerContract.call.value(0 wei)();
  > |        tokenBuyerContract.call.value(0 wei)();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc80defd365fbac2dffeddfcb091b99afea6f8408.sol(32)


