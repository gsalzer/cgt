Processing contract: /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol:PreICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * @dev https://github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/ownership/Ownable.sol
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(42)

[33mWarning[0m for DAOConstantGas in contract 'PreICO':
    |    // Sending air from the contract
    |    function transferEthFromContract(address _to, uint256 amount) public onlyOwner {
  > |        _to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(158)

[33mWarning[0m for LockedEther in contract 'PreICO':
    | * @dev https://github.com/
    | */
  > |contract PreICO is Ownable {
    |
    |    ERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(58)

[33mWarning[0m for TODAmount in contract 'PreICO':
    |    // Sending air from the contract
    |    function transferEthFromContract(address _to, uint256 amount) public onlyOwner {
  > |        _to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(158)

[33mWarning[0m for TODReceiver in contract 'PreICO':
    |    // Sending air from the contract
    |    function transferEthFromContract(address _to, uint256 amount) public onlyOwner {
  > |        _to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(158)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |    // callback contract function
    |    function () public payable {
  > |        require(authorize.isWhitelisted(msg.sender));
    |        require(isPreICO());
    |        require(msg.value >= buyPrice.mul(100)); // ~ 10 EURO
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(136)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |    function SalePreICO(address _investor, uint256 _value) internal {
    |        uint256 tokens = _value.mul(1e18).div(buyPrice);
  > |        token.mintFromICO(_investor, tokens);
    |        soldTokens = soldTokens.add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(147)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |
    |        uint256 tokensBoynty = tokens.div(250); // 2 %
  > |        token.mintFromICO(bounty, tokensBoynty);
    |
    |        weisRaised = weisRaised.add(_value);
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(151)

[33mWarning[0m for UnhandledException in contract 'PreICO':
    |    // Sending air from the contract
    |    function transferEthFromContract(address _to, uint256 amount) public onlyOwner {
  > |        _to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICO':
    |    // callback contract function
    |    function () public payable {
  > |        require(authorize.isWhitelisted(msg.sender));
    |        require(isPreICO());
    |        require(msg.value >= buyPrice.mul(100)); // ~ 10 EURO
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICO':
    |    function SalePreICO(address _investor, uint256 _value) internal {
    |        uint256 tokens = _value.mul(1e18).div(buyPrice);
  > |        token.mintFromICO(_investor, tokens);
    |        soldTokens = soldTokens.add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICO':
    |
    |        uint256 tokensBoynty = tokens.div(250); // 2 %
  > |        token.mintFromICO(bounty, tokensBoynty);
    |
    |        weisRaised = weisRaised.add(_value);
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreICO':
    |    // Sending air from the contract
    |    function transferEthFromContract(address _to, uint256 amount) public onlyOwner {
  > |        _to.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |    function setBuyPrice(uint256 _dollar) public backEnd {
    |        euroPrice = _dollar;
  > |        buyPrice = (1e18/euroPrice).div(10); // 0.1 euro
    |        emit UpdateDollar(now, euroPrice);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |        SalePreICO(msg.sender, msg.value);
    |        require(soldTokens<=hardCap1Stage);
  > |        investedEther[msg.sender] = investedEther[msg.sender].add(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |        uint256 tokens = _value.mul(1e18).div(buyPrice);
    |        token.mintFromICO(_investor, tokens);
  > |        soldTokens = soldTokens.add(tokens);
    |
    |        uint256 tokensBoynty = tokens.div(250); // 2 %
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |        token.mintFromICO(bounty, tokensBoynty);
    |
  > |        weisRaised = weisRaised.add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |    // change the date of commencement of pre-sale
    |    function setStartSale(uint256 newStartSale) public onlyOwner {
  > |        startPreICO = newStartSale;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |    // change the date of the end of pre-sale
    |    function setEndSale(uint256 newEndSale) public onlyOwner {
  > |        endPreICO = newEndSale;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |    // Change of operator’s backend address
    |    function setBackEndAddress(address newBackEndOperator) public onlyOwner {
  > |        backEndOperator = newBackEndOperator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'PreICO':
    |    // Change in the rate of dollars to broadcast
    |    function setBuyPrice(uint256 _dollar) public backEnd {
  > |        euroPrice = _dollar;
    |        buyPrice = (1e18/euroPrice).div(10); // 0.1 euro
    |        emit UpdateDollar(now, euroPrice);
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(120)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/*** @title SafeMath
    | * @dev https://github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/math/SafeMath.sol */
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
  at /home/jiaming/mavs_srcs/contract@0x7c9a2cf59bc4ef6ea73335c354bd0ea46feb4abe.sol(5)


