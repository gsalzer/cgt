Processing contract: /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol:CryptoRushContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'CryptoRushContract':
    |          // removing the balances before the transaction is being sent!
    |          
  > |          if (msg.sender.send(amount)) 
    |          {
    |              // all okay!
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(201)

[31mViolation[0m for DAOConstantGas in contract 'CryptoRushContract':
    |          balances[user].currBalance -= amount;
    |          balances[user].lockedBalance += amount; 
  > |          if (bot.send(amount))
    |          {
    |            UserStatus('Bot has allocated balances', user, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(230)

[33mWarning[0m for LockedEther in contract 'CryptoRushContract':
    |pragma solidity ^0.4.18;
    |
  > |contract CryptoRushContract
    |{
    |
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(3)

[33mWarning[0m for TODAmount in contract 'CryptoRushContract':
    |          // removing the balances before the transaction is being sent!
    |          
  > |          if (msg.sender.send(amount)) 
    |          {
    |              // all okay!
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(201)

[33mWarning[0m for TODAmount in contract 'CryptoRushContract':
    |          balances[user].currBalance -= amount;
    |          balances[user].lockedBalance += amount; 
  > |          if (bot.send(amount))
    |          {
    |            UserStatus('Bot has allocated balances', user, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(230)

[33mWarning[0m for TODReceiver in contract 'CryptoRushContract':
    |          // removing the balances before the transaction is being sent!
    |          
  > |          if (msg.sender.send(amount)) 
    |          {
    |              // all okay!
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(201)

[33mWarning[0m for UnhandledException in contract 'CryptoRushContract':
    |          // removing the balances before the transaction is being sent!
    |          
  > |          if (msg.sender.send(amount)) 
    |          {
    |              // all okay!
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(201)

[33mWarning[0m for UnhandledException in contract 'CryptoRushContract':
    |          balances[user].currBalance -= amount;
    |          balances[user].lockedBalance += amount; 
  > |          if (bot.send(amount))
    |          {
    |            UserStatus('Bot has allocated balances', user, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoRushContract':
    |          // removing the balances before the transaction is being sent!
    |          
  > |          if (msg.sender.send(amount)) 
    |          {
    |              // all okay!
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoRushContract':
    |          balances[user].currBalance -= amount;
    |          balances[user].lockedBalance += amount; 
  > |          if (bot.send(amount))
    |          {
    |            UserStatus('Bot has allocated balances', user, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |        // user is not approved so add it to the owner's account balance
    |        
  > |        balances[owner].currBalance += msg.value;
    |        UserStatus('User is not approved thus donating ether to the contract', msg.sender, msg.value);
    |     }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |     {  // user is approved so add it to their balance
    |         
  > |        balances[msg.sender].currBalance += msg.value; // and current balance
    |        UserStatus('User has deposited some funds', msg.sender, msg.value);
    |     }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |          // user has enough funds, so pay him out!
    |          
  > |          balances[msg.sender].currBalance -= amount;
    |         
    |          
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |          {
    |              // if send failed, reset balances!
  > |              balances[msg.sender].currBalance += amount;
    |             
    |          }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |  function approveUser(address _user) ifOwner
    |  {
  > |      balances[_user].user = _user;
    |      balances[_user].lockedBalance = 0;
    |      balances[_user].currBalance = 0;
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |  {
    |      balances[_user].user = _user;
  > |      balances[_user].lockedBalance = 0;
    |      balances[_user].currBalance = 0;
    |      balances[_user].isInvestor = false;
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |      balances[_user].user = _user;
    |      balances[_user].lockedBalance = 0;
  > |      balances[_user].currBalance = 0;
    |      balances[_user].isInvestor = false;
    |      
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |      balances[_user].lockedBalance = 0;
    |      balances[_user].currBalance = 0;
  > |      balances[_user].isInvestor = false;
    |      
    |      registeredAccounts += 1;
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |      balances[_user].isInvestor = false;
    |      
  > |      registeredAccounts += 1;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |  function approveAsInvestor(address _user, int _investorCredit) ifOwner
    |  {
  > |      balances[_user].user = _user;
    |      balances[_user].isInvestor = true;
    |      balances[_user].investorCredit = _investorCredit;
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |  {
    |      balances[_user].user = _user;
  > |      balances[_user].isInvestor = true;
    |      balances[_user].investorCredit = _investorCredit;
    |      
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |      balances[_user].user = _user;
    |      balances[_user].isInvestor = true;
  > |      balances[_user].investorCredit = _investorCredit;
    |      
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |      if (balances[user].currBalance >= amount)
    |      {
  > |          balances[user].currBalance -= amount;
    |          balances[user].lockedBalance += amount; 
    |          if (bot.send(amount))
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |      {
    |          balances[user].currBalance -= amount;
  > |          balances[user].lockedBalance += amount; 
    |          if (bot.send(amount))
    |          {
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |          {
    |              // if fail then reset state
  > |              balances[user].currBalance += amount;
    |              balances[user].lockedBalance -= amount;
    |          }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |              // if fail then reset state
    |              balances[user].currBalance += amount;
  > |              balances[user].lockedBalance -= amount;
    |          }
    |      }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |                  // deduct virtual balance
    |                  
  > |                  balances[target].investorCredit -= vFee;
    |                  
    |                  if (balances[target].investorCredit < 0)
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |                      uint newCalc = uint(toCalc);
    |                      profit -= newCalc; // deduct remaining fees
  > |                      balances[target].currBalance += balances[target].lockedBalance + profit; // full profit gets added
    |                      balances[target].lockedBalance = 0; 
    |                      
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |                      profit -= newCalc; // deduct remaining fees
    |                      balances[target].currBalance += balances[target].lockedBalance + profit; // full profit gets added
  > |                      balances[target].lockedBalance = 0; 
    |                      
    |                      balances[owner].currBalance += newCalc;
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |                      balances[target].lockedBalance = 0; 
    |                      
  > |                      balances[owner].currBalance += newCalc;
    |                  }
    |                  else
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |                    //UserStatus("investor credit deducted", target, vFee);
    |                     // add full profit 
  > |                     balances[target].currBalance += balances[target].lockedBalance + profit; // full profit gets added
    |                     balances[target].lockedBalance = 0;    
    |                  }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |                     // add full profit 
    |                     balances[target].currBalance += balances[target].lockedBalance + profit; // full profit gets added
  > |                     balances[target].lockedBalance = 0;    
    |                  }
    |                  
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |              {
    |                  // get special fees ??
  > |                  balances[target].currBalance += newBalance;
    |                  balances[target].lockedBalance = 0;
    |                  balances[owner].currBalance += newFee; // add fee to owner account
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |                  // get special fees ??
    |                  balances[target].currBalance += newBalance;
  > |                  balances[target].lockedBalance = 0;
    |                  balances[owner].currBalance += newFee; // add fee to owner account
    |              }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |                  balances[target].currBalance += newBalance;
    |                  balances[target].lockedBalance = 0;
  > |                  balances[owner].currBalance += newFee; // add fee to owner account
    |              }
    |          }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |          else
    |          {
  > |              balances[target].currBalance += newBalance;
    |              balances[target].lockedBalance = 0;
    |              balances[owner].currBalance += newFee;
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |          {
    |              balances[target].currBalance += newBalance;
  > |              balances[target].lockedBalance = 0;
    |              balances[owner].currBalance += newFee;
    |          }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |              balances[target].currBalance += newBalance;
    |              balances[target].lockedBalance = 0;
  > |              balances[owner].currBalance += newFee;
    |          }
    |      }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |          // no profit detected so no fees to pay!
    |          // platform looses some eth to gas though...!
  > |          balances[target].lockedBalance = 0;
    |          balances[target].currBalance += msg.value;
    |          
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoRushContract':
    |          // platform looses some eth to gas though...!
    |          balances[target].lockedBalance = 0;
  > |          balances[target].currBalance += msg.value;
    |          
    |      }
  at /home/jiaming/mavs_srcs/contract@0xa06c318e59237f6ba20411ca7bccefd7e5357896.sol(320)


