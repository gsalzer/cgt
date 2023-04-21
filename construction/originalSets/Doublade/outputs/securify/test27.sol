Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:DRCWalletManager
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:DepositWithdraw
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:IDRCWalletMgrParams
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:OwnerContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:TokenDestructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol:Withdrawable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Claimable':
    |}
    |
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(179)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(204)

[33mWarning[0m for DAOConstantGas in contract 'DRCWalletManager':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for LockedEther in contract 'DRCWalletManager':
    |}
    |
  > |contract DRCWalletManager is OwnerContract, Withdrawable, TokenDestructible {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(471)

[33mWarning[0m for TODAmount in contract 'DRCWalletManager':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for TODReceiver in contract 'DRCWalletManager':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |
    |        ERC20 tk = ERC20(_token);
  > |        tk.transfer(_to, _value);
    |        emit WithdrawToken(_token, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(128)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(170)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(171)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |        require(_contract != address(0));
    |        ownedContract = Claimable(_contract);
  > |        origOwner = ownedContract.owner();
    |
    |        // take ownership of the owned contract
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(441)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |
    |        // take ownership of the owned contract
  > |        ownedContract.claimOwnership();
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(444)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |     */
    |    function transferOwnershipBack() onlyOwner public {
  > |        ownedContract.transferOwnership(origOwner);
    |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(454)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |     */
    |    function changeOwnershipto(address _nextOwner)  onlyOwner public {
  > |        ownedContract.transferOwnership(_nextOwner);
    |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(465)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |    function getDepositInfo(address _deposit) onlyOwner public view returns (uint256, uint256) {
    |        require(_deposit != address(0));
  > |        uint256 _balance = tk.balanceOf(_deposit);
    |        uint256 frozenAmount = depositRepos[_deposit].frozen;
    |        // depositRepos[_deposit].balance = _balance;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(559)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |        address deposit = walletDeposits[_oldWallet];
    |        DepositWithdraw deposWithdr = DepositWithdraw(deposit);
  > |        require(deposWithdr.setWithdrawWallet(_newWallet));
    |
    |        WithdrawWallet[] storage withdrawWalletList = depositRepos[deposit].withdrawWallets;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(612)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |	 */
    |    function withdrawFromThis(DepositWithdraw _deposWithdr, uint256 _time, address _to, uint256 _value) private returns (bool) {
  > |        uint256 fee = params.chargeFee();
    |        uint256 realAmount = _value.sub(fee);
    |        address tokenReturn = params.chargeFeePool();
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(686)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |        uint256 fee = params.chargeFee();
    |        uint256 realAmount = _value.sub(fee);
  > |        address tokenReturn = params.chargeFeePool();
    |        if (tokenReturn != address(0) && fee > 0) {
    |            require(tk.transfer(tokenReturn, fee));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(688)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |        address tokenReturn = params.chargeFeePool();
    |        if (tokenReturn != address(0) && fee > 0) {
  > |            require(tk.transfer(tokenReturn, fee));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(690)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |        }
    |
  > |        require (tk.transfer(_to, realAmount));
    |        _deposWithdr.recordWithdraw(_time, _to, realAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(693)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |
    |        require (tk.transfer(_to, realAmount));
  > |        _deposWithdr.recordWithdraw(_time, _to, realAmount);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(694)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |        require(_to != address(0));
    |
  > |        uint256 _balance = tk.balanceOf(_deposit);
    |        if (_check) {
    |            require(_value <= _balance);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(718)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |         */
    |        if (_value > available) {
  > |            require(deposWithdr.checkWithdrawAmount(address(params), _value, _time));
    |            require(deposWithdr.withdrawToken(address(tk), this, available));
    |            
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(744)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |        if (_value > available) {
    |            require(deposWithdr.checkWithdrawAmount(address(params), _value, _time));
  > |            require(deposWithdr.withdrawToken(address(tk), this, available));
    |            
    |            require(withdrawFromThis(deposWithdr, _time, _to, _value));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(745)

[33mWarning[0m for UnhandledException in contract 'DRCWalletManager':
    |        }
    |        
  > |        return (deposWithdr.withdrawToken(address(tk), address(params), _time, _to, _value, params.chargeFee(), params.chargeFeePool()));        
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(751)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |
    |        ERC20 tk = ERC20(_token);
  > |        tk.transfer(_to, _value);
    |        emit WithdrawToken(_token, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(171)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |        require(_contract != address(0));
    |        ownedContract = Claimable(_contract);
  > |        origOwner = ownedContract.owner();
    |
    |        // take ownership of the owned contract
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |
    |        // take ownership of the owned contract
  > |        ownedContract.claimOwnership();
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |     */
    |    function transferOwnershipBack() onlyOwner public {
  > |        ownedContract.transferOwnership(origOwner);
    |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(454)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |     */
    |    function changeOwnershipto(address _nextOwner)  onlyOwner public {
  > |        ownedContract.transferOwnership(_nextOwner);
    |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(465)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |    function getDepositInfo(address _deposit) onlyOwner public view returns (uint256, uint256) {
    |        require(_deposit != address(0));
  > |        uint256 _balance = tk.balanceOf(_deposit);
    |        uint256 frozenAmount = depositRepos[_deposit].frozen;
    |        // depositRepos[_deposit].balance = _balance;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(559)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |        address deposit = walletDeposits[_oldWallet];
    |        DepositWithdraw deposWithdr = DepositWithdraw(deposit);
  > |        require(deposWithdr.setWithdrawWallet(_newWallet));
    |
    |        WithdrawWallet[] storage withdrawWalletList = depositRepos[deposit].withdrawWallets;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(612)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |	 */
    |    function withdrawFromThis(DepositWithdraw _deposWithdr, uint256 _time, address _to, uint256 _value) private returns (bool) {
  > |        uint256 fee = params.chargeFee();
    |        uint256 realAmount = _value.sub(fee);
    |        address tokenReturn = params.chargeFeePool();
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(686)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |        uint256 fee = params.chargeFee();
    |        uint256 realAmount = _value.sub(fee);
  > |        address tokenReturn = params.chargeFeePool();
    |        if (tokenReturn != address(0) && fee > 0) {
    |            require(tk.transfer(tokenReturn, fee));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(688)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |        address tokenReturn = params.chargeFeePool();
    |        if (tokenReturn != address(0) && fee > 0) {
  > |            require(tk.transfer(tokenReturn, fee));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(690)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |        }
    |
  > |        require (tk.transfer(_to, realAmount));
    |        _deposWithdr.recordWithdraw(_time, _to, realAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(693)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |
    |        require (tk.transfer(_to, realAmount));
  > |        _deposWithdr.recordWithdraw(_time, _to, realAmount);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(694)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |        require(_to != address(0));
    |
  > |        uint256 _balance = tk.balanceOf(_deposit);
    |        if (_check) {
    |            require(_value <= _balance);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(718)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |         */
    |        if (_value > available) {
  > |            require(deposWithdr.checkWithdrawAmount(address(params), _value, _time));
    |            require(deposWithdr.withdrawToken(address(tk), this, available));
    |            
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(744)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |        if (_value > available) {
    |            require(deposWithdr.checkWithdrawAmount(address(params), _value, _time));
  > |            require(deposWithdr.withdrawToken(address(tk), this, available));
    |            
    |            require(withdrawFromThis(deposWithdr, _time, _to, _value));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(745)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DRCWalletManager':
    |        }
    |        
  > |        return (deposWithdr.withdrawToken(address(tk), address(params), _time, _to, _value, params.chargeFee(), params.chargeFeePool()));        
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(751)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |pragma solidity ^0.4.13;
    |
  > |interface IDRCWalletMgrParams {
    |    function singleWithdrawMin() external returns (uint256); // min value of single withdraw
    |    function singleWithdrawMax() external returns (uint256); // Max value of single withdraw
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |    function bindContract(address _contract) onlyOwner public returns (bool) {
    |        require(_contract != address(0));
  > |        ownedContract = Claimable(_contract);
    |        origOwner = ownedContract.owner();
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        require(_contract != address(0));
    |        ownedContract = Claimable(_contract);
  > |        origOwner = ownedContract.owner();
    |
    |        // take ownership of the owned contract
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |    function transferOwnershipBack() onlyOwner public {
    |        ownedContract.transferOwnership(origOwner);
  > |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        ownedContract.transferOwnership(origOwner);
    |        ownedContract = Claimable(address(0));
  > |        origOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |    function changeOwnershipto(address _nextOwner)  onlyOwner public {
    |        ownedContract.transferOwnership(_nextOwner);
  > |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        ownedContract.transferOwnership(_nextOwner);
    |        ownedContract = Claimable(address(0));
  > |        origOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        require(_walletParams != address(0));
    |
  > |        tk = ERC20(_token);
    |        params = IDRCWalletMgrParams(_walletParams);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |
    |        tk = ERC20(_token);
  > |        params = IDRCWalletMgrParams(_walletParams);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(514)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        DepositWithdraw deposWithdr = new DepositWithdraw(_wallet); // new contract for deposit
    |        address _deposit = address(deposWithdr);
  > |        walletDeposits[_wallet] = _deposit;
    |        WithdrawWallet[] storage withdrawWalletList = depositRepos[_deposit].withdrawWallets;
    |        withdrawWalletList.push(WithdrawWallet("default wallet", _wallet));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(528)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        walletDeposits[_wallet] = _deposit;
    |        WithdrawWallet[] storage withdrawWalletList = depositRepos[_deposit].withdrawWallets;
  > |        withdrawWalletList.push(WithdrawWallet("default wallet", _wallet));
    |        // depositRepos[_deposit].balance = 0;
    |        depositRepos[_deposit].frozen = 0;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(530)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        withdrawWalletList.push(WithdrawWallet("default wallet", _wallet));
    |        // depositRepos[_deposit].balance = 0;
  > |        depositRepos[_deposit].frozen = 0;
    |
    |        // deposWithdr.authorize(address(tk), this, 1e27); // give authorization to owner contract
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |
    |        WithdrawWallet[] storage withdrawWalletList = depositRepos[deposit].withdrawWallets;
  > |        withdrawWalletList[0].walletAddr = _newWallet;
    |        // emit ChangeDefaultWallet(_oldWallet, _newWallet);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(615)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        require(_deposit != address(0));
    |        
  > |        frozenDeposits[_deposit] = _freeze;
    |        if (_freeze) {
    |            depositRepos[_deposit].frozen = depositRepos[_deposit].frozen.add(_value);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(631)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        frozenDeposits[_deposit] = _freeze;
    |        if (_freeze) {
  > |            depositRepos[_deposit].frozen = depositRepos[_deposit].frozen.add(_value);
    |        } else {
    |            require(_value <= depositRepos[_deposit].frozen);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(633)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        } else {
    |            require(_value <= depositRepos[_deposit].frozen);
  > |            depositRepos[_deposit].frozen = depositRepos[_deposit].frozen.sub(_value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(636)

[33mWarning[0m for UnrestrictedWrite in contract 'DRCWalletManager':
    |        (exist, correct) = checkWithdrawAddress(_deposit, _name, _to);
    |        if(!exist) {
  > |            withdrawWalletList.push(WithdrawWallet(_name, _to));
    |        } else if(!correct) {
    |            return false;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(733)

[33mWarning[0m for DAOConstantGas in contract 'DepositWithdraw':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for LockedEther in contract 'DepositWithdraw':
    |}
    |
  > |contract DepositWithdraw is Claimable, Withdrawable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(208)

[33mWarning[0m for TODAmount in contract 'DepositWithdraw':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for TODReceiver in contract 'DepositWithdraw':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |
    |        ERC20 tk = ERC20(_token);
  > |        tk.transfer(_to, _value);
    |        emit WithdrawToken(_token, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(128)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |        
    |        ERC20 tk = ERC20(_token);
  > |        require(tk.transferFrom(_from, this, _value));
    |        bytes32 timestamp = bytesToBytes32(_extraData);
    |        deposRecs.push(TransferRecord(uint256(timestamp), _from, _value));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(282)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |    function checkWithdrawAmount(address _params, uint256 _value, uint256 _time) public returns (bool) {
    |        IDRCWalletMgrParams params = IDRCWalletMgrParams(_params);
  > |        require(_value <= params.singleWithdrawMax());
    |        require(_value >= params.singleWithdrawMin());
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(315)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |        IDRCWalletMgrParams params = IDRCWalletMgrParams(_params);
    |        require(_value <= params.singleWithdrawMax());
  > |        require(_value >= params.singleWithdrawMin());
    |
    |        uint256 daysCount = _time.div(86400); // one day of seconds
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(316)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |            dayWithdrawRec.count = dayWithdrawRec.count.add(1);
    |            dayWithdrawRec.value = dayWithdrawRec.value.add(_value);
  > |            require(dayWithdrawRec.count <= params.dayWithdrawCount());
    |            require(dayWithdrawRec.value <= params.dayWithdraw());
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(322)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |            dayWithdrawRec.value = dayWithdrawRec.value.add(_value);
    |            require(dayWithdrawRec.count <= params.dayWithdrawCount());
  > |            require(dayWithdrawRec.value <= params.dayWithdraw());
    |        } else {
    |            dayWithdrawRec.mul = daysCount;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(323)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |            monthWithdrawRec.count = monthWithdrawRec.count.add(1);
    |            monthWithdrawRec.value = monthWithdrawRec.value.add(_value);
  > |            require(monthWithdrawRec.value <= params.monthWithdraw());
    |        } else {            
    |            monthWithdrawRec.mul = monthsCount;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(334)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |        ERC20 tk = ERC20(_token);
    |        uint256 realAmount = _value.sub(_fee);
  > |        require(tk.transfer(_to, realAmount));
    |        if (_tokenReturn != address(0) && _fee > 0) {
    |            require(tk.transfer(_tokenReturn, _fee));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(365)

[33mWarning[0m for UnhandledException in contract 'DepositWithdraw':
    |        require(tk.transfer(_to, realAmount));
    |        if (_tokenReturn != address(0) && _fee > 0) {
  > |            require(tk.transfer(_tokenReturn, _fee));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |
    |        ERC20 tk = ERC20(_token);
  > |        tk.transfer(_to, _value);
    |        emit WithdrawToken(_token, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |        
    |        ERC20 tk = ERC20(_token);
  > |        require(tk.transferFrom(_from, this, _value));
    |        bytes32 timestamp = bytesToBytes32(_extraData);
    |        deposRecs.push(TransferRecord(uint256(timestamp), _from, _value));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |    function checkWithdrawAmount(address _params, uint256 _value, uint256 _time) public returns (bool) {
    |        IDRCWalletMgrParams params = IDRCWalletMgrParams(_params);
  > |        require(_value <= params.singleWithdrawMax());
    |        require(_value >= params.singleWithdrawMin());
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |        IDRCWalletMgrParams params = IDRCWalletMgrParams(_params);
    |        require(_value <= params.singleWithdrawMax());
  > |        require(_value >= params.singleWithdrawMin());
    |
    |        uint256 daysCount = _time.div(86400); // one day of seconds
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(316)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |            dayWithdrawRec.count = dayWithdrawRec.count.add(1);
    |            dayWithdrawRec.value = dayWithdrawRec.value.add(_value);
  > |            require(dayWithdrawRec.count <= params.dayWithdrawCount());
    |            require(dayWithdrawRec.value <= params.dayWithdraw());
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |            dayWithdrawRec.value = dayWithdrawRec.value.add(_value);
    |            require(dayWithdrawRec.count <= params.dayWithdrawCount());
  > |            require(dayWithdrawRec.value <= params.dayWithdraw());
    |        } else {
    |            dayWithdrawRec.mul = daysCount;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |            monthWithdrawRec.count = monthWithdrawRec.count.add(1);
    |            monthWithdrawRec.value = monthWithdrawRec.value.add(_value);
  > |            require(monthWithdrawRec.value <= params.monthWithdraw());
    |        } else {            
    |            monthWithdrawRec.mul = monthsCount;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |        ERC20 tk = ERC20(_token);
    |        uint256 realAmount = _value.sub(_fee);
  > |        require(tk.transfer(_to, realAmount));
    |        if (_tokenReturn != address(0) && _fee > 0) {
    |            require(tk.transfer(_tokenReturn, _fee));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(365)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |        require(tk.transfer(_to, realAmount));
    |        if (_tokenReturn != address(0) && _fee > 0) {
  > |            require(tk.transfer(_tokenReturn, _fee));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(367)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositWithdraw':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |pragma solidity ^0.4.13;
    |
  > |interface IDRCWalletMgrParams {
    |    function singleWithdrawMin() external returns (uint256); // min value of single withdraw
    |    function singleWithdrawMax() external returns (uint256); // Max value of single withdraw
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |    function setWithdrawWallet(address _wallet) onlyOwner public returns (bool) {
    |        require(_wallet != address(0));
  > |        wallet = _wallet;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |        require(tk.transferFrom(_from, this, _value));
    |        bytes32 timestamp = bytesToBytes32(_extraData);
  > |        deposRecs.push(TransferRecord(uint256(timestamp), _from, _value));
    |        emit ReceiveDeposit(_from, _value, _token, _extraData);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |     */
    |    function recordWithdraw(uint256 _time, address _to, uint256 _value) onlyOwner public {    
  > |        withdrRecs.push(TransferRecord(_time, _to, _value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |        uint256 daysCount = _time.div(86400); // one day of seconds
    |        if (daysCount <= dayWithdrawRec.mul) {
  > |            dayWithdrawRec.count = dayWithdrawRec.count.add(1);
    |            dayWithdrawRec.value = dayWithdrawRec.value.add(_value);
    |            require(dayWithdrawRec.count <= params.dayWithdrawCount());
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |        if (daysCount <= dayWithdrawRec.mul) {
    |            dayWithdrawRec.count = dayWithdrawRec.count.add(1);
  > |            dayWithdrawRec.value = dayWithdrawRec.value.add(_value);
    |            require(dayWithdrawRec.count <= params.dayWithdrawCount());
    |            require(dayWithdrawRec.value <= params.dayWithdraw());
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |            require(dayWithdrawRec.value <= params.dayWithdraw());
    |        } else {
  > |            dayWithdrawRec.mul = daysCount;
    |            dayWithdrawRec.count = 1;
    |            dayWithdrawRec.value = _value;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |        } else {
    |            dayWithdrawRec.mul = daysCount;
  > |            dayWithdrawRec.count = 1;
    |            dayWithdrawRec.value = _value;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |            dayWithdrawRec.mul = daysCount;
    |            dayWithdrawRec.count = 1;
  > |            dayWithdrawRec.value = _value;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |        uint256 monthsCount = _time.div(86400 * 30);
    |        if (monthsCount <= monthWithdrawRec.mul) {
  > |            monthWithdrawRec.count = monthWithdrawRec.count.add(1);
    |            monthWithdrawRec.value = monthWithdrawRec.value.add(_value);
    |            require(monthWithdrawRec.value <= params.monthWithdraw());
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |        if (monthsCount <= monthWithdrawRec.mul) {
    |            monthWithdrawRec.count = monthWithdrawRec.count.add(1);
  > |            monthWithdrawRec.value = monthWithdrawRec.value.add(_value);
    |            require(monthWithdrawRec.value <= params.monthWithdraw());
    |        } else {            
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |            require(monthWithdrawRec.value <= params.monthWithdraw());
    |        } else {            
  > |            monthWithdrawRec.mul = monthsCount;
    |            monthWithdrawRec.count = 1;
    |            monthWithdrawRec.value = _value;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |        } else {            
    |            monthWithdrawRec.mul = monthsCount;
  > |            monthWithdrawRec.count = 1;
    |            monthWithdrawRec.value = _value;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositWithdraw':
    |            monthWithdrawRec.mul = monthsCount;
    |            monthWithdrawRec.count = 1;
  > |            monthWithdrawRec.value = _value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(338)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(86)

[33mWarning[0m for LockedEther in contract 'OwnerContract':
    |}
    |
  > |contract OwnerContract is Claimable {
    |    Claimable public ownedContract;
    |    address internal origOwner;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(429)

[31mViolation[0m for MissingInputValidation in contract 'OwnerContract':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'OwnerContract':
    |     * @param _nextOwner the contract address that will be next Owner of the original Contract
    |     */
  > |    function changeOwnershipto(address _nextOwner)  onlyOwner public {
    |        ownedContract.transferOwnership(_nextOwner);
    |        ownedContract = Claimable(address(0));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(464)

[33mWarning[0m for MissingInputValidation in contract 'OwnerContract':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'OwnerContract':
    |
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'OwnerContract':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'OwnerContract':
    |
    |contract OwnerContract is Claimable {
  > |    Claimable public ownedContract;
    |    address internal origOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(430)

[33mWarning[0m for MissingInputValidation in contract 'OwnerContract':
    |     * @param _contract the contract address that will be binded by this Owner Contract
    |     */
  > |    function bindContract(address _contract) onlyOwner public returns (bool) {
    |        require(_contract != address(0));
    |        ownedContract = Claimable(_contract);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(438)

[33mWarning[0m for MissingInputValidation in contract 'OwnerContract':
    |     *
    |     */
  > |    function transferOwnershipBack() onlyOwner public {
    |        ownedContract.transferOwnership(origOwner);
    |        ownedContract = Claimable(address(0));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(453)

[33mWarning[0m for UnhandledException in contract 'OwnerContract':
    |        require(_contract != address(0));
    |        ownedContract = Claimable(_contract);
  > |        origOwner = ownedContract.owner();
    |
    |        // take ownership of the owned contract
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(441)

[33mWarning[0m for UnhandledException in contract 'OwnerContract':
    |
    |        // take ownership of the owned contract
  > |        ownedContract.claimOwnership();
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(444)

[33mWarning[0m for UnhandledException in contract 'OwnerContract':
    |     */
    |    function transferOwnershipBack() onlyOwner public {
  > |        ownedContract.transferOwnership(origOwner);
    |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(454)

[33mWarning[0m for UnhandledException in contract 'OwnerContract':
    |     */
    |    function changeOwnershipto(address _nextOwner)  onlyOwner public {
  > |        ownedContract.transferOwnership(_nextOwner);
    |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(465)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OwnerContract':
    |        require(_contract != address(0));
    |        ownedContract = Claimable(_contract);
  > |        origOwner = ownedContract.owner();
    |
    |        // take ownership of the owned contract
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OwnerContract':
    |
    |        // take ownership of the owned contract
  > |        ownedContract.claimOwnership();
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OwnerContract':
    |     */
    |    function transferOwnershipBack() onlyOwner public {
  > |        ownedContract.transferOwnership(origOwner);
    |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(454)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OwnerContract':
    |     */
    |    function changeOwnershipto(address _nextOwner)  onlyOwner public {
  > |        ownedContract.transferOwnership(_nextOwner);
    |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |    function bindContract(address _contract) onlyOwner public returns (bool) {
    |        require(_contract != address(0));
  > |        ownedContract = Claimable(_contract);
    |        origOwner = ownedContract.owner();
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |        require(_contract != address(0));
    |        ownedContract = Claimable(_contract);
  > |        origOwner = ownedContract.owner();
    |
    |        // take ownership of the owned contract
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |    function transferOwnershipBack() onlyOwner public {
    |        ownedContract.transferOwnership(origOwner);
  > |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |        ownedContract.transferOwnership(origOwner);
    |        ownedContract = Claimable(address(0));
  > |        origOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |    function changeOwnershipto(address _nextOwner)  onlyOwner public {
    |        ownedContract.transferOwnership(_nextOwner);
  > |        ownedContract = Claimable(address(0));
    |        origOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerContract':
    |        ownedContract.transferOwnership(_nextOwner);
    |        ownedContract = Claimable(address(0));
  > |        origOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(467)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(14)

[33mWarning[0m for LockedEther in contract 'TokenDestructible':
    |}
    |
  > |contract TokenDestructible is Ownable {
    |
    |  function TokenDestructible() public payable { }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(154)

[33mWarning[0m for UnhandledException in contract 'TokenDestructible':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(170)

[33mWarning[0m for UnhandledException in contract 'TokenDestructible':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(171)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDestructible':
    |    for (uint256 i = 0; i < tokens.length; i++) {
    |      ERC20Basic token = ERC20Basic(tokens[i]);
  > |      uint256 balance = token.balanceOf(this);
    |      token.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDestructible':
    |      ERC20Basic token = ERC20Basic(tokens[i]);
    |      uint256 balance = token.balanceOf(this);
  > |      token.transfer(owner, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDestructible':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(86)

[33mWarning[0m for DAOConstantGas in contract 'Withdrawable':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for LockedEther in contract 'Withdrawable':
    |}
    |
  > |contract Withdrawable is Ownable {
    |    event ReceiveEther(address _from, uint256 _value);
    |    event WithdrawEther(address _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'Withdrawable':
    |	 *        _amount is the number of the ether
    |	 */
  > |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
    |        _to.transfer(_amount);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'Withdrawable':
    |	 *        _value is the number of the token
    |	 */
  > |    function withdrawToken(address _token, address _to, uint256 _value) public onlyOwner returns (bool) {
    |        require(_to != address(0));
    |        require(_token != address(0));
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(83)

[33mWarning[0m for TODAmount in contract 'Withdrawable':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for TODReceiver in contract 'Withdrawable':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for UnhandledException in contract 'Withdrawable':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for UnhandledException in contract 'Withdrawable':
    |
    |        ERC20 tk = ERC20(_token);
  > |        tk.transfer(_to, _value);
    |        emit WithdrawToken(_token, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawable':
    |
    |        ERC20 tk = ERC20(_token);
  > |        tk.transfer(_to, _value);
    |        emit WithdrawToken(_token, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawable':
    |    function withdraw(address _to, uint _amount) public onlyOwner returns (bool) {
    |        require(_to != address(0));
  > |        _to.transfer(_amount);
    |        emit WithdrawEther(_to, _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x01d6208f95cf2292c350fc8bb1b1f29230352675.sol(86)


