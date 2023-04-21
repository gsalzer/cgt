Processing contract: /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol:TheEthereumLottery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'TheEthereumLottery':
    |    
    |  ledger[DrawIndex].bets[msg.sender].can_withdraw=false;
  > |  if(!msg.sender.send(win)) //payment
    |    throw;
    |
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(283)

[33mWarning[0m for DAOConstantGas in contract 'TheEthereumLottery':
    |  uint val=referral_ledger[msg.sender];
    |  referral_ledger[msg.sender]=0;
  > |  if(!msg.sender.send(val)) //payment
    |    throw;
    |}
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(232)

[33mWarning[0m for DAOConstantGas in contract 'TheEthereumLottery':
    |  
    |  ledger[DrawIndex].bets[msg.sender].can_withdraw=false;
  > |  if(!msg.sender.send(ledger[DrawIndex].PriceOfTicket)) //refund
    |    throw;
    |}
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(315)

[33mWarning[0m for LockedEther in contract 'TheEthereumLottery':
    |pragma solidity ^0.4.7;
  > |contract TheEthereumLottery {
    | /*
    |    Brief introduction:
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(2)

[33mWarning[0m for TODReceiver in contract 'TheEthereumLottery':
    |  uint val=referral_ledger[msg.sender];
    |  referral_ledger[msg.sender]=0;
  > |  if(!msg.sender.send(val)) //payment
    |    throw;
    |}
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(232)

[33mWarning[0m for TODReceiver in contract 'TheEthereumLottery':
    |    
    |  ledger[DrawIndex].bets[msg.sender].can_withdraw=false;
  > |  if(!msg.sender.send(win)) //payment
    |    throw;
    |
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(283)

[33mWarning[0m for TODReceiver in contract 'TheEthereumLottery':
    |  
    |  ledger[DrawIndex].bets[msg.sender].can_withdraw=false;
  > |  if(!msg.sender.send(ledger[DrawIndex].PriceOfTicket)) //refund
    |    throw;
    |}
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(315)

[33mWarning[0m for UnhandledException in contract 'TheEthereumLottery':
    |  uint val=referral_ledger[msg.sender];
    |  referral_ledger[msg.sender]=0;
  > |  if(!msg.sender.send(val)) //payment
    |    throw;
    |}
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(232)

[33mWarning[0m for UnhandledException in contract 'TheEthereumLottery':
    |    
    |  ledger[DrawIndex].bets[msg.sender].can_withdraw=false;
  > |  if(!msg.sender.send(win)) //payment
    |    throw;
    |
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(283)

[33mWarning[0m for UnhandledException in contract 'TheEthereumLottery':
    |  
    |  ledger[DrawIndex].bets[msg.sender].can_withdraw=false;
  > |  if(!msg.sender.send(ledger[DrawIndex].PriceOfTicket)) //refund
    |    throw;
    |}
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(315)

[31mViolation[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |pragma solidity ^0.4.7;
  > |contract TheEthereumLottery {
    | /*
    |    Brief introduction:
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |
    |  
  > |  ledger[index].WinningNum1 = Numbers[0];
    |  ledger[index].WinningNum2 = Numbers[1];
    |  ledger[index].WinningNum3 = Numbers[2];
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  
    |  ledger[index].WinningNum1 = Numbers[0];
  > |  ledger[index].WinningNum2 = Numbers[1];
    |  ledger[index].WinningNum3 = Numbers[2];
    |  ledger[index].WinningNum4 = Numbers[3];
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(174)

[31mViolation[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[index].WinningNum1 = Numbers[0];
    |  ledger[index].WinningNum2 = Numbers[1];
  > |  ledger[index].WinningNum3 = Numbers[2];
    |  ledger[index].WinningNum4 = Numbers[3];
    |  
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[index].WinningNum2 = Numbers[1];
    |  ledger[index].WinningNum3 = Numbers[2];
  > |  ledger[index].WinningNum4 = Numbers[3];
    |  
    |  DrawReadyToPayout(index,
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |    throw;//because you should sort the values yourself
    |  if(ref!=0)//when there is no refferal, function is cheaper for ~20k gas
  > |    ledger[IndexOfCurrentDraw].bets[msg.sender].referral=ref;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[0]=MyNum1;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[1]=MyNum2;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  if(ref!=0)//when there is no refferal, function is cheaper for ~20k gas
    |    ledger[IndexOfCurrentDraw].bets[msg.sender].referral=ref;
  > |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[0]=MyNum1;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[1]=MyNum2;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[2]=MyNum3;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |    ledger[IndexOfCurrentDraw].bets[msg.sender].referral=ref;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[0]=MyNum1;
  > |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[1]=MyNum2;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[2]=MyNum3;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[3]=MyNum4;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[0]=MyNum1;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[1]=MyNum2;
  > |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[2]=MyNum3;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[3]=MyNum4;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].can_withdraw=true;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[1]=MyNum2;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[2]=MyNum3;
  > |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[3]=MyNum4;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].can_withdraw=true;
    |}
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[2]=MyNum3;
    |  ledger[IndexOfCurrentDraw].bets[msg.sender].Nums[3]=MyNum4;
  > |  ledger[IndexOfCurrentDraw].bets[msg.sender].can_withdraw=true;
    |}
    |// Play wrapper:
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  payable//might be used to not withdraw all the funds at once or to invest
    |{//probably needed only at the beginnings
  > |  referral_ledger[msg.sender]+=msg.value;
    |}
    |function Withdraw_referral()
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |{
    |  uint val=referral_ledger[msg.sender];
  > |  referral_ledger[msg.sender]=0;
    |  if(!msg.sender.send(val)) //payment
    |    throw;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  if(hits==4) win=ledger[DrawIndex].Guess4OutOf4;
    |    
  > |  ledger[DrawIndex].bets[msg.sender].can_withdraw=false;
    |  if(!msg.sender.send(win)) //payment
    |    throw;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |    throw;//throw if player didnt played or already refunded
    |  
  > |  ledger[DrawIndex].bets[msg.sender].can_withdraw=false;
    |  if(!msg.sender.send(ledger[DrawIndex].PriceOfTicket)) //refund
    |    throw;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |pragma solidity ^0.4.7;
  > |contract TheEthereumLottery {
    | /*
    |    Brief introduction:
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |{
    |  ledger.length++;
  > |  ledger[IndexOfCurrentDraw].ClosingHash =
    |    //sha3(block.blockhash(block.number-1));               //this, or
    |    //sha3(block.blockhash(block.number-1),block.coinbase);//this adds complexity, but safety remains the same
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  //also assuming this scenario, TheRand needs to be present on that contract - so if transaction is not mined
    |  //immediately - it makes a window for anyone to do the same and win.
  > |  IndexOfCurrentDraw=ledger.length-1;
    |  ledger[IndexOfCurrentDraw].OpeningHash = new_hash;
    |  ledger[IndexOfCurrentDraw].Guess4OutOf4=guess4outof4;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  //immediately - it makes a window for anyone to do the same and win.
    |  IndexOfCurrentDraw=ledger.length-1;
  > |  ledger[IndexOfCurrentDraw].OpeningHash = new_hash;
    |  ledger[IndexOfCurrentDraw].Guess4OutOf4=guess4outof4;
    |  ledger[IndexOfCurrentDraw].Guess3OutOf4=guess3outof4;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  IndexOfCurrentDraw=ledger.length-1;
    |  ledger[IndexOfCurrentDraw].OpeningHash = new_hash;
  > |  ledger[IndexOfCurrentDraw].Guess4OutOf4=guess4outof4;
    |  ledger[IndexOfCurrentDraw].Guess3OutOf4=guess3outof4;
    |  ledger[IndexOfCurrentDraw].Guess2OutOf4=guess2outof4;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[IndexOfCurrentDraw].OpeningHash = new_hash;
    |  ledger[IndexOfCurrentDraw].Guess4OutOf4=guess4outof4;
  > |  ledger[IndexOfCurrentDraw].Guess3OutOf4=guess3outof4;
    |  ledger[IndexOfCurrentDraw].Guess2OutOf4=guess2outof4;
    |  ledger[IndexOfCurrentDraw].Guess1OutOf4=guess1outof4;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[IndexOfCurrentDraw].Guess4OutOf4=guess4outof4;
    |  ledger[IndexOfCurrentDraw].Guess3OutOf4=guess3outof4;
  > |  ledger[IndexOfCurrentDraw].Guess2OutOf4=guess2outof4;
    |  ledger[IndexOfCurrentDraw].Guess1OutOf4=guess1outof4;
    |  ledger[IndexOfCurrentDraw].PriceOfTicket=priceofticket;
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[IndexOfCurrentDraw].Guess3OutOf4=guess3outof4;
    |  ledger[IndexOfCurrentDraw].Guess2OutOf4=guess2outof4;
  > |  ledger[IndexOfCurrentDraw].Guess1OutOf4=guess1outof4;
    |  ledger[IndexOfCurrentDraw].PriceOfTicket=priceofticket;
    |  ledger[IndexOfCurrentDraw].ExpirationTime=now + 2 weeks;//You can refund after ExpirationTime if owner will not announce TheRand satisfying TheHash
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[IndexOfCurrentDraw].Guess2OutOf4=guess2outof4;
    |  ledger[IndexOfCurrentDraw].Guess1OutOf4=guess1outof4;
  > |  ledger[IndexOfCurrentDraw].PriceOfTicket=priceofticket;
    |  ledger[IndexOfCurrentDraw].ExpirationTime=now + 2 weeks;//You can refund after ExpirationTime if owner will not announce TheRand satisfying TheHash
    |  NewDrawReadyToPlay(IndexOfCurrentDraw, new_hash, priceofticket, guess4outof4);//event
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  ledger[IndexOfCurrentDraw].Guess1OutOf4=guess1outof4;
    |  ledger[IndexOfCurrentDraw].PriceOfTicket=priceofticket;
  > |  ledger[IndexOfCurrentDraw].ExpirationTime=now + 2 weeks;//You can refund after ExpirationTime if owner will not announce TheRand satisfying TheHash
    |  NewDrawReadyToPlay(IndexOfCurrentDraw, new_hash, priceofticket, guess4outof4);//event
    |}
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  //be the same, then we need to take one more Byte from combined_rand and so on
    |
  > |  ledger[index].ClosingHash = combined_rand;//changes the closing blockhash to seed for WinningNums
    |    //this line is useless from the perspective of lottery
    |    //but maybe some of the players will find it interesting that something
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'TheEthereumLottery':
    |  if(new_fee<50 || new_fee>100)
    |    throw;//referrals have at least 50% of the income
  > |  referral_fee=new_fee;
    |}
    |function Withdraw(uint32 DrawIndex)
  at /home/jiaming/mavs_srcs/contract@0x9473bc8bb575ffc15cb2179cd9398bdf5730bf55.sol(240)


