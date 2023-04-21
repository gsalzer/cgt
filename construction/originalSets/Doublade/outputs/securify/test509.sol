Processing contract: /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol:MarketPrice
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'MarketPrice':
    |    function execute(address _to, uint _value, bytes _data) external returns (bytes32 _r) {
    |        require(msg.sender==creator);
  > |        require(_to.call.value(_value)(_data));
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(111)

[33mWarning[0m for DAOConstantGas in contract 'MarketPrice':
    |        uint256 weiAmount = tokens[0].usd * 35;
    |        require(msg.value >= weiAmount);
  > |        sender.transfer(msg.value);
    |        RequestUpdate(id);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(125)

[33mWarning[0m for DAOConstantGas in contract 'MarketPrice':
    |    function donate() external payable {
    |        require(msg.value >= 0);
  > |        sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(132)

[33mWarning[0m for LockedEther in contract 'MarketPrice':
    |*/
    |
  > |contract MarketPrice {
    |
    |    mapping(uint => Token) public tokens;
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(25)

[33mWarning[0m for TODAmount in contract 'MarketPrice':
    |    function execute(address _to, uint _value, bytes _data) external returns (bytes32 _r) {
    |        require(msg.sender==creator);
  > |        require(_to.call.value(_value)(_data));
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(111)

[31mViolation[0m for TODReceiver in contract 'MarketPrice':
    |        uint256 weiAmount = tokens[0].usd * 35;
    |        require(msg.value >= weiAmount);
  > |        sender.transfer(msg.value);
    |        RequestUpdate(id);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(125)

[31mViolation[0m for TODReceiver in contract 'MarketPrice':
    |    function donate() external payable {
    |        require(msg.value >= 0);
  > |        sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(132)

[33mWarning[0m for TODReceiver in contract 'MarketPrice':
    |    function execute(address _to, uint _value, bytes _data) external returns (bytes32 _r) {
    |        require(msg.sender==creator);
  > |        require(_to.call.value(_value)(_data));
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(111)

[33mWarning[0m for UnhandledException in contract 'MarketPrice':
    |    function execute(address _to, uint _value, bytes _data) external returns (bytes32 _r) {
    |        require(msg.sender==creator);
  > |        require(_to.call.value(_value)(_data));
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(111)

[33mWarning[0m for UnhandledException in contract 'MarketPrice':
    |        uint256 weiAmount = tokens[0].usd * 35;
    |        require(msg.value >= weiAmount);
  > |        sender.transfer(msg.value);
    |        RequestUpdate(id);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(125)

[33mWarning[0m for UnhandledException in contract 'MarketPrice':
    |    function donate() external payable {
    |        require(msg.value >= 0);
  > |        sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MarketPrice':
    |    function execute(address _to, uint _value, bytes _data) external returns (bytes32 _r) {
    |        require(msg.sender==creator);
  > |        require(_to.call.value(_value)(_data));
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'MarketPrice':
    |*/
    |
  > |contract MarketPrice {
    |
    |    mapping(uint => Token) public tokens;
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(25)

[31mViolation[0m for UnrestrictedWrite in contract 'MarketPrice':
    |    function update(uint id, string _token, uint256 eth, uint256 usd, uint256 eur, uint256 gbp) external {
    |        require(msg.sender==sender);
  > |        tokens[id] = Token(_token, eth, usd, eur, gbp, block.number);
    |        NewPrice(id, _token);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketPrice':
    |*/
    |
  > |contract MarketPrice {
    |
    |    mapping(uint => Token) public tokens;
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketPrice':
    |        require(msg.sender==sender);
    |        DeletePrice(id);
  > |        delete tokens[id];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketPrice':
    |    function changeCreator(address _creator){
    |        require(msg.sender==creator);
  > |        creator = _creator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'MarketPrice':
    |    function changeSender(address _sender){
    |        require(msg.sender==creator);
  > |        sender = _sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2138ffe292fd0953f7fe2569111246e4de9ff1dc.sol(105)


