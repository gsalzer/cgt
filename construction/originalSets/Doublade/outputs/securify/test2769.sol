Processing contract: /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol:SmartWallet
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol:SmartWalletLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SmartWallet':
    |
    |///@title - a contract that represents a smart wallet, created by Stox, for every new Stox user
  > |contract SmartWallet {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'SmartWallet':
    |        
    |    */
  > |    function setUserWithdrawalAccount(address _userWithdrawalAccount) public {
    |        wallet.setUserWithdrawalAccount(_userWithdrawalAccount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'SmartWallet':
    |        @param _amount              Amount to transfer    
    |    */
  > |    function transferToBackupAccount(IERC20Token _token, uint _amount) public {
    |        wallet.transferToBackupAccount(_token, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'SmartWallet':
    |        @param _amount              Amount to transfer    
    |    */
  > |    function transferToUserWithdrawalAccount(IERC20Token _token, uint _amount, IERC20Token _feesToken, uint _fee) public {
    |        wallet.transferToUserWithdrawalAccount(_token, _amount, _feesToken, _fee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'SmartWallet':
    |     */
    |    using SmartWalletLib for SmartWalletLib.Wallet;
  > |    SmartWalletLib.Wallet public wallet;
    |       
    |   // Wallet public wallet;
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(149)

[31mViolation[0m for LockedEther in contract 'SmartWalletLib':
    |
    |///@title - a contract that represents a smart wallet, created by Stox, for every new Stox user
  > |library SmartWalletLib {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'SmartWalletLib':
    |        @param _feesAccount                 The account to transfer fees to
    |    */
  > |    function initWallet(Wallet storage _self, address _backupAccount, address _operator, address _feesAccount) 
    |            public
    |            validAddress(_backupAccount)
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'SmartWalletLib':
    |        @param _userWithdrawalAccount       The user account to withdraw funds to
    |    */
  > |    function setUserWithdrawalAccount(Wallet storage _self, address _userWithdrawalAccount) 
    |            public
    |            operatorOnly(_self.operatorAccount)
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'SmartWalletLib':
    |        @param _amount              Amount to transfer    
    |    */
  > |    function transferToBackupAccount(Wallet storage _self, IERC20Token _token, uint _amount) 
    |            public 
    |            operatorOnly(_self.operatorAccount)
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'SmartWalletLib':
    |        @param _fee                 Fee to transfer   
    |    */
  > |    function transferToUserWithdrawalAccount(Wallet storage _self, IERC20Token _token, uint _amount, IERC20Token _feesToken, uint _fee) 
    |            public 
    |            operatorOnly(_self.operatorAccount)
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(126)

[33mWarning[0m for UnhandledException in contract 'SmartWalletLib':
    |            {
    |        
  > |                _token.transfer(_self.backupAccount, _amount);
    |                TransferToBackupAccount(_token, _self.backupAccount, _amount); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(114)

[33mWarning[0m for UnhandledException in contract 'SmartWalletLib':
    |
    |                if (_fee > 0) {        
  > |                    _feesToken.transfer(_self.feesAccount, _fee); 
    |                }       
    |                
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(133)

[33mWarning[0m for UnhandledException in contract 'SmartWalletLib':
    |                }       
    |                
  > |                _token.transfer(_self.userWithdrawalAccount, _amount);
    |                TransferToUserWithdrawalAccount(_token, _self.userWithdrawalAccount, _amount,  _feesToken, _self.feesAccount, _fee);   
    |        
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartWalletLib':
    |            {
    |        
  > |                _token.transfer(_self.backupAccount, _amount);
    |                TransferToBackupAccount(_token, _self.backupAccount, _amount); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartWalletLib':
    |
    |                if (_fee > 0) {        
  > |                    _feesToken.transfer(_self.feesAccount, _fee); 
    |                }       
    |                
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartWalletLib':
    |                }       
    |                
  > |                _token.transfer(_self.userWithdrawalAccount, _amount);
    |                TransferToUserWithdrawalAccount(_token, _self.userWithdrawalAccount, _amount,  _feesToken, _self.feesAccount, _fee);   
    |        
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartWalletLib':
    |            {
    |        
  > |                _self.operatorAccount = _operator;
    |                _self.backupAccount = _backupAccount;
    |                _self.feesAccount = _feesAccount;
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartWalletLib':
    |        
    |                _self.operatorAccount = _operator;
  > |                _self.backupAccount = _backupAccount;
    |                _self.feesAccount = _feesAccount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'SmartWalletLib':
    |                _self.operatorAccount = _operator;
    |                _self.backupAccount = _backupAccount;
  > |                _self.feesAccount = _feesAccount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartWalletLib':
    |            {
    |        
  > |                _self.userWithdrawalAccount = _userWithdrawalAccount;
    |                SetUserWithdrawalAccount(_userWithdrawalAccount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb53d56858218b696f84f0eff73a7d61eeefeefd3.sol(97)


