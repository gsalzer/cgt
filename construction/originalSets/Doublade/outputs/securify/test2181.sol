Processing contract: /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol:GiftEth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol:GiftEthFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GiftEth':
    |    require(msg.sender == recipient);
    |    require(now >= lockTs);
  > |    msg.sender.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(59)

[33mWarning[0m for LockedEther in contract 'GiftEth':
    |}
    |
  > |contract GiftEth {
    |
    |  event RecipientChanged(address indexed _oldRecipient, address indexed _newRecipient);
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'GiftEth':
    |  }
    |
  > |  function changeRecipient(address _newRecipient) public {
    |    require(msg.sender == recipient);
    |    RecipientChanged(recipient, _newRecipient);
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'GiftEth':
    |  event RecipientChanged(address indexed _oldRecipient, address indexed _newRecipient);
    |
  > |  address public gifter;
    |  address public recipient;
    |  uint256 public lockTs;
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'GiftEth':
    |
    |  address public gifter;
  > |  address public recipient;
    |  uint256 public lockTs;
    |  string public giftMessage;
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'GiftEth':
    |  address public gifter;
    |  address public recipient;
  > |  uint256 public lockTs;
    |  string public giftMessage;
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'GiftEth':
    |  address public recipient;
    |  uint256 public lockTs;
  > |  string public giftMessage;
    |
    |  function GiftEth(address _gifter, address _recipient, uint256 _lockTs, string _giftMessage) payable public {
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'GiftEth':
    |  }
    |
  > |  function withdraw() public {
    |    require(msg.sender == recipient);
    |    require(now >= lockTs);
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(56)

[31mViolation[0m for TODAmount in contract 'GiftEth':
    |    require(msg.sender == recipient);
    |    require(now >= lockTs);
  > |    msg.sender.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(59)

[33mWarning[0m for TODReceiver in contract 'GiftEth':
    |    require(msg.sender == recipient);
    |    require(now >= lockTs);
  > |    msg.sender.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(59)

[33mWarning[0m for UnhandledException in contract 'GiftEth':
    |    require(msg.sender == recipient);
    |    require(now >= lockTs);
  > |    msg.sender.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(59)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GiftEth':
    |    require(msg.sender == recipient);
    |    require(now >= lockTs);
  > |    msg.sender.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftEth':
    |    require(msg.sender == recipient);
    |    RecipientChanged(recipient, _newRecipient);
  > |    recipient = _newRecipient;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(65)

[31mViolation[0m for LockedEther in contract 'GiftEthFactory':
    |}
    |
  > |contract GiftEthFactory is Ownable {
    |
    |  event GiftGenerated(address indexed _gifter, address indexed _recipient, address indexed _gift, uint256 _amount, uint256 _lockTs, string _giftMessage);
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'GiftEthFactory':
    |  }
    |
  > |  function setFrozen(bool _frozen) public onlyOwner {
    |    frozen = _frozen;
    |    Frozen(frozen);
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'GiftEthFactory':
    |  }
    |
  > |  function giftEth(address _recipient, uint256 _lockTs, string _giftMessage) payable public notFrozen {
    |    GiftEth gift = (new GiftEth).value(msg.value)(msg.sender, _recipient, _lockTs, _giftMessage);
    |    GiftGenerated(msg.sender, _recipient, address(gift), msg.value, _lockTs, _giftMessage);
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'GiftEthFactory':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'GiftEthFactory':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'GiftEthFactory':
    |}
    |
  > |contract GiftEthFactory is Ownable {
    |
    |  event GiftGenerated(address indexed _gifter, address indexed _recipient, address indexed _gift, uint256 _amount, uint256 _lockTs, string _giftMessage);
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'GiftEthFactory':
    |  event Frozen(bool _frozen);
    |
  > |  bool public frozen;
    |
    |  modifier notFrozen {
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftEthFactory':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'GiftEthFactory':
    |
    |  function setFrozen(bool _frozen) public onlyOwner {
  > |    frozen = _frozen;
    |    Frozen(frozen);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(83)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.17;
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e21698b186c403e1bc40f0ce9da95b24ca73be5.sol(35)


