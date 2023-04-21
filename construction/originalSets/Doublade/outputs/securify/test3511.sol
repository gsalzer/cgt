Processing contract: /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol:StudioCrowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol:token
[33mWarning[0m for LockedEther in contract 'StudioCrowdsale':
    |}
    |
  > |contract StudioCrowdsale {
    |    address public beneficiary;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    token public tokenReward;
    |    
  > |    mapping(address => uint256) public contributions;
    |    bool crowdSaleStart;
    |    bool crowdSalePause;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |    
  > |    function transferOwnership ( address _newowner ) onlyOwner {
    |        
    |        owner = _newowner;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |    
  > |    function transferBeneficiary ( address _newbeneficiary ) onlyOwner {
    |        
    |        beneficiary = _newbeneficiary;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |
    |contract StudioCrowdsale {
  > |    address public beneficiary;
    |    address public owner;
    |  
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |contract StudioCrowdsale {
    |    address public beneficiary;
  > |    address public owner;
    |  
    |    uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    address public owner;
    |  
  > |    uint public amountRaised;
    |    uint public tokensSold;
    |    uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |  
    |    uint public amountRaised;
  > |    uint public tokensSold;
    |    uint public deadline;
    |    uint public price;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    uint public amountRaised;
    |    uint public tokensSold;
  > |    uint public deadline;
    |    uint public price;
    |    token public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    uint public tokensSold;
    |    uint public deadline;
  > |    uint public price;
    |    token public tokenReward;
    |    
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    uint public deadline;
    |    uint public price;
  > |    token public tokenReward;
    |    
    |    mapping(address => uint256) public contributions;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |
    |    // Start this October 27
  > |    function startCrowdsale() onlyOwner  {
    |        
    |        crowdSaleStart = true;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |
  > |    function endCrowdsale() onlyOwner  {
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |
    |
  > |    function pauseCrowdsale() onlyOwner {
    |        
    |        crowdSalePause = true;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |
  > |    function unpauseCrowdsale() onlyOwner {
    |        
    |        crowdSalePause = false;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'StudioCrowdsale':
    |    }
    |    
  > |    function withdrawStudios() onlyOwner{
    |        
    |        uint256 balance = tokenReward.balanceOf(address(this));
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(102)

[33mWarning[0m for UnhandledException in contract 'StudioCrowdsale':
    |    function withdrawStudios() onlyOwner{
    |        
  > |        uint256 balance = tokenReward.balanceOf(address(this));
    |        
    |        tokenReward.transfer( beneficiary, balance );
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(104)

[33mWarning[0m for UnhandledException in contract 'StudioCrowdsale':
    |        uint256 balance = tokenReward.balanceOf(address(this));
    |        
  > |        tokenReward.transfer( beneficiary, balance );
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StudioCrowdsale':
    |    function withdrawStudios() onlyOwner{
    |        
  > |        uint256 balance = tokenReward.balanceOf(address(this));
    |        
    |        tokenReward.transfer( beneficiary, balance );
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StudioCrowdsale':
    |        uint256 balance = tokenReward.balanceOf(address(this));
    |        
  > |        tokenReward.transfer( beneficiary, balance );
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function startCrowdsale() onlyOwner  {
    |        
  > |        crowdSaleStart = true;
    |        deadline = now + 120 days;
    |        price =  .000000000033333333 ether;
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |        
    |        crowdSaleStart = true;
  > |        deadline = now + 120 days;
    |        price =  .000000000033333333 ether;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |        crowdSaleStart = true;
    |        deadline = now + 120 days;
  > |        price =  .000000000033333333 ether;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |        
    |        
  > |        crowdSaleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function pauseCrowdsale() onlyOwner {
    |        
  > |        crowdSalePause = true;
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function unpauseCrowdsale() onlyOwner {
    |        
  > |        crowdSalePause = false;
    |        
    |        
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function transferOwnership ( address _newowner ) onlyOwner {
    |        
  > |        owner = _newowner;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StudioCrowdsale':
    |    function transferBeneficiary ( address _newbeneficiary ) onlyOwner {
    |        
  > |        beneficiary = _newbeneficiary;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe60b241a21dad25876379c617b846ad4143bd3c5.sol(98)


