Processing contract: /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol:SupportedContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol:theCyber
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'theCyber':
    |
    |    // Send all available funds to the donation address.
  > |    DONATIONADDRESS_.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(266)

[33mWarning[0m for LockedEther in contract 'theCyber':
    |
    |
  > |contract theCyber {
    |  // theCyber is a decentralized club. It does not support equity memberships,
    |  // payment of dues, or payouts to the members. Instead, it is meant to enable
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(17)

[31mViolation[0m for TODAmount in contract 'theCyber':
    |
    |    // Send all available funds to the donation address.
  > |    DONATIONADDRESS_.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(266)

[33mWarning[0m for TODReceiver in contract 'theCyber':
    |
    |    // Send all available funds to the donation address.
  > |    DONATIONADDRESS_.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(266)

[33mWarning[0m for UnhandledException in contract 'theCyber':
    |
    |    // call the method of the target contract and pass in the message.
  > |    SupportedContract(_contractAddress).theCyberMessage(_message);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(256)

[33mWarning[0m for UnhandledException in contract 'theCyber':
    |
    |    // Send all available funds to the donation address.
  > |    DONATIONADDRESS_.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(266)

[33mWarning[0m for UnhandledException in contract 'theCyber':
    |
    |    // Log the donation of any tokens that have been sent into the contract.
  > |    TokensDonated(addressToMember_[msg.sender], _tokenContractAddress, ERC20(_tokenContractAddress).balanceOf(this));
    |
    |    // Send all available tokens at the given contract to the donation address.
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(275)

[33mWarning[0m for UnhandledException in contract 'theCyber':
    |
    |    // Send all available tokens at the given contract to the donation address.
  > |    ERC20(_tokenContractAddress).transfer(DONATIONADDRESS_, ERC20(_tokenContractAddress).balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'theCyber':
    |
    |    // call the method of the target contract and pass in the message.
  > |    SupportedContract(_contractAddress).theCyberMessage(_message);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'theCyber':
    |
    |    // Log the donation of any tokens that have been sent into the contract.
  > |    TokensDonated(addressToMember_[msg.sender], _tokenContractAddress, ERC20(_tokenContractAddress).balanceOf(this));
    |
    |    // Send all available tokens at the given contract to the donation address.
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'theCyber':
    |
    |    // Send all available tokens at the given contract to the donation address.
  > |    ERC20(_tokenContractAddress).transfer(DONATIONADDRESS_, ERC20(_tokenContractAddress).balanceOf(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(278)

[31mViolation[0m for UnrestrictedWrite in contract 'theCyber':
    |
    |
  > |contract theCyber {
    |  // theCyber is a decentralized club. It does not support equity memberships,
    |  // payment of dues, or payouts to the members. Instead, it is meant to enable
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(17)

[31mViolation[0m for UnrestrictedWrite in contract 'theCyber':
    |
    |    // Set up the member: status, name, `member since` & `inactive since`.
  > |    members_[_memberId] = Member(true, _memberName, "", uint64(now), 0);
    |    
    |    // Set up the address associated with the member id.
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'theCyber':
    |    
    |    // Set the `inactiveSince` field on the inactive member.
  > |    members_[_memberId].inactiveSince = uint64(now);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(191)

[31mViolation[0m for UnrestrictedWrite in contract 'theCyber':
    |
    |    // Revoke members-only access for the member.
  > |    delete addressIsMember_[memberToAddress_[_memberId]];
    |
    |    // Delete the pointer linking the address to the member id.
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'theCyber':
    |
    |    // Delete the pointer linking the address to the member id.
  > |    delete addressToMember_[memberToAddress_[_memberId]];
    |    
    |    // Delete the address associated with the member id.
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'theCyber':
    |    
    |    // Delete the address associated with the member id.
  > |    delete memberToAddress_[_memberId];
    |
    |    // Finally, delete the member.
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'theCyber':
    |
    |    // Finally, delete the member.
  > |    delete members_[_memberId];
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'theCyber':
    |    
    |    // Revoke members-only access for the old member.
  > |    delete addressIsMember_[msg.sender];
    |    
    |    // Reset fields on the membership.
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'theCyber':
    |    // Point the new address to the member id and clean up the old pointer.
    |    addressToMember_[_newMemberAddress] = addressToMember_[msg.sender];
  > |    delete addressToMember_[msg.sender];
    |
    |    // Grant members-only access to the new member.
  at /home/jiaming/mavs_srcs/contract@0x97a99c819544ad0617f48379840941efbe1bfae1.sol(171)


