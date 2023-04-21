Processing contract: /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol:Freeze
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Freeze':
    |        require(depositors[msg.sender].deposits[createtime].term<now);
    |        //return ethereum to depositors
  > |        msg.sender.transfer(depositors[msg.sender].deposits[createtime].amount);
    |        //remove deposit
    |        remove_deposit(msg.sender,index);
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(77)

[33mWarning[0m for LockedEther in contract 'Freeze':
    |
    |
  > |contract Freeze {
    |    using SafeMath for uint256;
    |    struct deposit_st{
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(33)

[33mWarning[0m for TODReceiver in contract 'Freeze':
    |        require(depositors[msg.sender].deposits[createtime].term<now);
    |        //return ethereum to depositors
  > |        msg.sender.transfer(depositors[msg.sender].deposits[createtime].amount);
    |        //remove deposit
    |        remove_deposit(msg.sender,index);
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(77)

[33mWarning[0m for UnhandledException in contract 'Freeze':
    |        uint256 fee=amount.div(200);
    |        uint256 amount_of_deposit=amount.sub(fee);
  > |        service_founder.transfer(fee);
    |        deposit_to_address(msg.sender,amount_of_deposit,term);
    |        Deposit (msg.sender,amount_of_deposit,term);
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(66)

[33mWarning[0m for UnhandledException in contract 'Freeze':
    |        require(depositors[msg.sender].deposits[createtime].term<now);
    |        //return ethereum to depositors
  > |        msg.sender.transfer(depositors[msg.sender].deposits[createtime].amount);
    |        //remove deposit
    |        remove_deposit(msg.sender,index);
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Freeze':
    |        uint256 fee=amount.div(200);
    |        uint256 amount_of_deposit=amount.sub(fee);
  > |        service_founder.transfer(fee);
    |        deposit_to_address(msg.sender,amount_of_deposit,term);
    |        Deposit (msg.sender,amount_of_deposit,term);
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Freeze':
    |
    |
  > |contract Freeze {
    |    using SafeMath for uint256;
    |    struct deposit_st{
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Freeze':
    |        uint256 createtime=depositors[account].list_key[index];
    |        //remove deposit 
  > |        delete depositors[account].deposits[createtime];
    |        //remove from list key
    |        uint count=depositors[account].list_key.length;
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Freeze':
    |        //remove from list key
    |        uint count=depositors[account].list_key.length;
  > |        depositors[account].list_key[index]=depositors[account].list_key[count-1];
    |        delete depositors[account].list_key[count-1];
    |        depositors[account].list_key.length--;
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Freeze':
    |        uint count=depositors[account].list_key.length;
    |        depositors[account].list_key[index]=depositors[account].list_key[count-1];
  > |        delete depositors[account].list_key[count-1];
    |        depositors[account].list_key.length--;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(114)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xcb466ff479a7d53755bec07926ac61ae8f494eca.sol(6)


