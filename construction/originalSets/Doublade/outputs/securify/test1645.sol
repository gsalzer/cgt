Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:Affiliate
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:AffiliateRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:ERC20SafeTransfer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:ErrorReporter
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:ExchangeHandler
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:Ownable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:Pausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:SelectorProvider
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:TokenTransferProxy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:TotleControl
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:TotlePrimary
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol:Withdrawable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Affiliate':
    |  function payout() public {
    |      // Payout both the affiliate and the company at the same time
  > |      affiliateBeneficiary.transfer(SafeMath.div(SafeMath.mul(address(this).balance, affiliatePercentage), getTotalFeePercentage()));
    |      companyBeneficiary.transfer(address(this).balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(553)

[33mWarning[0m for DAOConstantGas in contract 'Affiliate':
    |      // Payout both the affiliate and the company at the same time
    |      affiliateBeneficiary.transfer(SafeMath.div(SafeMath.mul(address(this).balance, affiliatePercentage), getTotalFeePercentage()));
  > |      companyBeneficiary.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(554)

[33mWarning[0m for LockedEther in contract 'Affiliate':
    |}
    |
  > |contract Affiliate{
    |
    |  address public affiliateBeneficiary;
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(535)

[31mViolation[0m for TODAmount in contract 'Affiliate':
    |      // Payout both the affiliate and the company at the same time
    |      affiliateBeneficiary.transfer(SafeMath.div(SafeMath.mul(address(this).balance, affiliatePercentage), getTotalFeePercentage()));
  > |      companyBeneficiary.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(554)

[33mWarning[0m for TODAmount in contract 'Affiliate':
    |  function payout() public {
    |      // Payout both the affiliate and the company at the same time
  > |      affiliateBeneficiary.transfer(SafeMath.div(SafeMath.mul(address(this).balance, affiliatePercentage), getTotalFeePercentage()));
    |      companyBeneficiary.transfer(address(this).balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(553)

[31mViolation[0m for TODReceiver in contract 'Affiliate':
    |  function payout() public {
    |      // Payout both the affiliate and the company at the same time
  > |      affiliateBeneficiary.transfer(SafeMath.div(SafeMath.mul(address(this).balance, affiliatePercentage), getTotalFeePercentage()));
    |      companyBeneficiary.transfer(address(this).balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(553)

[31mViolation[0m for TODReceiver in contract 'Affiliate':
    |      // Payout both the affiliate and the company at the same time
    |      affiliateBeneficiary.transfer(SafeMath.div(SafeMath.mul(address(this).balance, affiliatePercentage), getTotalFeePercentage()));
  > |      companyBeneficiary.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(554)

[33mWarning[0m for UnhandledException in contract 'Affiliate':
    |  function payout() public {
    |      // Payout both the affiliate and the company at the same time
  > |      affiliateBeneficiary.transfer(SafeMath.div(SafeMath.mul(address(this).balance, affiliatePercentage), getTotalFeePercentage()));
    |      companyBeneficiary.transfer(address(this).balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(553)

[33mWarning[0m for UnhandledException in contract 'Affiliate':
    |      // Payout both the affiliate and the company at the same time
    |      affiliateBeneficiary.transfer(SafeMath.div(SafeMath.mul(address(this).balance, affiliatePercentage), getTotalFeePercentage()));
  > |      companyBeneficiary.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(554)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Affiliate':
    |  function payout() public {
    |      // Payout both the affiliate and the company at the same time
  > |      affiliateBeneficiary.transfer(SafeMath.div(SafeMath.mul(address(this).balance, affiliatePercentage), getTotalFeePercentage()));
    |      companyBeneficiary.transfer(address(this).balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(553)

[31mViolation[0m for UnrestrictedWrite in contract 'Affiliate':
    |  function init(address _companyBeneficiary, uint256 _companyPercentage, address _affiliateBeneficiary, uint256 _affiliatePercentage) public {
    |      require(companyBeneficiary == 0x0 && affiliateBeneficiary == 0x0);
  > |      companyBeneficiary = _companyBeneficiary;
    |      companyPercentage = _companyPercentage;
    |      affiliateBeneficiary = _affiliateBeneficiary;
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(545)

[31mViolation[0m for UnrestrictedWrite in contract 'Affiliate':
    |      require(companyBeneficiary == 0x0 && affiliateBeneficiary == 0x0);
    |      companyBeneficiary = _companyBeneficiary;
  > |      companyPercentage = _companyPercentage;
    |      affiliateBeneficiary = _affiliateBeneficiary;
    |      affiliatePercentage = _affiliatePercentage;
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(546)

[31mViolation[0m for UnrestrictedWrite in contract 'Affiliate':
    |      companyBeneficiary = _companyBeneficiary;
    |      companyPercentage = _companyPercentage;
  > |      affiliateBeneficiary = _affiliateBeneficiary;
    |      affiliatePercentage = _affiliatePercentage;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(547)

[31mViolation[0m for UnrestrictedWrite in contract 'Affiliate':
    |      companyPercentage = _companyPercentage;
    |      affiliateBeneficiary = _affiliateBeneficiary;
  > |      affiliatePercentage = _affiliatePercentage;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(548)

[33mWarning[0m for LockedEther in contract 'AffiliateRegistry':
    |}
    |
  > |contract AffiliateRegistry is Ownable {
    |
    |  address target;
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(566)

[33mWarning[0m for UnhandledException in contract 'AffiliateRegistry':
    |  function registerAffiliate(address affiliateBeneficiary, uint256 affiliatePercentage) external {
    |      Affiliate newAffiliate = Affiliate(createClone());
  > |      newAffiliate.init(companyBeneficiary, companyPercentage, affiliateBeneficiary, affiliatePercentage);
    |      affiliateContracts[address(newAffiliate)] = true;
    |      emit AffiliateRegistered(address(newAffiliate));
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(584)

[33mWarning[0m for UnhandledException in contract 'AffiliateRegistry':
    |  function overrideRegisterAffiliate(address _companyBeneficiary, uint256 _companyPercentage, address affiliateBeneficiary, uint256 affiliatePercentage) external onlyOwner {
    |      Affiliate newAffiliate = Affiliate(createClone());
  > |      newAffiliate.init(_companyBeneficiary, _companyPercentage, affiliateBeneficiary, affiliatePercentage);
    |      affiliateContracts[address(newAffiliate)] = true;
    |      emit AffiliateRegistered(address(newAffiliate));
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(591)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AffiliateRegistry':
    |  function registerAffiliate(address affiliateBeneficiary, uint256 affiliatePercentage) external {
    |      Affiliate newAffiliate = Affiliate(createClone());
  > |      newAffiliate.init(companyBeneficiary, companyPercentage, affiliateBeneficiary, affiliatePercentage);
    |      affiliateContracts[address(newAffiliate)] = true;
    |      emit AffiliateRegistered(address(newAffiliate));
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(584)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AffiliateRegistry':
    |  function overrideRegisterAffiliate(address _companyBeneficiary, uint256 _companyPercentage, address affiliateBeneficiary, uint256 affiliatePercentage) external onlyOwner {
    |      Affiliate newAffiliate = Affiliate(createClone());
  > |      newAffiliate.init(_companyBeneficiary, _companyPercentage, affiliateBeneficiary, affiliatePercentage);
    |      affiliateContracts[address(newAffiliate)] = true;
    |      emit AffiliateRegistered(address(newAffiliate));
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(591)

[33mWarning[0m for UnrestrictedWrite in contract 'AffiliateRegistry':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'AffiliateRegistry':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'AffiliateRegistry':
    |      Affiliate newAffiliate = Affiliate(createClone());
    |      newAffiliate.init(companyBeneficiary, companyPercentage, affiliateBeneficiary, affiliatePercentage);
  > |      affiliateContracts[address(newAffiliate)] = true;
    |      emit AffiliateRegistered(address(newAffiliate));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(585)

[33mWarning[0m for UnrestrictedWrite in contract 'AffiliateRegistry':
    |      Affiliate newAffiliate = Affiliate(createClone());
    |      newAffiliate.init(_companyBeneficiary, _companyPercentage, affiliateBeneficiary, affiliatePercentage);
  > |      affiliateContracts[address(newAffiliate)] = true;
    |      emit AffiliateRegistered(address(newAffiliate));
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(592)

[33mWarning[0m for UnrestrictedWrite in contract 'AffiliateRegistry':
    |
    |  function deleteAffiliate(address _affiliateAddress) public onlyOwner {
  > |      affiliateContracts[_affiliateAddress] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(597)

[33mWarning[0m for UnrestrictedWrite in contract 'AffiliateRegistry':
    |
    |  function updateCompanyInfo(address newCompanyBeneficiary, uint256 newCompanyPercentage) public onlyOwner {
  > |      companyBeneficiary = newCompanyBeneficiary;
    |      companyPercentage = newCompanyPercentage;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(616)

[33mWarning[0m for UnrestrictedWrite in contract 'AffiliateRegistry':
    |  function updateCompanyInfo(address newCompanyBeneficiary, uint256 newCompanyPercentage) public onlyOwner {
    |      companyBeneficiary = newCompanyBeneficiary;
  > |      companyPercentage = newCompanyPercentage;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(617)

[33mWarning[0m for LockedEther in contract 'ERC20SafeTransfer':
    |}
    |
  > |library ERC20SafeTransfer {
    |    function safeTransfer(address _tokenAddress, address _to, uint256 _value) internal returns (bool success) {
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(66)

[33mWarning[0m for LockedEther in contract 'ErrorReporter':
    |}
    |
  > |contract ErrorReporter {
    |    function revertTx(string reason) public pure {
    |        revert(reason);
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(529)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
  > |pragma solidity 0.4.25;
    |pragma experimental ABIEncoderV2;
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
    |  event OwnershipTransferred(
    |    address indexed previousOwner,
  > |    address indexed newOwner
    |  );
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
    |  }
    |
  > |  /**
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   * @notice Renouncing to ownership will leave the contract without an owner.
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
    |   */
    |  function _transferOwnership(address _newOwner) internal {
  > |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
    |    owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
    |    function safeTransfer(address _tokenAddress, address _to, uint256 _value) internal returns (bool success) {
    |
  > |        require(_tokenAddress.call(bytes4(keccak256("transfer(address,uint256)")), _to, _value));
    |
    |        return fetchReturnData();
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
    |        require(_tokenAddress.call(bytes4(keccak256("transfer(address,uint256)")), _to, _value));
    |
  > |        return fetchReturnData();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
    |    }
    |
  > |    function safeTransferFrom(address _tokenAddress, address _from, address _to, uint256 _value) internal returns (bool success) {
    |
    |        require(_tokenAddress.call(bytes4(keccak256("transferFrom(address,address,uint256)")), _from, _to, _value));
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'ErrorReporter':
    |    }
    |
  > |    function safeApprove(address _tokenAddress, address _spender, uint256 _value) internal returns (bool success) {
    |
    |        require(_tokenAddress.call(bytes4(keccak256("approve(address,uint256)")), _spender, _value));
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(81)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(9)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(62)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Paused();
    |  event Unpaused();
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    _paused = true;
    |    emit Paused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    _paused = false;
    |    emit Unpaused();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(318)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(327)

[31mViolation[0m for LockedEther in contract 'TokenTransferProxy':
    |/// @title TokenTransferProxy - Transfers tokens on behalf of contracts that have been approved via decentralized governance.
    |/// @author Amir Bandeali - <amir@0xProject.com>, Will Warren - <will@0xProject.com>
  > |contract TokenTransferProxy is Ownable {
    |
    |    /// @dev Only authorized addresses can invoke functions with this modifier.
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(181)

[33mWarning[0m for UnhandledException in contract 'TokenTransferProxy':
    |    function safeTransferFrom(address _tokenAddress, address _from, address _to, uint256 _value) internal returns (bool success) {
    |
  > |        require(_tokenAddress.call(bytes4(keccak256("transferFrom(address,address,uint256)")), _from, _to, _value));
    |
    |        return fetchReturnData();
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(76)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTransferProxy':
    |    function safeTransferFrom(address _tokenAddress, address _from, address _to, uint256 _value) internal returns (bool success) {
    |
  > |        require(_tokenAddress.call(bytes4(keccak256("transferFrom(address,address,uint256)")), _from, _to, _value));
    |
    |        return fetchReturnData();
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |/// @title TokenTransferProxy - Transfers tokens on behalf of contracts that have been approved via decentralized governance.
    |/// @author Amir Bandeali - <amir@0xProject.com>, Will Warren - <will@0xProject.com>
  > |contract TokenTransferProxy is Ownable {
    |
    |    /// @dev Only authorized addresses can invoke functions with this modifier.
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |        for (uint i = 0; i < authorities.length; i++) {
    |            if (authorities[i] == target) {
  > |                authorities[i] = authorities[authorities.length - 1];
    |                authorities.length -= 1;
    |                break;
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |pragma solidity 0.4.25;
  > |pragma experimental ABIEncoderV2;
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |        targetNotAuthorized(target)
    |    {
  > |        authorized[target] = true;
    |        authorities.push(target);
    |        emit LogAuthorizedAddressAdded(target, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |    {
    |        authorized[target] = true;
  > |        authorities.push(target);
    |        emit LogAuthorizedAddressAdded(target, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |        targetAuthorized(target)
    |    {
  > |        delete authorized[target];
    |        for (uint i = 0; i < authorities.length; i++) {
    |            if (authorities[i] == target) {
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(228)

[33mWarning[0m for LockedEther in contract 'TotleControl':
    |/// @dev Defines a modifier which should be used when only the totle contract should
    |/// able able to call a function
  > |contract TotleControl is Ownable {
    |    mapping(address => bool) public authorizedPrimaries;
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(625)

[33mWarning[0m for UnrestrictedWrite in contract 'TotleControl':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'TotleControl':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TotleControl':
    |        address _totlePrimary
    |    ) external onlyOwner {
  > |        authorizedPrimaries[_totlePrimary] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(647)

[33mWarning[0m for UnrestrictedWrite in contract 'TotleControl':
    |        address _totlePrimary
    |    ) external onlyOwner {
  > |        authorizedPrimaries[_totlePrimary] = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(653)

[33mWarning[0m for LockedEther in contract 'Utils':
    |*/
    |
  > |library Utils {
    |
    |    uint256 constant internal PRECISION = (10**18);
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(391)

[33mWarning[0m for DAOConstantGas in contract 'Withdrawable':
    |    /// @param _amount The amount of ether that the caller wants to withdraw
    |    function withdrawETH(uint256 _amount) external onlyOwner {
  > |        owner.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(122)

[33mWarning[0m for LockedEther in contract 'Withdrawable':
    |
    |/// @title A contract which allows its owner to withdraw any ether which is contained inside
  > |contract Withdrawable is Ownable {
    |
    |    /// @notice Withdraw ether contained in this contract and send it back to owner
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(107)

[33mWarning[0m for TODAmount in contract 'Withdrawable':
    |    /// @param _amount The amount of ether that the caller wants to withdraw
    |    function withdrawETH(uint256 _amount) external onlyOwner {
  > |        owner.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(122)

[31mViolation[0m for TODReceiver in contract 'Withdrawable':
    |    /// @param _amount The amount of ether that the caller wants to withdraw
    |    function withdrawETH(uint256 _amount) external onlyOwner {
  > |        owner.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(122)

[33mWarning[0m for UnhandledException in contract 'Withdrawable':
    |    function safeTransfer(address _tokenAddress, address _to, uint256 _value) internal returns (bool success) {
    |
  > |        require(_tokenAddress.call(bytes4(keccak256("transfer(address,uint256)")), _to, _value));
    |
    |        return fetchReturnData();
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(69)

[33mWarning[0m for UnhandledException in contract 'Withdrawable':
    |    /// @param _amount The amount of ether that the caller wants to withdraw
    |    function withdrawETH(uint256 _amount) external onlyOwner {
  > |        owner.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawable':
    |    function safeTransfer(address _tokenAddress, address _to, uint256 _value) internal returns (bool success) {
    |
  > |        require(_tokenAddress.call(bytes4(keccak256("transfer(address,uint256)")), _to, _value));
    |
    |        return fetchReturnData();
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawable':
    |    /// @param _amount The amount of ether that the caller wants to withdraw
    |    function withdrawETH(uint256 _amount) external onlyOwner {
  > |        owner.transfer(_amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x68a93cb6c0f92e56fa19cd78d4d670f3ea3d5020.sol(62)


