Processing contract: /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol:MMMInvest
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol:Percent
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'MMMInvest':
    |        uint depositMultiplier = getDepositMultiplier();
    |        time[msg.sender] = now;
  > |        msg.sender.transfer(depositMultiplier);
    |
    |        allPercents+=depositMultiplier;
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(184)

[31mViolation[0m for DAOConstantGas in contract 'MMMInvest':
    |
    |            // commission
  > |            commissionAddr.transfer(m_adminPercent.mul(msg.value));
    |
    |            if(getDepositMultiplier() > 0 && now >= time[msg.sender].add(dividendsTime) ){
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(248)

[33mWarning[0m for DAOConstantGas in contract 'MMMInvest':
    |
    |    function getDeposit(address addr) onlyOwner public payable{
  > |        addr.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(177)

[33mWarning[0m for LockedEther in contract 'MMMInvest':
    |}
    |
  > |contract MMMInvest{
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(106)

[31mViolation[0m for TODAmount in contract 'MMMInvest':
    |
    |    function getDeposit(address addr) onlyOwner public payable{
  > |        addr.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(177)

[33mWarning[0m for TODAmount in contract 'MMMInvest':
    |
    |            // commission
  > |            commissionAddr.transfer(m_adminPercent.mul(msg.value));
    |
    |            if(getDepositMultiplier() > 0 && now >= time[msg.sender].add(dividendsTime) ){
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(248)

[33mWarning[0m for TODAmount in contract 'MMMInvest':
    |        uint depositMultiplier = getDepositMultiplier();
    |        time[msg.sender] = now;
  > |        msg.sender.transfer(depositMultiplier);
    |
    |        allPercents+=depositMultiplier;
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(184)

[33mWarning[0m for TODReceiver in contract 'MMMInvest':
    |
    |    function getDeposit(address addr) onlyOwner public payable{
  > |        addr.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(177)

[33mWarning[0m for TODReceiver in contract 'MMMInvest':
    |        uint depositMultiplier = getDepositMultiplier();
    |        time[msg.sender] = now;
  > |        msg.sender.transfer(depositMultiplier);
    |
    |        allPercents+=depositMultiplier;
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(184)

[33mWarning[0m for TODReceiver in contract 'MMMInvest':
    |
    |            // commission
  > |            commissionAddr.transfer(m_adminPercent.mul(msg.value));
    |
    |            if(getDepositMultiplier() > 0 && now >= time[msg.sender].add(dividendsTime) ){
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(248)

[33mWarning[0m for UnhandledException in contract 'MMMInvest':
    |
    |    function getDeposit(address addr) onlyOwner public payable{
  > |        addr.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(177)

[33mWarning[0m for UnhandledException in contract 'MMMInvest':
    |        uint depositMultiplier = getDepositMultiplier();
    |        time[msg.sender] = now;
  > |        msg.sender.transfer(depositMultiplier);
    |
    |        allPercents+=depositMultiplier;
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(184)

[33mWarning[0m for UnhandledException in contract 'MMMInvest':
    |
    |            // commission
  > |            commissionAddr.transfer(m_adminPercent.mul(msg.value));
    |
    |            if(getDepositMultiplier() > 0 && now >= time[msg.sender].add(dividendsTime) ){
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MMMInvest':
    |
    |    function getDeposit(address addr) onlyOwner public payable{
  > |        addr.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'MMMInvest':
    |
    |        uint depositMultiplier = getDepositMultiplier();
  > |        time[msg.sender] = now;
    |        msg.sender.transfer(depositMultiplier);
    |
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MMMInvest':
    |            }
    |
  > |            balances[msg.sender] = balances[msg.sender].add(msg.value);
    |            time[msg.sender] = now;
    |
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'MMMInvest':
    |
    |            balances[msg.sender] = balances[msg.sender].add(msg.value);
  > |            time[msg.sender] = now;
    |
    |            allDeposits+=msg.value;
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(255)

[33mWarning[0m for LockedEther in contract 'Percent':
    |}
    |
  > |library Percent {
    |
    |  struct percent {
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(78)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x9315b6096e3f731ed9ff43a897ec825f248816be.sol(51)


