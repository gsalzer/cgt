Processing contract: /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol:BreezeCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol:BreezeCoinICO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | */
    |
  > |contract BasicToken is ERC20Basic {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(151)

[33mWarning[0m for LockedEther in contract 'BreezeCoin':
    | */
    |
  > |contract BreezeCoin is StandardToken, Ownable {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |        balances[_to] = balances[_to].add(_value);
    |
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |        if (_subtractedValue > oldValue) {
    |
  > |            allowed[msg.sender][_spender] = 0;
    |
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |        } else {
    |
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |        emit OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |        require(!released);
    |
  > |        released = true;
    |
    |        emit Release();
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |        if (oldOwner != holder) {
    |
  > |            allowed[holder][oldOwner] = 0;
    |
    |            emit Approval(holder, oldOwner, 0);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoin':
    |        if (owner != holder) {
    |
  > |            allowed[holder][owner] = balances[holder];
    |
    |            emit Approval(holder, owner, balances[holder]);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(502)

[31mViolation[0m for DAOConstantGas in contract 'BreezeCoinICO':
    |        uint totalTokens = tokensAmount;
    |        
  > |        COMPANY_WALLET.transfer(msg.value);
    |        tokensPurchased += totalTokens;
    |        require(tokensPurchased <= SALE_MAX_CAP);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(583)

[31mViolation[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    address public third_whitelistSupplier;
    |    address public fourth_whitelistSupplier;
  > |    mapping(address => bool) public whitelistPublic;
    |    mapping (address => uint256) public investedAmountOf;
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(541)

[31mViolation[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    address public fourth_whitelistSupplier;
    |    mapping(address => bool) public whitelistPublic;
  > |    mapping (address => uint256) public investedAmountOf;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(542)

[31mViolation[0m for MissingInputValidation in contract 'BreezeCoinICO':
    | */
    |
  > |    function addToPublicWhitelist(address _participant) onlyWhitelistSupplier() public returns(bool) {
    |        if (whitelistPublic[_participant]) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(598)

[31mViolation[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    }
    |
  > |    function removeFromPublicWhitelist(address _participant) onlyWhitelistSupplier() public returns(bool) {
    |        if (!whitelistPublic[_participant]) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(607)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(285)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |
    |        require(newOwner != address(0));
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |
    |contract BreezeCoinICO is Ownable {
  > |    uint public constant SALES_START = 1527800400; //we are defining the starting time of ICO
    |    uint public constant SALES_END = 1529528399; //we are defining the ending time of ICO
    |    
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(519)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |contract BreezeCoinICO is Ownable {
    |    uint public constant SALES_START = 1527800400; //we are defining the starting time of ICO
  > |    uint public constant SALES_END = 1529528399; //we are defining the ending time of ICO
    |    
    |    address public constant return_owner =0xE601Bb5Ef5Ca433e6B467a5fc8453dcACE3974De; //after ICO ends, ownership will return to creator
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(520)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    uint public constant SALES_END = 1529528399; //we are defining the ending time of ICO
    |    
  > |    address public constant return_owner =0xE601Bb5Ef5Ca433e6B467a5fc8453dcACE3974De; //after ICO ends, ownership will return to creator
    |    address public constant ICO_WALLET = 0x2bb3a4f80bFb939716E6d85799116feB1906748B; //defining ICO wallet address
    |    address public constant COMPANY_WALLET = 0x2bb3a4f80bFb939716E6d85799116feB1906748B; //defining company wallet address
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(522)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    
    |    address public constant return_owner =0xE601Bb5Ef5Ca433e6B467a5fc8453dcACE3974De; //after ICO ends, ownership will return to creator
  > |    address public constant ICO_WALLET = 0x2bb3a4f80bFb939716E6d85799116feB1906748B; //defining ICO wallet address
    |    address public constant COMPANY_WALLET = 0x2bb3a4f80bFb939716E6d85799116feB1906748B; //defining company wallet address
    |    address public constant TOKEN_ADDRESS = 0xe12128D653B62F08fbED56BdeB65dB729B6691C3; //defining BreezeCoin address
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(523)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    address public constant return_owner =0xE601Bb5Ef5Ca433e6B467a5fc8453dcACE3974De; //after ICO ends, ownership will return to creator
    |    address public constant ICO_WALLET = 0x2bb3a4f80bFb939716E6d85799116feB1906748B; //defining ICO wallet address
  > |    address public constant COMPANY_WALLET = 0x2bb3a4f80bFb939716E6d85799116feB1906748B; //defining company wallet address
    |    address public constant TOKEN_ADDRESS = 0xe12128D653B62F08fbED56BdeB65dB729B6691C3; //defining BreezeCoin address
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(524)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    address public constant ICO_WALLET = 0x2bb3a4f80bFb939716E6d85799116feB1906748B; //defining ICO wallet address
    |    address public constant COMPANY_WALLET = 0x2bb3a4f80bFb939716E6d85799116feB1906748B; //defining company wallet address
  > |    address public constant TOKEN_ADDRESS = 0xe12128D653B62F08fbED56BdeB65dB729B6691C3; //defining BreezeCoin address
    |
    |    uint public constant SMALLEST_TOKEN = 1* (10 ** 18); // defining the decimal 
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(525)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    address public constant TOKEN_ADDRESS = 0xe12128D653B62F08fbED56BdeB65dB729B6691C3; //defining BreezeCoin address
    |
  > |    uint public constant SMALLEST_TOKEN = 1* (10 ** 18); // defining the decimal 
    |    uint public constant TOKEN_PRICE = 0.001423964 ether; // BreezeCoin prize.
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(527)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |
    |    uint public constant SMALLEST_TOKEN = 1* (10 ** 18); // defining the decimal 
  > |    uint public constant TOKEN_PRICE = 0.001423964 ether; // BreezeCoin prize.
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(528)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |
    |
  > |    uint public constant SALE_MAX_CAP = 30000000 * SMALLEST_TOKEN; // defining the hardcap
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(531)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |
    |
  > |    uint public saleContributions; //total ETH contributed
    |    uint public tokensPurchased; //total BreezeCoin purchased.
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(534)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |
    |    uint public saleContributions; //total ETH contributed
  > |    uint public tokensPurchased; //total BreezeCoin purchased.
    |
    |    address public whitelistSupplier;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(535)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    uint public tokensPurchased; //total BreezeCoin purchased.
    |
  > |    address public whitelistSupplier;
    |    address public second_whitelistSupplier;
    |    address public third_whitelistSupplier;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(537)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |
    |    address public whitelistSupplier;
  > |    address public second_whitelistSupplier;
    |    address public third_whitelistSupplier;
    |    address public fourth_whitelistSupplier;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(538)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    address public whitelistSupplier;
    |    address public second_whitelistSupplier;
  > |    address public third_whitelistSupplier;
    |    address public fourth_whitelistSupplier;
    |    mapping(address => bool) public whitelistPublic;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(539)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    address public second_whitelistSupplier;
    |    address public third_whitelistSupplier;
  > |    address public fourth_whitelistSupplier;
    |    mapping(address => bool) public whitelistPublic;
    |    mapping (address => uint256) public investedAmountOf;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(540)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    }
    |
  > |    function contribute() public payable returns(bool) {
    |        return contributeFor(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(564)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    | * With this function, the token ownership will be transferred to token creator.
    | */
  > |    function getTokenOwner() public view returns (address) {
    |        return BreezeCoin(TOKEN_ADDRESS).getOwner();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(618)

[33mWarning[0m for MissingInputValidation in contract 'BreezeCoinICO':
    |    }
    |
  > |    function restoreTokenOwnership() public onlyOwner {
    |        BreezeCoin(TOKEN_ADDRESS).transferOwnership(return_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(622)

[33mWarning[0m for TODReceiver in contract 'BreezeCoinICO':
    |        uint totalTokens = tokensAmount;
    |        
  > |        COMPANY_WALLET.transfer(msg.value);
    |        tokensPurchased += totalTokens;
    |        require(tokensPurchased <= SALE_MAX_CAP);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(583)

[33mWarning[0m for UnhandledException in contract 'BreezeCoinICO':
    |        uint totalTokens = tokensAmount;
    |        
  > |        COMPANY_WALLET.transfer(msg.value);
    |        tokensPurchased += totalTokens;
    |        require(tokensPurchased <= SALE_MAX_CAP);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(583)

[33mWarning[0m for UnhandledException in contract 'BreezeCoinICO':
    |        tokensPurchased += totalTokens;
    |        require(tokensPurchased <= SALE_MAX_CAP);
  > |        require(BreezeCoin(TOKEN_ADDRESS).transferFrom(ICO_WALLET, _participant, totalTokens));
    |        saleContributions += msg.value;
    |	    investedAmountOf[_participant] = investedAmountOf[_participant]+msg.value;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(586)

[33mWarning[0m for UnhandledException in contract 'BreezeCoinICO':
    | */
    |    function getTokenOwner() public view returns (address) {
  > |        return BreezeCoin(TOKEN_ADDRESS).getOwner();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(619)

[33mWarning[0m for UnhandledException in contract 'BreezeCoinICO':
    |
    |    function restoreTokenOwnership() public onlyOwner {
  > |        BreezeCoin(TOKEN_ADDRESS).transferOwnership(return_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(623)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BreezeCoinICO':
    |        tokensPurchased += totalTokens;
    |        require(tokensPurchased <= SALE_MAX_CAP);
  > |        require(BreezeCoin(TOKEN_ADDRESS).transferFrom(ICO_WALLET, _participant, totalTokens));
    |        saleContributions += msg.value;
    |	    investedAmountOf[_participant] = investedAmountOf[_participant]+msg.value;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(586)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BreezeCoinICO':
    | */
    |    function getTokenOwner() public view returns (address) {
  > |        return BreezeCoin(TOKEN_ADDRESS).getOwner();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(619)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BreezeCoinICO':
    |
    |    function restoreTokenOwnership() public onlyOwner {
  > |        BreezeCoin(TOKEN_ADDRESS).transferOwnership(return_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(623)

[31mViolation[0m for UnrestrictedWrite in contract 'BreezeCoinICO':
    |        
    |        COMPANY_WALLET.transfer(msg.value);
  > |        tokensPurchased += totalTokens;
    |        require(tokensPurchased <= SALE_MAX_CAP);
    |        require(BreezeCoin(TOKEN_ADDRESS).transferFrom(ICO_WALLET, _participant, totalTokens));
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(584)

[31mViolation[0m for UnrestrictedWrite in contract 'BreezeCoinICO':
    |        require(tokensPurchased <= SALE_MAX_CAP);
    |        require(BreezeCoin(TOKEN_ADDRESS).transferFrom(ICO_WALLET, _participant, totalTokens));
  > |        saleContributions += msg.value;
    |	    investedAmountOf[_participant] = investedAmountOf[_participant]+msg.value;
    |        emit Contributed(_participant, msg.value, totalTokens);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(587)

[31mViolation[0m for UnrestrictedWrite in contract 'BreezeCoinICO':
    |        require(BreezeCoin(TOKEN_ADDRESS).transferFrom(ICO_WALLET, _participant, totalTokens));
    |        saleContributions += msg.value;
  > |	    investedAmountOf[_participant] = investedAmountOf[_participant]+msg.value;
    |        emit Contributed(_participant, msg.value, totalTokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(588)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoinICO':
    |        require(BreezeCoin(TOKEN_ADDRESS).transferFrom(ICO_WALLET, _participant, totalTokens));
    |        saleContributions += msg.value;
  > |	    investedAmountOf[_participant] = investedAmountOf[_participant]+msg.value;
    |        emit Contributed(_participant, msg.value, totalTokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(588)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoinICO':
    |        emit OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoinICO':
    |            return true;
    |        }
  > |        whitelistPublic[_participant] = true;
    |        emit PublicWhitelistUpdated(_participant, true);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(602)

[33mWarning[0m for UnrestrictedWrite in contract 'BreezeCoinICO':
    |            return true;
    |        }
  > |        whitelistPublic[_participant] = false;
    |        emit PublicWhitelistUpdated(_participant, false);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(611)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | */
    |
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(285)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |
    |        require(newOwner != address(0));
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        emit OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(321)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(57)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | */
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        if (_subtractedValue > oldValue) {
    |
  > |            allowed[msg.sender][_spender] = 0;
    |
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        } else {
    |
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdeb3ee789adeb84bbe02704c9ff8a295e3e2f231.sol(257)


