Processing contract: /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol:IContractErc20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol:IContractStakeToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol:RapidProfit
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnerChanged(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function changeOwner(address _newOwner) onlyOwner public {
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(80)

[33mWarning[0m for DAOConstantGas in contract 'RapidProfit':
    |    function withdrawOwnerEth(uint256 _amount) public onlyOwner returns (bool) {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        WithdrawEther(owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(247)

[33mWarning[0m for LockedEther in contract 'RapidProfit':
    |}
    |
  > |contract RapidProfit is Ownable {
    |    using SafeMath for uint256;
    |    IContractStakeToken public contractStakeToken;
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(125)

[33mWarning[0m for TODAmount in contract 'RapidProfit':
    |    function withdrawOwnerEth(uint256 _amount) public onlyOwner returns (bool) {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        WithdrawEther(owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(247)

[31mViolation[0m for TODReceiver in contract 'RapidProfit':
    |    function withdrawOwnerEth(uint256 _amount) public onlyOwner returns (bool) {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        WithdrawEther(owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(247)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |        require(_investor != address(0));
    |        require(_value > 0);
  > |        require(contractErc20Token.allowance(_investor, this) >= _value);
    |
    |        bool resultStake = contractStakeToken.depositToken(_investor, _stakeType, now, _value);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(158)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |        require(contractErc20Token.allowance(_investor, this) >= _value);
    |
  > |        bool resultStake = contractStakeToken.depositToken(_investor, _stakeType, now, _value);
    |        balanceTokenContract = balanceTokenContract.add(_value);
    |        bool resultErc20 = contractErc20Token.transferFrom(_investor, this, _value);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(160)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |        bool resultStake = contractStakeToken.depositToken(_investor, _stakeType, now, _value);
    |        balanceTokenContract = balanceTokenContract.add(_value);
  > |        bool resultErc20 = contractErc20Token.transferFrom(_investor, this, _value);
    |
    |        return (resultStake && resultErc20);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(162)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |        require(_address != address(0));
    |        require(_now > 0);
  > |        result = contractStakeToken.validWithdrawToken(_address, _now);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(170)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |
    |    function balanceOfToken(address _owner) public view returns (uint256 balance) {
  > |        return contractStakeToken.balanceOfToken(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(174)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |
    |    function getCountStakesToken() public view returns (uint256 result) {
  > |        result = contractStakeToken.getCountStakesToken();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(178)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |
    |    function getCountTransferInsToken(address _address) public view returns (uint256 result) {
  > |        result = contractStakeToken.getCountTransferInsToken(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(182)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |        uint8 _status
    |    ) {
  > |        (_owner, _amount, _stakeType, _time, _status) = contractStakeToken.getTokenStakeByIndex(_index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(192)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |        bool _isRipe
    |    ) {
  > |        (_indexStake, _isRipe) = contractStakeToken.getTokenTransferInsByAddress(_address, _index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(199)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |
    |    function calculator(uint8 _currentStake, uint256 _amount, uint256 _amountHours) public view returns (uint256 result){
  > |        result = contractStakeToken.calculator(_currentStake, _amount, _amountHours);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(207)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |
    |    function getBalanceTokenContract() public view returns (uint256 result){
  > |        return contractErc20Token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(215)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |
    |    function withdrawToken(address _address) public returns (uint256 result){
  > |        uint256 amount = contractStakeToken.withdrawToken(_address);
    |        require(getBalanceTokenContract() >= amount);
    |        bool success = contractErc20Token.transfer(_address, amount);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(219)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |        uint256 amount = contractStakeToken.withdrawToken(_address);
    |        require(getBalanceTokenContract() >= amount);
  > |        bool success = contractErc20Token.transfer(_address, amount);
    |        //require(success);
    |        WithdrawToken(_address, amount);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(221)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |        require(_index >= 0);
    |        require(msg.sender != address(0));
  > |        result = contractStakeToken.cancel(_index, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(230)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |
    |    function changeRatesToken(uint8 _numberRate, uint256 _percent) public onlyOwner returns (bool result) {
  > |        result = contractStakeToken.changeRates(_numberRate, _percent);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(234)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |
    |    function getTotalTokenDepositByAddress(address _owner) public view returns (uint256 result) {
  > |        result = contractStakeToken.getTotalTokenDepositByAddress(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(238)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |
    |    function getTotalTokenWithdrawByAddress(address _owner) public view returns (uint256 result) {
  > |        result = contractStakeToken.getTotalTokenWithdrawByAddress(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(242)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |    function withdrawOwnerEth(uint256 _amount) public onlyOwner returns (bool) {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        WithdrawEther(owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(247)

[33mWarning[0m for UnhandledException in contract 'RapidProfit':
    |    function withdrawOwnerToken(uint256 _amount) public onlyOwner returns (bool) {
    |        require(getBalanceTokenContract() >= _amount);
  > |        contractErc20Token.transfer(owner, _amount);
    |        WithdrawToken(owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |        require(_investor != address(0));
    |        require(_value > 0);
  > |        require(contractErc20Token.allowance(_investor, this) >= _value);
    |
    |        bool resultStake = contractStakeToken.depositToken(_investor, _stakeType, now, _value);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |        require(contractErc20Token.allowance(_investor, this) >= _value);
    |
  > |        bool resultStake = contractStakeToken.depositToken(_investor, _stakeType, now, _value);
    |        balanceTokenContract = balanceTokenContract.add(_value);
    |        bool resultErc20 = contractErc20Token.transferFrom(_investor, this, _value);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |        bool resultStake = contractStakeToken.depositToken(_investor, _stakeType, now, _value);
    |        balanceTokenContract = balanceTokenContract.add(_value);
  > |        bool resultErc20 = contractErc20Token.transferFrom(_investor, this, _value);
    |
    |        return (resultStake && resultErc20);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |        require(_address != address(0));
    |        require(_now > 0);
  > |        result = contractStakeToken.validWithdrawToken(_address, _now);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |
    |    function balanceOfToken(address _owner) public view returns (uint256 balance) {
  > |        return contractStakeToken.balanceOfToken(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(174)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |
    |    function getCountStakesToken() public view returns (uint256 result) {
  > |        result = contractStakeToken.getCountStakesToken();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |
    |    function getCountTransferInsToken(address _address) public view returns (uint256 result) {
  > |        result = contractStakeToken.getCountTransferInsToken(_address);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(182)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |        uint8 _status
    |    ) {
  > |        (_owner, _amount, _stakeType, _time, _status) = contractStakeToken.getTokenStakeByIndex(_index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |        bool _isRipe
    |    ) {
  > |        (_indexStake, _isRipe) = contractStakeToken.getTokenTransferInsByAddress(_address, _index);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |
    |    function calculator(uint8 _currentStake, uint256 _amount, uint256 _amountHours) public view returns (uint256 result){
  > |        result = contractStakeToken.calculator(_currentStake, _amount, _amountHours);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |
    |    function getBalanceTokenContract() public view returns (uint256 result){
  > |        return contractErc20Token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |
    |    function withdrawToken(address _address) public returns (uint256 result){
  > |        uint256 amount = contractStakeToken.withdrawToken(_address);
    |        require(getBalanceTokenContract() >= amount);
    |        bool success = contractErc20Token.transfer(_address, amount);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |        uint256 amount = contractStakeToken.withdrawToken(_address);
    |        require(getBalanceTokenContract() >= amount);
  > |        bool success = contractErc20Token.transfer(_address, amount);
    |        //require(success);
    |        WithdrawToken(_address, amount);
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |        require(_index >= 0);
    |        require(msg.sender != address(0));
  > |        result = contractStakeToken.cancel(_index, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |
    |    function changeRatesToken(uint8 _numberRate, uint256 _percent) public onlyOwner returns (bool result) {
  > |        result = contractStakeToken.changeRates(_numberRate, _percent);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |
    |    function getTotalTokenDepositByAddress(address _owner) public view returns (uint256 result) {
  > |        result = contractStakeToken.getTotalTokenDepositByAddress(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |
    |    function getTotalTokenWithdrawByAddress(address _owner) public view returns (uint256 result) {
  > |        result = contractStakeToken.getTotalTokenWithdrawByAddress(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |    function withdrawOwnerToken(uint256 _amount) public onlyOwner returns (bool) {
    |        require(getBalanceTokenContract() >= _amount);
  > |        contractErc20Token.transfer(owner, _amount);
    |        WithdrawToken(owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RapidProfit':
    |    function withdrawOwnerEth(uint256 _amount) public onlyOwner returns (bool) {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |        WithdrawEther(owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'RapidProfit':
    |
    |        bool resultStake = contractStakeToken.depositToken(_investor, _stakeType, now, _value);
  > |        balanceTokenContract = balanceTokenContract.add(_value);
    |        bool resultErc20 = contractErc20Token.transferFrom(_investor, this, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'RapidProfit':
    |        require(_newOwner != address(0));
    |        OwnerChanged(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'RapidProfit':
    |    function setContractStakeToken (address _addressContract) public onlyOwner {
    |        require(_addressContract != address(0));
  > |        contractStakeToken = IContractStakeToken(_addressContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'RapidProfit':
    |    function setContractErc20Token (address _addressContract) public onlyOwner {
    |        require(_addressContract != address(0));
  > |        contractErc20Token = IContractErc20Token(_addressContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(152)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x38a224e8f38347411091bd02e6320021f916bcf6.sol(3)


