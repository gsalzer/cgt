Processing contract: /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol:DepositContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol:DepositMasterContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol:ERC20Interface
[33mWarning[0m for DAOConstantGas in contract 'DepositContract':
    |				return 0;
    |			}
  > |			success = dedeStorageAddress.send(this.balance);
    |			return (success ? sendingValue : 0);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(86)

[33mWarning[0m for LockedEther in contract 'DepositContract':
    |}
    |
  > |contract DepositContract {
    |	address masterAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'DepositContract':
    |	}
    |
  > |	function sweep(address token, address dedeStorageAddress, uint256 mininumValue) onlyMaster returns (uint256) {
    |		bool success;
    |		uint256 sendingValue;
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(78)

[31mViolation[0m for TODAmount in contract 'DepositContract':
    |				return 0;
    |			}
  > |			success = dedeStorageAddress.send(this.balance);
    |			return (success ? sendingValue : 0);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(86)

[33mWarning[0m for TODReceiver in contract 'DepositContract':
    |				return 0;
    |			}
  > |			success = dedeStorageAddress.send(this.balance);
    |			return (success ? sendingValue : 0);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(86)

[33mWarning[0m for UnhandledException in contract 'DepositContract':
    |				return 0;
    |			}
  > |			success = dedeStorageAddress.send(this.balance);
    |			return (success ? sendingValue : 0);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(86)

[33mWarning[0m for UnhandledException in contract 'DepositContract':
    |		}
    |		else{ // token
  > |			sendingValue = ERC20Interface(token).balanceOf(this);
    |			if(mininumValue > sendingValue){
    |				return 0;
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(90)

[33mWarning[0m for UnhandledException in contract 'DepositContract':
    |				return 0;
    |			}
  > |			success = ERC20Interface(token).transfer(dedeStorageAddress, sendingValue);
    |			return (success ? sendingValue : 0);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositContract':
    |				return 0;
    |			}
  > |			success = dedeStorageAddress.send(this.balance);
    |			return (success ? sendingValue : 0);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositContract':
    |		}
    |		else{ // token
  > |			sendingValue = ERC20Interface(token).balanceOf(this);
    |			if(mininumValue > sendingValue){
    |				return 0;
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(90)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositContract':
    |				return 0;
    |			}
  > |			success = ERC20Interface(token).transfer(dedeStorageAddress, sendingValue);
    |			return (success ? sendingValue : 0);
    |		}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(94)

[33mWarning[0m for LockedEther in contract 'DepositMasterContract':
    |}
    |
  > |contract DepositMasterContract {
    |	address myAddress;
    |	address dedeAddress;
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'DepositMasterContract':
    |		ContractCreated(depositContract);
    |	}
  > |	function sweep(address contractAddress, address token, uint256 mininumValue) onlyDeDe {
    |		require(isOurContract[contractAddress]);
    |		uint256 result = DepositContract(contractAddress).sweep(token, dedeStorageAddress, mininumValue);
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'DepositMasterContract':
    |	}
    |
  > |	function changeMyAddress(address newMyAddress) onlyMe {
    |		myAddress = newMyAddress;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'DepositMasterContract':
    |		myAddress = newMyAddress;
    |	}
  > |	function changeDeDeAddress(address newDeDeAddress) onlyAdmins {
    |		dedeAddress = newDeDeAddress;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'DepositMasterContract':
    |		dedeAddress = newDeDeAddress;
    |	}
  > |	function changeDeDeStorageAddress(address newDeDeStorageAddress) onlyAdmins {
    |		dedeStorageAddress = newDeDeStorageAddress;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DepositMasterContract':
    |}
    |
  > |contract DepositMasterContract {
    |	address myAddress;
    |	address dedeAddress;
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'DepositMasterContract':
    |	}
    |
  > |	function createContract() onlyDeDe {
    |		address depositContract = new DepositContract();
    |		isOurContract[depositContract] = true;
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(42)

[33mWarning[0m for UnhandledException in contract 'DepositMasterContract':
    |	function sweep(address contractAddress, address token, uint256 mininumValue) onlyDeDe {
    |		require(isOurContract[contractAddress]);
  > |		uint256 result = DepositContract(contractAddress).sweep(token, dedeStorageAddress, mininumValue);
    |		if(result > 0){
    |			Deposited(contractAddress, dedeStorageAddress, token, result);
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(49)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositMasterContract':
    |	function sweep(address contractAddress, address token, uint256 mininumValue) onlyDeDe {
    |		require(isOurContract[contractAddress]);
  > |		uint256 result = DepositContract(contractAddress).sweep(token, dedeStorageAddress, mininumValue);
    |		if(result > 0){
    |			Deposited(contractAddress, dedeStorageAddress, token, result);
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositMasterContract':
    |	function createContract() onlyDeDe {
    |		address depositContract = new DepositContract();
  > |		isOurContract[depositContract] = true;
    |		ContractCreated(depositContract);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositMasterContract':
    |
    |	function changeMyAddress(address newMyAddress) onlyMe {
  > |		myAddress = newMyAddress;
    |	}
    |	function changeDeDeAddress(address newDeDeAddress) onlyAdmins {
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositMasterContract':
    |	}
    |	function changeDeDeAddress(address newDeDeAddress) onlyAdmins {
  > |		dedeAddress = newDeDeAddress;
    |	}
    |	function changeDeDeStorageAddress(address newDeDeStorageAddress) onlyAdmins {
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositMasterContract':
    |	}
    |	function changeDeDeStorageAddress(address newDeDeStorageAddress) onlyAdmins {
  > |		dedeStorageAddress = newDeDeStorageAddress;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x222d145d78ed722b2b0ca80b5b3f4b629d743562.sol(62)


