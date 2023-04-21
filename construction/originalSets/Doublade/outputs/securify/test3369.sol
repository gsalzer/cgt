Processing contract: /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol:JIincForwarder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol:JIincInterfaceForForwarder
[33mWarning[0m for DAO in contract 'JIincForwarder':
    |        require(msg.value > 0, "Forwarder Deposit failed - zero deposits not allowed");
    |        require(needsBank_ == false, "Forwarder Deposit failed - no registered bank");
  > |        if (currentCorpBank_.deposit.value(msg.value)(msg.sender) == true)
    |            return(true);
    |        else
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(92)

[33mWarning[0m for LockedEther in contract 'JIincForwarder':
    |}
    |
  > |contract JIincForwarder {
    |    string public name = "JIincForwarder";
    |    JIincInterfaceForForwarder private currentCorpBank_;
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'JIincForwarder':
    |//    || || | |(_||  _\(/_ | |_||_)  .  (this only runs once ever)
    |//==============================|===============================================
  > |    function setup(address _firstCorpBank)
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'JIincForwarder':
    |
    |contract JIincForwarder {
  > |    string public name = "JIincForwarder";
    |    JIincInterfaceForForwarder private currentCorpBank_;
    |    address private newCorpBank_;
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'JIincForwarder':
    |    }
    |    
  > |    function deposit()
    |        public 
    |        payable
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'JIincForwarder':
    |//    | | ||(_|| (_| | |(_)| |  .
    |//===========_|=================================================================    
  > |    function status()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'JIincForwarder':
    |    }
    |
  > |    function startMigration(address _newCorpBank)
    |        external
    |        returns(bool)
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'JIincForwarder':
    |    }
    |    
  > |    function cancelMigration()
    |        external
    |        returns(bool)
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'JIincForwarder':
    |    }
    |    
  > |    function finishMigration()
    |        external
    |        returns(bool)
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(141)

[31mViolation[0m for TODReceiver in contract 'JIincForwarder':
    |        require(msg.value > 0, "Forwarder Deposit failed - zero deposits not allowed");
    |        require(needsBank_ == false, "Forwarder Deposit failed - no registered bank");
  > |        if (currentCorpBank_.deposit.value(msg.value)(msg.sender) == true)
    |            return(true);
    |        else
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(92)

[33mWarning[0m for UnhandledException in contract 'JIincForwarder':
    |        require(msg.value > 0, "Forwarder Deposit failed - zero deposits not allowed");
    |        require(needsBank_ == false, "Forwarder Deposit failed - no registered bank");
  > |        if (currentCorpBank_.deposit.value(msg.value)(msg.sender) == true)
    |            return(true);
    |        else
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(92)

[33mWarning[0m for UnhandledException in contract 'JIincForwarder':
    |        // communicate with the new corp bank and make sure it has the forwarder 
    |        // registered 
  > |        if(JIincInterfaceForForwarder(_newCorpBank).migrationReceiver_setup() == true)
    |        {
    |            // save our new corp bank address
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JIincForwarder':
    |        // communicate with the new corp bank and make sure it has the forwarder 
    |        // registered 
  > |        if(JIincInterfaceForForwarder(_newCorpBank).migrationReceiver_setup() == true)
    |        {
    |            // save our new corp bank address
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'JIincForwarder':
    |    {
    |        require(needsBank_ == true, "Forwarder setup failed - corp bank already registered");
  > |        currentCorpBank_ = JIincInterfaceForForwarder(_firstCorpBank);
    |        needsBank_ = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'JIincForwarder':
    |        require(needsBank_ == true, "Forwarder setup failed - corp bank already registered");
    |        currentCorpBank_ = JIincInterfaceForForwarder(_firstCorpBank);
  > |        needsBank_ = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'JIincForwarder':
    |        {
    |            // save our new corp bank address
  > |            newCorpBank_ = _newCorpBank;
    |            return (true);
    |        } else 
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'JIincForwarder':
    |        
    |        // erase stored new corp bank address;
  > |        newCorpBank_ = address(0x0);
    |        
    |        return (true);
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'JIincForwarder':
    |
    |        // update corp bank address        
  > |        currentCorpBank_ = (JIincInterfaceForForwarder(newCorpBank_));
    |        
    |        // erase new corp bank address
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'JIincForwarder':
    |        
    |        // erase new corp bank address
  > |        newCorpBank_ = address(0x0);
    |        
    |        return (true);
  at /home/jiaming/mavs_srcs/contract@0xdd4950f977ee28d2c132f1353d1595035db444ee.sol(152)


