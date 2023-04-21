Processing contract: /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol:LightOracle
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol:Oracle
Processing contract: /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol:Token
[33mWarning[0m for DAO in contract 'LightOracle':
    |        require(!blacklist[msg.sender]);
    |        uint256 costRcn = cost * rate;
  > |        require(token.transferFrom(msg.sender, collector, costRcn));
    |        RateDelivered(rate, costRcn, updateTimestamp);
    |        return rate;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(67)

[33mWarning[0m for LockedEther in contract 'LightOracle':
    |
    |
  > |contract LightOracle is Oracle {
    |    Token public token = Token(0xF970b8E36e23F7fC3FD752EeA86f8Be8D83375A6);
    |
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'LightOracle':
    |    bool public deprecated;
    |
  > |    mapping(address => bool) public blacklist;
    |
    |    event RateDelivered(uint256 _rate, uint256 _cost, uint256 _timestamp);
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function updateRate(uint256 _rate) public {
    |        require(msg.sender == provider1 || msg.sender == provider2 || msg.sender == owner);
    |        rate = _rate;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |    
  > |    function updateCost(uint256 _cost) public {
    |        require(msg.sender == provider1 || msg.sender == provider2 || msg.sender == owner);
    |        cost = _cost;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function setProvider1(address _provider) public returns (bool) {
    |        require(msg.sender == owner);
    |        provider1 = _provider;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function setProvider2(address _provider) public returns (bool) {
    |        require(msg.sender == owner);
    |        provider2 = _provider;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function setDeprecated(bool _deprecated) public returns (bool) {
    |        require(msg.sender == owner);
    |        deprecated = _deprecated;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function withdrawal(Token _token, address to, uint256 amount) returns (bool) {
    |        require (msg.sender == owner);
    |        require (to != address(0));
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function setBlacklist(address to, bool blacklisted) returns (bool) {
    |        require (msg.sender == owner);
    |        blacklist[to] = blacklisted;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function setCollector(address _collector) returns (bool) {
    |        require (msg.sender == owner);
    |        collector = _collector;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |
    |contract LightOracle is Oracle {
  > |    Token public token = Token(0xF970b8E36e23F7fC3FD752EeA86f8Be8D83375A6);
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    Token public token = Token(0xF970b8E36e23F7fC3FD752EeA86f8Be8D83375A6);
    |
  > |    address public owner;
    |    address public provider1;
    |    address public provider2;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |
    |    address public owner;
  > |    address public provider1;
    |    address public provider2;
    |    address public collector = this;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    address public owner;
    |    address public provider1;
  > |    address public provider2;
    |    address public collector = this;
    |
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    address public provider1;
    |    address public provider2;
  > |    address public collector = this;
    |
    |    string public currency = "ARS";
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    address public collector = this;
    |
  > |    string public currency = "ARS";
    |    uint8 public decimals = 2;
    |
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |
    |    string public currency = "ARS";
  > |    uint8 public decimals = 2;
    |
    |    uint256 private rate;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    uint256 private cost;
    |
  > |    uint256 public updateTimestamp;
    |
    |    bool public deprecated;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    uint256 public updateTimestamp;
    |
  > |    bool public deprecated;
    |
    |    mapping(address => bool) public blacklist;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function getTimestamp(string symbol) constant returns (uint256) {
    |        require(isCurrency(symbol));
    |        return updateTimestamp;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |    
  > |    function getRateFor(string symbol) public returns (uint256) {
    |        require(isCurrency(symbol));
    |        require(!blacklist[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function isContract(address addr) internal returns (bool) {
    |        uint size;
    |        assembly { size := extcodesize(addr) }
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function getCost(string symbol) constant returns (uint256) {
    |        require(isCurrency(symbol));
    |        require(!blacklist[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function getDecimals(string symbol) constant returns (uint256) {
    |        require(isCurrency(symbol));
    |        return decimals;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function getRateForExternal(string symbol) constant returns (uint256) {
    |        require(isCurrency(symbol));
    |        require(!blacklist[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function transfer(address to) public returns (bool) {
    |        require(msg.sender == owner);
    |        require(to != address(0));
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'LightOracle':
    |    }
    |
  > |    function isCurrency(string target) internal returns (bool) {
    |        bytes memory t = bytes(target);
    |        bytes memory c = bytes(currency);
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(140)

[33mWarning[0m for UnhandledException in contract 'LightOracle':
    |        require(!blacklist[msg.sender]);
    |        uint256 costRcn = cost * rate;
  > |        require(token.transferFrom(msg.sender, collector, costRcn));
    |        RateDelivered(rate, costRcn, updateTimestamp);
    |        return rate;
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(67)

[33mWarning[0m for UnhandledException in contract 'LightOracle':
    |        require (to != address(0));
    |        require (_token != to);
  > |        return _token.transfer(to, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(125)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LightOracle':
    |        require (to != address(0));
    |        require (_token != to);
  > |        return _token.transfer(to, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'LightOracle':
    |    function updateRate(uint256 _rate) public {
    |        require(msg.sender == provider1 || msg.sender == provider2 || msg.sender == owner);
  > |        rate = _rate;
    |        updateTimestamp = block.timestamp;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'LightOracle':
    |        require(msg.sender == provider1 || msg.sender == provider2 || msg.sender == owner);
    |        rate = _rate;
  > |        updateTimestamp = block.timestamp;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'LightOracle':
    |    function updateCost(uint256 _cost) public {
    |        require(msg.sender == provider1 || msg.sender == provider2 || msg.sender == owner);
  > |        cost = _cost;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'LightOracle':
    |    function setProvider1(address _provider) public returns (bool) {
    |        require(msg.sender == owner);
  > |        provider1 = _provider;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'LightOracle':
    |    function setProvider2(address _provider) public returns (bool) {
    |        require(msg.sender == owner);
  > |        provider2 = _provider;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'LightOracle':
    |        require(msg.sender == owner);
    |        require(to != address(0));
  > |        owner = to;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'LightOracle':
    |    function setDeprecated(bool _deprecated) public returns (bool) {
    |        require(msg.sender == owner);
  > |        deprecated = _deprecated;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'LightOracle':
    |    function setBlacklist(address to, bool blacklisted) returns (bool) {
    |        require (msg.sender == owner);
  > |        blacklist[to] = blacklisted;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'LightOracle':
    |    function setCollector(address _collector) returns (bool) {
    |        require (msg.sender == owner);
  > |        collector = _collector;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61245b6a6678f3158a37ab2c5e52369b9f452318.sol(136)


