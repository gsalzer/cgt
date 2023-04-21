Processing contract: /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol:LotteryTicket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol:RefStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol:Storage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol:WinnerTicket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LotteryTicket':
    |}
    |
  > |contract LotteryTicket {
    |    address owner;
    |    string public constant name = "LotteryTicket";
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'LotteryTicket':
    |contract LotteryTicket {
    |    address owner;
  > |    string public constant name = "LotteryTicket";
    |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'LotteryTicket':
    |    address owner;
    |    string public constant name = "LotteryTicket";
  > |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'LotteryTicket':
    |        owner = msg.sender;
    |    }
  > |    function emitEvent(address addr) public {
    |        require(msg.sender == owner);
    |        emit Transfer(msg.sender, addr, 1);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(16)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipRenounced(address indexed previousOwner);
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        owner = address(0);
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |    function transferOwnership(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(54)

[33mWarning[0m for LockedEther in contract 'RefStorage':
    |}
    |
  > |contract RefStorage is Ownable {
    |
    |    IERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    IERC20 public token;
    |
  > |    mapping (address => bool) public contracts;
    |
    |    uint256 public prize = 0.00005 ether;
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    uint256 public interval = 100;
    |
  > |    mapping (address => Player) public players;
    |    struct Player {
    |        uint256 tickets;
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function changeContracts(address contractAddr) public onlyOwner {
    |        contracts[contractAddr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function changePrize(uint256 newPrize) public onlyOwner {
    |        prize = newPrize;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function changeInterval(uint256 newInterval) public onlyOwner {
    |        interval = newInterval;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function sendBonus(address winner) external restricted {
    |        if (token.balanceOf(address(this)) >= prize) {
    |            token.transfer(winner, prize);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(183)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function ticketsOf(address player) public view returns(uint256) {
    |        return players[player].tickets;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function referrerOf(address player) public view returns(address) {
    |        return players[player].referrer;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipRenounced(address indexed previousOwner);
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |        _;
    |    }
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |        owner = address(0);
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |contract RefStorage is Ownable {
    |
  > |    IERC20 public token;
    |
    |    mapping (address => bool) public contracts;
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |    mapping (address => bool) public contracts;
    |
  > |    uint256 public prize = 0.00005 ether;
    |    uint256 public interval = 100;
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |
    |    uint256 public prize = 0.00005 ether;
  > |    uint256 public interval = 100;
    |
    |    mapping (address => Player) public players;
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'RefStorage':
    |    }
    |
  > |    function newTicket() external restricted {
    |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(154)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
  > |            if (token.balanceOf(address(this)) >= prize * 2) {
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(157)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
    |            if (token.balanceOf(address(this)) >= prize * 2) {
  > |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
    |                token.transfer(players[tx.origin].referrer, prize);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(158)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  > |                token.transfer(players[tx.origin].referrer, prize);
    |                emit BonusSent(players[tx.origin].referrer, prize);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(160)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |
    |    function sendBonus(address winner) external restricted {
  > |        if (token.balanceOf(address(this)) >= prize) {
    |            token.transfer(winner, prize);
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(176)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |    function sendBonus(address winner) external restricted {
    |        if (token.balanceOf(address(this)) >= prize) {
  > |            token.transfer(winner, prize);
    |
    |            emit BonusSent(winner, prize);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(177)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(184)

[33mWarning[0m for UnhandledException in contract 'RefStorage':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
  > |            if (token.balanceOf(address(this)) >= prize * 2) {
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
    |            if (token.balanceOf(address(this)) >= prize * 2) {
  > |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
    |                token.transfer(players[tx.origin].referrer, prize);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |                token.transfer(tx.origin, prize);
    |                emit BonusSent(tx.origin, prize);
  > |                token.transfer(players[tx.origin].referrer, prize);
    |                emit BonusSent(players[tx.origin].referrer, prize);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |
    |    function sendBonus(address winner) external restricted {
  > |        if (token.balanceOf(address(this)) >= prize) {
    |            token.transfer(winner, prize);
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |    function sendBonus(address winner) external restricted {
    |        if (token.balanceOf(address(this)) >= prize) {
  > |            token.transfer(winner, prize);
    |
    |            emit BonusSent(winner, prize);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
  > |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
    |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RefStorage':
    |    function withdrawERC20(address ERC20Token, address recipient) external onlyOwner {
    |        uint256 amount = IERC20(ERC20Token).balanceOf(address(this));
  > |        IERC20(ERC20Token).transfer(recipient, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function newTicket() external restricted {
  > |        players[tx.origin].tickets++;
    |        if (players[tx.origin].referrer != address(0) && (players[tx.origin].tickets - players[tx.origin].checkpoint) % interval == 0) {
    |            if (token.balanceOf(address(this)) >= prize * 2) {
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'RefStorage':
    |    function addReferrer(address referrer) external restricted {
    |        if (players[tx.origin].referrer == address(0) && players[referrer].tickets >= interval && referrer != tx.origin) {
  > |            players[tx.origin].referrer = referrer;
    |            players[tx.origin].checkpoint = players[tx.origin].tickets;
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'RefStorage':
    |        if (players[tx.origin].referrer == address(0) && players[referrer].tickets >= interval && referrer != tx.origin) {
    |            players[tx.origin].referrer = referrer;
  > |            players[tx.origin].checkpoint = players[tx.origin].tickets;
    |
    |            emit ReferrerAdded(tx.origin, referrer);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |    function transferOwnership(address newOwner) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function changeContracts(address contractAddr) public onlyOwner {
  > |        contracts[contractAddr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function changePrize(uint256 newPrize) public onlyOwner {
  > |        prize = newPrize;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'RefStorage':
    |
    |    function changeInterval(uint256 newInterval) public onlyOwner {
  > |        interval = newInterval;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(151)

[33mWarning[0m for LockedEther in contract 'Storage':
    |}
    |
  > |contract Storage {
    |    address game;
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |    address game;
    |
  > |    mapping (address => uint256) public amount;
    |    mapping (uint256 => address[]) public level;
    |    uint256 public count;
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |
    |    mapping (address => uint256) public amount;
  > |    mapping (uint256 => address[]) public level;
    |    uint256 public count;
    |    uint256 public maximum;
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |    }
    |
  > |    function purchase(address addr) public {
    |        require(msg.sender == game);
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |    }
    |
  > |    function draw(uint256 goldenWinners) public view returns(address[] addresses) {
    |
    |        addresses = new address[](goldenWinners);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |    mapping (address => uint256) public amount;
    |    mapping (uint256 => address[]) public level;
  > |    uint256 public count;
    |    uint256 public maximum;
    |
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |    mapping (uint256 => address[]) public level;
    |    uint256 public count;
  > |    uint256 public maximum;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |                for (uint256 i = 0; i < level[amount[addr] - 1].length; i++) {
    |                    if (level[amount[addr] - 1][i] == addr) {
  > |                        delete level[amount[addr] - 1][i];
    |                        break;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |pragma solidity 0.4.25;
    |
  > |interface IERC20 {
    |    function balanceOf(address who) external view returns (uint256);
    |    function transfer(address to, uint256 value) external returns (bool);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        require(msg.sender == game);
    |
  > |        amount[addr]++;
    |        if (amount[addr] > 1) {
    |            level[amount[addr]].push(addr);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |        amount[addr]++;
    |        if (amount[addr] > 1) {
  > |            level[amount[addr]].push(addr);
    |            if (amount[addr] > 2) {
    |                for (uint256 i = 0; i < level[amount[addr] - 1].length; i++) {
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |                }
    |            } else if (amount[addr] == 2) {
  > |                count++;
    |            }
    |            if (amount[addr] > maximum) {
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Storage':
    |            }
    |            if (amount[addr] > maximum) {
  > |                maximum = amount[addr];
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(87)

[33mWarning[0m for LockedEther in contract 'WinnerTicket':
    |}
    |
  > |contract WinnerTicket {
    |    address owner;
    |    string public constant name = "WinnerTicket";
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'WinnerTicket':
    |contract WinnerTicket {
    |    address owner;
  > |    string public constant name = "WinnerTicket";
    |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'WinnerTicket':
    |    address owner;
    |    string public constant name = "WinnerTicket";
  > |    string public constant symbol = "✓";
    |    event Transfer(address indexed from, address indexed to, uint256 value);
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'WinnerTicket':
    |        owner = msg.sender;
    |    }
  > |    function emitEvent(address addr) public {
    |        require(msg.sender == owner);
    |        emit Transfer(msg.sender, addr, 1);
  at /home/jiaming/mavs_srcs/contract@0x978275d7652a35dc8df9ce6b62822aea6a97589d.sol(30)


