Processing contract: /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol:HelpMeTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol:HelpMeTokenPart1
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'HelpMeTokenPart1':
    |        require( msg.value > 0 );
    |        
  > |        owner.transfer(msg.value);
    |        
    |        thank_you[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(64)

[31mViolation[0m for TODReceiver in contract 'HelpMeTokenPart1':
    |        require( msg.value > 0 );
    |        
  > |        owner.transfer(msg.value);
    |        
    |        thank_you[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(64)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart1':
    |        require( msg.value > 0 );
    |        
  > |        owner.transfer(msg.value);
    |        
    |        thank_you[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(64)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart1':
    |        for(uint256 i=0; i<= HelpMeTokens.length-1; i++){
    |            HelpMeTokenInterface token = HelpMeTokenInterface( HelpMeTokens[i] );
  > |            token.thankYou( msg.sender );
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(70)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart1':
    |        for(uint256 i=0; i<= HelpMeTokens.length-1; i++){
    |            HelpMeTokenInterface token = HelpMeTokenInterface( HelpMeTokens[i] );
  > |            token.thankYou( _a );
    |        }
    |        thank_you[_a] = true;
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(78)

[33mWarning[0m for UnhandledException in contract 'HelpMeTokenPart1':
    |        stop_it = true;
    |        for(uint256 i=0; i<= HelpMeTokens.length-1; i++){
  > |            HelpMeTokenInterface( HelpMeTokens[i] ).stopIt();
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart1':
    |        for(uint256 i=0; i<= HelpMeTokens.length-1; i++){
    |            HelpMeTokenInterface token = HelpMeTokenInterface( HelpMeTokens[i] );
  > |            token.thankYou( msg.sender );
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(70)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart1':
    |        for(uint256 i=0; i<= HelpMeTokens.length-1; i++){
    |            HelpMeTokenInterface token = HelpMeTokenInterface( HelpMeTokens[i] );
  > |            token.thankYou( _a );
    |        }
    |        thank_you[_a] = true;
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(78)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HelpMeTokenPart1':
    |        stop_it = true;
    |        for(uint256 i=0; i<= HelpMeTokens.length-1; i++){
  > |            HelpMeTokenInterface( HelpMeTokens[i] ).stopIt();
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'HelpMeTokenPart1':
    |
    |
  > |contract HelpMeTokenPart1 is Ownable {
    |    
    |    string public name = ") IM DESPERATE I NEED YOUR HELP";
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart1':
    |        owner.transfer(msg.value);
    |        
  > |        thank_you[msg.sender] = true;
    |        emit Transfer(msg.sender, address(this), num);
    |        for(uint256 i=0; i<= HelpMeTokens.length-1; i++){
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart1':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart1':
    |
    |
  > |contract HelpMeTokenPart1 is Ownable {
    |    
    |    string public name = ") IM DESPERATE I NEED YOUR HELP";
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'HelpMeTokenPart1':
    |    function stopIt() public onlyOwner returns(bool)
    |    {
  > |        stop_it = true;
    |        for(uint256 i=0; i<= HelpMeTokens.length-1; i++){
    |            HelpMeTokenInterface( HelpMeTokens[i] ).stopIt();
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(87)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    _;
    |  }
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(14)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1a3ace46c98e028229974217201433e7163c4dd.sol(17)


