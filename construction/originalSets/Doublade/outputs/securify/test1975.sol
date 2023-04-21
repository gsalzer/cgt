Processing contract: /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol:Lockable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol:StringLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Lockable':
    |}
    |////////////////////////////////////////////////////////////////////////////////
  > |contract Lockable is Ownable 
    |{
    |    uint256 internal constant lockedUntil = 1527811200;     // 2018-06-01 00:00 (GMT+0)
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |contract Ownable 
    |{
  > |    address public owner;
    |
    |    //-------------------------------------------------------------------------- @dev The Ownable constructor sets the original `owner` of the contract to the sender account
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    }
    |    //-------------------------------------------------------------------------- @dev Allows the current owner to transfer control of the contract to a newOwner.
  > |    function transferOwnership(address newOwner) public onlyOwner               // @param newOwner The address to transfer ownership to.
    |    {
    |        require(newOwner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |    {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |
    |        allowedSender = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |        owner = newOwner;
    |
  > |        allowedSender = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(159)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |////////////////////////////////////////////////////////////////////////////////
  > |contract Ownable 
    |{
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable 
    |{
  > |    address public owner;
    |
    |    //-------------------------------------------------------------------------- @dev The Ownable constructor sets the original `owner` of the contract to the sender account
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(126)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |////////////////////////////////////////////////////////////////////////////////
  > |library SafeMath 
    |{
    |    //--------------------------------------------------------------------------
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(4)

[33mWarning[0m for LockedEther in contract 'StringLib':
    |}
    |////////////////////////////////////////////////////////////////////////////////
  > |library StringLib 
    |{
    |    function concat(string strA, string strB) internal pure returns (string)
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(35)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |////////////////////////////////////////////////////////////////////////////////
  > |contract Token is ERC20, Lockable 
    |{
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    {
    |        require(newOwner != address(0));
  > |        owner = newOwner;
    |
    |        allowedSender = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        owner = newOwner;
    |
  > |        allowedSender = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(toAddr!=0x0 && toAddr!=msg.sender && amount>0);         // Prevent transfer to 0x0 address and to self, amount must be >0
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(amount);
    |        balances[toAddr]     = balances[toAddr].add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[toAddr]   = balances[toAddr].add(  amount);
    |
  > |        allowances[fromAddr][msg.sender] = allowances[fromAddr][msg.sender].sub(amount);
    |
    |        //emit Transfer(fromAddr, toAddr, amount);
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require((amount == 0) || (allowances[msg.sender][_spender] == 0));
    |
  > |        allowances[msg.sender][_spender] = amount;
    |
    |        //emit Approval(msg.sender, _spender, amount);
  at /home/jiaming/mavs_srcs/contract@0x7f927f984177323c4ac49e6b1d398e40cd1a78f6.sol(242)


