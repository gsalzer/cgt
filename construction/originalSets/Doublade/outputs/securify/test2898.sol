Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:AllowanceSheet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:BalanceSheet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:BurnableTokenWithBounds
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:CompliantDepositTokenWithHook
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:DelegateERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:GasRefundToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:HasOwner
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:ModularBasicToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:ModularBurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:ModularStandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:ProxyStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:ReclaimerToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:Registry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:RegistryClone
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:SorryTrueUSD
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:TrueCoinReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol:TrueUSD
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AllowanceSheet':
    |
    |// A wrapper around the allowanceOf mapping.
  > |contract AllowanceSheet is Claimable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'AllowanceSheet':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'AllowanceSheet':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'AllowanceSheet':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'AllowanceSheet':
    |
    |    function addAllowance(address _tokenHolder, address _spender, uint256 _value) public onlyOwner {
  > |        allowanceOf[_tokenHolder][_spender] = allowanceOf[_tokenHolder][_spender].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'AllowanceSheet':
    |
    |    function subAllowance(address _tokenHolder, address _spender, uint256 _value) public onlyOwner {
  > |        allowanceOf[_tokenHolder][_spender] = allowanceOf[_tokenHolder][_spender].sub(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'AllowanceSheet':
    |
    |    function setAllowance(address _tokenHolder, address _spender, uint256 _value) public onlyOwner {
  > |        allowanceOf[_tokenHolder][_spender] = _value;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(367)

[33mWarning[0m for LockedEther in contract 'BalanceSheet':
    |
    |// A wrapper around the balanceOf mapping.
  > |contract BalanceSheet is Claimable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'BalanceSheet':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'BalanceSheet':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'BalanceSheet':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'BalanceSheet':
    |
    |    function addBalance(address _addr, uint256 _value) public onlyOwner {
  > |        balanceOf[_addr] = balanceOf[_addr].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'BalanceSheet':
    |
    |    function subBalance(address _addr, uint256 _value) public onlyOwner {
  > |        balanceOf[_addr] = balanceOf[_addr].sub(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'BalanceSheet':
    |
    |    function setBalance(address _addr, uint256 _value) public onlyOwner {
  > |        balanceOf[_addr] = _value;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(346)

[33mWarning[0m for LockedEther in contract 'BurnableTokenWithBounds':
    | * and will send them back the equivalent amount of money (rounded down to the nearest cent).
    | */
  > |contract BurnableTokenWithBounds is ModularBurnableToken {
    |
    |    event SetBurnBounds(uint256 newMin, uint256 newMax);
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(692)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableTokenWithBounds':
    |    function _subBalance(address _who, uint256 _value) internal returns (uint256 result) {
    |        result = _balanceOf[_who].sub(_value);
  > |        _balanceOf[_who] = result;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(548)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableTokenWithBounds':
    |
    |    function _addAllowance(address _who, address _spender, uint256 _value) internal {
  > |        _allowance[_who][_spender] = _allowance[_who][_spender].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(646)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableTokenWithBounds':
    |
    |    function _setAllowance(address _who, address _spender, uint256 _value) internal {
  > |        _allowance[_who][_spender] = _value;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableTokenWithBounds':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        _subBalance(_from, _value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(_from, _value);
    |        emit Transfer(_from, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(679)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableTokenWithBounds':
    |    */
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableTokenWithBounds':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableTokenWithBounds':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableTokenWithBounds':
    |    function setBurnBounds(uint256 _min, uint256 _max) external onlyOwner {
    |        require(_min <= _max, "min > max");
  > |        burnMin = _min;
    |        burnMax = _max;
    |        emit SetBurnBounds(_min, _max);
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(710)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableTokenWithBounds':
    |        require(_min <= _max, "min > max");
    |        burnMin = _min;
  > |        burnMax = _max;
    |        emit SetBurnBounds(_min, _max);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(711)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(252)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(267)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(277)

[33mWarning[0m for LockedEther in contract 'GasRefundToken':
    |of the transaction.
    |*/
  > |contract GasRefundToken is ProxyStorage {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(724)

[31mViolation[0m for MissingInputValidation in contract 'GasRefundToken':
    |    }
    |
  > |    function gasRefundPool(uint256 _index) public view returns (uint256 gasPrice) {
    |        assembly {
    |            gasPrice := sload(add(0x100000, _index))
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(868)

[31mViolation[0m for MissingInputValidation in contract 'GasRefundToken':
    |    bytes32 constant CAN_SET_FUTURE_REFUND_MIN_GAS_PRICE = "canSetFutureRefundMinGasPrice";
    |
  > |    function setMinimumGasPriceForFutureRefunds(uint256 _minimumGasPriceForFutureRefunds) public {
    |        require(registry.hasAttribute(msg.sender, CAN_SET_FUTURE_REFUND_MIN_GAS_PRICE));
    |        minimumGasPriceForFutureRefunds = _minimumGasPriceForFutureRefunds;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(876)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    | */
    |contract ProxyStorage {
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    |contract ProxyStorage {
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    bool initialized;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    |    address private globalPause_Deprecated;
    |
  > |    uint256 public burnMin = 0;
    |    uint256 public burnMax = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(392)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    |
    |    uint256 public burnMin = 0;
  > |    uint256 public burnMax = 0;
    |
    |    Registry public registry;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(393)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    |    uint256 public burnMax = 0;
    |
  > |    Registry public registry;
    |
    |    string name_Deprecated;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(395)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    |    uint[] gasRefundPool_Deprecated;
    |    uint256 private redemptionAddressCount_Deprecated;
  > |    uint256 public minimumGasPriceForFutureRefunds;
    |
    |    mapping (address => uint256) _balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(402)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    |    */
    |
  > |    function sponsorGas2() external {
    |        /**
    |        Deploy (9 bytes)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(731)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    |    }
    |
  > |    function sponsorGas() external {
    |        uint256 refundPrice = minimumGasPriceForFutureRefunds;
    |        require(refundPrice > 0);
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(787)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    |    }
    |
  > |    function minimumGasPriceForRefund() public view returns (uint256 result) {
    |        assembly {
    |            let offset := sload(0xfffff)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(815)

[33mWarning[0m for MissingInputValidation in contract 'GasRefundToken':
    |    *@dev Return the remaining sponsored gas slots
    |    */
  > |    function remainingGasRefundPool() public view returns (uint length) {
    |        assembly {
    |            length := sload(0xfffff)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(862)

[33mWarning[0m for UnhandledException in contract 'GasRefundToken':
    |
    |    function setMinimumGasPriceForFutureRefunds(uint256 _minimumGasPriceForFutureRefunds) public {
  > |        require(registry.hasAttribute(msg.sender, CAN_SET_FUTURE_REFUND_MIN_GAS_PRICE));
    |        minimumGasPriceForFutureRefunds = _minimumGasPriceForFutureRefunds;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(877)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GasRefundToken':
    |
    |    function setMinimumGasPriceForFutureRefunds(uint256 _minimumGasPriceForFutureRefunds) public {
  > |        require(registry.hasAttribute(msg.sender, CAN_SET_FUTURE_REFUND_MIN_GAS_PRICE));
    |        minimumGasPriceForFutureRefunds = _minimumGasPriceForFutureRefunds;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(877)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            let offset := sload(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
    |            let location := sub(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, offset)
  > |            sstore(location, sheep)
    |            sheep := create(0, 0, 0x28)
    |            sstore(sub(location, 1), sheep)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(761)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(location, sheep)
    |            sheep := create(0, 0, 0x28)
  > |            sstore(sub(location, 1), sheep)
    |            sheep := create(0, 0, 0x28)
    |            sstore(sub(location, 2), sheep)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(763)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(sub(location, 1), sheep)
    |            sheep := create(0, 0, 0x28)
  > |            sstore(sub(location, 2), sheep)
    |            sstore(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, add(offset, 3))
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(765)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sheep := create(0, 0, 0x28)
    |            sstore(sub(location, 2), sheep)
  > |            sstore(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, add(offset, 3))
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(766)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            let offset := sload(0xfffff)
    |            let result := add(offset, 9)
  > |            sstore(0xfffff, result)
    |            let position := add(offset, 0x100000)
    |            sstore(position, refundPrice)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(793)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(0xfffff, result)
    |            let position := add(offset, 0x100000)
  > |            sstore(position, refundPrice)
    |            position := add(position, 1)
    |            sstore(position, refundPrice)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(795)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(position, refundPrice)
    |            position := add(position, 1)
  > |            sstore(position, refundPrice)
    |            position := add(position, 1)
    |            sstore(position, refundPrice)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(797)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(position, refundPrice)
    |            position := add(position, 1)
  > |            sstore(position, refundPrice)
    |            position := add(position, 1)
    |            sstore(position, refundPrice)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(799)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(position, refundPrice)
    |            position := add(position, 1)
  > |            sstore(position, refundPrice)
    |            position := add(position, 1)
    |            sstore(position, refundPrice)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(801)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(position, refundPrice)
    |            position := add(position, 1)
  > |            sstore(position, refundPrice)
    |            position := add(position, 1)
    |            sstore(position, refundPrice)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(803)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(position, refundPrice)
    |            position := add(position, 1)
  > |            sstore(position, refundPrice)
    |            position := add(position, 1)
    |            sstore(position, refundPrice)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(805)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(position, refundPrice)
    |            position := add(position, 1)
  > |            sstore(position, refundPrice)
    |            position := add(position, 1)
    |            sstore(position, refundPrice)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(807)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(position, refundPrice)
    |            position := add(position, 1)
  > |            sstore(position, refundPrice)
    |            position := add(position, 1)
    |            sstore(position, refundPrice)
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(809)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |            sstore(position, refundPrice)
    |            position := add(position, 1)
  > |            sstore(position, refundPrice)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(811)

[31mViolation[0m for UnrestrictedWrite in contract 'GasRefundToken':
    |    function setMinimumGasPriceForFutureRefunds(uint256 _minimumGasPriceForFutureRefunds) public {
    |        require(registry.hasAttribute(msg.sender, CAN_SET_FUTURE_REFUND_MIN_GAS_PRICE));
  > |        minimumGasPriceForFutureRefunds = _minimumGasPriceForFutureRefunds;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(878)

[33mWarning[0m for LockedEther in contract 'HasOwner':
    | ProxyStorage.
    | */
  > |contract HasOwner is ProxyStorage {
    |
    |    event OwnershipTransferred(
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(436)

[31mViolation[0m for MissingInputValidation in contract 'HasOwner':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        pendingOwner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(472)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    | */
    |contract ProxyStorage {
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    |contract ProxyStorage {
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    bool initialized;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    |    address private globalPause_Deprecated;
    |
  > |    uint256 public burnMin = 0;
    |    uint256 public burnMax = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(392)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    |
    |    uint256 public burnMin = 0;
  > |    uint256 public burnMax = 0;
    |
    |    Registry public registry;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(393)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    |    uint256 public burnMax = 0;
    |
  > |    Registry public registry;
    |
    |    string name_Deprecated;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(395)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    |    uint[] gasRefundPool_Deprecated;
    |    uint256 private redemptionAddressCount_Deprecated;
  > |    uint256 public minimumGasPriceForFutureRefunds;
    |
    |    mapping (address => uint256) _balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(402)

[33mWarning[0m for MissingInputValidation in contract 'HasOwner':
    |    * @dev Allows the pendingOwner address to finalize the transfer.
    |    */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'HasOwner':
    |    */
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'HasOwner':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'HasOwner':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(482)

[33mWarning[0m for LockedEther in contract 'ModularBasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract ModularBasicToken is HasOwner {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(521)

[31mViolation[0m for MissingInputValidation in contract 'ModularBasicToken':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        pendingOwner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(472)

[31mViolation[0m for MissingInputValidation in contract 'ModularBasicToken':
    |    }
    |
  > |    function balanceOf(address _who) public view returns (uint256) {
    |        return _getBalance(_who);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(533)

[33mWarning[0m for MissingInputValidation in contract 'ModularBasicToken':
    | */
    |contract ProxyStorage {
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'ModularBasicToken':
    |contract ProxyStorage {
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    bool initialized;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'ModularBasicToken':
    |    address private globalPause_Deprecated;
    |
  > |    uint256 public burnMin = 0;
    |    uint256 public burnMax = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(392)

[33mWarning[0m for MissingInputValidation in contract 'ModularBasicToken':
    |
    |    uint256 public burnMin = 0;
  > |    uint256 public burnMax = 0;
    |
    |    Registry public registry;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(393)

[33mWarning[0m for MissingInputValidation in contract 'ModularBasicToken':
    |    uint256 public burnMax = 0;
    |
  > |    Registry public registry;
    |
    |    string name_Deprecated;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(395)

[33mWarning[0m for MissingInputValidation in contract 'ModularBasicToken':
    |    uint[] gasRefundPool_Deprecated;
    |    uint256 private redemptionAddressCount_Deprecated;
  > |    uint256 public minimumGasPriceForFutureRefunds;
    |
    |    mapping (address => uint256) _balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(402)

[33mWarning[0m for MissingInputValidation in contract 'ModularBasicToken':
    |    * @dev Allows the pendingOwner address to finalize the transfer.
    |    */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(479)

[33mWarning[0m for MissingInputValidation in contract 'ModularBasicToken':
    |    * @dev total number of tokens in existence
    |    */
  > |    function totalSupply() public view returns (uint256) {
    |        return totalSupply_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(529)

[33mWarning[0m for MissingInputValidation in contract 'ModularBasicToken':
    |    }
    |
  > |    function _getBalance(address _who) internal view returns (uint256) {
    |        return _balanceOf[_who];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularBasicToken':
    |    */
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularBasicToken':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularBasicToken':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(482)

[33mWarning[0m for LockedEther in contract 'ModularBurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ModularBurnableToken is ModularStandardToken {
    |    event Burn(address indexed burner, uint256 value);
    |    event Mint(address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(666)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularBurnableToken':
    |    function _subBalance(address _who, uint256 _value) internal returns (uint256 result) {
    |        result = _balanceOf[_who].sub(_value);
  > |        _balanceOf[_who] = result;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(548)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularBurnableToken':
    |
    |    function _addAllowance(address _who, address _spender, uint256 _value) internal {
  > |        _allowance[_who][_spender] = _allowance[_who][_spender].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(646)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularBurnableToken':
    |
    |    function _setAllowance(address _who, address _spender, uint256 _value) internal {
  > |        _allowance[_who][_spender] = _value;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularBurnableToken':
    |    */
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularBurnableToken':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularBurnableToken':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(482)

[33mWarning[0m for LockedEther in contract 'ModularStandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ModularStandardToken is ModularBasicToken {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(565)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularStandardToken':
    |
    |    function _addAllowance(address _who, address _spender, uint256 _value) internal {
  > |        _allowance[_who][_spender] = _allowance[_who][_spender].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(646)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularStandardToken':
    |
    |    function _setAllowance(address _who, address _spender, uint256 _value) internal {
  > |        _allowance[_who][_spender] = _value;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularStandardToken':
    |    */
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularStandardToken':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'ModularStandardToken':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(482)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(240)

[33mWarning[0m for LockedEther in contract 'ProxyStorage':
    |from this list
    | */
  > |contract ProxyStorage {
    |    address public owner;
    |    address public pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(378)

[33mWarning[0m for MissingInputValidation in contract 'ProxyStorage':
    | */
    |contract ProxyStorage {
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'ProxyStorage':
    |contract ProxyStorage {
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    bool initialized;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'ProxyStorage':
    |    address private globalPause_Deprecated;
    |
  > |    uint256 public burnMin = 0;
    |    uint256 public burnMax = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(392)

[33mWarning[0m for MissingInputValidation in contract 'ProxyStorage':
    |
    |    uint256 public burnMin = 0;
  > |    uint256 public burnMax = 0;
    |
    |    Registry public registry;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(393)

[33mWarning[0m for MissingInputValidation in contract 'ProxyStorage':
    |    uint256 public burnMax = 0;
    |
  > |    Registry public registry;
    |
    |    string name_Deprecated;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(395)

[33mWarning[0m for MissingInputValidation in contract 'ProxyStorage':
    |    uint[] gasRefundPool_Deprecated;
    |    uint256 private redemptionAddressCount_Deprecated;
  > |    uint256 public minimumGasPriceForFutureRefunds;
    |
    |    mapping (address => uint256) _balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(402)

[33mWarning[0m for DAOConstantGas in contract 'ReclaimerToken':
    |    */
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(493)

[33mWarning[0m for LockedEther in contract 'ReclaimerToken':
    |// File: contracts/ReclaimerToken.sol
    |
  > |contract ReclaimerToken is HasOwner {
    |    /**  
    |    *@dev send all eth balance in the contract to another address
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(488)

[31mViolation[0m for MissingInputValidation in contract 'ReclaimerToken':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        pendingOwner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(472)

[31mViolation[0m for MissingInputValidation in contract 'ReclaimerToken':
    |    *@dev send all eth balance in the contract to another address
    |    */
  > |    function reclaimEther(address _to) external onlyOwner {
    |        _to.transfer(address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(492)

[31mViolation[0m for MissingInputValidation in contract 'ReclaimerToken':
    |    in the contract to another address
    |    */
  > |    function reclaimToken(ERC20 token, address _to) external onlyOwner {
    |        uint256 balance = token.balanceOf(this);
    |        token.transfer(_to, balance);
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(500)

[33mWarning[0m for MissingInputValidation in contract 'ReclaimerToken':
    | */
    |contract ProxyStorage {
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(379)

[33mWarning[0m for MissingInputValidation in contract 'ReclaimerToken':
    |contract ProxyStorage {
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    bool initialized;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'ReclaimerToken':
    |    address private globalPause_Deprecated;
    |
  > |    uint256 public burnMin = 0;
    |    uint256 public burnMax = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(392)

[33mWarning[0m for MissingInputValidation in contract 'ReclaimerToken':
    |
    |    uint256 public burnMin = 0;
  > |    uint256 public burnMax = 0;
    |
    |    Registry public registry;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(393)

[33mWarning[0m for MissingInputValidation in contract 'ReclaimerToken':
    |    uint256 public burnMax = 0;
    |
  > |    Registry public registry;
    |
    |    string name_Deprecated;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(395)

[33mWarning[0m for MissingInputValidation in contract 'ReclaimerToken':
    |    uint[] gasRefundPool_Deprecated;
    |    uint256 private redemptionAddressCount_Deprecated;
  > |    uint256 public minimumGasPriceForFutureRefunds;
    |
    |    mapping (address => uint256) _balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(402)

[33mWarning[0m for MissingInputValidation in contract 'ReclaimerToken':
    |    * @dev Allows the pendingOwner address to finalize the transfer.
    |    */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(479)

[33mWarning[0m for MissingInputValidation in contract 'ReclaimerToken':
    |    *@dev allows owner of the contract to gain ownership of any contract that the contract currently owns
    |    */
  > |    function reclaimContract(Ownable _ownable) external onlyOwner {
    |        _ownable.transferOwnership(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(508)

[31mViolation[0m for TODAmount in contract 'ReclaimerToken':
    |    */
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(493)

[33mWarning[0m for TODReceiver in contract 'ReclaimerToken':
    |    */
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(493)

[33mWarning[0m for UnhandledException in contract 'ReclaimerToken':
    |    */
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(493)

[33mWarning[0m for UnhandledException in contract 'ReclaimerToken':
    |    */
    |    function reclaimToken(ERC20 token, address _to) external onlyOwner {
  > |        uint256 balance = token.balanceOf(this);
    |        token.transfer(_to, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(501)

[33mWarning[0m for UnhandledException in contract 'ReclaimerToken':
    |    function reclaimToken(ERC20 token, address _to) external onlyOwner {
    |        uint256 balance = token.balanceOf(this);
  > |        token.transfer(_to, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(502)

[33mWarning[0m for UnhandledException in contract 'ReclaimerToken':
    |    */
    |    function reclaimContract(Ownable _ownable) external onlyOwner {
  > |        _ownable.transferOwnership(owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(509)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReclaimerToken':
    |    */
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(493)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReclaimerToken':
    |    */
    |    function reclaimToken(ERC20 token, address _to) external onlyOwner {
  > |        uint256 balance = token.balanceOf(this);
    |        token.transfer(_to, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(501)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReclaimerToken':
    |    function reclaimToken(ERC20 token, address _to) external onlyOwner {
    |        uint256 balance = token.balanceOf(this);
  > |        token.transfer(_to, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(502)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReclaimerToken':
    |    */
    |    function reclaimContract(Ownable _ownable) external onlyOwner {
  > |        _ownable.transferOwnership(owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'ReclaimerToken':
    |    */
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'ReclaimerToken':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'ReclaimerToken':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(482)

[33mWarning[0m for DAOConstantGas in contract 'Registry':
    |
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(161)

[33mWarning[0m for LockedEther in contract 'Registry':
    |}
    |
  > |contract Registry {
    |    struct AttributeData {
    |        uint256 value;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(42)

[31mViolation[0m for TODAmount in contract 'Registry':
    |
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(161)

[33mWarning[0m for TODReceiver in contract 'Registry':
    |
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(161)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |        uint256 index = targets.length;
    |        while (index --> 0) {
  > |            targets[index].syncAttributeValue(_who, _attribute, _value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(92)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |        uint256 index = targets.length;
    |        while (index --> 0) {
  > |            targets[index].syncAttributeValue(_who, _attribute, _value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(120)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |            for (uint256 i = _addresses.length; i --> 0; ) {
    |                address who = _addresses[i];
  > |                target.syncAttributeValue(who, _attribute, attributes[who][_attribute].value);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(155)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(161)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |
    |    function reclaimToken(ERC20 token, address _to) external onlyOwner {
  > |        uint256 balance = token.balanceOf(this);
    |        token.transfer(_to, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(165)

[33mWarning[0m for UnhandledException in contract 'Registry':
    |    function reclaimToken(ERC20 token, address _to) external onlyOwner {
    |        uint256 balance = token.balanceOf(this);
  > |        token.transfer(_to, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |        uint256 index = targets.length;
    |        while (index --> 0) {
  > |            targets[index].syncAttributeValue(_who, _attribute, _value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(92)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |        uint256 index = targets.length;
    |        while (index --> 0) {
  > |            targets[index].syncAttributeValue(_who, _attribute, _value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |            for (uint256 i = _addresses.length; i --> 0; ) {
    |                address who = _addresses[i];
  > |                target.syncAttributeValue(who, _attribute, attributes[who][_attribute].value);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |
    |    function reclaimEther(address _to) external onlyOwner {
  > |        _to.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |
    |    function reclaimToken(ERC20 token, address _to) external onlyOwner {
  > |        uint256 balance = token.balanceOf(this);
    |        token.transfer(_to, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Registry':
    |    function reclaimToken(ERC20 token, address _to) external onlyOwner {
    |        uint256 balance = token.balanceOf(this);
  > |        token.transfer(_to, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'Registry':
    |}
    |
  > |contract Registry {
    |    struct AttributeData {
    |        uint256 value;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |    function setAttribute(address _who, bytes32 _attribute, uint256 _value, bytes32 _notes) public {
    |        require(confirmWrite(_attribute, msg.sender));
  > |        attributes[_who][_attribute] = AttributeData(_value, _notes, msg.sender, block.timestamp);
    |        emit SetAttribute(_who, _attribute, _value, _notes, msg.sender);
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |    function setAttributeValue(address _who, bytes32 _attribute, uint256 _value) public {
    |        require(confirmWrite(_attribute, msg.sender));
  > |        attributes[_who][_attribute] = AttributeData(_value, "", msg.sender, block.timestamp);
    |        emit SetAttribute(_who, _attribute, _value, "", msg.sender);
    |        RegistryClone[] storage targets = subscribers[_attribute];
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |pragma solidity ^0.4.23;
    |
  > |// File: contracts/TrueCoinReceiver.sol
    |
    |contract TrueCoinReceiver {
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |}
    |
  > |contract Registry {
    |    struct AttributeData {
    |        uint256 value;
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |
    |    function subscribe(bytes32 _attribute, RegistryClone _syncer) external onlyOwner {
  > |        subscribers[_attribute].push(_syncer);
    |        emit StartSubscription(_attribute, _syncer);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |        require(_index < length);
    |        emit StopSubscription(_attribute, subscribers[_attribute][_index]);
  > |        subscribers[_attribute][_index] = subscribers[_attribute][length - 1];
    |        subscribers[_attribute].length = length - 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |    */
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Registry':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(199)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xbe9faf3015fb9efced0454450cbe2ead4dc41ca6.sol(287)


