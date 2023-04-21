Processing contract: /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol:XEXHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'XEXHolder':
    |        
    |        ERC20 _token = ERC20(token_);
  > |        _token.approve(this, transactionValue_);
    |        _token.transferFrom(this,transactionTo_,transactionValue_);
    |        
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(131)

[31mViolation[0m for DAO in contract 'XEXHolder':
    |        ERC20 _token = ERC20(token_);
    |        _token.approve(this, transactionValue_);
  > |        _token.transferFrom(this,transactionTo_,transactionValue_);
    |        
    |        emit TransactionSubmitted(transactionTo_,transactionValue_);
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(132)

[33mWarning[0m for LockedEther in contract 'XEXHolder':
    |}
    |
  > |contract XEXHolder{
    |    address private holder1_;
    |    address private holder2_;
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'XEXHolder':
    |    }
    |    
  > |    function showTransaction() public onlyHolder view returns(address _address, uint256 _value,uint256 _nonce){
    |        return (transactionTo_,transactionValue_,transactionNonce_);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'XEXHolder':
    |    }
    |
  > |    function submitTransaction() public onlyHolder{
    |        require(transactionTo_ != address(0) && transactionValue_ > 0);
    |        require(holder1Transaction_ && holder2Transaction_ && holder3Transaction_);
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'XEXHolder':
    |    }
    |    
  > |    function clearTransaction() internal{
    |        transactionNonce_=0;
    |        transactionTo_=address(0);
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(139)

[33mWarning[0m for UnhandledException in contract 'XEXHolder':
    |        
    |        ERC20 _token = ERC20(token_);
  > |        _token.approve(this, transactionValue_);
    |        _token.transferFrom(this,transactionTo_,transactionValue_);
    |        
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(131)

[33mWarning[0m for UnhandledException in contract 'XEXHolder':
    |        ERC20 _token = ERC20(token_);
    |        _token.approve(this, transactionValue_);
  > |        _token.transferFrom(this,transactionTo_,transactionValue_);
    |        
    |        emit TransactionSubmitted(transactionTo_,transactionValue_);
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'XEXHolder':
    |    
    |    function clearTransaction() internal{
  > |        transactionNonce_=0;
    |        transactionTo_=address(0);
    |        transactionValue_=0;
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'XEXHolder':
    |    function clearTransaction() internal{
    |        transactionNonce_=0;
  > |        transactionTo_=address(0);
    |        transactionValue_=0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'XEXHolder':
    |        transactionNonce_=0;
    |        transactionTo_=address(0);
  > |        transactionValue_=0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXHolder':
    |    function resetHolder(bool _vote) public onlyHolder{
    |        if(msg.sender==holder1_){
  > |            holder1Reset_=_vote;
    |        }
    |        if(msg.sender==holder2_){
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXHolder':
    |        }
    |        if(msg.sender==holder2_){
  > |            holder2Reset_=_vote;
    |        }
    |        if(msg.sender==holder3_){
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXHolder':
    |        }
    |        if(msg.sender==holder3_){
  > |            holder3Reset_=_vote;
    |        }
    |        emit HolderReseted(_vote);
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXHolder':
    |        
    |        if(msg.sender==holder1_){
  > |            holder1Transaction_=_vote;
    |        }
    |        if(msg.sender==holder2_){
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXHolder':
    |        }
    |        if(msg.sender==holder2_){
  > |            holder2Transaction_=_vote;
    |        }
    |        if(msg.sender==holder3_){
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'XEXHolder':
    |        }
    |        if(msg.sender==holder3_){
  > |            holder3Transaction_=_vote;
    |        }
    |        emit TransactionConfirmed(msg.sender,_vote);
  at /home/jiaming/mavs_srcs/contract@0xee77e3eab14a9af7758d85a79bdb905321d8aeae.sol(120)


