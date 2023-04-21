Processing contract: /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol:InvestInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol:ReferalRegistrator
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.24;
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    constructor() public{
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(17)

[33mWarning[0m for LockedEther in contract 'ReferalRegistrator':
    |}
    |
  > |contract ReferalRegistrator is Ownable {
    |    
    |    InvestInterface public invest;
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'ReferalRegistrator':
    |    }
    |
  > |    function setInvest(address _address) external onlyOwner {
    |        invest = InvestInterface(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'ReferalRegistrator':
    |    }
    |    
  > |    function setToken(address _address) external onlyOwner {
    |        token = ERC20(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'ReferalRegistrator':
    |    }
    |    
  > |    function receiveApproval(address from, uint256 _amount, address _token, bytes _data) {
    |        require(token.transferFrom(from, owner, registrationPrice));
    |        invest.registerReferral(from);
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'ReferalRegistrator':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    constructor() public{
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'ReferalRegistrator':
    |    }
    |
  > |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'ReferalRegistrator':
    |contract ReferalRegistrator is Ownable {
    |    
  > |    InvestInterface public invest;
    |    ERC20 public token;
    |    
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'ReferalRegistrator':
    |    
    |    InvestInterface public invest;
  > |    ERC20 public token;
    |    
    |    uint256 public registrationPrice = 10**6;
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'ReferalRegistrator':
    |    ERC20 public token;
    |    
  > |    uint256 public registrationPrice = 10**6;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(35)

[33mWarning[0m for UnhandledException in contract 'ReferalRegistrator':
    |    
    |    function receiveApproval(address from, uint256 _amount, address _token, bytes _data) {
  > |        require(token.transferFrom(from, owner, registrationPrice));
    |        invest.registerReferral(from);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(50)

[33mWarning[0m for UnhandledException in contract 'ReferalRegistrator':
    |    function receiveApproval(address from, uint256 _amount, address _token, bytes _data) {
    |        require(token.transferFrom(from, owner, registrationPrice));
  > |        invest.registerReferral(from);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(51)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferalRegistrator':
    |    
    |    function receiveApproval(address from, uint256 _amount, address _token, bytes _data) {
  > |        require(token.transferFrom(from, owner, registrationPrice));
    |        invest.registerReferral(from);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(50)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ReferalRegistrator':
    |    function receiveApproval(address from, uint256 _amount, address _token, bytes _data) {
    |        require(token.transferFrom(from, owner, registrationPrice));
  > |        invest.registerReferral(from);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferalRegistrator':
    |    function transferOwnership(address newOwner) external onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferalRegistrator':
    |
    |    function setInvest(address _address) external onlyOwner {
  > |        invest = InvestInterface(_address);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'ReferalRegistrator':
    |    
    |    function setToken(address _address) external onlyOwner {
  > |        token = ERC20(_address);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x21b4d32e6875a6c2e44032da71a33438bbae8820.sol(46)


