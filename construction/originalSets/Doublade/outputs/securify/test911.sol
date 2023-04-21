Processing contract: /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol:MTVote
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol:TVCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol:TVToken
[31mViolation[0m for DAO in contract 'MTVote':
    |        uint rate = TVCrowdsale(TVCrowdsaleAddress).currentRate();
    |
  > |        TVCrowdsale(TVCrowdsaleAddress).buyTokens.value(msg.value)(this);
    |        bytes memory data = toBytes(targetId);
    |        checkAndBuySender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'MTVote':
    |    bool pause = false;
    |
  > |    mapping(uint => uint) public targets;
    |    uint public targetIdsSize = 0;
    |    uint[] public targetIds;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'MTVote':
    |    }
    |
  > |    function changeAndVote(uint targetId) public payable {
    |        require(!pause);
    |        uint rate = TVCrowdsale(TVCrowdsaleAddress).currentRate();
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'MTVote':
    |    }
    |
  > |    function onTokenReceived(address _from, uint256 _value, bytes _data) public returns (bytes4) {
    |        require(msg.sender == TVTokenAddress);
    |        require(!pause);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'MTVote':
    |    }
    |
  > |    function setPause(bool isPaused) public onlyOwnerOrManager {
    |        pause = isPaused;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'MTVote':
    |    }
    |
  > |    function changeTVTokenAddress(address newAddress) public onlyOwnerOrManager {
    |        TVTokenAddress = newAddress;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(154)

[31mViolation[0m for MissingInputValidation in contract 'MTVote':
    |    }
    |
  > |    function changeTVCrowdsaleAddress(address newAddress) public onlyOwnerOrManager {
    |        TVCrowdsaleAddress = newAddress;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'MTVote':
    |    }
    |
  > |    function setManager(address _manager) public onlyOwner {
    |        manager = _manager;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |
    |contract MTVote is Ownable {
  > |    address public TVTokenAddress;
    |    address public TVCrowdsaleAddress;
    |    address public manager;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |contract MTVote is Ownable {
    |    address public TVTokenAddress;
  > |    address public TVCrowdsaleAddress;
    |    address public manager;
    |    address public wallet;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |    address public TVTokenAddress;
    |    address public TVCrowdsaleAddress;
  > |    address public manager;
    |    address public wallet;
    |    address internal checkAndBuySender;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |    address public TVCrowdsaleAddress;
    |    address public manager;
  > |    address public wallet;
    |    address internal checkAndBuySender;
    |    bytes4 constant TOKEN_RECEIVED = bytes4(keccak256("onTokenReceived(address,uint256,bytes)"));
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |
    |    mapping(uint => uint) public targets;
  > |    uint public targetIdsSize = 0;
    |    uint[] public targetIds;
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |    mapping(uint => uint) public targets;
    |    uint public targetIdsSize = 0;
  > |    uint[] public targetIds;
    |
    |    modifier onlyOwnerOrManager() {
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |    }
    |
  > |    function clear() public onlyOwnerOrManager {
    |        targetIdsSize = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |    }
    |
  > |    function convertBytesToBytes32(bytes inBytes) internal pure returns (bytes32 out) {
    |        if (inBytes.length == 0) {
    |            return 0x0;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'MTVote':
    |    }
    |
  > |    function toBytes(uint256 x) internal pure returns (bytes b) {
    |        b = new bytes(32);
    |        assembly {mstore(add(b, 32), x)}
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(182)

[31mViolation[0m for TODReceiver in contract 'MTVote':
    |        uint rate = TVCrowdsale(TVCrowdsaleAddress).currentRate();
    |
  > |        TVCrowdsale(TVCrowdsaleAddress).buyTokens.value(msg.value)(this);
    |        bytes memory data = toBytes(targetId);
    |        checkAndBuySender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(114)

[33mWarning[0m for UnhandledException in contract 'MTVote':
    |    function changeAndVote(uint targetId) public payable {
    |        require(!pause);
  > |        uint rate = TVCrowdsale(TVCrowdsaleAddress).currentRate();
    |
    |        TVCrowdsale(TVCrowdsaleAddress).buyTokens.value(msg.value)(this);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(112)

[33mWarning[0m for UnhandledException in contract 'MTVote':
    |        uint rate = TVCrowdsale(TVCrowdsaleAddress).currentRate();
    |
  > |        TVCrowdsale(TVCrowdsaleAddress).buyTokens.value(msg.value)(this);
    |        bytes memory data = toBytes(targetId);
    |        checkAndBuySender = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(114)

[33mWarning[0m for UnhandledException in contract 'MTVote':
    |        bytes memory data = toBytes(targetId);
    |        checkAndBuySender = msg.sender;
  > |        TVToken(TVTokenAddress).safeTransfer(this, msg.value * rate, data);
    |
    |        emit changeAndVoteEvent(msg.sender, rate, msg.value, targetId);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(117)

[33mWarning[0m for UnhandledException in contract 'MTVote':
    |        uint targetId = uint256(convertBytesToBytes32(_data));
    |        targets[targetId] += _value;
  > |        TVToken(TVTokenAddress).transfer(wallet, _value);
    |        _from = this == _from ? checkAndBuySender : _from;
    |        checkAndBuySender = address(0);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MTVote':
    |    function changeAndVote(uint targetId) public payable {
    |        require(!pause);
  > |        uint rate = TVCrowdsale(TVCrowdsaleAddress).currentRate();
    |
    |        TVCrowdsale(TVCrowdsaleAddress).buyTokens.value(msg.value)(this);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MTVote':
    |        bytes memory data = toBytes(targetId);
    |        checkAndBuySender = msg.sender;
  > |        TVToken(TVTokenAddress).safeTransfer(this, msg.value * rate, data);
    |
    |        emit changeAndVoteEvent(msg.sender, rate, msg.value, targetId);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(117)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MTVote':
    |        uint targetId = uint256(convertBytesToBytes32(_data));
    |        targets[targetId] += _value;
  > |        TVToken(TVTokenAddress).transfer(wallet, _value);
    |        _from = this == _from ? checkAndBuySender : _from;
    |        checkAndBuySender = address(0);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'MTVote':
    |pragma solidity ^0.4.24;
    |
  > |// File: zeppelin-solidity/contracts/ownership/Ownable.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'MTVote':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'MTVote':
    |        TVCrowdsale(TVCrowdsaleAddress).buyTokens.value(msg.value)(this);
    |        bytes memory data = toBytes(targetId);
  > |        checkAndBuySender = msg.sender;
    |        TVToken(TVTokenAddress).safeTransfer(this, msg.value * rate, data);
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'MTVote':
    |        }
    |        if (!inList) {
  > |            targetIds.push(targetId);
    |            targetIdsSize++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'MTVote':
    |        if (!inList) {
    |            targetIds.push(targetId);
  > |            targetIdsSize++;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'MTVote':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'MTVote':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'MTVote':
    |        require(!pause);
    |        uint targetId = uint256(convertBytesToBytes32(_data));
  > |        targets[targetId] += _value;
    |        TVToken(TVTokenAddress).transfer(wallet, _value);
    |        _from = this == _from ? checkAndBuySender : _from;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'MTVote':
    |        TVToken(TVTokenAddress).transfer(wallet, _value);
    |        _from = this == _from ? checkAndBuySender : _from;
  > |        checkAndBuySender = address(0);
    |
    |        bool inList = false;
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MTVote':
    |
    |    function setPause(bool isPaused) public onlyOwnerOrManager {
  > |        pause = isPaused;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'MTVote':
    |
    |    function clear() public onlyOwnerOrManager {
  > |        targetIdsSize = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'MTVote':
    |
    |    function changeTVTokenAddress(address newAddress) public onlyOwnerOrManager {
  > |        TVTokenAddress = newAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'MTVote':
    |
    |    function changeTVCrowdsaleAddress(address newAddress) public onlyOwnerOrManager {
  > |        TVCrowdsaleAddress = newAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'MTVote':
    |
    |    function setManager(address _manager) public onlyOwner {
  > |        manager = _manager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(163)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3a2fd07ec2ad6f355f93af695a7cf858f5967b78.sol(60)


