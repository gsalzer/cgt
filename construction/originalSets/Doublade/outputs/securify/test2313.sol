Processing contract: /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol:AIAcrowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol:myOwned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol:token
[33mWarning[0m for DAOConstantGas in contract 'AIAcrowdsale':
    |        require(!saleActive());
    |        require(now > stopDate );
  > |        contractWallet.transfer(this.balance);
    |        contractTokenReward.transfer(contractWallet, this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(75)

[33mWarning[0m for LockedEther in contract 'AIAcrowdsale':
    |}
    |
  > |contract AIAcrowdsale is myOwned {
    |    uint public startDate;
    |    uint public stopDate;
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    function myOwned() public { contractOwner = msg.sender; }
    |    modifier onlyOwner { require(msg.sender == contractOwner); _;}
  > |    function exOwner(address newOwner) onlyOwner public { contractOwner = newOwner;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    token public contractTokenReward;
    |    address public contractWallet;
  > |    mapping(address => uint256) public balanceOf;
    |    event GoalReached(address receiver, uint amount);
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |
    |contract myOwned {
  > |    address public contractOwner;
    |    function myOwned() public { contractOwner = msg.sender; }
    |    modifier onlyOwner { require(msg.sender == contractOwner); _;}
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |
    |contract AIAcrowdsale is myOwned {
  > |    uint public startDate;
    |    uint public stopDate;
    |    uint public fundingGoal;
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |contract AIAcrowdsale is myOwned {
    |    uint public startDate;
  > |    uint public stopDate;
    |    uint public fundingGoal;
    |    uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    uint public startDate;
    |    uint public stopDate;
  > |    uint public fundingGoal;
    |    uint public amountRaised;
    |    token public contractTokenReward;
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    uint public stopDate;
    |    uint public fundingGoal;
  > |    uint public amountRaised;
    |    token public contractTokenReward;
    |    address public contractWallet;
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    uint public fundingGoal;
    |    uint public amountRaised;
  > |    token public contractTokenReward;
    |    address public contractWallet;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    uint public amountRaised;
    |    token public contractTokenReward;
  > |    address public contractWallet;
    |    mapping(address => uint256) public balanceOf;
    |    event GoalReached(address receiver, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    }
    |
  > |    function saleActive() public constant returns (bool) {
    |        return (now >= startDate && now <= stopDate && amountRaised < fundingGoal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    }
    |
  > |    function getRateAt(uint256 at) public constant returns (uint256) {
    |        if (at < startDate) {return 0;} 
    |        else if (at < (startDate + 168 hours)) {return 10000;} 
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    }
    |
  > |    function getRateNow() public constant returns (uint256) {
    |        return getRateAt(now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'AIAcrowdsale':
    |    }
    |
  > |    function saleEnd() public onlyOwner {
    |        require(!saleActive());
    |        require(now > stopDate );
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(72)

[31mViolation[0m for TODAmount in contract 'AIAcrowdsale':
    |        require(!saleActive());
    |        require(now > stopDate );
  > |        contractWallet.transfer(this.balance);
    |        contractTokenReward.transfer(contractWallet, this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(75)

[33mWarning[0m for TODReceiver in contract 'AIAcrowdsale':
    |        require(!saleActive());
    |        require(now > stopDate );
  > |        contractWallet.transfer(this.balance);
    |        contractTokenReward.transfer(contractWallet, this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(75)

[33mWarning[0m for UnhandledException in contract 'AIAcrowdsale':
    |        require(!saleActive());
    |        require(now > stopDate );
  > |        contractWallet.transfer(this.balance);
    |        contractTokenReward.transfer(contractWallet, this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(75)

[33mWarning[0m for UnhandledException in contract 'AIAcrowdsale':
    |        require(now > stopDate );
    |        contractWallet.transfer(this.balance);
  > |        contractTokenReward.transfer(contractWallet, this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(76)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AIAcrowdsale':
    |        require(!saleActive());
    |        require(now > stopDate );
  > |        contractWallet.transfer(this.balance);
    |        contractTokenReward.transfer(contractWallet, this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AIAcrowdsale':
    |        require(now > stopDate );
    |        contractWallet.transfer(this.balance);
  > |        contractTokenReward.transfer(contractWallet, this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'AIAcrowdsale':
    |    function myOwned() public { contractOwner = msg.sender; }
    |    modifier onlyOwner { require(msg.sender == contractOwner); _;}
  > |    function exOwner(address newOwner) onlyOwner public { contractOwner = newOwner;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(7)

[33mWarning[0m for LockedEther in contract 'myOwned':
    |pragma solidity ^0.4.18;
    |
  > |contract myOwned {
    |    address public contractOwner;
    |    function myOwned() public { contractOwner = msg.sender; }
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'myOwned':
    |    function myOwned() public { contractOwner = msg.sender; }
    |    modifier onlyOwner { require(msg.sender == contractOwner); _;}
  > |    function exOwner(address newOwner) onlyOwner public { contractOwner = newOwner;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'myOwned':
    |
    |contract myOwned {
  > |    address public contractOwner;
    |    function myOwned() public { contractOwner = msg.sender; }
    |    modifier onlyOwner { require(msg.sender == contractOwner); _;}
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'myOwned':
    |    function myOwned() public { contractOwner = msg.sender; }
    |    modifier onlyOwner { require(msg.sender == contractOwner); _;}
  > |    function exOwner(address newOwner) onlyOwner public { contractOwner = newOwner;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x969e98cc8c4cf426ec3b2b649fad0ee565d947dd.sol(7)


