Processing contract: /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol:AraProxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol:AraRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AraProxy':
    | * @dev Gives the possibility to delegate any call to a foreign implementation.
    | */
  > |contract AraProxy {
    |
    |  bytes32 private constant registryPosition_ = keccak256("io.ara.proxy.registry");
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'AraProxy':
    |  }
    |
  > |  function setImplementation(address _newImplementation) public restricted {
    |    require(_newImplementation != address(0));
    |    bytes32 implementationPosition = implementationPosition_;
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'AraProxy':
    |    bytes32 implementationPosition = implementationPosition_;
    |    assembly {
  > |      sstore(implementationPosition, _newImplementation)
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(43)

[31mViolation[0m for LockedEther in contract 'AraRegistry':
    |// File: contracts/AraRegistry.sol
    |
  > |contract AraRegistry {
    |  address public owner_;
    |  mapping (bytes32 => UpgradeableContract) private contracts_; // keccak256(contractname) => struct
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(74)

[33mWarning[0m for UnhandledException in contract 'AraRegistry':
    |
    |    AraProxy proxy = AraProxy(contracts_[_contractName].proxy_);
  > |    proxy.setImplementation(deployedAddress);
    |
    |    contracts_[_contractName].latestVersion_ = _version;
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(133)

[33mWarning[0m for UnhandledException in contract 'AraRegistry':
    |    require(contracts_[_contractName].proxy_ == address(0), "Only one proxy can exist per upgradeable contract.");
    |    AraProxy proxy = new AraProxy(address(this), _implementationAddress);
  > |    require(address(proxy).call(abi.encodeWithSignature("init(bytes)", _data)), "Init failed.");
    |    contracts_[_contractName].proxy_ = proxy;
    |
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AraRegistry':
    |
    |    AraProxy proxy = AraProxy(contracts_[_contractName].proxy_);
  > |    proxy.setImplementation(deployedAddress);
    |
    |    contracts_[_contractName].latestVersion_ = _version;
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AraRegistry':
    |    require(contracts_[_contractName].proxy_ == address(0), "Only one proxy can exist per upgradeable contract.");
    |    AraProxy proxy = new AraProxy(address(this), _implementationAddress);
  > |    require(address(proxy).call(abi.encodeWithSignature("init(bytes)", _data)), "Init failed.");
    |    contracts_[_contractName].proxy_ = proxy;
    |
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'AraRegistry':
    |// File: contracts/AraRegistry.sol
    |
  > |contract AraRegistry {
    |  address public owner_;
    |  mapping (bytes32 => UpgradeableContract) private contracts_; // keccak256(contractname) => struct
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'AraRegistry':
    |    contracts_[_contractName].initialized_ = true;
    |    contracts_[_contractName].latestVersion_ = _version;
  > |    contracts_[_contractName].versions_[_version] = deployedAddress;
    |    _deployProxy(_contractName, deployedAddress, _data);
    |
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'AraRegistry':
    |
    |    contracts_[_contractName].latestVersion_ = _version;
  > |    contracts_[_contractName].versions_[_version] = deployedAddress;
    |
    |    emit ContractUpgraded(_contractName, _version, deployedAddress);
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'AraRegistry':
    |    AraProxy proxy = new AraProxy(address(this), _implementationAddress);
    |    require(address(proxy).call(abi.encodeWithSignature("init(bytes)", _data)), "Init failed.");
  > |    contracts_[_contractName].proxy_ = proxy;
    |
    |    emit ProxyDeployed(_contractName, proxy);
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'AraRegistry':
    |// File: contracts/AraRegistry.sol
    |
  > |contract AraRegistry {
    |  address public owner_;
    |  mapping (bytes32 => UpgradeableContract) private contracts_; // keccak256(contractname) => struct
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'AraRegistry':
    |    }
    |
  > |    contracts_[_contractName].initialized_ = true;
    |    contracts_[_contractName].latestVersion_ = _version;
    |    contracts_[_contractName].versions_[_version] = deployedAddress;
  at /home/jiaming/mavs_srcs/contract@0xf8314584346fc84e96b36113784f6b562e5b01af.sol(117)


