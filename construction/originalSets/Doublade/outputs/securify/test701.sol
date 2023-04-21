Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:ComplianceService
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:Escrow
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:Haltable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:HardcodedWallets
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:ICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:ICOPreSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:RefundVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:System
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:Tokens
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol:Whitelist
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ComplianceService':
    |pragma solidity ^0.4.13;
    |
  > |contract ComplianceService {
    |	function validate(address _from, address _to, uint256 _amount) public returns (bool allowed) {
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(3)

[33mWarning[0m for LockedEther in contract 'Escrow':
    |}
    |
  > |contract Escrow is System, HardcodedWallets {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(151)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |		}
    |		deposited[_address] = deposited[_address].sub(_amount);
  > |		return SCTokens.transfer(_address, _amount);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(202)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |			return false;
    |		}
  > |		bool success = SCTokens.transfer(addressSCICO, _amount);
    |		if(success) {
    |			deposited[this] = deposited[this].sub(_amount);
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |		}
    |		deposited[_address] = deposited[_address].sub(_amount);
  > |		return SCTokens.transfer(_address, _amount);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |			return false;
    |		}
  > |		bool success = SCTokens.transfer(addressSCICO, _amount);
    |		if(success) {
    |			deposited[this] = deposited[this].sub(_amount);
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |			return false;
    |		}
  > |		deposited[this] = deposited[this].add(_amount);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |			return false;
    |		}
  > |		deposited[_address] = deposited[_address].sub(_amount);
    |		return SCTokens.transfer(_address, _amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |		bool success = SCTokens.transfer(addressSCICO, _amount);
    |		if(success) {
  > |			deposited[this] = deposited[this].sub(_amount);
    |			nextStage++;
    |			emit FundICO(addressSCICO, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |		if(success) {
    |			deposited[this] = deposited[this].sub(_amount);
  > |			nextStage++;
    |			emit FundICO(addressSCICO, _amount);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    | 	*/
    |	function setMyICOContract(address _SCICO) public onlyOwner {
  > |		addressSCICO = _SCICO;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    | 	*/
    |	function setTokensContract(address _addressSCTokens) public onlyOwner {
  > |		addressSCTokens = _addressSCTokens;
    |		SCTokens = Tokens(_addressSCTokens);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |	function setTokensContract(address _addressSCTokens) public onlyOwner {
    |		addressSCTokens = _addressSCTokens;
  > |		SCTokens = Tokens(_addressSCTokens);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(243)

[33mWarning[0m for LockedEther in contract 'Haltable':
    |}
    |
  > |contract Haltable is System {
    |	bool public halted;
    |	
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |	// called by the owner on emergency, triggers stopped state
    |	function halt() external onlyOwner {
  > |		halted = true;
    |		emit Halt(true, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |	// called by the owner on end of emergency, returns to normal state
    |	function unhalt() external onlyOwner onlyInEmergency {
  > |		halted = false;
    |		emit Halt(false, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(438)

[33mWarning[0m for LockedEther in contract 'HardcodedWallets':
    |}
    |
  > |contract HardcodedWallets {
    |	// **** DATA
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	// **** DATA
    |
  > |	address public walletFounder1; // founder #1 wallet, CEO, compulsory
    |	address public walletFounder2; // founder #2 wallet
    |	address public walletFounder3; // founder #3 wallet
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |
    |	address public walletFounder1; // founder #1 wallet, CEO, compulsory
  > |	address public walletFounder2; // founder #2 wallet
    |	address public walletFounder3; // founder #3 wallet
    |	address public walletCommunityReserve;	// Distribution wallet
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletFounder1; // founder #1 wallet, CEO, compulsory
    |	address public walletFounder2; // founder #2 wallet
  > |	address public walletFounder3; // founder #3 wallet
    |	address public walletCommunityReserve;	// Distribution wallet
    |	address public walletCompanyReserve;	// Distribution wallet
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletFounder2; // founder #2 wallet
    |	address public walletFounder3; // founder #3 wallet
  > |	address public walletCommunityReserve;	// Distribution wallet
    |	address public walletCompanyReserve;	// Distribution wallet
    |	address public walletTeamAdvisors;		// Distribution wallet
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletFounder3; // founder #3 wallet
    |	address public walletCommunityReserve;	// Distribution wallet
  > |	address public walletCompanyReserve;	// Distribution wallet
    |	address public walletTeamAdvisors;		// Distribution wallet
    |	address public walletBountyProgram;		// Distribution wallet
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletCommunityReserve;	// Distribution wallet
    |	address public walletCompanyReserve;	// Distribution wallet
  > |	address public walletTeamAdvisors;		// Distribution wallet
    |	address public walletBountyProgram;		// Distribution wallet
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletCompanyReserve;	// Distribution wallet
    |	address public walletTeamAdvisors;		// Distribution wallet
  > |	address public walletBountyProgram;		// Distribution wallet
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(26)

[33mWarning[0m for DAO in contract 'ICO':
    |
    |		// Send the investor's ethers to the vault
  > |		if (!SCRefundVault.deposit.value(msg.value)(msg.sender, tokenAmount)) {
    |			revert('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault'); // Revert needed to refund investor on error
    |			// error('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(504)

[33mWarning[0m for LockedEther in contract 'ICO':
    |}
    |
  > |contract ICO is HardcodedWallets, Haltable {
    |	// **** DATA
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(447)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |
    |		// Send the investor's ethers to the vault
  > |		if (!SCRefundVault.deposit.value(msg.value)(msg.sender, tokenAmount)) {
    |			revert('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault'); // Revert needed to refund investor on error
    |			// error('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(504)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |			// return 0;
    |		}
  > |		if (!SCWhitelist.isInvestor(_beneficiary)) {
    |			revert('buyTokensLowLevel: Investor is not registered on the whitelist'); // Revert needed to refund investor on error
    |			// error('buyTokensLowLevel: Investor is not registered on the whitelist');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(541)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |
    |		// Send the tokens to the investor
  > |		if (!SCTokens.transfer(_beneficiary, tokenAmount)) {
    |			revert('buyTokensLowLevel: unable to transfer tokens from ICO contract to beneficiary'); // Revert needed to refund investor on error
    |			// error('buyTokensLowLevel: unable to transfer tokens from ICO contract to beneficiary');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(576)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |
    |		if (weisRaised >= weisSoftCap && !_forceRefund) {
  > |			if (!SCRefundVault.close()) {
    |				error('finalize: SCRefundVault.close() failed');
    |				return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(614)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |			}
    |		} else {
  > |			if (!SCRefundVault.enableRefunds()) {
    |				error('finalize: SCRefundVault.enableRefunds() failed');
    |				return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(619)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |
    |		// Move remaining ICO tokens back to the Escrow
  > |		uint256 balanceAmount = SCTokens.balanceOf(this);
    |		if (!SCTokens.transfer(address(SCEscrow), balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(629)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |		// Move remaining ICO tokens back to the Escrow
    |		uint256 balanceAmount = SCTokens.balanceOf(this);
  > |		if (!SCTokens.transfer(address(SCEscrow), balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(630)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |		}
    |		// Adjust Escrow balance correctly
  > |		if(!SCEscrow.deposit(balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(635)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |		}
    |
  > |		if (!SCRefundVault.isRefunding()) {
    |			error('claimRefund: RefundVault state != State.Refunding');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(656)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |
    |		// Before transfering the ETHs to the investor, get back the tokens bought on ICO
  > |		uint256 tokenAmount = SCRefundVault.getTokensAcquired(msg.sender);
    |		emit GetBackTokensOnRefund(msg.sender, this, tokenAmount); // Event Log
    |		if (!SCTokens.refundTokens(msg.sender, tokenAmount)) {
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(662)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |		uint256 tokenAmount = SCRefundVault.getTokensAcquired(msg.sender);
    |		emit GetBackTokensOnRefund(msg.sender, this, tokenAmount); // Event Log
  > |		if (!SCTokens.refundTokens(msg.sender, tokenAmount)) {
    |			error('claimRefund: unable to transfer investor tokens to ICO contract before refunding');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(664)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |		}
    |
  > |		if (!SCRefundVault.refund(msg.sender)) {
    |			error('claimRefund: SCRefundVault.refund() failed');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(669)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |
    |	function fundICO() public onlyOwner {
  > |		if (!SCEscrow.fundICO(tokensHardCap, ICOStage)) {
    |			revert('ICO funding failed');
    |		}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(678)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |
    |		// Send the investor's ethers to the vault
  > |		if (!SCRefundVault.deposit.value(msg.value)(msg.sender, tokenAmount)) {
    |			revert('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault'); // Revert needed to refund investor on error
    |			// error('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(504)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |			// return 0;
    |		}
  > |		if (!SCWhitelist.isInvestor(_beneficiary)) {
    |			revert('buyTokensLowLevel: Investor is not registered on the whitelist'); // Revert needed to refund investor on error
    |			// error('buyTokensLowLevel: Investor is not registered on the whitelist');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |
    |		// Send the tokens to the investor
  > |		if (!SCTokens.transfer(_beneficiary, tokenAmount)) {
    |			revert('buyTokensLowLevel: unable to transfer tokens from ICO contract to beneficiary'); // Revert needed to refund investor on error
    |			// error('buyTokensLowLevel: unable to transfer tokens from ICO contract to beneficiary');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(576)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |
    |		if (weisRaised >= weisSoftCap && !_forceRefund) {
  > |			if (!SCRefundVault.close()) {
    |				error('finalize: SCRefundVault.close() failed');
    |				return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(614)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |			}
    |		} else {
  > |			if (!SCRefundVault.enableRefunds()) {
    |				error('finalize: SCRefundVault.enableRefunds() failed');
    |				return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(619)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |
    |		// Move remaining ICO tokens back to the Escrow
  > |		uint256 balanceAmount = SCTokens.balanceOf(this);
    |		if (!SCTokens.transfer(address(SCEscrow), balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(629)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |		// Move remaining ICO tokens back to the Escrow
    |		uint256 balanceAmount = SCTokens.balanceOf(this);
  > |		if (!SCTokens.transfer(address(SCEscrow), balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(630)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |		}
    |		// Adjust Escrow balance correctly
  > |		if(!SCEscrow.deposit(balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(635)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |		}
    |
  > |		if (!SCRefundVault.isRefunding()) {
    |			error('claimRefund: RefundVault state != State.Refunding');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(656)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |
    |		// Before transfering the ETHs to the investor, get back the tokens bought on ICO
  > |		uint256 tokenAmount = SCRefundVault.getTokensAcquired(msg.sender);
    |		emit GetBackTokensOnRefund(msg.sender, this, tokenAmount); // Event Log
    |		if (!SCTokens.refundTokens(msg.sender, tokenAmount)) {
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(662)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |		uint256 tokenAmount = SCRefundVault.getTokensAcquired(msg.sender);
    |		emit GetBackTokensOnRefund(msg.sender, this, tokenAmount); // Event Log
  > |		if (!SCTokens.refundTokens(msg.sender, tokenAmount)) {
    |			error('claimRefund: unable to transfer investor tokens to ICO contract before refunding');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(664)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |		}
    |
  > |		if (!SCRefundVault.refund(msg.sender)) {
    |			error('claimRefund: SCRefundVault.refund() failed');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(669)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |
    |	function fundICO() public onlyOwner {
  > |		if (!SCEscrow.fundICO(tokensHardCap, ICOStage)) {
    |			revert('ICO funding failed');
    |		}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'ICO':
    |	// called by the owner on emergency, triggers stopped state
    |	function halt() external onlyOwner {
  > |		halted = true;
    |		emit Halt(true, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'ICO':
    |	// called by the owner on end of emergency, returns to normal state
    |	function unhalt() external onlyOwner onlyInEmergency {
  > |		halted = false;
    |		emit Halt(false, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'ICO':
    |
    |		// Update state
  > |		weisRaised = weisRaised.add(_weisAmount);
    |
    |		// Send the tokens to the investor
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'ICO':
    |	 */
    |	function updateEndTime(uint256 _endTime) onlyOwner public returns (bool) {
  > |		endTime = _endTime;
    |
    |		emit UpdateEndTime(_endTime); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'ICO':
    |		}
    |
  > |		isFinalized = true;
    |
    |		emit Finalized(); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(640)

[33mWarning[0m for DAO in contract 'ICOPreSale':
    |
    |		// Send the investor's ethers to the vault
  > |		if (!SCRefundVault.deposit.value(msg.value)(msg.sender, tokenAmount)) {
    |			revert('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault'); // Revert needed to refund investor on error
    |			// error('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(504)

[33mWarning[0m for LockedEther in contract 'ICOPreSale':
    |}
    |
  > |contract ICOPreSale is ICO {
    |	/**
    |	 * @notice ICO constructor. Definition of ICO parameters and subcontracts autodeployment
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(713)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |
    |		// Send the investor's ethers to the vault
  > |		if (!SCRefundVault.deposit.value(msg.value)(msg.sender, tokenAmount)) {
    |			revert('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault'); // Revert needed to refund investor on error
    |			// error('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(504)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |			// return 0;
    |		}
  > |		if (!SCWhitelist.isInvestor(_beneficiary)) {
    |			revert('buyTokensLowLevel: Investor is not registered on the whitelist'); // Revert needed to refund investor on error
    |			// error('buyTokensLowLevel: Investor is not registered on the whitelist');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(541)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |
    |		// Send the tokens to the investor
  > |		if (!SCTokens.transfer(_beneficiary, tokenAmount)) {
    |			revert('buyTokensLowLevel: unable to transfer tokens from ICO contract to beneficiary'); // Revert needed to refund investor on error
    |			// error('buyTokensLowLevel: unable to transfer tokens from ICO contract to beneficiary');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(576)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |
    |		if (weisRaised >= weisSoftCap && !_forceRefund) {
  > |			if (!SCRefundVault.close()) {
    |				error('finalize: SCRefundVault.close() failed');
    |				return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(614)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |			}
    |		} else {
  > |			if (!SCRefundVault.enableRefunds()) {
    |				error('finalize: SCRefundVault.enableRefunds() failed');
    |				return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(619)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |
    |		// Move remaining ICO tokens back to the Escrow
  > |		uint256 balanceAmount = SCTokens.balanceOf(this);
    |		if (!SCTokens.transfer(address(SCEscrow), balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(629)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |		// Move remaining ICO tokens back to the Escrow
    |		uint256 balanceAmount = SCTokens.balanceOf(this);
  > |		if (!SCTokens.transfer(address(SCEscrow), balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(630)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |		}
    |		// Adjust Escrow balance correctly
  > |		if(!SCEscrow.deposit(balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(635)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |		}
    |
  > |		if (!SCRefundVault.isRefunding()) {
    |			error('claimRefund: RefundVault state != State.Refunding');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(656)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |
    |		// Before transfering the ETHs to the investor, get back the tokens bought on ICO
  > |		uint256 tokenAmount = SCRefundVault.getTokensAcquired(msg.sender);
    |		emit GetBackTokensOnRefund(msg.sender, this, tokenAmount); // Event Log
    |		if (!SCTokens.refundTokens(msg.sender, tokenAmount)) {
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(662)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |		uint256 tokenAmount = SCRefundVault.getTokensAcquired(msg.sender);
    |		emit GetBackTokensOnRefund(msg.sender, this, tokenAmount); // Event Log
  > |		if (!SCTokens.refundTokens(msg.sender, tokenAmount)) {
    |			error('claimRefund: unable to transfer investor tokens to ICO contract before refunding');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(664)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |		}
    |
  > |		if (!SCRefundVault.refund(msg.sender)) {
    |			error('claimRefund: SCRefundVault.refund() failed');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(669)

[33mWarning[0m for UnhandledException in contract 'ICOPreSale':
    |
    |	function fundICO() public onlyOwner {
  > |		if (!SCEscrow.fundICO(tokensHardCap, ICOStage)) {
    |			revert('ICO funding failed');
    |		}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(678)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |
    |		// Send the investor's ethers to the vault
  > |		if (!SCRefundVault.deposit.value(msg.value)(msg.sender, tokenAmount)) {
    |			revert('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault'); // Revert needed to refund investor on error
    |			// error('buyTokens: unable to transfer collected funds from ICO contract to Refund Vault');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(504)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |			// return 0;
    |		}
  > |		if (!SCWhitelist.isInvestor(_beneficiary)) {
    |			revert('buyTokensLowLevel: Investor is not registered on the whitelist'); // Revert needed to refund investor on error
    |			// error('buyTokensLowLevel: Investor is not registered on the whitelist');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |
    |		// Send the tokens to the investor
  > |		if (!SCTokens.transfer(_beneficiary, tokenAmount)) {
    |			revert('buyTokensLowLevel: unable to transfer tokens from ICO contract to beneficiary'); // Revert needed to refund investor on error
    |			// error('buyTokensLowLevel: unable to transfer tokens from ICO contract to beneficiary');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(576)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |
    |		if (weisRaised >= weisSoftCap && !_forceRefund) {
  > |			if (!SCRefundVault.close()) {
    |				error('finalize: SCRefundVault.close() failed');
    |				return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(614)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |			}
    |		} else {
  > |			if (!SCRefundVault.enableRefunds()) {
    |				error('finalize: SCRefundVault.enableRefunds() failed');
    |				return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(619)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |
    |		// Move remaining ICO tokens back to the Escrow
  > |		uint256 balanceAmount = SCTokens.balanceOf(this);
    |		if (!SCTokens.transfer(address(SCEscrow), balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(629)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |		// Move remaining ICO tokens back to the Escrow
    |		uint256 balanceAmount = SCTokens.balanceOf(this);
  > |		if (!SCTokens.transfer(address(SCEscrow), balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(630)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |		}
    |		// Adjust Escrow balance correctly
  > |		if(!SCEscrow.deposit(balanceAmount)) {
    |			error('finalize: unable to return remaining ICO tokens');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(635)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |		}
    |
  > |		if (!SCRefundVault.isRefunding()) {
    |			error('claimRefund: RefundVault state != State.Refunding');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(656)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |
    |		// Before transfering the ETHs to the investor, get back the tokens bought on ICO
  > |		uint256 tokenAmount = SCRefundVault.getTokensAcquired(msg.sender);
    |		emit GetBackTokensOnRefund(msg.sender, this, tokenAmount); // Event Log
    |		if (!SCTokens.refundTokens(msg.sender, tokenAmount)) {
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(662)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |		uint256 tokenAmount = SCRefundVault.getTokensAcquired(msg.sender);
    |		emit GetBackTokensOnRefund(msg.sender, this, tokenAmount); // Event Log
  > |		if (!SCTokens.refundTokens(msg.sender, tokenAmount)) {
    |			error('claimRefund: unable to transfer investor tokens to ICO contract before refunding');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(664)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |		}
    |
  > |		if (!SCRefundVault.refund(msg.sender)) {
    |			error('claimRefund: SCRefundVault.refund() failed');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(669)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOPreSale':
    |
    |	function fundICO() public onlyOwner {
  > |		if (!SCEscrow.fundICO(tokensHardCap, ICOStage)) {
    |			revert('ICO funding failed');
    |		}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOPreSale':
    |	// called by the owner on emergency, triggers stopped state
    |	function halt() external onlyOwner {
  > |		halted = true;
    |		emit Halt(true, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOPreSale':
    |	// called by the owner on end of emergency, returns to normal state
    |	function unhalt() external onlyOwner onlyInEmergency {
  > |		halted = false;
    |		emit Halt(false, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOPreSale':
    |
    |		// Update state
  > |		weisRaised = weisRaised.add(_weisAmount);
    |
    |		// Send the tokens to the investor
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOPreSale':
    |	 */
    |	function updateEndTime(uint256 _endTime) onlyOwner public returns (bool) {
  > |		endTime = _endTime;
    |
    |		emit UpdateEndTime(_endTime); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOPreSale':
    |		}
    |
  > |		isFinalized = true;
    |
    |		emit Finalized(); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(640)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |		state = State.Closed;
    |
  > |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
    |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
    |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(332)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |
    |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
  > |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
    |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(333)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
    |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
  > |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
    |
    |		emit Closed(); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(334)

[33mWarning[0m for DAOConstantGas in contract 'RefundVault':
    |		deposited[_investor] = 0;
    |		tokensAcquired[_investor] = 0; // tokens should have been returned previously to the ICO
  > |		_investor.transfer(depositedValue);
    |
    |		emit Refunded(_investor, depositedValue); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(371)

[33mWarning[0m for LockedEther in contract 'RefundVault':
    |}
    |
  > |contract RefundVault is HardcodedWallets, System {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(262)

[31mViolation[0m for TODAmount in contract 'RefundVault':
    |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
    |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
  > |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
    |
    |		emit Closed(); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(334)

[33mWarning[0m for TODReceiver in contract 'RefundVault':
    |		deposited[_investor] = 0;
    |		tokensAcquired[_investor] = 0; // tokens should have been returned previously to the ICO
  > |		_investor.transfer(depositedValue);
    |
    |		emit Refunded(_investor, depositedValue); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(371)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |		state = State.Closed;
    |
  > |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
    |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
    |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(332)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |
    |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
  > |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
    |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(333)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
    |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
  > |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
    |
    |		emit Closed(); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(334)

[33mWarning[0m for UnhandledException in contract 'RefundVault':
    |		deposited[_investor] = 0;
    |		tokensAcquired[_investor] = 0; // tokens should have been returned previously to the ICO
  > |		_investor.transfer(depositedValue);
    |
    |		emit Refunded(_investor, depositedValue); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(371)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |		state = State.Closed;
    |
  > |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
    |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
    |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |
    |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
  > |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
    |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(333)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
    |		walletFounder2.transfer(address(this).balance.mul(50).div(100)); // Forwards 33% to 2nd founder wallet
  > |		walletFounder3.transfer(address(this).balance);                  // Forwards 34% to 3rd founder wallet
    |
    |		emit Closed(); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefundVault':
    |		deposited[_investor] = 0;
    |		tokensAcquired[_investor] = 0; // tokens should have been returned previously to the ICO
  > |		_investor.transfer(depositedValue);
    |
    |		emit Refunded(_investor, depositedValue); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |			return false;
    |		}
  > |		deposited[_investor] = deposited[_investor].add(msg.value);
    |		tokensAcquired[_investor] = tokensAcquired[_investor].add(_tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |		}
    |		deposited[_investor] = deposited[_investor].add(msg.value);
  > |		tokensAcquired[_investor] = tokensAcquired[_investor].add(_tokenAmount);
    |
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |			return false;
    |		}
  > |		state = State.Closed;
    |
    |		walletFounder1.transfer(address(this).balance.mul(33).div(100)); // Forwards 33% to 1st founder wallet
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |			return false;
    |		}
  > |		state = State.Refunding;
    |
    |		emit RefundsEnabled(); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |		}
    |		uint256 depositedValue = deposited[_investor];
  > |		deposited[_investor] = 0;
    |		tokensAcquired[_investor] = 0; // tokens should have been returned previously to the ICO
    |		_investor.transfer(depositedValue);
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |		uint256 depositedValue = deposited[_investor];
    |		deposited[_investor] = 0;
  > |		tokensAcquired[_investor] = 0; // tokens should have been returned previously to the ICO
    |		_investor.transfer(depositedValue);
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'RefundVault':
    |	function setMyICOContract(address _SCICO) public onlyOwner {
    |		require(address(this).balance == 0);
  > |		addressSCICO = _SCICO;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(390)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(49)

[33mWarning[0m for LockedEther in contract 'System':
    |}
    |
  > |contract System {
    |	using SafeMath for uint256;
    |	
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'System':
    |
    |	// @notice For debugging purposes when using solidity online browser, remix and sandboxes
  > |	function whoAmI() public constant returns (address) {
    |		return msg.sender;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'System':
    |	
    |	// @notice Get the current timestamp from last mined block
  > |	function timestamp() public constant returns (uint256) {
    |		return block.timestamp;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'System':
    |	
    |	// @notice Get the balance in weis of this contract
  > |	function contractBalance() public constant returns (uint256) {
    |		return address(this).balance;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(128)

[33mWarning[0m for LockedEther in contract 'Tokens':
    |}
    |
  > |contract Tokens is HardcodedWallets, ERC20, Haltable {
    |
    |	// **** DATA
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(774)

[33mWarning[0m for UnhandledException in contract 'Tokens':
    |		}
    |
  > |		if(!SCComplianceService.validate(msg.sender, _to, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(862)

[33mWarning[0m for UnhandledException in contract 'Tokens':
    |		}
    |
  > |		if(!SCComplianceService.validate(_from, _to, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(891)

[33mWarning[0m for UnhandledException in contract 'Tokens':
    |        }
    |
  > |        if(!SCComplianceService.validate(_from, addressSCICO, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(979)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tokens':
    |		}
    |
  > |		if(!SCComplianceService.validate(msg.sender, _to, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(862)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tokens':
    |		}
    |
  > |		if(!SCComplianceService.validate(_from, _to, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(891)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tokens':
    |        }
    |
  > |        if(!SCComplianceService.validate(_from, addressSCICO, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(979)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	// called by the owner on emergency, triggers stopped state
    |	function halt() external onlyOwner {
  > |		halted = true;
    |		emit Halt(true, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	// called by the owner on end of emergency, returns to normal state
    |	function unhalt() external onlyOwner onlyInEmergency {
  > |		halted = false;
    |		emit Halt(false, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		}
    |
  > |		balances[msg.sender] = balances[msg.sender].sub(_amount);
    |		balances[_to] = balances[_to].add(_amount);
    |		emit Transfer(msg.sender, _to, _amount); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(867)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |
    |		balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |		balances[_to] = balances[_to].add(_amount);
    |		emit Transfer(msg.sender, _to, _amount); // Event log
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(868)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		}
    |
  > |		balances[_from] = balances[_from].sub(_amount);
    |		balances[_to] = balances[_to].add(_amount);
    |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(896)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |
    |		balances[_from] = balances[_from].sub(_amount);
  > |		balances[_to] = balances[_to].add(_amount);
    |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |		emit Transfer(_from, _to, _amount); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(897)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		balances[_from] = balances[_from].sub(_amount);
    |		balances[_to] = balances[_to].add(_amount);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |		emit Transfer(_from, _to, _amount); // Event log
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(898)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	 */
    |	function approve(address _spender, uint256 _amount) public returns (bool success) {
  > |		allowed[msg.sender][_spender] = _amount;
    |		emit Approval(msg.sender, _spender, _amount); // Event log
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(909)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |       */
    |	function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |		allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |		emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(933)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		uint oldValue = allowed[msg.sender][_spender];
    |		if (_subtractedValue > oldValue) {
  > |			allowed[msg.sender][_spender] = 0;
    |		} else {
    |			allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(951)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |			allowed[msg.sender][_spender] = 0;
    |		} else {
  > |			allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |		}
    |		emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(953)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		}
    |
  > |		balances[_from] = balances[_from].sub(_amount);
    |		balances[addressSCICO] = balances[addressSCICO].add(_amount);
    |		emit Transfer(_from, addressSCICO, _amount); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(984)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |
    |		balances[_from] = balances[_from].sub(_amount);
  > |		balances[addressSCICO] = balances[addressSCICO].add(_amount);
    |		emit Transfer(_from, addressSCICO, _amount); // Event log
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(985)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	 */
    |	function setMyICOContract(address _SCICO) public onlyOwner {
  > |		addressSCICO = _SCICO;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(995)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |
    |	function setComplianceService(address _addressSCComplianceService) public onlyOwner {
  > |		addressSCComplianceService = _addressSCComplianceService;
    |		SCComplianceService = ComplianceService(addressSCComplianceService);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(999)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	function setComplianceService(address _addressSCComplianceService) public onlyOwner {
    |		addressSCComplianceService = _addressSCComplianceService;
  > |		SCComplianceService = ComplianceService(addressSCComplianceService);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(1000)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	 */
    |	function updateTimeLock(uint256 _timelockEndTime) onlyOwner public returns (bool) {
  > |		timelockEndTime = _timelockEndTime;
    |
    |		emit UpdateTimeLock(_timelockEndTime); // Event log
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(1007)

[33mWarning[0m for LockedEther in contract 'Whitelist':
    |}
    |
  > |contract Whitelist is HardcodedWallets, System {
    |	// **** DATA
    |
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(1027)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |		}
    |
  > |		managers[_managerAddr] = true;
    |
    |		emit AddManager(_managerAddr, timestamp());
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(1069)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |		}
    |
  > |		delete managers[_managerAddr];
    |
    |		emit DelManager(_managerAddr, timestamp());
  at /home/jiaming/mavs_srcs/contract@0x2cc6ca9c3023a6a876fd54a03f68281c7aad0e8b.sol(1081)


