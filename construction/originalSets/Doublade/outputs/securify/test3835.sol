Processing contract: /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol:Gladiethers
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Gladiethers':
    |            m_OwnerFees = 0;
    |
  > |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
    |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(190)

[33mWarning[0m for DAOConstantGas in contract 'Gladiethers':
    |
    |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
  > |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(191)

[33mWarning[0m for DAOConstantGas in contract 'Gladiethers':
    |
    |        // send the funds
  > |        if (!msg.sender.send(withdrawalAmount)) revert();
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(218)

[33mWarning[0m for LockedEther in contract 'Gladiethers':
    |pragma solidity ^0.4.20;
    |
  > |contract Gladiethers
    |{
    |    address public m_Owner;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(3)

[33mWarning[0m for TODAmount in contract 'Gladiethers':
    |            m_OwnerFees = 0;
    |
  > |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
    |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(190)

[33mWarning[0m for TODAmount in contract 'Gladiethers':
    |
    |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
  > |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(191)

[33mWarning[0m for TODAmount in contract 'Gladiethers':
    |
    |        // send the funds
  > |        if (!msg.sender.send(withdrawalAmount)) revert();
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(218)

[31mViolation[0m for TODReceiver in contract 'Gladiethers':
    |
    |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
  > |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(191)

[33mWarning[0m for TODReceiver in contract 'Gladiethers':
    |
    |        // send the funds
  > |        if (!msg.sender.send(withdrawalAmount)) revert();
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(218)

[33mWarning[0m for TODReceiver in contract 'Gladiethers':
    |            m_OwnerFees = 0;
    |
  > |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
    |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(190)

[33mWarning[0m for UnhandledException in contract 'Gladiethers':
    |            m_OwnerFees = 0;
    |
  > |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
    |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(190)

[33mWarning[0m for UnhandledException in contract 'Gladiethers':
    |
    |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
  > |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(191)

[33mWarning[0m for UnhandledException in contract 'Gladiethers':
    |
    |        // send the funds
  > |        if (!msg.sender.send(withdrawalAmount)) revert();
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Gladiethers':
    |            m_OwnerFees = 0;
    |
  > |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
    |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Gladiethers':
    |
    |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
  > |            if (!partner.send(partnerFee)) revert(); // send to partner
    |
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Gladiethers':
    |
    |        // send the funds
  > |        if (!msg.sender.send(withdrawalAmount)) revert();
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |pragma solidity ^0.4.20;
    |
  > |contract Gladiethers
    |{
    |    address public m_Owner;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |    function ChangeAddressTrust(address contract_address,bool trust_flag) public OnlyOwnerAndContracts() {
    |        require(msg.sender != contract_address);
  > |        trustedContracts[contract_address] = trust_flag;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |    
    |    function setPartner(address contract_partner) public OnlyOwnerAndContracts(){
  > |        partner = contract_partner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |    function setOraclize(address contract_oraclize) public OnlyOwnerAndContracts(){
    |        require(!started);
  > |        oraclizeContract = contract_oraclize;
    |        started = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |        require(!started);
    |        oraclizeContract = contract_oraclize;
  > |        started = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |
    |            if(queue[gladiatorToQueuePosition[msg.sender]] == msg.sender){
  > |                gladiatorToPower[msg.sender] += msg.value;
    |                return false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |
    |    function enter(address gladiator) private{
  > |        gladiatorToCooldown[gladiator] = now + 1 days;
    |        queue.push(gladiator);
    |        gladiatorToQueuePosition[gladiator] = queue.length - 1;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |        gladiatorToCooldown[gladiator] = now + 1 days;
    |        queue.push(gladiator);
  > |        gladiatorToQueuePosition[gladiator] = queue.length - 1;
    |        gladiatorToPower[gladiator] += msg.value;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |        queue.push(gladiator);
    |        gladiatorToQueuePosition[gladiator] = queue.length - 1;
  > |        gladiatorToPower[gladiator] += msg.value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |            if(queue[gladiatorToQueuePosition[gladiator]] == gladiator){ // is on the line ?
    |            
  > |                queue[gladiatorToQueuePosition[gladiator]] = queue[queue.length - 1];
    |                gladiatorToQueuePosition[queue[queue.length - 1]] = gladiatorToQueuePosition[gladiator];
    |                gladiatorToCooldown[gladiator] =  9999999999999; // indicative number to know when it is in battle
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |            
    |                queue[gladiatorToQueuePosition[gladiator]] = queue[queue.length - 1];
  > |                gladiatorToQueuePosition[queue[queue.length - 1]] = gladiatorToQueuePosition[gladiator];
    |                gladiatorToCooldown[gladiator] =  9999999999999; // indicative number to know when it is in battle
    |                delete queue[queue.length - 1];
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |                queue[gladiatorToQueuePosition[gladiator]] = queue[queue.length - 1];
    |                gladiatorToQueuePosition[queue[queue.length - 1]] = gladiatorToQueuePosition[gladiator];
  > |                gladiatorToCooldown[gladiator] =  9999999999999; // indicative number to know when it is in battle
    |                delete queue[queue.length - 1];
    |                queue.length = queue.length - (1);
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |                gladiatorToQueuePosition[queue[queue.length - 1]] = gladiatorToQueuePosition[gladiator];
    |                gladiatorToCooldown[gladiator] =  9999999999999; // indicative number to know when it is in battle
  > |                delete queue[queue.length - 1];
    |                queue.length = queue.length - (1);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |        // in a unlikely case of 3 guys in queue two of them scheduleFight and the last one withdraws and left the first fighter that enconters the queue empty becomes the kingGladiator
    |        if(queue.length == 0){  
  > |            gladiatorToCooldown[gladiator1] = now + 1 days;
    |            queue.push(gladiator1);
    |            gladiatorToQueuePosition[gladiator1] = queue.length - 1;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |        if(queue.length == 0){  
    |            gladiatorToCooldown[gladiator1] = now + 1 days;
  > |            queue.push(gladiator1);
    |            gladiatorToQueuePosition[gladiator1] = queue.length - 1;
    |            kingGladiator = gladiator1;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |            gladiatorToCooldown[gladiator1] = now + 1 days;
    |            queue.push(gladiator1);
  > |            gladiatorToQueuePosition[gladiator1] = queue.length - 1;
    |            kingGladiator = gladiator1;
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |            queue.push(gladiator1);
    |            gladiatorToQueuePosition[gladiator1] = queue.length - 1;
  > |            kingGladiator = gladiator1;
    |        }else{
    |        
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |                devFee = SafeMath.div(SafeMath.mul(gladiatorToPower[gladiator2],4),100);
    |    
  > |                gladiatorToPower[gladiator1] =  SafeMath.add( gladiatorToPower[gladiator1], SafeMath.sub(gladiatorToPower[gladiator2],devFee) );
    |                queue[gladiatorToQueuePosition[gladiator2]] = gladiator1;
    |                gladiatorToQueuePosition[gladiator1] = gladiatorToQueuePosition[gladiator2];
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |    
    |                gladiatorToPower[gladiator1] =  SafeMath.add( gladiatorToPower[gladiator1], SafeMath.sub(gladiatorToPower[gladiator2],devFee) );
  > |                queue[gladiatorToQueuePosition[gladiator2]] = gladiator1;
    |                gladiatorToQueuePosition[gladiator1] = gladiatorToQueuePosition[gladiator2];
    |                gladiatorToPower[gladiator2] = 0;
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |                gladiatorToPower[gladiator1] =  SafeMath.add( gladiatorToPower[gladiator1], SafeMath.sub(gladiatorToPower[gladiator2],devFee) );
    |                queue[gladiatorToQueuePosition[gladiator2]] = gladiator1;
  > |                gladiatorToQueuePosition[gladiator1] = gladiatorToQueuePosition[gladiator2];
    |                gladiatorToPower[gladiator2] = 0;
    |                gladiatorToCooldown[gladiator1] = now + 1 days; // reset atacker cooldown
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |                queue[gladiatorToQueuePosition[gladiator2]] = gladiator1;
    |                gladiatorToQueuePosition[gladiator1] = gladiatorToQueuePosition[gladiator2];
  > |                gladiatorToPower[gladiator2] = 0;
    |                gladiatorToCooldown[gladiator1] = now + 1 days; // reset atacker cooldown
    |    
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |                gladiatorToQueuePosition[gladiator1] = gladiatorToQueuePosition[gladiator2];
    |                gladiatorToPower[gladiator2] = 0;
  > |                gladiatorToCooldown[gladiator1] = now + 1 days; // reset atacker cooldown
    |    
    |                if(gladiatorToPower[gladiator1] > gladiatorToPower[kingGladiator] ){ // check if is the biggest guy in the arena
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |    
    |                if(gladiatorToPower[gladiator1] > gladiatorToPower[kingGladiator] ){ // check if is the biggest guy in the arena
  > |                    kingGladiator = gladiator1;
    |                }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |                devFee = SafeMath.div(SafeMath.mul(gladiatorToPower[gladiator1],4),100);
    |    
  > |                gladiatorToPower[gladiator2] = SafeMath.add( gladiatorToPower[gladiator2],SafeMath.sub(gladiatorToPower[gladiator1],devFee) );
    |                gladiatorToPower[gladiator1] = 0;
    |    
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |    
    |                gladiatorToPower[gladiator2] = SafeMath.add( gladiatorToPower[gladiator2],SafeMath.sub(gladiatorToPower[gladiator1],devFee) );
  > |                gladiatorToPower[gladiator1] = 0;
    |    
    |                if(gladiatorToPower[gladiator2] > gladiatorToPower[kingGladiator] ){
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |    
    |                if(gladiatorToPower[gladiator2] > gladiatorToPower[kingGladiator] ){
  > |                    kingGladiator = gladiator2;
    |                }
    |
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |
    |        
  > |        gladiatorToPower[kingGladiator] = SafeMath.add( gladiatorToPower[kingGladiator],SafeMath.div(devFee,4) ); // gives 1%      (4% dead gladiator / 4 )
    |        m_OwnerFees = SafeMath.add( m_OwnerFees , SafeMath.sub(devFee,SafeMath.div(devFee,4)) ); // 4total - 1king  = 3%
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |        
    |        gladiatorToPower[kingGladiator] = SafeMath.add( gladiatorToPower[kingGladiator],SafeMath.div(devFee,4) ); // gives 1%      (4% dead gladiator / 4 )
  > |        m_OwnerFees = SafeMath.add( m_OwnerFees , SafeMath.sub(devFee,SafeMath.div(devFee,4)) ); // 4total - 1king  = 3%
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |
    |            // set funds to 0
  > |            m_OwnerFees = 0;
    |
    |            if (!m_Owner.send(SafeMath.sub(withdrawalAmount,partnerFee))) revert(); // send to owner
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Gladiethers':
    |            if(gladiatorToCooldown[msg.sender] < now && gladiatorToPower[withdrawalAccount] >= withdrawalAmount){
    |
  > |                gladiatorToPower[withdrawalAccount] = SafeMath.sub(gladiatorToPower[withdrawalAccount],withdrawalAmount);
    |
    |                // gladiator have to be removed from areana if the power is less then 0.01 eth
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(202)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xfca7d75cf8cad941a48ab9b5e1af0ae571923378.sol(227)


