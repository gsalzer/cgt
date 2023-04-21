Processing contract: /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol:Advertisement
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol:AppCoins
[31mViolation[0m for LockedEther in contract 'Advertisement':
    | * after proof of Attention.
    | */
  > |contract Advertisement {
    |
    |	struct Filters {
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(17)

[33mWarning[0m for UnhandledException in contract 'Advertisement':
    |
    |		//Transfers the budget to contract address
  > |        require(appc.allowance(msg.sender, address(this)) >= budget);
    |
    |        appc.transferFrom(msg.sender, address(this), budget);
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(94)

[33mWarning[0m for UnhandledException in contract 'Advertisement':
    |        require(appc.allowance(msg.sender, address(this)) >= budget);
    |
  > |        appc.transferFrom(msg.sender, address(this), budget);
    |
    |		newCampaign.budget = budget;
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(96)

[33mWarning[0m for UnhandledException in contract 'Advertisement':
    |		uint budget = getBudgetOfCampaign(bidId);
    |
  > |		appc.transfer(campaignOwner, budget);
    |
    |		setBudgetOfCampaign(bidId,0);
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(197)

[33mWarning[0m for UnhandledException in contract 'Advertisement':
    |
    |		//transfer to user, appstore and oem
  > |		appc.transfer(msg.sender, division(campaign.price * dev_share,100));
    |		appc.transfer(appstore, division(campaign.price * appstore_share,100));
    |		appc.transfer(oem, division(campaign.price * oem_share,100));
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(310)

[33mWarning[0m for UnhandledException in contract 'Advertisement':
    |		//transfer to user, appstore and oem
    |		appc.transfer(msg.sender, division(campaign.price * dev_share,100));
  > |		appc.transfer(appstore, division(campaign.price * appstore_share,100));
    |		appc.transfer(oem, division(campaign.price * oem_share,100));
    |
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(311)

[33mWarning[0m for UnhandledException in contract 'Advertisement':
    |		appc.transfer(msg.sender, division(campaign.price * dev_share,100));
    |		appc.transfer(appstore, division(campaign.price * appstore_share,100));
  > |		appc.transfer(oem, division(campaign.price * oem_share,100));
    |
    |		//subtract from campaign
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(312)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Advertisement':
    |
    |		//Transfers the budget to contract address
  > |        require(appc.allowance(msg.sender, address(this)) >= budget);
    |
    |        appc.transferFrom(msg.sender, address(this), budget);
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Advertisement':
    |        require(appc.allowance(msg.sender, address(this)) >= budget);
    |
  > |        appc.transferFrom(msg.sender, address(this), budget);
    |
    |		newCampaign.budget = budget;
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(96)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Advertisement':
    |		uint budget = getBudgetOfCampaign(bidId);
    |
  > |		appc.transfer(campaignOwner, budget);
    |
    |		setBudgetOfCampaign(bidId,0);
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Advertisement':
    |
    |		//transfer to user, appstore and oem
  > |		appc.transfer(msg.sender, division(campaign.price * dev_share,100));
    |		appc.transfer(appstore, division(campaign.price * appstore_share,100));
    |		appc.transfer(oem, division(campaign.price * oem_share,100));
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Advertisement':
    |		//transfer to user, appstore and oem
    |		appc.transfer(msg.sender, division(campaign.price * dev_share,100));
  > |		appc.transfer(appstore, division(campaign.price * appstore_share,100));
    |		appc.transfer(oem, division(campaign.price * oem_share,100));
    |
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(311)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Advertisement':
    |		appc.transfer(msg.sender, division(campaign.price * dev_share,100));
    |		appc.transfer(appstore, division(campaign.price * appstore_share,100));
  > |		appc.transfer(oem, division(campaign.price * oem_share,100));
    |
    |		//subtract from campaign
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'Advertisement':
    |		require(!userAttributions[msg.sender][bidId]);
    |		//atribute
  > |		userAttributions[msg.sender][bidId] = true;
    |
    |		payFromCampaign(bidId,appstore, oem);
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Advertisement':
    |
    |	function setBudgetOfCampaign (bytes32 bidId, uint budget) internal {
  > |		campaigns[bidId].budget = budget;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'Advertisement':
    |
    |	function setCampaignValidity (bytes32 bidId, bool val) internal {
  > |		campaigns[bidId].valid = val;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2b3b93e6a7c56a90c6679da2e8e522fb292f4b89.sol(211)


