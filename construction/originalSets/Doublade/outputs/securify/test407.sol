Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:BancorConverter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:BancorConverterExtensions
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:BancorFormula
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:BancorGasPriceLimit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:BancorPriceFloor
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:BancorQuickConverter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:CrowdsaleController
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:EtherToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:IBancorConverterExtensions
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:IBancorFormula
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:IBancorGasPriceLimit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:IBancorQuickConverter
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:IEtherToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:ITokenConverter
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:Managed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:SmartToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:SmartTokenController
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BancorConverterExtensions':
    |}
    |
  > |contract BancorConverterExtensions is IBancorConverterExtensions, TokenHolder {
    |    IBancorFormula public formula;  // bancor calculation formula contract
    |    IBancorGasPriceLimit public gasPriceLimit; // bancor universal gas price limit contract
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(919)

[31mViolation[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |
    |contract BancorConverterExtensions is IBancorConverterExtensions, TokenHolder {
  > |    IBancorFormula public formula;  // bancor calculation formula contract
    |    IBancorGasPriceLimit public gasPriceLimit; // bancor universal gas price limit contract
    |    IBancorQuickConverter public quickConverter; // bancor quick converter contract
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(920)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |contract BancorConverterExtensions is IBancorConverterExtensions, TokenHolder {
    |    IBancorFormula public formula;  // bancor calculation formula contract
  > |    IBancorGasPriceLimit public gasPriceLimit; // bancor universal gas price limit contract
    |    IBancorQuickConverter public quickConverter; // bancor quick converter contract
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(921)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |    IBancorFormula public formula;  // bancor calculation formula contract
    |    IBancorGasPriceLimit public gasPriceLimit; // bancor universal gas price limit contract
  > |    IBancorQuickConverter public quickConverter; // bancor quick converter contract
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(922)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |        @param _formula    address of a bancor formula contract
    |    */
  > |    function setFormula(IBancorFormula _formula)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(947)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |        @param _gasPriceLimit   address of a bancor gas price limit contract
    |    */
  > |    function setGasPriceLimit(IBancorGasPriceLimit _gasPriceLimit)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(961)

[33mWarning[0m for MissingInputValidation in contract 'BancorConverterExtensions':
    |        @param _quickConverter  address of a bancor quick converter contract
    |    */
  > |    function setQuickConverter(IBancorQuickConverter _quickConverter)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(975)

[33mWarning[0m for UnhandledException in contract 'BancorConverterExtensions':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorConverterExtensions':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverterExtensions':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverterExtensions':
    |        notThis(_formula)
    |    {
  > |        formula = _formula;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(953)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverterExtensions':
    |        notThis(_gasPriceLimit)
    |    {
  > |        gasPriceLimit = _gasPriceLimit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(967)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverterExtensions':
    |        notThis(_quickConverter)
    |    {
  > |        quickConverter = _quickConverter;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(981)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverterExtensions':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorConverterExtensions':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for LockedEther in contract 'BancorFormula':
    |}
    |
  > |contract BancorFormula is IBancorFormula, Utils {
    |    string public version = '0.3';
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(985)

[33mWarning[0m for MissingInputValidation in contract 'BancorFormula':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'BancorFormula':
    |        @return product
    |    */
  > |    function safeMul(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x * _y;
    |        assert(_x == 0 || z / _x == _y);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'BancorFormula':
    |
    |contract BancorFormula is IBancorFormula, Utils {
  > |    string public version = '0.3';
    |
    |    uint256 private constant ONE = 1;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(986)

[33mWarning[0m for MissingInputValidation in contract 'BancorFormula':
    |            This functions assumes that "_expN < (1 << 256) / ln(MAX_NUM, 1)", otherwise the multiplication should be replaced with a "safeMul".
    |    */
  > |    function power(uint256 _baseN, uint256 _baseD, uint32 _expN, uint32 _expD) internal view returns (uint256, uint8) {
    |        uint256 lnBaseTimesExp = ln(_baseN, _baseD) * _expN / _expD;
    |        uint8 precision = findPositionInMaxExpArray(lnBaseTimesExp);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1235)

[33mWarning[0m for MissingInputValidation in contract 'BancorFormula':
    |        This functions assumes that the numerator is larger than or equal to the denominator, because the output would be negative otherwise.
    |    */
  > |    function ln(uint256 _numerator, uint256 _denominator) internal pure returns (uint256) {
    |        assert(_numerator <= MAX_NUM);
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1248)

[33mWarning[0m for MissingInputValidation in contract 'BancorFormula':
    |        Compute the largest integer smaller than or equal to the binary logarithm of the input.
    |    */
  > |    function floorLog2(uint256 _n) internal pure returns (uint8) {
    |        uint8 res = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1278)

[33mWarning[0m for MissingInputValidation in contract 'BancorFormula':
    |        - This function finds the highest position of [a value in "maxExpArray" larger than or equal to "x"]
    |    */
  > |    function findPositionInMaxExpArray(uint256 _x) internal view returns (uint8) {
    |        uint8 lo = MIN_PRECISION;
    |        uint8 hi = MAX_PRECISION;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1306)

[33mWarning[0m for MissingInputValidation in contract 'BancorFormula':
    |        The maximum permitted value for "x" is therefore given by "maxExpArray[precision] >> (MAX_PRECISION - precision)".
    |    */
  > |    function fixedExp(uint256 _x, uint8 _precision) internal pure returns (uint256) {
    |        uint256 xi = _x;
    |        uint256 res = 0;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1334)

[33mWarning[0m for LockedEther in contract 'BancorGasPriceLimit':
    |}
    |
  > |contract BancorGasPriceLimit is IBancorGasPriceLimit, Owned, Utils {
    |    uint256 public gasPrice = 0 wei;    // maximum gas price for bancor transactions
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1407)

[33mWarning[0m for MissingInputValidation in contract 'BancorGasPriceLimit':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'BancorGasPriceLimit':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'BancorGasPriceLimit':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'BancorGasPriceLimit':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'BancorGasPriceLimit':
    |
    |contract BancorGasPriceLimit is IBancorGasPriceLimit, Owned, Utils {
  > |    uint256 public gasPrice = 0 wei;    // maximum gas price for bancor transactions
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1408)

[33mWarning[0m for MissingInputValidation in contract 'BancorGasPriceLimit':
    |        @param _gasPrice    new gas price limit
    |    */
  > |    function setGasPrice(uint256 _gasPrice)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1427)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorGasPriceLimit':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorGasPriceLimit':
    |        greaterThanZero(_gasPrice)
    |    {
  > |        gasPrice = _gasPrice;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1432)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorGasPriceLimit':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorGasPriceLimit':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for DAOConstantGas in contract 'BancorPriceFloor':
    |        assert(token.transferFrom(msg.sender, this, allowance)); // transfer all tokens from the sender to the contract
    |        uint256 etherValue = safeMul(allowance, TOKEN_PRICE_N) / TOKEN_PRICE_D; // calculate ETH value of the tokens
  > |        msg.sender.transfer(etherValue); // send the ETH amount to the seller
    |        return etherValue;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1465)

[33mWarning[0m for DAOConstantGas in contract 'BancorPriceFloor':
    |    */
    |    function withdraw(uint256 _amount) public ownerOnly {
  > |        msg.sender.transfer(_amount); // send the amount
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1475)

[33mWarning[0m for LockedEther in contract 'BancorPriceFloor':
    |}
    |
  > |contract BancorPriceFloor is Owned, TokenHolder {
    |    uint256 public constant TOKEN_PRICE_N = 1;      // crowdsale price in wei (numerator)
    |    uint256 public constant TOKEN_PRICE_D = 100;    // crowdsale price in wei (denominator)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1436)

[31mViolation[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |        @param _amount  amount of ETH to withdraw
    |    */
  > |    function withdraw(uint256 _amount) public ownerOnly {
    |        msg.sender.transfer(_amount); // send the amount
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1474)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |        @return product
    |    */
  > |    function safeMul(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x * _y;
    |        assert(_x == 0 || z / _x == _y);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |
    |contract BancorPriceFloor is Owned, TokenHolder {
  > |    uint256 public constant TOKEN_PRICE_N = 1;      // crowdsale price in wei (numerator)
    |    uint256 public constant TOKEN_PRICE_D = 100;    // crowdsale price in wei (denominator)
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1437)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |contract BancorPriceFloor is Owned, TokenHolder {
    |    uint256 public constant TOKEN_PRICE_N = 1;      // crowdsale price in wei (numerator)
  > |    uint256 public constant TOKEN_PRICE_D = 100;    // crowdsale price in wei (denominator)
    |
    |    string public version = '0.1';
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1438)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |    uint256 public constant TOKEN_PRICE_D = 100;    // crowdsale price in wei (denominator)
    |
  > |    string public version = '0.1';
    |    ISmartToken public token; // smart token the contract allows selling
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1440)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |
    |    string public version = '0.1';
  > |    ISmartToken public token; // smart token the contract allows selling
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1441)

[33mWarning[0m for MissingInputValidation in contract 'BancorPriceFloor':
    |        @return ETH sent in return
    |    */
  > |    function sell() public returns (uint256 amount) {
    |        uint256 allowance = token.allowance(msg.sender, this); // get the full allowance amount
    |        assert(token.transferFrom(msg.sender, this, allowance)); // transfer all tokens from the sender to the contract
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1461)

[33mWarning[0m for TODAmount in contract 'BancorPriceFloor':
    |    */
    |    function withdraw(uint256 _amount) public ownerOnly {
  > |        msg.sender.transfer(_amount); // send the amount
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1475)

[33mWarning[0m for TODReceiver in contract 'BancorPriceFloor':
    |        assert(token.transferFrom(msg.sender, this, allowance)); // transfer all tokens from the sender to the contract
    |        uint256 etherValue = safeMul(allowance, TOKEN_PRICE_N) / TOKEN_PRICE_D; // calculate ETH value of the tokens
  > |        msg.sender.transfer(etherValue); // send the ETH amount to the seller
    |        return etherValue;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1465)

[33mWarning[0m for TODReceiver in contract 'BancorPriceFloor':
    |    */
    |    function withdraw(uint256 _amount) public ownerOnly {
  > |        msg.sender.transfer(_amount); // send the amount
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1475)

[33mWarning[0m for UnhandledException in contract 'BancorPriceFloor':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnhandledException in contract 'BancorPriceFloor':
    |    */
    |    function sell() public returns (uint256 amount) {
  > |        uint256 allowance = token.allowance(msg.sender, this); // get the full allowance amount
    |        assert(token.transferFrom(msg.sender, this, allowance)); // transfer all tokens from the sender to the contract
    |        uint256 etherValue = safeMul(allowance, TOKEN_PRICE_N) / TOKEN_PRICE_D; // calculate ETH value of the tokens
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1462)

[33mWarning[0m for UnhandledException in contract 'BancorPriceFloor':
    |    function sell() public returns (uint256 amount) {
    |        uint256 allowance = token.allowance(msg.sender, this); // get the full allowance amount
  > |        assert(token.transferFrom(msg.sender, this, allowance)); // transfer all tokens from the sender to the contract
    |        uint256 etherValue = safeMul(allowance, TOKEN_PRICE_N) / TOKEN_PRICE_D; // calculate ETH value of the tokens
    |        msg.sender.transfer(etherValue); // send the ETH amount to the seller
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1463)

[33mWarning[0m for UnhandledException in contract 'BancorPriceFloor':
    |        assert(token.transferFrom(msg.sender, this, allowance)); // transfer all tokens from the sender to the contract
    |        uint256 etherValue = safeMul(allowance, TOKEN_PRICE_N) / TOKEN_PRICE_D; // calculate ETH value of the tokens
  > |        msg.sender.transfer(etherValue); // send the ETH amount to the seller
    |        return etherValue;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1465)

[33mWarning[0m for UnhandledException in contract 'BancorPriceFloor':
    |    */
    |    function withdraw(uint256 _amount) public ownerOnly {
  > |        msg.sender.transfer(_amount); // send the amount
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1475)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorPriceFloor':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorPriceFloor':
    |    */
    |    function sell() public returns (uint256 amount) {
  > |        uint256 allowance = token.allowance(msg.sender, this); // get the full allowance amount
    |        assert(token.transferFrom(msg.sender, this, allowance)); // transfer all tokens from the sender to the contract
    |        uint256 etherValue = safeMul(allowance, TOKEN_PRICE_N) / TOKEN_PRICE_D; // calculate ETH value of the tokens
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1462)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorPriceFloor':
    |    function sell() public returns (uint256 amount) {
    |        uint256 allowance = token.allowance(msg.sender, this); // get the full allowance amount
  > |        assert(token.transferFrom(msg.sender, this, allowance)); // transfer all tokens from the sender to the contract
    |        uint256 etherValue = safeMul(allowance, TOKEN_PRICE_N) / TOKEN_PRICE_D; // calculate ETH value of the tokens
    |        msg.sender.transfer(etherValue); // send the ETH amount to the seller
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1463)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorPriceFloor':
    |    */
    |    function withdraw(uint256 _amount) public ownerOnly {
  > |        msg.sender.transfer(_amount); // send the amount
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1475)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorPriceFloor':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorPriceFloor':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorPriceFloor':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for DAO in contract 'BancorQuickConverter':
    |        // otherwise, we assume we already have the tokens
    |        if (msg.value > 0)
  > |            IEtherToken(fromToken).deposit.value(msg.value)();
    |
    |        // iterate over the conversion path
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1545)

[33mWarning[0m for LockedEther in contract 'BancorQuickConverter':
    |}
    |
  > |contract BancorQuickConverter is IBancorQuickConverter, TokenHolder {
    |    mapping (address => bool) public etherTokens;   // list of all supported ether tokens
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1485)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |        // otherwise, we assume we already have the tokens
    |        if (msg.value > 0)
  > |            IEtherToken(fromToken).deposit.value(msg.value)();
    |
    |        // iterate over the conversion path
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1545)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |            smartToken = ISmartToken(_path[i]);
    |            toToken = _path[i + 1];
  > |            converter = ITokenConverter(smartToken.owner());
    |
    |            // if the smart token isn't the source (from token), the converter doesn't have control over it and thus we need to approve the request
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1551)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |
    |            // make the conversion - if it's the last one, also provide the minimum return value
  > |            _amount = converter.change(fromToken, toToken, _amount, i == pathLength - 2 ? _minReturn : 1);
    |            fromToken = toToken;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1558)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |        // otherwise, transfer the tokens as is
    |        if (etherTokens[toToken])
  > |            IEtherToken(toToken).withdrawTo(_for, _amount);
    |        else
    |            assert(toToken.transfer(_for, _amount));
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1566)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |            IEtherToken(toToken).withdrawTo(_for, _amount);
    |        else
  > |            assert(toToken.transfer(_for, _amount));
    |
    |        return _amount;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1568)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |        // note: we assume we already have allowance
    |        IERC20Token fromToken = _path[0];
  > |        assert(fromToken.transferFrom(msg.sender, this, _amount));
    |        return convertFor(_path, _amount, _minReturn, _for);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1590)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |    function ensureAllowance(IERC20Token _token, address _spender, uint256 _value) private {
    |        // check if allowance for the given amount already exists
  > |        if (_token.allowance(this, _spender) >= _value)
    |            return;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1633)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |
    |        // if the allowance is nonzero, must reset it to 0 first
  > |        if (_token.allowance(this, _spender) != 0)
    |            assert(_token.approve(_spender, 0));
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1637)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |        // if the allowance is nonzero, must reset it to 0 first
    |        if (_token.allowance(this, _spender) != 0)
  > |            assert(_token.approve(_spender, 0));
    |
    |        // approve the new allowance
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1638)

[33mWarning[0m for UnhandledException in contract 'BancorQuickConverter':
    |
    |        // approve the new allowance
  > |        assert(_token.approve(_spender, _value));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1641)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |            smartToken = ISmartToken(_path[i]);
    |            toToken = _path[i + 1];
  > |            converter = ITokenConverter(smartToken.owner());
    |
    |            // if the smart token isn't the source (from token), the converter doesn't have control over it and thus we need to approve the request
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1551)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |
    |            // make the conversion - if it's the last one, also provide the minimum return value
  > |            _amount = converter.change(fromToken, toToken, _amount, i == pathLength - 2 ? _minReturn : 1);
    |            fromToken = toToken;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1558)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |        // otherwise, transfer the tokens as is
    |        if (etherTokens[toToken])
  > |            IEtherToken(toToken).withdrawTo(_for, _amount);
    |        else
    |            assert(toToken.transfer(_for, _amount));
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1566)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |            IEtherToken(toToken).withdrawTo(_for, _amount);
    |        else
  > |            assert(toToken.transfer(_for, _amount));
    |
    |        return _amount;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1568)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |        // note: we assume we already have allowance
    |        IERC20Token fromToken = _path[0];
  > |        assert(fromToken.transferFrom(msg.sender, this, _amount));
    |        return convertFor(_path, _amount, _minReturn, _for);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1590)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |    function ensureAllowance(IERC20Token _token, address _spender, uint256 _value) private {
    |        // check if allowance for the given amount already exists
  > |        if (_token.allowance(this, _spender) >= _value)
    |            return;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1633)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |
    |        // if the allowance is nonzero, must reset it to 0 first
  > |        if (_token.allowance(this, _spender) != 0)
    |            assert(_token.approve(_spender, 0));
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1637)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |        // if the allowance is nonzero, must reset it to 0 first
    |        if (_token.allowance(this, _spender) != 0)
  > |            assert(_token.approve(_spender, 0));
    |
    |        // approve the new allowance
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1638)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BancorQuickConverter':
    |
    |        // approve the new allowance
  > |        assert(_token.approve(_spender, _value));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1641)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorQuickConverter':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorQuickConverter':
    |        notThis(_token)
    |    {
  > |        etherTokens[_token] = _register;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1512)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorQuickConverter':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BancorQuickConverter':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for DAO in contract 'CrowdsaleController':
    |    // ensures that the controller is the token's owner
    |    modifier active() {
  > |        assert(token.owner() == address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(241)

[33mWarning[0m for DAO in contract 'CrowdsaleController':
    |        beneficiary.transfer(msg.value); // transfer the ether to the beneficiary account
    |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value); // update the total contribution amount
  > |        token.issue(msg.sender, tokenAmount); // issue new funds to the contributor in the smart token
    |        token.issue(beneficiary, tokenAmount); // issue tokens to the beneficiary
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1817)

[33mWarning[0m for DAO in contract 'CrowdsaleController':
    |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value); // update the total contribution amount
    |        token.issue(msg.sender, tokenAmount); // issue new funds to the contributor in the smart token
  > |        token.issue(beneficiary, tokenAmount); // issue tokens to the beneficiary
    |
    |        Contribution(msg.sender, msg.value, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1818)

[33mWarning[0m for DAOConstantGas in contract 'CrowdsaleController':
    |    {
    |        uint256 tokenAmount = computeReturn(msg.value);
  > |        beneficiary.transfer(msg.value); // transfer the ether to the beneficiary account
    |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value); // update the total contribution amount
    |        token.issue(msg.sender, tokenAmount); // issue new funds to the contributor in the smart token
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1815)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @param _newOwner    new token owner
    |    */
  > |    function transferTokenOwnership(address _newOwner) public ownerOnly {
    |        token.transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTokenTransfers(bool _disable) public ownerOnly {
    |        token.disableTransfers(_disable);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawFromToken(
    |        IERC20Token _token, 
    |        address _to, 
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(288)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @return computed real cap hash
    |    */
  > |    function computeRealCap(uint256 _cap, uint256 _key) public pure returns (bytes32) {
    |        return keccak256(_cap, _key);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1738)

[31mViolation[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @param _key    key used to compute the cap hash
    |    */
  > |    function enableRealCap(uint256 _cap, uint256 _key)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1748)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @return product
    |    */
  > |    function safeMul(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x * _y;
    |        assert(_x == 0 || z / _x == _y);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |
    |contract SmartTokenController is TokenHolder {
  > |    ISmartToken public token;   // smart token
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        can only be called by the contract owner
    |    */
  > |    function acceptTokenOwnership() public ownerOnly {
    |        token.acceptOwnership();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(266)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |
    |contract CrowdsaleController is SmartTokenController {
  > |    uint256 public constant DURATION = 14 days;                 // crowdsale duration
    |    uint256 public constant TOKEN_PRICE_N = 1;                  // initial price in wei (numerator)
    |    uint256 public constant TOKEN_PRICE_D = 100;                // initial price in wei (denominator)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1646)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |contract CrowdsaleController is SmartTokenController {
    |    uint256 public constant DURATION = 14 days;                 // crowdsale duration
  > |    uint256 public constant TOKEN_PRICE_N = 1;                  // initial price in wei (numerator)
    |    uint256 public constant TOKEN_PRICE_D = 100;                // initial price in wei (denominator)
    |    uint256 public constant BTCS_ETHER_CAP = 50000 ether;       // maximum bitcoin suisse ether contribution
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1647)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    uint256 public constant DURATION = 14 days;                 // crowdsale duration
    |    uint256 public constant TOKEN_PRICE_N = 1;                  // initial price in wei (numerator)
  > |    uint256 public constant TOKEN_PRICE_D = 100;                // initial price in wei (denominator)
    |    uint256 public constant BTCS_ETHER_CAP = 50000 ether;       // maximum bitcoin suisse ether contribution
    |    uint256 public constant MAX_GAS_PRICE = 50000000000 wei;    // maximum gas price for contribution transactions
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1648)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    uint256 public constant TOKEN_PRICE_N = 1;                  // initial price in wei (numerator)
    |    uint256 public constant TOKEN_PRICE_D = 100;                // initial price in wei (denominator)
  > |    uint256 public constant BTCS_ETHER_CAP = 50000 ether;       // maximum bitcoin suisse ether contribution
    |    uint256 public constant MAX_GAS_PRICE = 50000000000 wei;    // maximum gas price for contribution transactions
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1649)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    uint256 public constant TOKEN_PRICE_D = 100;                // initial price in wei (denominator)
    |    uint256 public constant BTCS_ETHER_CAP = 50000 ether;       // maximum bitcoin suisse ether contribution
  > |    uint256 public constant MAX_GAS_PRICE = 50000000000 wei;    // maximum gas price for contribution transactions
    |
    |    string public version = '0.1';
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1650)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    uint256 public constant MAX_GAS_PRICE = 50000000000 wei;    // maximum gas price for contribution transactions
    |
  > |    string public version = '0.1';
    |
    |    uint256 public startTime = 0;                   // crowdsale start time (in seconds)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1652)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    string public version = '0.1';
    |
  > |    uint256 public startTime = 0;                   // crowdsale start time (in seconds)
    |    uint256 public endTime = 0;                     // crowdsale end time (in seconds)
    |    uint256 public totalEtherCap = 1000000 ether;   // current ether contribution cap, initialized with a temp value as a safety mechanism until the real cap is revealed
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1654)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |
    |    uint256 public startTime = 0;                   // crowdsale start time (in seconds)
  > |    uint256 public endTime = 0;                     // crowdsale end time (in seconds)
    |    uint256 public totalEtherCap = 1000000 ether;   // current ether contribution cap, initialized with a temp value as a safety mechanism until the real cap is revealed
    |    uint256 public totalEtherContributed = 0;       // ether contributed so far
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1655)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    uint256 public startTime = 0;                   // crowdsale start time (in seconds)
    |    uint256 public endTime = 0;                     // crowdsale end time (in seconds)
  > |    uint256 public totalEtherCap = 1000000 ether;   // current ether contribution cap, initialized with a temp value as a safety mechanism until the real cap is revealed
    |    uint256 public totalEtherContributed = 0;       // ether contributed so far
    |    bytes32 public realEtherCapHash;                // ensures that the real cap is predefined on deployment and cannot be changed later
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1656)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    uint256 public endTime = 0;                     // crowdsale end time (in seconds)
    |    uint256 public totalEtherCap = 1000000 ether;   // current ether contribution cap, initialized with a temp value as a safety mechanism until the real cap is revealed
  > |    uint256 public totalEtherContributed = 0;       // ether contributed so far
    |    bytes32 public realEtherCapHash;                // ensures that the real cap is predefined on deployment and cannot be changed later
    |    address public beneficiary = address(0);        // address to receive all ether contributions
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1657)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    uint256 public totalEtherCap = 1000000 ether;   // current ether contribution cap, initialized with a temp value as a safety mechanism until the real cap is revealed
    |    uint256 public totalEtherContributed = 0;       // ether contributed so far
  > |    bytes32 public realEtherCapHash;                // ensures that the real cap is predefined on deployment and cannot be changed later
    |    address public beneficiary = address(0);        // address to receive all ether contributions
    |    address public btcs = address(0);               // bitcoin suisse address
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1658)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    uint256 public totalEtherContributed = 0;       // ether contributed so far
    |    bytes32 public realEtherCapHash;                // ensures that the real cap is predefined on deployment and cannot be changed later
  > |    address public beneficiary = address(0);        // address to receive all ether contributions
    |    address public btcs = address(0);               // bitcoin suisse address
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1659)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |    bytes32 public realEtherCapHash;                // ensures that the real cap is predefined on deployment and cannot be changed later
    |    address public beneficiary = address(0);        // address to receive all ether contributions
  > |    address public btcs = address(0);               // bitcoin suisse address
    |
    |    // triggered on each contribution
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1660)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @return computed number of tokens
    |    */
  > |    function computeReturn(uint256 _contribution) public pure returns (uint256) {
    |        return safeMul(_contribution, TOKEN_PRICE_D) / TOKEN_PRICE_N;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1766)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @return tokens issued in return
    |    */
  > |    function contributeETH()
    |        public
    |        payable
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1776)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @return tokens issued in return
    |    */
  > |    function contributeBTCs()
    |        public
    |        payable
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1791)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleController':
    |        @return tokens issued in return
    |    */
  > |    function processContribution() private
    |        active
    |        etherCapNotReached(msg.value)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1808)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleController':
    |    // ensures that the controller is the token's owner
    |    modifier active() {
  > |        assert(token.owner() == address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(241)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(259)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(267)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(277)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleController':
    |        ownerOnly
    |    {
  > |        ITokenHolder(token).withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(296)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleController':
    |    {
    |        uint256 tokenAmount = computeReturn(msg.value);
  > |        beneficiary.transfer(msg.value); // transfer the ether to the beneficiary account
    |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value); // update the total contribution amount
    |        token.issue(msg.sender, tokenAmount); // issue new funds to the contributor in the smart token
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1815)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleController':
    |        beneficiary.transfer(msg.value); // transfer the ether to the beneficiary account
    |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value); // update the total contribution amount
  > |        token.issue(msg.sender, tokenAmount); // issue new funds to the contributor in the smart token
    |        token.issue(beneficiary, tokenAmount); // issue tokens to the beneficiary
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1817)

[33mWarning[0m for UnhandledException in contract 'CrowdsaleController':
    |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value); // update the total contribution amount
    |        token.issue(msg.sender, tokenAmount); // issue new funds to the contributor in the smart token
  > |        token.issue(beneficiary, tokenAmount); // issue tokens to the beneficiary
    |
    |        Contribution(msg.sender, msg.value, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1818)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleController':
    |    // ensures that the controller is the token's owner
    |    modifier active() {
  > |        assert(token.owner() == address(this));
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(267)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdsaleController':
    |        ownerOnly
    |    {
  > |        ITokenHolder(token).withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(296)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleController':
    |        uint256 tokenAmount = computeReturn(msg.value);
    |        beneficiary.transfer(msg.value); // transfer the ether to the beneficiary account
  > |        totalEtherContributed = safeAdd(totalEtherContributed, msg.value); // update the total contribution amount
    |        token.issue(msg.sender, tokenAmount); // issue new funds to the contributor in the smart token
    |        token.issue(beneficiary, tokenAmount); // issue tokens to the beneficiary
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1816)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleController':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleController':
    |    {
    |        require(_cap < totalEtherCap); // validate input
  > |        totalEtherCap = _cap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1756)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleController':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'CrowdsaleController':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1830)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1836)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1837)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |contract ERC20Token is IERC20Token, Utils {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1831)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1832)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1833)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1834)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1835)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1913)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1871)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1872)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1893)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1894)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1895)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1921)

[33mWarning[0m for DAOConstantGas in contract 'EtherToken':
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _amount); // deduct the amount from the account balance
    |        totalSupply = safeSub(totalSupply, _amount); // decrease the total supply
  > |        _to.transfer(_amount); // send the amount to the target account
    |
    |        Transfer(msg.sender, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1973)

[31mViolation[0m for MissingInputValidation in contract 'EtherToken':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'EtherToken':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1836)

[31mViolation[0m for MissingInputValidation in contract 'EtherToken':
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1837)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |
    |contract ERC20Token is IERC20Token, Utils {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1831)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1832)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1833)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1834)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1835)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transfer(address _to, uint256 _value)
    |        public
    |        validAddress(_to)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1866)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transferFrom(address _from, address _to, uint256 _value)
    |        public
    |        validAddress(_from)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1887)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1913)

[33mWarning[0m for MissingInputValidation in contract 'EtherToken':
    |        @dev deposit ether in the account
    |    */
  > |    function deposit() public payable {
    |        balanceOf[msg.sender] = safeAdd(balanceOf[msg.sender], msg.value); // add the value to the account balance
    |        totalSupply = safeAdd(totalSupply, msg.value); // increase the total supply
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1944)

[33mWarning[0m for UnhandledException in contract 'EtherToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnhandledException in contract 'EtherToken':
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _amount); // deduct the amount from the account balance
    |        totalSupply = safeSub(totalSupply, _amount); // decrease the total supply
  > |        _to.transfer(_amount); // send the amount to the target account
    |
    |        Transfer(msg.sender, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1973)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherToken':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1871)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherToken':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1872)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherToken':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1893)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherToken':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1894)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherToken':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1895)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherToken':
    |    */
    |    function deposit() public payable {
  > |        balanceOf[msg.sender] = safeAdd(balanceOf[msg.sender], msg.value); // add the value to the account balance
    |        totalSupply = safeAdd(totalSupply, msg.value); // increase the total supply
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1945)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherToken':
    |    function deposit() public payable {
    |        balanceOf[msg.sender] = safeAdd(balanceOf[msg.sender], msg.value); // add the value to the account balance
  > |        totalSupply = safeAdd(totalSupply, msg.value); // increase the total supply
    |
    |        Issuance(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1946)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherToken':
    |        notThis(_to)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _amount); // deduct the amount from the account balance
    |        totalSupply = safeSub(totalSupply, _amount); // decrease the total supply
    |        _to.transfer(_amount); // send the amount to the target account
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1971)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherToken':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _amount); // deduct the amount from the account balance
  > |        totalSupply = safeSub(totalSupply, _amount); // decrease the total supply
    |        _to.transfer(_amount); // send the amount to the target account
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1972)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherToken':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1921)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherToken':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherToken':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for LockedEther in contract 'IBancorConverterExtensions':
    |    Bancor Converter Extensions interface
    |*/
  > |contract IBancorConverterExtensions {
    |    function formula() public view returns (IBancorFormula) {}
    |    function gasPriceLimit() public view returns (IBancorGasPriceLimit) {}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'IBancorConverterExtensions':
    |*/
    |contract IBancorConverterExtensions {
  > |    function formula() public view returns (IBancorFormula) {}
    |    function gasPriceLimit() public view returns (IBancorGasPriceLimit) {}
    |    function quickConverter() public view returns (IBancorQuickConverter) {}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'IBancorConverterExtensions':
    |contract IBancorConverterExtensions {
    |    function formula() public view returns (IBancorFormula) {}
  > |    function gasPriceLimit() public view returns (IBancorGasPriceLimit) {}
    |    function quickConverter() public view returns (IBancorQuickConverter) {}
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'IBancorConverterExtensions':
    |    function formula() public view returns (IBancorFormula) {}
    |    function gasPriceLimit() public view returns (IBancorGasPriceLimit) {}
  > |    function quickConverter() public view returns (IBancorQuickConverter) {}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(10)

[33mWarning[0m for LockedEther in contract 'IBancorGasPriceLimit':
    |
    |
  > |contract IBancorGasPriceLimit {
    |    function gasPrice() public view returns (uint256) {}
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'IBancorGasPriceLimit':
    |
    |contract IBancorGasPriceLimit {
  > |    function gasPrice() public view returns (uint256) {}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(21)

[33mWarning[0m for LockedEther in contract 'Managed':
    |}
    |
  > |contract Managed {
    |    address public manager;
    |    address public newManager;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |
    |contract Managed {
  > |    address public manager;
    |    address public newManager;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(301)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |contract Managed {
    |    address public manager;
  > |    address public newManager;
    |
    |    event ManagerUpdate(address indexed _prevManager, address indexed _newManager);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @param _newManager    new contract manager
    |    */
  > |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
    |        newManager = _newManager;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(326)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @dev used by a new manager to accept a management transfer
    |    */
  > |    function acceptManagement() public {
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  > |        manager = newManager;
    |        newManager = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        ManagerUpdate(manager, newManager);
    |        manager = newManager;
  > |        newManager = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(338)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for LockedEther in contract 'SmartToken':
    |}
    |
  > |contract SmartToken is ISmartToken, Owned, ERC20Token, TokenHolder {
    |    string public version = '0.3';
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(2026)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1836)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1837)

[31mViolation[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTransfers(bool _disable) public ownerOnly {
    |        transfersEnabled = !_disable;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(2064)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return sum
    |    */
  > |    function safeAdd(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return difference
    |    */
  > |    function safeSub(uint256 _x, uint256 _y) internal pure returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |
    |contract ERC20Token is IERC20Token, Utils {
  > |    string public standard = 'Token 0.1';
    |    string public name = '';
    |    string public symbol = '';
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1831)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |contract ERC20Token is IERC20Token, Utils {
    |    string public standard = 'Token 0.1';
  > |    string public name = '';
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1832)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public standard = 'Token 0.1';
    |    string public name = '';
  > |    string public symbol = '';
    |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1833)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public name = '';
    |    string public symbol = '';
  > |    uint8 public decimals = 0;
    |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1834)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public symbol = '';
    |    uint8 public decimals = 0;
  > |    uint256 public totalSupply = 0;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1835)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transfer(address _to, uint256 _value)
    |        public
    |        validAddress(_to)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1866)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the transfer was successful, false if it wasn't
    |    */
  > |    function transferFrom(address _from, address _to, uint256 _value)
    |        public
    |        validAddress(_from)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1887)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |        @return true if the approval was successful, false if it wasn't
    |    */
  > |    function approve(address _spender, uint256 _value)
    |        public
    |        validAddress(_spender)
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1913)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |
    |contract SmartToken is ISmartToken, Owned, ERC20Token, TokenHolder {
  > |    string public version = '0.3';
    |
    |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(2027)

[33mWarning[0m for MissingInputValidation in contract 'SmartToken':
    |    string public version = '0.3';
    |
  > |    bool public transfersEnabled = true;    // true if transfer/transferFrom are enabled, false if not
    |
    |    // triggered when a smart token is deployed - the _token address is defined for forward compatibility, in case we want to trigger the event from a factory
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(2029)

[33mWarning[0m for UnhandledException in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1871)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1872)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1893)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1894)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1895)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        notThis(_to)
    |    {
  > |        totalSupply = safeAdd(totalSupply, _amount);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(2081)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |    {
    |        totalSupply = safeAdd(totalSupply, _amount);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _amount);
    |
    |        Issuance(_amount);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(2082)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(msg.sender == _from || msg.sender == owner); // validate input
    |
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
    |        totalSupply = safeSub(totalSupply, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(2098)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartToken':
    |
    |        balanceOf[_from] = safeSub(balanceOf[_from], _amount);
  > |        totalSupply = safeSub(totalSupply, _amount);
    |
    |        Transfer(_from, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(2099)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
    |
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(1921)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    */
    |    function disableTransfers(bool _disable) public ownerOnly {
  > |        transfersEnabled = !_disable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(2065)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for LockedEther in contract 'SmartTokenController':
    |
    |
  > |contract SmartTokenController is TokenHolder {
    |    ISmartToken public token;   // smart token
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(226)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new token owner
    |    */
  > |    function transferTokenOwnership(address _newOwner) public ownerOnly {
    |        token.transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTokenTransfers(bool _disable) public ownerOnly {
    |        token.disableTransfers(_disable);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawFromToken(
    |        IERC20Token _token, 
    |        address _to, 
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(288)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |
    |contract SmartTokenController is TokenHolder {
  > |    ISmartToken public token;   // smart token
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        can only be called by the contract owner
    |    */
  > |    function acceptTokenOwnership() public ownerOnly {
    |        token.acceptOwnership();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(266)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(259)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(267)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(277)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |        ownerOnly
    |    {
  > |        ITokenHolder(token).withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(267)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |        ownerOnly
    |    {
  > |        ITokenHolder(token).withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |
    |
  > |contract TokenHolder is ITokenHolder, Owned, Utils {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(199)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address indexed _prevOwner, address indexed _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(119)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(123)

[33mWarning[0m for LockedEther in contract 'Utils':
    |
    |
  > |contract Utils {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0x1a5f170802824e44181b6727e5447950880187ab.sol(129)


