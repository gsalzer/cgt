Processing contract: /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol:AlsIco
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol:AlsToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AlsIco':
    |    function withdrawEther(uint _amount) external onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        FundTransfer(owner, _amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(142)

[33mWarning[0m for LockedEther in contract 'AlsIco':
    |}
    |
  > |contract AlsIco is Owned, SafeMath {
    |
    |    // Crowdsale start time in seconds since epoch.
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'AlsIco':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |contract SafeMath {
    |
  > |    function safeMul(uint a, uint b) internal pure returns (uint) {
    |        uint c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |    }
    |
  > |    function safeDiv(uint a, uint b) internal pure returns (uint) {
    |        require(b > 0);
    |        uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal pure returns (uint) {
    |        require(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal pure returns (uint) {
    |        uint c = a + b;
    |        require(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |    }
    |
  > |    function getOwner() public constant returns (address currentOwner) {
    |        return owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |    // Crowdsale start time in seconds since epoch.
    |    // Equivalent to Wednesday, December 20th 2017, 3 pm London time.
  > |    uint256 public constant crowdsaleStartTime = 1513782000;
    |
    |    // Crowdsale end time in seconds since epoch.
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |    // Crowdsale end time in seconds since epoch.
    |    // Equivalent to Tuesday, February 20th 2018, 3 pm London time.
  > |    uint256 public constant crowdsaleEndTime = 1519138800;
    |
    |    // One thousand ALS with 18 decimals [10 to the power of 21 (3 + 18) tokens].
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |    uint256 private constant oneThousandAls = uint256(10) ** 21;
    |
  > |    uint public amountRaised;
    |    uint public tokensSold;
    |    AlsToken public alsToken;
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |
    |    uint public amountRaised;
  > |    uint public tokensSold;
    |    AlsToken public alsToken;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |    uint public amountRaised;
    |    uint public tokensSold;
  > |    AlsToken public alsToken;
    |
    |    event FundTransfer(address backer, uint amount, bool isContribution);
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |
    |    // Returns how many ALS are given in exchange for 1 ETH.
  > |    function getPrice() public constant onlyAfterStart onlyBeforeEnd returns (uint256) {
    |        if (tokensSold < 1600 * oneThousandAls) {
    |            // Firs 2% (equivalent to first 1.600.000 ALS) get 70% bonus (equivalent to 17000 ALS per 1 ETH).
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'AlsIco':
    |    }
    |
  > |    function withdrawEther(uint _amount) external onlyOwner {
    |        require(this.balance >= _amount);
    |        owner.transfer(_amount);
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(140)

[33mWarning[0m for TODAmount in contract 'AlsIco':
    |    function withdrawEther(uint _amount) external onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        FundTransfer(owner, _amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(142)

[31mViolation[0m for TODReceiver in contract 'AlsIco':
    |    function withdrawEther(uint _amount) external onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        FundTransfer(owner, _amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(142)

[33mWarning[0m for UnhandledException in contract 'AlsIco':
    |    function withdrawEther(uint _amount) external onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        FundTransfer(owner, _amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AlsIco':
    |    function withdrawEther(uint _amount) external onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        FundTransfer(owner, _amount, false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'AlsIco':
    |
    |    function transferOwnership(address newOwner) external onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(49)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address internal owner;
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function getOwner() public constant returns (address currentOwner) {
    |        return owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address newOwner) external onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.11;
    |
  > |contract SafeMath {
    |
    |    function safeMul(uint a, uint b) internal pure returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x8a19d9bbbc5edf01ddd4acc6736f4091e67ad72a.sol(3)


