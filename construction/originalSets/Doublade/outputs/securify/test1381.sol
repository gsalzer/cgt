Processing contract: /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol:StudioCrowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol:token
[33mWarning[0m for LockedEther in contract 'StudioCrowdsale':
    |}
    |
  > |contract StudioCrowdsale {
    |    address public beneficiary;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    token public tokenReward;
    |    
  > |    mapping(address => uint256) public contributions;
    |    bool crowdSaleStart;
    |    bool crowdSalePause;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |    
  > |    function transferOwnership ( address _newowner ) onlyOwner {
    |        
    |        owner = _newowner;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |    
  > |    function transferBeneficiary ( address _newbeneficiary ) onlyOwner {
    |        
    |        beneficiary = _newbeneficiary;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |
    |contract StudioCrowdsale {
  > |    address public beneficiary;
    |    address public owner;
    |  
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |contract StudioCrowdsale {
    |    address public beneficiary;
  > |    address public owner;
    |  
    |    uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    address public owner;
    |  
  > |    uint public amountRaised;
    |    uint public tokensSold;
    |    uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |  
    |    uint public amountRaised;
  > |    uint public tokensSold;
    |    uint public deadline;
    |    uint public price;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    uint public amountRaised;
    |    uint public tokensSold;
  > |    uint public deadline;
    |    uint public price;
    |    token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    uint public tokensSold;
    |    uint public deadline;
  > |    uint public price;
    |    token public tokenReward;
    |    
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    uint public deadline;
    |    uint public price;
  > |    token public tokenReward;
    |    
    |    mapping(address => uint256) public contributions;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |
    |    // Start this November 1
  > |    function startCrowdsale() onlyOwner  {
    |        
    |        crowdSaleStart = true;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |
  > |    function endCrowdsale() onlyOwner  {
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |
    |
  > |    function pauseCrowdsale() onlyOwner {
    |        
    |        crowdSalePause = true;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |
  > |    function unpauseCrowdsale() onlyOwner {
    |        
    |        crowdSalePause = false;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |    
  > |    function withdrawStudios() onlyOwner{
    |        if ( now < deadline ){
    |        uint256 balance = tokenReward.balanceOf(address(this));
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(103)

[33mWarning[0m for UnhandledException in contract 'StudioCrowdsale':
    |    function withdrawStudios() onlyOwner{
    |        if ( now < deadline ){
  > |        uint256 balance = tokenReward.balanceOf(address(this));
    |        tokenReward.transfer( beneficiary, balance );}
    |        else tokenReward.burn(tokenReward.balanceOf(address(this)));
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(105)

[33mWarning[0m for UnhandledException in contract 'StudioCrowdsale':
    |        if ( now < deadline ){
    |        uint256 balance = tokenReward.balanceOf(address(this));
  > |        tokenReward.transfer( beneficiary, balance );}
    |        else tokenReward.burn(tokenReward.balanceOf(address(this)));
    |        
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(106)

[33mWarning[0m for UnhandledException in contract 'StudioCrowdsale':
    |        uint256 balance = tokenReward.balanceOf(address(this));
    |        tokenReward.transfer( beneficiary, balance );}
  > |        else tokenReward.burn(tokenReward.balanceOf(address(this)));
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(107)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StudioCrowdsale':
    |    function withdrawStudios() onlyOwner{
    |        if ( now < deadline ){
  > |        uint256 balance = tokenReward.balanceOf(address(this));
    |        tokenReward.transfer( beneficiary, balance );}
    |        else tokenReward.burn(tokenReward.balanceOf(address(this)));
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StudioCrowdsale':
    |        if ( now < deadline ){
    |        uint256 balance = tokenReward.balanceOf(address(this));
  > |        tokenReward.transfer( beneficiary, balance );}
    |        else tokenReward.burn(tokenReward.balanceOf(address(this)));
    |        
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StudioCrowdsale':
    |        uint256 balance = tokenReward.balanceOf(address(this));
    |        tokenReward.transfer( beneficiary, balance );}
  > |        else tokenReward.burn(tokenReward.balanceOf(address(this)));
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function startCrowdsale() onlyOwner  {
    |        
  > |        crowdSaleStart = true;
    |        deadline = now + 120 days;
    |        price =  .0033333333333 ether;
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |        
    |        crowdSaleStart = true;
  > |        deadline = now + 120 days;
    |        price =  .0033333333333 ether;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |        crowdSaleStart = true;
    |        deadline = now + 120 days;
  > |        price =  .0033333333333 ether;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |        
    |        
  > |        crowdSaleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function pauseCrowdsale() onlyOwner {
    |        
  > |        crowdSalePause = true;
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function unpauseCrowdsale() onlyOwner {
    |        
  > |        crowdSalePause = false;
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function transferOwnership ( address _newowner ) onlyOwner {
    |        
  > |        owner = _newowner;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function transferBeneficiary ( address _newbeneficiary ) onlyOwner {
    |        
  > |        beneficiary = _newbeneficiary;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x57a1acbf4205eef6a0ac6d41b481268c3db3d768.sol(99)


