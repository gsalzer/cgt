Processing contract: /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol:AddressesFilterFeature
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol:ERC20Basic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol:FourthBountyWPTpayoutCorrection
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol:Ownable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol:Token
[33mWarning[0m for LockedEther in contract 'AddressesFilterFeature':
    |
    |contract Ownable {}
  > |contract AddressesFilterFeature is Ownable {}
    |contract ERC20Basic {}
    |contract BasicToken is ERC20Basic {}
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(4)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |contract AddressesFilterFeature is Ownable {}
    |contract ERC20Basic {}
  > |contract BasicToken is ERC20Basic {}
    |contract ERC20 {}
    |contract StandardToken is ERC20, BasicToken {}
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(6)

[33mWarning[0m for LockedEther in contract 'ERC20':
    |contract ERC20Basic {}
    |contract BasicToken is ERC20Basic {}
  > |contract ERC20 {}
    |contract StandardToken is ERC20, BasicToken {}
    |contract MintableToken is AddressesFilterFeature, StandardToken {}
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(7)

[33mWarning[0m for LockedEther in contract 'ERC20Basic':
    |contract Ownable {}
    |contract AddressesFilterFeature is Ownable {}
  > |contract ERC20Basic {}
    |contract BasicToken is ERC20Basic {}
    |contract ERC20 {}
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(5)

[33mWarning[0m for LockedEther in contract 'FourthBountyWPTpayoutCorrection':
    |}
    |
  > |contract FourthBountyWPTpayoutCorrection {
    |  //storage
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'FourthBountyWPTpayoutCorrection':
    |  }
    |
  > |  function setCountPerStep(uint _newValue) public onlyOwner {
    |	addrPerStep = _newValue;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'FourthBountyWPTpayoutCorrection':
    |contract FourthBountyWPTpayoutCorrection {
    |  //storage
  > |  address public owner;
    |  Token public company_token;
    |  address[] public addressOfBountyMembers;
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'FourthBountyWPTpayoutCorrection':
    |  //storage
    |  address public owner;
  > |  Token public company_token;
    |  address[] public addressOfBountyMembers;
    |  mapping(address => uint256) bountyMembersAmounts;
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'FourthBountyWPTpayoutCorrection':
    |  address public owner;
    |  Token public company_token;
  > |  address[] public addressOfBountyMembers;
    |  mapping(address => uint256) bountyMembersAmounts;
    |  uint currentBatch;
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'FourthBountyWPTpayoutCorrection':
    |  }
    |
  > |  function setOwner(address _owner) 
    |    public 
    |    onlyOwner 
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'FourthBountyWPTpayoutCorrection':
    |  
    |  
  > |  function makePayout() public onlyOwner {
    |    uint startIndex = currentBatch * addrPerStep;
    |    uint endIndex = (currentBatch + 1 ) * addrPerStep;
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(72)

[33mWarning[0m for UnhandledException in contract 'FourthBountyWPTpayoutCorrection':
    |    for (uint i = startIndex; (i < endIndex && i < addressOfBountyMembers.length); i++)
    |    {
  > |      company_token.mint(addressOfBountyMembers[i], bountyMembersAmounts[addressOfBountyMembers[i]]);
    |    }
    |    currentBatch++;
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FourthBountyWPTpayoutCorrection':
    |    for (uint i = startIndex; (i < endIndex && i < addressOfBountyMembers.length); i++)
    |    {
  > |      company_token.mint(addressOfBountyMembers[i], bountyMembersAmounts[addressOfBountyMembers[i]]);
    |    }
    |    currentBatch++;
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'FourthBountyWPTpayoutCorrection':
    |      company_token.mint(addressOfBountyMembers[i], bountyMembersAmounts[addressOfBountyMembers[i]]);
    |    }
  > |    currentBatch++;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'FourthBountyWPTpayoutCorrection':
    |
    |  function setCountPerStep(uint _newValue) public onlyOwner {
  > |	addrPerStep = _newValue;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'FourthBountyWPTpayoutCorrection':
    |    require(_owner != 0);
    |    
  > |    owner = _owner;
    |    emit OwnerChanged(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(66)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |contract ERC20 {}
    |contract StandardToken is ERC20, BasicToken {}
  > |contract MintableToken is AddressesFilterFeature, StandardToken {}
    |
    |contract Token is MintableToken {
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(9)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.24;
    |
  > |contract Ownable {}
    |contract AddressesFilterFeature is Ownable {}
    |contract ERC20Basic {}
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |contract BasicToken is ERC20Basic {}
    |contract ERC20 {}
  > |contract StandardToken is ERC20, BasicToken {}
    |contract MintableToken is AddressesFilterFeature, StandardToken {}
    |
  at /home/jiaming/mavs_srcs/contract@0x36c6a8126c64b74923a202ffa20dc9fb84afb587.sol(8)


