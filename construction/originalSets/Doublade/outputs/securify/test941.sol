Processing contract: /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol:ComplianceService
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol:Escrow
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol:Haltable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol:HardcodedWallets
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol:System
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol:Tokens
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ComplianceService':
    |}
    |
  > |contract ComplianceService {
    |	function validate(address _from, address _to, uint256 _amount) public returns (bool allowed) {
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(339)

[33mWarning[0m for LockedEther in contract 'Escrow':
    | * @author https://marketpay.io/ & https://goo.gl/kdECQu
    | */
  > |contract Escrow is System, HardcodedWallets {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(228)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |		}
    |		deposited[_address] = deposited[_address].sub(_amount);
  > |		return SCTokens.transfer(_address, _amount);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(279)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |			return false;
    |		}
  > |		bool success = SCTokens.transfer(addressSCICO, _amount);
    |		if(success) {
    |			deposited[this] = deposited[this].sub(_amount);
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |		}
    |		deposited[_address] = deposited[_address].sub(_amount);
  > |		return SCTokens.transfer(_address, _amount);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(279)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |			return false;
    |		}
  > |		bool success = SCTokens.transfer(addressSCICO, _amount);
    |		if(success) {
    |			deposited[this] = deposited[this].sub(_amount);
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |			return false;
    |		}
  > |		deposited[this] = deposited[this].add(_amount);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |			return false;
    |		}
  > |		deposited[_address] = deposited[_address].sub(_amount);
    |		return SCTokens.transfer(_address, _amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |		bool success = SCTokens.transfer(addressSCICO, _amount);
    |		if(success) {
  > |			deposited[this] = deposited[this].sub(_amount);
    |			nextStage++;
    |			emit FundICO(addressSCICO, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |		if(success) {
    |			deposited[this] = deposited[this].sub(_amount);
  > |			nextStage++;
    |			emit FundICO(addressSCICO, _amount);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    | 	*/
    |	function setMyICOContract(address _SCICO) public onlyOwner {
  > |		addressSCICO = _SCICO;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    | 	*/
    |	function setTokensContract(address _addressSCTokens) public onlyOwner {
  > |		addressSCTokens = _addressSCTokens;
    |		SCTokens = Tokens(_addressSCTokens);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |	function setTokensContract(address _addressSCTokens) public onlyOwner {
    |		addressSCTokens = _addressSCTokens;
  > |		SCTokens = Tokens(_addressSCTokens);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(320)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * @dev Abstract contract that allows children to implement an emergency stop mechanism.
    | */
  > |contract Haltable is System {
    |	bool public halted;
    |	
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |	// called by the owner on emergency, triggers stopped state
    |	function halt() external onlyOwner {
  > |		halted = true;
    |		emit Halt(true, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |	// called by the owner on end of emergency, returns to normal state
    |	function unhalt() external onlyOwner onlyInEmergency {
  > |		halted = false;
    |		emit Halt(false, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(169)

[33mWarning[0m for LockedEther in contract 'HardcodedWallets':
    | * @author https://marketpay.io/ & https://goo.gl/kdECQu
    | */
  > |contract HardcodedWallets {
    |	// **** DATA
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	// **** DATA
    |
  > |	address public walletFounder1; // founder #1 wallet, CEO, compulsory
    |	address public walletFounder2; // founder #2 wallet
    |	address public walletFounder3; // founder #3 wallet
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |
    |	address public walletFounder1; // founder #1 wallet, CEO, compulsory
  > |	address public walletFounder2; // founder #2 wallet
    |	address public walletFounder3; // founder #3 wallet
    |	address public walletCommunityReserve;	// Distribution wallet
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletFounder1; // founder #1 wallet, CEO, compulsory
    |	address public walletFounder2; // founder #2 wallet
  > |	address public walletFounder3; // founder #3 wallet
    |	address public walletCommunityReserve;	// Distribution wallet
    |	address public walletCompanyReserve;	// Distribution wallet
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletFounder2; // founder #2 wallet
    |	address public walletFounder3; // founder #3 wallet
  > |	address public walletCommunityReserve;	// Distribution wallet
    |	address public walletCompanyReserve;	// Distribution wallet
    |	address public walletTeamAdvisors;		// Distribution wallet
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletFounder3; // founder #3 wallet
    |	address public walletCommunityReserve;	// Distribution wallet
  > |	address public walletCompanyReserve;	// Distribution wallet
    |	address public walletTeamAdvisors;		// Distribution wallet
    |	address public walletBountyProgram;		// Distribution wallet
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletCommunityReserve;	// Distribution wallet
    |	address public walletCompanyReserve;	// Distribution wallet
  > |	address public walletTeamAdvisors;		// Distribution wallet
    |	address public walletBountyProgram;		// Distribution wallet
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'HardcodedWallets':
    |	address public walletCompanyReserve;	// Distribution wallet
    |	address public walletTeamAdvisors;		// Distribution wallet
  > |	address public walletBountyProgram;		// Distribution wallet
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(192)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(28)

[33mWarning[0m for LockedEther in contract 'System':
    | * @author https://marketpay.io/ & https://goo.gl/kdECQu
    | */
  > |contract System {
    |	using SafeMath for uint256;
    |	
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'System':
    |
    |	// @notice For debugging purposes when using solidity online browser, remix and sandboxes
  > |	function whoAmI() public constant returns (address) {
    |		return msg.sender;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'System':
    |	
    |	// @notice Get the current timestamp from last mined block
  > |	function timestamp() public constant returns (uint256) {
    |		return block.timestamp;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'System':
    |	
    |	// @notice Get the balance in weis of this contract
  > |	function contractBalance() public constant returns (uint256) {
    |		return address(this).balance;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(111)

[33mWarning[0m for LockedEther in contract 'Tokens':
    | * @author https://marketpay.io/ & https://goo.gl/kdECQu
    | */
  > |contract Tokens is HardcodedWallets, ERC20, Haltable {
    |
    |	// **** DATA
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(352)

[33mWarning[0m for UnhandledException in contract 'Tokens':
    |		}
    |
  > |		if(!SCComplianceService.validate(msg.sender, _to, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(440)

[33mWarning[0m for UnhandledException in contract 'Tokens':
    |		}
    |
  > |		if(!SCComplianceService.validate(_from, _to, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(469)

[33mWarning[0m for UnhandledException in contract 'Tokens':
    |        }
    |
  > |        if(!SCComplianceService.validate(_from, addressSCICO, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(557)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tokens':
    |		}
    |
  > |		if(!SCComplianceService.validate(msg.sender, _to, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(440)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tokens':
    |		}
    |
  > |		if(!SCComplianceService.validate(_from, _to, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(469)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Tokens':
    |        }
    |
  > |        if(!SCComplianceService.validate(_from, addressSCICO, _amount)) {
    |			error('transfer: not allowed by the compliance service');
    |			return false;
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(557)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	// called by the owner on emergency, triggers stopped state
    |	function halt() external onlyOwner {
  > |		halted = true;
    |		emit Halt(true, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	// called by the owner on end of emergency, returns to normal state
    |	function unhalt() external onlyOwner onlyInEmergency {
  > |		halted = false;
    |		emit Halt(false, msg.sender, timestamp()); // Event log
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		}
    |
  > |		balances[msg.sender] = balances[msg.sender].sub(_amount);
    |		balances[_to] = balances[_to].add(_amount);
    |		emit Transfer(msg.sender, _to, _amount); // Event log
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |
    |		balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |		balances[_to] = balances[_to].add(_amount);
    |		emit Transfer(msg.sender, _to, _amount); // Event log
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		}
    |
  > |		balances[_from] = balances[_from].sub(_amount);
    |		balances[_to] = balances[_to].add(_amount);
    |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |
    |		balances[_from] = balances[_from].sub(_amount);
  > |		balances[_to] = balances[_to].add(_amount);
    |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |		emit Transfer(_from, _to, _amount); // Event log
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		balances[_from] = balances[_from].sub(_amount);
    |		balances[_to] = balances[_to].add(_amount);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |		emit Transfer(_from, _to, _amount); // Event log
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	 */
    |	function approve(address _spender, uint256 _amount) public returns (bool success) {
  > |		allowed[msg.sender][_spender] = _amount;
    |		emit Approval(msg.sender, _spender, _amount); // Event log
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |       */
    |	function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |		allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |		emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		uint oldValue = allowed[msg.sender][_spender];
    |		if (_subtractedValue > oldValue) {
  > |			allowed[msg.sender][_spender] = 0;
    |		} else {
    |			allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(529)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |			allowed[msg.sender][_spender] = 0;
    |		} else {
  > |			allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |		}
    |		emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(531)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |		}
    |
  > |		balances[_from] = balances[_from].sub(_amount);
    |		balances[addressSCICO] = balances[addressSCICO].add(_amount);
    |		emit Transfer(_from, addressSCICO, _amount); // Event log
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(562)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |
    |		balances[_from] = balances[_from].sub(_amount);
  > |		balances[addressSCICO] = balances[addressSCICO].add(_amount);
    |		emit Transfer(_from, addressSCICO, _amount); // Event log
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(563)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	 */
    |	function setMyICOContract(address _SCICO) public onlyOwner {
  > |		addressSCICO = _SCICO;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |
    |	function setComplianceService(address _addressSCComplianceService) public onlyOwner {
  > |		addressSCComplianceService = _addressSCComplianceService;
    |		SCComplianceService = ComplianceService(addressSCComplianceService);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(577)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	function setComplianceService(address _addressSCComplianceService) public onlyOwner {
    |		addressSCComplianceService = _addressSCComplianceService;
  > |		SCComplianceService = ComplianceService(addressSCComplianceService);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(578)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokens':
    |	 */
    |	function updateTimeLock(uint256 _timelockEndTime) onlyOwner public returns (bool) {
  > |		timelockEndTime = _timelockEndTime;
    |
    |		emit UpdateTimeLock(_timelockEndTime); // Event log
  at /home/jiaming/mavs_srcs/contract@0x3bb3354f82654dd609300e92c92cf2c7c1bf3171.sol(585)


