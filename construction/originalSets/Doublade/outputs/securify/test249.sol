Processing contract: /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol:BrandContest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BrandContest':
    |        
    |        if(msg.value > contest.ticket_price){
  > |            msg.sender.transfer(SafeMath.sub(msg.value, contest.ticket_price));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(44)

[33mWarning[0m for DAOConstantGas in contract 'BrandContest':
    |
    |        if(msg.value > slot.price){
  > |            msg.sender.transfer(SafeMath.sub(msg.value, slot.price));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(57)

[33mWarning[0m for DAOConstantGas in contract 'BrandContest':
    |    
    |    function payout() public onlyCEO {
  > |        ceoAddress.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(133)

[33mWarning[0m for LockedEther in contract 'BrandContest':
    |///>[ Pre Sale ]>>>>
    |
  > |contract BrandContest {
    |    address public ceoAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |    
  > |    function buySlot(uint256 _slot) public payable {
    |        require(msg.sender != address(0));
    |        Slot storage slot = slots[_slot];
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |    
  > |    function getSlot(uint256 _slot) public view returns (
    |        uint256 slot,
    |        bool open,
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |
  > |    function createContest(string _key, uint256 _ticket_price) public onlyCEO {
    |        require(msg.sender != address(0));
    |        contests[_key] = Contest(true, _ticket_price, 0, address(0));
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |    
  > |    function createSlot(uint256 _slot, uint256 _price) public onlyCEO {
    |        require(msg.sender != address(0));
    |        slots[_slot] = Slot(_price, address(0));
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |///>[ Pre Sale ]>>>>
    |
  > |contract BrandContest {
    |    address public ceoAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |
    |contract BrandContest {
  > |    address public ceoAddress;
    |
    |    function BrandContest() public {
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |
    |    modifier onlyCEO() { require(msg.sender == ceoAddress); _; }
  > |    function setCEO(address _newCEO) public onlyCEO {
    |        require(_newCEO != address(0));
    |        ceoAddress = _newCEO;
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |    
  > |    function buyTicket(string _key) public payable {
    |        require(msg.sender != address(0));
    |        Contest storage contest = contests[_key];
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |    
  > |    function getContest(string _key) public view returns (
    |        string name,
    |        bool open,
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |    
  > |    function getTickets(string _key) public view returns (
    |        string name,
    |        address[] tickets
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |    
  > |    function getMyTickets(string _key, address _address) public view returns (
    |        string name,
    |        uint ticket_count
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |    
  > |    function closeContest(string _key) public onlyCEO {
    |        require(msg.sender != address(0));
    |        uint seed = (block.number + contests[_key].tickets_sold + contests[_key].ticket_price);
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |    }
    |    
  > |    function payout() public onlyCEO {
    |        ceoAddress.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'BrandContest':
    |        return c;
    |    }
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(150)

[31mViolation[0m for TODAmount in contract 'BrandContest':
    |    
    |    function payout() public onlyCEO {
  > |        ceoAddress.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(133)

[31mViolation[0m for TODReceiver in contract 'BrandContest':
    |    
    |    function payout() public onlyCEO {
  > |        ceoAddress.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(133)

[33mWarning[0m for UnhandledException in contract 'BrandContest':
    |        
    |        if(msg.value > contest.ticket_price){
  > |            msg.sender.transfer(SafeMath.sub(msg.value, contest.ticket_price));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(44)

[33mWarning[0m for UnhandledException in contract 'BrandContest':
    |
    |        if(msg.value > slot.price){
  > |            msg.sender.transfer(SafeMath.sub(msg.value, slot.price));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(57)

[33mWarning[0m for UnhandledException in contract 'BrandContest':
    |    
    |    function payout() public onlyCEO {
  > |        ceoAddress.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BrandContest':
    |    
    |    function payout() public onlyCEO {
  > |        ceoAddress.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'BrandContest':
    |        require(msg.value >= contest.ticket_price);
    |        
  > |        contest.tickets[contest.tickets_sold] = msg.sender;
    |        contest.tickets_sold++;
    |        
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'BrandContest':
    |        
    |        contest.tickets[contest.tickets_sold] = msg.sender;
  > |        contest.tickets_sold++;
    |        
    |        if(msg.value > contest.ticket_price){
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'BrandContest':
    |    function createContest(string _key, uint256 _ticket_price) public onlyCEO {
    |        require(msg.sender != address(0));
  > |        contests[_key] = Contest(true, _ticket_price, 0, address(0));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'BrandContest':
    |        uint seed = (block.number + contests[_key].tickets_sold + contests[_key].ticket_price);
    |        uint winner_num = uint(sha3(block.blockhash(block.number-1), seed ))%contests[_key].tickets_sold;
  > |        contests[_key].winner = contests[_key].tickets[winner_num];
    |        contests[_key].open = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'BrandContest':
    |        uint winner_num = uint(sha3(block.blockhash(block.number-1), seed ))%contests[_key].tickets_sold;
    |        contests[_key].winner = contests[_key].tickets[winner_num];
  > |        contests[_key].open = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'BrandContest':
    |    function setCEO(address _newCEO) public onlyCEO {
    |        require(_newCEO != address(0));
  > |        ceoAddress = _newCEO;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'BrandContest':
    |        require(msg.value >= slot.price);
    |    
  > |        slot.owner = msg.sender;
    |
    |        if(msg.value > slot.price){
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BrandContest':
    |    function createSlot(uint256 _slot, uint256 _price) public onlyCEO {
    |        require(msg.sender != address(0));
  > |        slots[_slot] = Slot(_price, address(0));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(121)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x114154995d5a95a7d7f8e4393b6d3727d7e08217.sol(137)


