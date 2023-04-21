Processing contract: /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol:AccountingLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol:Alarm
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol:GroveLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol:Relay
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol:ResourcePoolLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol:ScheduledCallLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol:StringLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'AccountingLib':
    |                                // has a fallback function.  So instead, try
    |                                // tranferring the funds with the call api.
  > |                                if (!accountAddress.call.value(value)()) {
    |                                        // Revert the entire transaction.  No
    |                                        // need to destroy the funds.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(144)

[33mWarning[0m for DAOConstantGas in contract 'AccountingLib':
    |                if (self.accountBalances[accountAddress] >= value) {
    |                        deductFunds(self, accountAddress, value);
  > |                        if (!accountAddress.send(value)) {
    |                                // Potentially sending money to a contract that
    |                                // has a fallback function.  So instead, try
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(140)

[33mWarning[0m for LockedEther in contract 'AccountingLib':
    |/// @title Accounting Lib - Accounting utilities
    |/// @author Piper Merriam - 
  > |library AccountingLib {
    |        /*
    |         *  Address: 0x7de615d8a51746a9f10f72a593fb5b3718dc3d52
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'AccountingLib':
    |        /// @param accountAddress The address of the account the funds should be added to.
    |        /// @param value The amount that should be added to the account.
  > |        function addFunds(Bank storage self, address accountAddress, uint value) public {
    |                if (self.accountBalances[accountAddress] + value < self.accountBalances[accountAddress]) {
    |                        // Prevent Overflow.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'AccountingLib':
    |        /// @param accountAddress The address of the account the funds were added to.
    |        /// @param value The amount that was added to the account.
  > |        function Deposit(address _from, address accountAddress, uint value) public {
    |            _Deposit(_from, accountAddress, value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'AccountingLib':
    |        /// @param accountAddress The address of the account the funds should be added to.
    |        /// @param value The amount that should be added to the account.
  > |        function deposit(Bank storage self, address accountAddress, uint value) public returns (bool) {
    |                addFunds(self, accountAddress, value);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'AccountingLib':
    |        /// @param accountAddress The address of the account the funds were withdrawn from.
    |        /// @param value The amount that was withdrawn to the account.
  > |        function Withdrawal(address accountAddress, uint value) public {
    |            _Withdrawal(accountAddress, value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'AccountingLib':
    |        /// @param value The amount that was attempted to be withdrawn from the account.
    |        /// @param balance The current balance of the account.
  > |        function InsufficientFunds(address accountAddress, uint value, uint balance) public {
    |            _InsufficientFunds(accountAddress, value, balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'AccountingLib':
    |        /// @param accountAddress The address of the account the funds should be deducted from.
    |        /// @param value The amount that should be deducted from the account.
  > |        function deductFunds(Bank storage self, address accountAddress, uint value) public {
    |                /*
    |                 *  Helper function that should be used for any reduction of
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'AccountingLib':
    |        /// @param accountAddress The address of the account the funds should be withdrawn from.
    |        /// @param value The amount that should be withdrawn from the account.
  > |        function withdraw(Bank storage self, address accountAddress, uint value) public returns (bool) {
    |                /*
    |                 *  Public API for withdrawing funds.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(134)

[33mWarning[0m for TODAmount in contract 'AccountingLib':
    |                if (self.accountBalances[accountAddress] >= value) {
    |                        deductFunds(self, accountAddress, value);
  > |                        if (!accountAddress.send(value)) {
    |                                // Potentially sending money to a contract that
    |                                // has a fallback function.  So instead, try
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(140)

[33mWarning[0m for TODAmount in contract 'AccountingLib':
    |                                // has a fallback function.  So instead, try
    |                                // tranferring the funds with the call api.
  > |                                if (!accountAddress.call.value(value)()) {
    |                                        // Revert the entire transaction.  No
    |                                        // need to destroy the funds.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(144)

[33mWarning[0m for TODReceiver in contract 'AccountingLib':
    |                if (self.accountBalances[accountAddress] >= value) {
    |                        deductFunds(self, accountAddress, value);
  > |                        if (!accountAddress.send(value)) {
    |                                // Potentially sending money to a contract that
    |                                // has a fallback function.  So instead, try
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(140)

[33mWarning[0m for TODReceiver in contract 'AccountingLib':
    |                                // has a fallback function.  So instead, try
    |                                // tranferring the funds with the call api.
  > |                                if (!accountAddress.call.value(value)()) {
    |                                        // Revert the entire transaction.  No
    |                                        // need to destroy the funds.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(144)

[33mWarning[0m for UnhandledException in contract 'AccountingLib':
    |                if (self.accountBalances[accountAddress] >= value) {
    |                        deductFunds(self, accountAddress, value);
  > |                        if (!accountAddress.send(value)) {
    |                                // Potentially sending money to a contract that
    |                                // has a fallback function.  So instead, try
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(140)

[33mWarning[0m for UnhandledException in contract 'AccountingLib':
    |                                // has a fallback function.  So instead, try
    |                                // tranferring the funds with the call api.
  > |                                if (!accountAddress.call.value(value)()) {
    |                                        // Revert the entire transaction.  No
    |                                        // need to destroy the funds.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(144)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'AccountingLib':
    |                if (self.accountBalances[accountAddress] >= value) {
    |                        deductFunds(self, accountAddress, value);
  > |                        if (!accountAddress.send(value)) {
    |                                // Potentially sending money to a contract that
    |                                // has a fallback function.  So instead, try
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(140)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'AccountingLib':
    |                                // has a fallback function.  So instead, try
    |                                // tranferring the funds with the call api.
  > |                                if (!accountAddress.call.value(value)()) {
    |                                        // Revert the entire transaction.  No
    |                                        // need to destroy the funds.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'AccountingLib':
    |                        throw;
    |                }
  > |                self.accountBalances[accountAddress] += value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'AccountingLib':
    |                        throw;
    |                }
  > |                self.accountBalances[accountAddress] -= value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(127)

[33mWarning[0m for LockedEther in contract 'Alarm':
    | *  address: 0x07307d0b136a79bac718f43388aed706389c4588
    | */
  > |contract Alarm {
    |        /*
    |         *  Constructor
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1797)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |         *  Account Management API
    |         */
  > |        function getAccountBalance(address accountAddress) constant public returns (uint) {
    |                return callDatabase.gasBank.accountBalances[accountAddress];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1821)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function deposit(address accountAddress) public {
    |                /*
    |                 *  Public API for depositing funds in a specified account.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1829)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function withdraw(uint value) public {
    |                /*
    |                 *  Public API for withdrawing funds.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1837)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function addAuthorization(address schedulerAddress) public {
    |                ScheduledCallLib.addAuthorization(callDatabase, schedulerAddress, msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1868)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function removeAuthorization(address schedulerAddress) public {
    |                callDatabase.accountAuthorizations[sha3(schedulerAddress, msg.sender)] = false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1872)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function checkAuthorization(address schedulerAddress, address contractAddress) constant returns (bool) {
    |                return callDatabase.accountAuthorizations[sha3(schedulerAddress, contractAddress)];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1876)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function withdrawBond(uint value) public {
    |                ResourcePoolLib.withdrawBond(callDatabase.callerPool, msg.sender, value, getMinimumBond());
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1891)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getBondBalance(address callerAddress) constant returns (uint) {
    |                return callDatabase.callerPool.bonds[callerAddress];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1899)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |         *  Pool Management
    |         */
  > |        function getGenerationForCall(bytes32 callKey) constant returns (uint) {
    |                var call = callDatabase.calls[callKey];
    |                return ResourcePoolLib.getGenerationForWindow(callDatabase.callerPool, call.targetBlock, call.targetBlock + call.gracePeriod);
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1907)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getGenerationSize(uint generationId) constant returns (uint) {
    |                return callDatabase.callerPool.generations[generationId].members.length;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1912)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getGenerationStartAt(uint generationId) constant returns (uint) {
    |                return callDatabase.callerPool.generations[generationId].startAt;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1916)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getGenerationEndAt(uint generationId) constant returns (uint) {
    |                return callDatabase.callerPool.generations[generationId].endAt;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1920)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function isInPool(address callerAddress) constant returns (bool) {
    |                return ResourcePoolLib.isInPool(callDatabase.callerPool, callerAddress);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1936)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function isInGeneration(uint generationId) constant returns (bool) {
    |                return isInGeneration(msg.sender, generationId);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1940)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function isInGeneration(address callerAddress, uint generationId) constant returns (bool) {
    |                return ResourcePoolLib.isInGeneration(callDatabase.callerPool, callerAddress, generationId);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1944)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function canEnterPool(address callerAddress) constant returns (bool) {
    |                return ResourcePoolLib.canEnterPool(callDatabase.callerPool, callerAddress, getMinimumBond());
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1970)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function canExitPool(address callerAddress) constant returns (bool) {
    |                return ResourcePoolLib.canExitPool(callDatabase.callerPool, callerAddress);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1978)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |         *  Getter methods for `Call` information
    |         */
  > |        function getCallContractAddress(bytes32 callKey) constant returns (address) {
    |                return ScheduledCallLib.getCallContractAddress(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2003)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallScheduledBy(bytes32 callKey) constant returns (address) {
    |                return ScheduledCallLib.getCallScheduledBy(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2007)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallCalledAtBlock(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getCallCalledAtBlock(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2011)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallGracePeriod(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getCallGracePeriod(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2015)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallTargetBlock(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getCallTargetBlock(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2019)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallBaseGasPrice(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getCallBaseGasPrice(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2023)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallGasPrice(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getCallGasPrice(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2027)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallGasUsed(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getCallGasUsed(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2031)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallABISignature(bytes32 callKey) constant returns (bytes4) {
    |                return ScheduledCallLib.getCallABISignature(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2035)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function checkIfCalled(bytes32 callKey) constant returns (bool) {
    |                return ScheduledCallLib.checkIfCalled(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2039)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function checkIfSuccess(bytes32 callKey) constant returns (bool) {
    |                return ScheduledCallLib.checkIfSuccess(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2043)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function checkIfCancelled(bytes32 callKey) constant returns (bool) {
    |                return ScheduledCallLib.checkIfCancelled(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2047)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallDataHash(bytes32 callKey) constant returns (bytes32) {
    |                return ScheduledCallLib.getCallDataHash(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2051)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallPayout(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getCallPayout(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2055)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallFee(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getCallFee(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2059)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallMaxCost(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getCallMaxCost(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2063)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCallData(bytes32 callKey) constant returns (bytes) {
    |                return callDatabase.data_registry[callDatabase.calls[callKey].dataHash];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2067)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |         *  Call execution API
    |         */
  > |        function doCall(bytes32 callKey) public {
    |                ScheduledCallLib.doCall(callDatabase, callKey, msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2094)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function scheduleCall(address contractAddress, bytes4 abiSignature, bytes32 dataHash, uint targetBlock) public {
    |                /*
    |                 *  Schedule call with gracePeriod defaulted to 255 and nonce
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2105)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function scheduleCall(address contractAddress, bytes4 abiSignature, bytes32 dataHash, uint targetBlock, uint8 gracePeriod) public {
    |                /*
    |                 *  Schedule call with nonce defaulted to 0.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2113)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function scheduleCall(address contractAddress, bytes4 abiSignature, bytes32 dataHash, uint targetBlock, uint8 gracePeriod, uint nonce) public {
    |                /*
    |                 * Primary API for scheduling a call.  Prior to calling this
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2120)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function cancelCall(bytes32 callKey) public {
    |                if (ScheduledCallLib.cancelCall(callDatabase, callKey, address(msg.sender))) {
    |                        ScheduledCallLib.CallCancelled(callKey);
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2137)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getGenerationIdForCall(bytes32 callKey) constant returns (uint) {
    |                return ScheduledCallLib.getGenerationIdForCall(callDatabase, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2150)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getDesignatedCaller(bytes32 callKey, uint blockNumber) constant returns (address) {
    |                return ScheduledCallLib.getDesignatedCaller(callDatabase, callKey, blockNumber);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2154)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getNextCall(uint blockNumber) constant returns (bytes32) {
    |                return GroveLib.query(callDatabase.callIndex, ">=", int(blockNumber));
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2158)

[31mViolation[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getNextCallSibling(bytes32 callKey) constant returns (bytes32) {
    |                return GroveLib.getNextNode(callDatabase.callIndex, callKey);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2162)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function deposit() public {
    |                deposit(msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1825)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |         *  Scheduling Authorization API
    |         */
  > |        function unauthorizedAddress() constant returns (address) {
    |                return address(callDatabase.unauthorizedRelay);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1860)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function authorizedAddress() constant returns (address) {
    |                return address(callDatabase.authorizedRelay);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1864)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |         *  Caller bonding
    |         */
  > |        function getMinimumBond() constant returns (uint) {
    |                return ScheduledCallLib.getMinimumBond();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1883)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function depositBond() public {
    |                ResourcePoolLib.addToBond(callDatabase.callerPool, msg.sender, msg.value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1887)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getBondBalance() constant returns (uint) {
    |                return getBondBalance(msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1895)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getCurrentGenerationId() constant returns (uint) {
    |                return ResourcePoolLib.getCurrentGenerationId(callDatabase.callerPool);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1924)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getNextGenerationId() constant returns (uint) {
    |                return ResourcePoolLib.getNextGenerationId(callDatabase.callerPool);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1928)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function isInPool() constant returns (bool) {
    |                return ResourcePoolLib.isInPool(callDatabase.callerPool, msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1932)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |         *  Pool Meta information
    |         */
  > |        function getPoolFreezePeriod() constant returns (uint) {
    |                return callDatabase.callerPool.freezePeriod;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1951)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getPoolOverlapSize() constant returns (uint) {
    |                return callDatabase.callerPool.overlapSize;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1955)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getPoolRotationDelay() constant returns (uint) {
    |                return callDatabase.callerPool.rotationDelay;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1959)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |         *  Pool Membership
    |         */
  > |        function canEnterPool() constant returns (bool) {
    |                return ResourcePoolLib.canEnterPool(callDatabase.callerPool, msg.sender, getMinimumBond());
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1966)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function canExitPool() constant returns (bool) {
    |                return ResourcePoolLib.canExitPool(callDatabase.callerPool, msg.sender);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1974)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function enterPool() public {
    |                uint generationId = ResourcePoolLib.enterPool(callDatabase.callerPool, msg.sender, getMinimumBond());
    |                ResourcePoolLib.AddedToGeneration(msg.sender, generationId);
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1982)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function exitPool() public {
    |                uint generationId = ResourcePoolLib.exitPool(callDatabase.callerPool, msg.sender);
    |                ResourcePoolLib.RemovedFromGeneration(msg.sender, generationId);
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1987)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |         */
    |
  > |        function getLastCallKey() constant returns (bytes32) {
    |                return callDatabase.lastCallKey;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1996)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |         *  Data registration API
    |         */
  > |        function registerData() public {
    |                ScheduledCallLib.registerData(callDatabase, msg.data);
    |                ScheduledCallLib.DataRegistered(callDatabase.lastDataHash);
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2074)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getLastDataHash() constant returns (bytes32) {
    |                return callDatabase.lastDataHash;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2079)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getLastDataLength() constant returns (uint) {
    |                return callDatabase.lastDataLength;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2083)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |        }
    |
  > |        function getLastData() constant returns (bytes) {
    |                return callDatabase.lastData;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2087)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |         *  Call Scheduling API
    |         */
  > |        function getMinimumGracePeriod() constant returns (uint) {
    |                return ScheduledCallLib.getMinimumGracePeriod();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2101)

[33mWarning[0m for MissingInputValidation in contract 'Alarm':
    |         *  Next Call API
    |         */
  > |        function getCallWindowSize() constant returns (uint) {
    |                return ScheduledCallLib.getCallWindowSize();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(2146)

[33mWarning[0m for UnrestrictedWrite in contract 'Alarm':
    |
    |        function removeAuthorization(address schedulerAddress) public {
  > |                callDatabase.accountAuthorizations[sha3(schedulerAddress, msg.sender)] = false;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1873)

[31mViolation[0m for LockedEther in contract 'GroveLib':
    |/// @title GroveLib - Library for queriable indexed ordered data.
    |/// @author PiperMerriam - 
  > |library GroveLib {
    |        /*
    |         *  Indexes for ordered data
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that the node is part of.
    |        /// @param id The id for the node to be looked up.
  > |        function getNodeId(Index storage index, bytes32 id) constant returns (bytes32) {
    |            return index.nodes[id].id;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that the node is part of.
    |        /// @param id The id for the node to be looked up.
  > |        function getNodeValue(Index storage index, bytes32 id) constant returns (int) {
    |            return index.nodes[id].value;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that the node is part of.
    |        /// @param id The id for the node to be looked up.
  > |        function getNodeHeight(Index storage index, bytes32 id) constant returns (uint) {
    |            return index.nodes[id].height;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(208)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that the node is part of.
    |        /// @param id The id for the node to be looked up.
  > |        function getNodeParent(Index storage index, bytes32 id) constant returns (bytes32) {
    |            return index.nodes[id].parent;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(215)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that the node is part of.
    |        /// @param id The id for the node to be looked up.
  > |        function getNodeLeftChild(Index storage index, bytes32 id) constant returns (bytes32) {
    |            return index.nodes[id].left;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(222)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that the node is part of.
    |        /// @param id The id for the node to be looked up.
  > |        function getNodeRightChild(Index storage index, bytes32 id) constant returns (bytes32) {
    |            return index.nodes[id].right;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(229)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that the node is part of.
    |        /// @param id The id for the node to be looked up.
  > |        function getPreviousNode(Index storage index, bytes32 id) constant returns (bytes32) {
    |            Node storage currentNode = index.nodes[id];
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(236)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that the node is part of.
    |        /// @param id The id for the node to be looked up.
  > |        function getNextNode(Index storage index, bytes32 id) constant returns (bytes32) {
    |            Node storage currentNode = index.nodes[id];
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(283)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param id The unique identifier of the data element the index node will represent.
    |        /// @param value The value of the data element that represents it's total ordering with respect to other elementes.
  > |        function insert(Index storage index, bytes32 id, int value) public {
    |                if (index.nodes[id].id == id) {
    |                    // A node with this id already exists.  If the value is
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(333)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that should be searched
    |        /// @param id The unique identifier of the data element to check for.
  > |        function exists(Index storage index, bytes32 id) constant returns (bool) {
    |            return (index.nodes[id].id == id);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(390)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |        /// @param index The index that should be removed
    |        /// @param id The unique identifier of the data element to remove.
  > |        function remove(Index storage index, bytes32 id) public {
    |            Node storage replacementNode;
    |            Node storage parent;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(397)

[31mViolation[0m for MissingInputValidation in contract 'GroveLib':
    |         *  type of comparison operator should be used.
    |         */
  > |        function query(Index storage index, bytes2 operator, int value) public returns (bytes32) {
    |                bytes32 rootNodeId = index.root;
    |                
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(571)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |/// @title GroveLib - Library for queriable indexed ordered data.
    |/// @author PiperMerriam - 
  > |library GroveLib {
    |        /*
    |         *  Indexes for ordered data
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |        }
    |
  > |        function max(uint a, uint b) internal returns (uint) {
    |            if (a >= b) {
    |                return a;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |        bytes2 constant EQ = "==";
    |
  > |        function _compare(int left, bytes2 operator, int right) internal returns (bool) {
    |            if (operator == GT) {
    |                return (left > right);
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(518)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |        }
    |
  > |        function _getMaximum(Index storage index, bytes32 id) internal returns (int) {
    |                Node storage currentNode = index.nodes[id];
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(539)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |        }
    |
  > |        function _getMinimum(Index storage index, bytes32 id) internal returns (int) {
    |                Node storage currentNode = index.nodes[id];
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(550)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |        }
    |
  > |        function _rebalanceTree(Index storage index, bytes32 id) internal {
    |            // Trace back up rebalancing the tree and updating heights as
    |            // needed..
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(654)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |        }
    |
  > |        function _getBalanceFactor(Index storage index, bytes32 id) internal returns (int) {
    |                Node storage node = index.nodes[id];
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(698)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |        }
    |
  > |        function _updateNodeHeight(Index storage index, bytes32 id) internal {
    |                Node storage node = index.nodes[id];
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(704)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |        }
    |
  > |        function _rotateLeft(Index storage index, bytes32 id) internal {
    |            Node storage originalRoot = index.nodes[id];
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(710)

[33mWarning[0m for MissingInputValidation in contract 'GroveLib':
    |        }
    |
  > |        function _rotateRight(Index storage index, bytes32 id) internal {
    |            Node storage originalRoot = index.nodes[id];
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(764)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |                if (index.root == 0x0) {
  > |                    index.root = id;
    |                }
    |                Node storage currentNode = index.nodes[index.root];
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(350)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                    if (currentNode.id == 0x0) {
    |                        // This is a new unpopulated node.
  > |                        currentNode.id = id;
    |                        currentNode.parent = previousNodeId;
    |                        currentNode.value = value;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(358)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                        // This is a new unpopulated node.
    |                        currentNode.id = id;
  > |                        currentNode.parent = previousNodeId;
    |                        currentNode.value = value;
    |                        break;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(359)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                        currentNode.id = id;
    |                        currentNode.parent = previousNodeId;
  > |                        currentNode.value = value;
    |                        break;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(360)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                    if (value >= currentNode.value) {
    |                        if (currentNode.right == 0x0) {
  > |                            currentNode.right = id;
    |                        }
    |                        currentNode = index.nodes[currentNode.right];
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(370)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                    // The new node belongs in the left subtree.
    |                    if (currentNode.left == 0x0) {
  > |                        currentNode.left = id;
    |                    }
    |                    currentNode = index.nodes[currentNode.left];
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(378)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                // getPreviousNode are used.
    |                if (parent.left == replacementNode.id) {
  > |                    parent.left = replacementNode.right;
    |                    if (replacementNode.right != 0x0) {
    |                        child = index.nodes[replacementNode.right];
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(433)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                    if (replacementNode.right != 0x0) {
    |                        child = index.nodes[replacementNode.right];
  > |                        child.parent = parent.id;
    |                    }
    |                }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(436)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                }
    |                if (parent.right == replacementNode.id) {
  > |                    parent.right = replacementNode.left;
    |                    if (replacementNode.left != 0x0) {
    |                        child = index.nodes[replacementNode.left];
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(440)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                    if (replacementNode.left != 0x0) {
    |                        child = index.nodes[replacementNode.left];
  > |                        child.parent = parent.id;
    |                    }
    |                }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(443)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                // This includes parent/child relationships for all of the
    |                // parent, the left child, and the right child.
  > |                replacementNode.parent = nodeToDelete.parent;
    |                if (nodeToDelete.parent != 0x0) {
    |                    parent = index.nodes[nodeToDelete.parent];
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(450)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                    parent = index.nodes[nodeToDelete.parent];
    |                    if (parent.left == nodeToDelete.id) {
  > |                        parent.left = replacementNode.id;
    |                    }
    |                    if (parent.right == nodeToDelete.id) {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(454)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                    }
    |                    if (parent.right == nodeToDelete.id) {
  > |                        parent.right = replacementNode.id;
    |                    }
    |                }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(457)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                    // If the node we are deleting is the root node update the
    |                    // index root node pointer.
  > |                    index.root = replacementNode.id;
    |                }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(463)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                }
    |
  > |                replacementNode.left = nodeToDelete.left;
    |                if (nodeToDelete.left != 0x0) {
    |                    child = index.nodes[nodeToDelete.left];
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(466)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                if (nodeToDelete.left != 0x0) {
    |                    child = index.nodes[nodeToDelete.left];
  > |                    child.parent = replacementNode.id;
    |                }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(469)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                }
    |
  > |                replacementNode.right = nodeToDelete.right;
    |                if (nodeToDelete.right != 0x0) {
    |                    child = index.nodes[nodeToDelete.right];
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(472)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                if (nodeToDelete.right != 0x0) {
    |                    child = index.nodes[nodeToDelete.right];
  > |                    child.parent = replacementNode.id;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(475)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |                if (parent.left == nodeToDelete.id) {
  > |                    parent.left = 0x0;
    |                }
    |                if (parent.right == nodeToDelete.id) {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(484)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                }
    |                if (parent.right == nodeToDelete.id) {
  > |                    parent.right = 0x0;
    |                }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(487)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                // This is both a leaf node and the root node, so we need to
    |                // unset the root node pointer.
  > |                index.root = 0x0;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(496)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |            // Now we zero out all of the fields on the nodeToDelete.
  > |            nodeToDelete.id = 0x0;
    |            nodeToDelete.value = 0;
    |            nodeToDelete.parent = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(500)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |            // Now we zero out all of the fields on the nodeToDelete.
    |            nodeToDelete.id = 0x0;
  > |            nodeToDelete.value = 0;
    |            nodeToDelete.parent = 0x0;
    |            nodeToDelete.left = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(501)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |            nodeToDelete.id = 0x0;
    |            nodeToDelete.value = 0;
  > |            nodeToDelete.parent = 0x0;
    |            nodeToDelete.left = 0x0;
    |            nodeToDelete.right = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(502)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |            nodeToDelete.value = 0;
    |            nodeToDelete.parent = 0x0;
  > |            nodeToDelete.left = 0x0;
    |            nodeToDelete.right = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(503)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |            nodeToDelete.parent = 0x0;
    |            nodeToDelete.left = 0x0;
  > |            nodeToDelete.right = 0x0;
    |
    |            // Walk back up the tree rebalancing
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(504)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                Node storage node = index.nodes[id];
    |
  > |                node.height = max(index.nodes[node.left].height, index.nodes[node.right].height) + 1;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(707)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |            // `originalRoot.parent` as it's parent.
    |            Node storage newRoot = index.nodes[originalRoot.right];
  > |            newRoot.parent = originalRoot.parent;
    |
    |            // The original root needs to have it's right child nulled out.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(722)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |            // The original root needs to have it's right child nulled out.
  > |            originalRoot.right = 0x0;
    |
    |            if (originalRoot.parent != 0x0) {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(725)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                // parent point to the new node.
    |                if (parent.left == originalRoot.id) {
  > |                    parent.left = newRoot.id;
    |                }
    |                if (parent.right == originalRoot.id) {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(735)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                }
    |                if (parent.right == originalRoot.id) {
  > |                    parent.right = newRoot.id;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(738)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                // new right child of the original root node
    |                Node storage leftChild = index.nodes[newRoot.left];
  > |                originalRoot.right = leftChild.id;
    |                leftChild.parent = originalRoot.id;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(747)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                Node storage leftChild = index.nodes[newRoot.left];
    |                originalRoot.right = leftChild.id;
  > |                leftChild.parent = originalRoot.id;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(748)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |            // Update the newRoot's left node to point at the original node.
  > |            originalRoot.parent = newRoot.id;
    |            newRoot.left = originalRoot.id;
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(752)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |            // Update the newRoot's left node to point at the original node.
    |            originalRoot.parent = newRoot.id;
  > |            newRoot.left = originalRoot.id;
    |
    |            if (newRoot.parent == 0x0) {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(753)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |            if (newRoot.parent == 0x0) {
  > |                index.root = newRoot.id;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(756)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |            // parent to be the original parent of the node.
    |            Node storage newRoot = index.nodes[originalRoot.left];
  > |            newRoot.parent = originalRoot.parent;
    |
    |            // Null out the originalRoot.left
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(776)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |            // Null out the originalRoot.left
  > |            originalRoot.left = 0x0;
    |
    |            if (originalRoot.parent != 0x0) {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(779)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |                if (parent.left == originalRoot.id) {
  > |                    parent.left = newRoot.id;
    |                }
    |                if (parent.right == originalRoot.id) {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(787)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                }
    |                if (parent.right == originalRoot.id) {
  > |                    parent.right = newRoot.id;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(790)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |            if (newRoot.right != 0x0) {
    |                Node storage rightChild = index.nodes[newRoot.right];
  > |                originalRoot.left = newRoot.right;
    |                rightChild.parent = originalRoot.id;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(796)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |                Node storage rightChild = index.nodes[newRoot.right];
    |                originalRoot.left = newRoot.right;
  > |                rightChild.parent = originalRoot.id;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(797)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |            // Update the new root's right node to point to the original node.
  > |            originalRoot.parent = newRoot.id;
    |            newRoot.right = originalRoot.id;
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(801)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |            // Update the new root's right node to point to the original node.
    |            originalRoot.parent = newRoot.id;
  > |            newRoot.right = originalRoot.id;
    |
    |            if (newRoot.parent == 0x0) {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(802)

[31mViolation[0m for UnrestrictedWrite in contract 'GroveLib':
    |
    |            if (newRoot.parent == 0x0) {
  > |                index.root = newRoot.id;
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(805)

[33mWarning[0m for LockedEther in contract 'Relay':
    |
    |
  > |contract Relay {
    |        address operator;
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1199)

[31mViolation[0m for MissingInputValidation in contract 'Relay':
    |        }
    |
  > |        function relayCall(address contractAddress, bytes4 abiSignature, bytes data) public returns (bool) {
    |                if (msg.sender != operator) {
    |                        throw;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1206)

[31mViolation[0m for UnhandledException in contract 'Relay':
    |                        throw;
    |                }
  > |                return contractAddress.call(abiSignature, data);
    |        }
    |}
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Relay':
    |                        throw;
    |                }
  > |                return contractAddress.call(abiSignature, data);
    |        }
    |}
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1210)

[31mViolation[0m for LockedEther in contract 'ScheduledCallLib':
    |
    |
  > |library ScheduledCallLib {
    |    /*
    |     *  Address: 0x5c3623dcef2d5168dbe3e8cc538788cd8912d898
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1217)

[33mWarning[0m for UnhandledException in contract 'ScheduledCallLib':
    |            // Mark whether the function call was successful.
    |            if (checkAuthorization(self, call.scheduledBy, call.contractAddress)) {
  > |                    call.wasSuccessful = self.authorizedRelay.relayCall.gas(msg.gas - CALL_OVERHEAD)(call.contractAddress, call.abiSignature, data);
    |            }
    |            else {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1613)

[33mWarning[0m for UnhandledException in contract 'ScheduledCallLib':
    |            }
    |            else {
  > |                    call.wasSuccessful = self.unauthorizedRelay.relayCall.gas(msg.gas - CALL_OVERHEAD)(call.contractAddress, call.abiSignature, data);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1616)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ScheduledCallLib':
    |            // Mark whether the function call was successful.
    |            if (checkAuthorization(self, call.scheduledBy, call.contractAddress)) {
  > |                    call.wasSuccessful = self.authorizedRelay.relayCall.gas(msg.gas - CALL_OVERHEAD)(call.contractAddress, call.abiSignature, data);
    |            }
    |            else {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1613)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ScheduledCallLib':
    |            }
    |            else {
  > |                    call.wasSuccessful = self.unauthorizedRelay.relayCall.gas(msg.gas - CALL_OVERHEAD)(call.contractAddress, call.abiSignature, data);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1616)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |
    |
  > |library ScheduledCallLib {
    |    /*
    |     *  Address: 0x5c3623dcef2d5168dbe3e8cc538788cd8912d898
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1217)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |
    |    function addAuthorization(CallDatabase storage self, address schedulerAddress, address contractAddress) public {
  > |            self.accountAuthorizations[sha3(schedulerAddress, contractAddress)] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1333)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |
    |    function removeAuthorization(CallDatabase storage self, address schedulerAddress, address contractAddress) public {
  > |            self.accountAuthorizations[sha3(schedulerAddress, contractAddress)] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1337)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            if (data.length > 4) {
    |                    for (uint i = 0; i < self.lastData.length; i++) {
  > |                            self.lastData[i] = data[i + 4];
    |                    }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1499)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            }
    |            self.data_registry[sha3(self.lastData)] = self.lastData;
  > |            self.lastDataHash = sha3(self.lastData);
    |            self.lastDataLength = self.lastData.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1503)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            self.data_registry[sha3(self.lastData)] = self.lastData;
    |            self.lastDataHash = sha3(self.lastData);
  > |            self.lastDataLength = self.lastData.length;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1504)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |
    |                    // Mark it as called since it was.
  > |                    call.wasCalled = true;
    |                    
    |                    // Log it.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1572)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |
    |            // Log metadata about the call.
  > |            call.gasPrice = tx.gasprice;
    |            call.executedBy = msgSender;
    |            call.calledAtBlock = block.number;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1600)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            // Log metadata about the call.
    |            call.gasPrice = tx.gasprice;
  > |            call.executedBy = msgSender;
    |            call.calledAtBlock = block.number;
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1601)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            call.gasPrice = tx.gasprice;
    |            call.executedBy = msgSender;
  > |            call.calledAtBlock = block.number;
    |
    |            // Fetch the call data
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1602)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            // Mark whether the function call was successful.
    |            if (checkAuthorization(self, call.scheduledBy, call.contractAddress)) {
  > |                    call.wasSuccessful = self.authorizedRelay.relayCall.gas(msg.gas - CALL_OVERHEAD)(call.contractAddress, call.abiSignature, data);
    |            }
    |            else {
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1613)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            }
    |            else {
  > |                    call.wasSuccessful = self.unauthorizedRelay.relayCall.gas(msg.gas - CALL_OVERHEAD)(call.contractAddress, call.abiSignature, data);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1616)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |
    |            // Mark the call as having been executed.
  > |            call.wasCalled = true;
    |
    |            // Compute the scalar (0 - 200) for the fee.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1623)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            // amount that represents the gas usage of the commands that
    |            // happen after this line.
  > |            call.gasUsed = (gasBefore - msg.gas + EXTRA_CALL_GAS);
    |            call.gasCost = call.gasUsed * call.gasPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1631)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            // happen after this line.
    |            call.gasUsed = (gasBefore - msg.gas + EXTRA_CALL_GAS);
  > |            call.gasCost = call.gasUsed * call.gasPrice;
    |
    |            // Now we need to pay the caller as well as keep fee.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1632)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            // callerPayout -> call cost + 1%
    |            // fee -> 1% of callerPayout
  > |            call.payout = call.gasCost * feeScalar * 101 / 10000;
    |            call.fee = call.gasCost * feeScalar / 10000;
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1637)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            // fee -> 1% of callerPayout
    |            call.payout = call.gasCost * feeScalar * 101 / 10000;
  > |            call.fee = call.gasCost * feeScalar / 10000;
    |
    |            AccountingLib.deductFunds(self.gasBank, call.scheduledBy, call.payout + call.fee);
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1638)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            }
    |
  > |            self.lastCallKey = callKey;
    |
    |            call.contractAddress = contractAddress;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1746)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            self.lastCallKey = callKey;
    |
  > |            call.contractAddress = contractAddress;
    |            call.scheduledBy = schedulerAddress;
    |            call.nonce = nonce;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1748)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |
    |            call.contractAddress = contractAddress;
  > |            call.scheduledBy = schedulerAddress;
    |            call.nonce = nonce;
    |            call.abiSignature = abiSignature;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1749)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            call.contractAddress = contractAddress;
    |            call.scheduledBy = schedulerAddress;
  > |            call.nonce = nonce;
    |            call.abiSignature = abiSignature;
    |            call.dataHash = dataHash;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1750)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            call.scheduledBy = schedulerAddress;
    |            call.nonce = nonce;
  > |            call.abiSignature = abiSignature;
    |            call.dataHash = dataHash;
    |            call.targetBlock = targetBlock;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1751)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            call.nonce = nonce;
    |            call.abiSignature = abiSignature;
  > |            call.dataHash = dataHash;
    |            call.targetBlock = targetBlock;
    |            call.gracePeriod = gracePeriod;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1752)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            call.abiSignature = abiSignature;
    |            call.dataHash = dataHash;
  > |            call.targetBlock = targetBlock;
    |            call.gracePeriod = gracePeriod;
    |            call.baseGasPrice = tx.gasprice;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1753)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            call.dataHash = dataHash;
    |            call.targetBlock = targetBlock;
  > |            call.gracePeriod = gracePeriod;
    |            call.baseGasPrice = tx.gasprice;
    |
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1754)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |            call.targetBlock = targetBlock;
    |            call.gracePeriod = gracePeriod;
  > |            call.baseGasPrice = tx.gasprice;
    |
    |            // Put the call into the grove index.
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1755)

[31mViolation[0m for UnrestrictedWrite in contract 'ScheduledCallLib':
    |                    return false;
    |            }
  > |            call.isCancelled = true;
    |            return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(1785)

[33mWarning[0m for LockedEther in contract 'StringLib':
    |/// @title String Utils - String utility functions
    |/// @author Piper Merriam - 
  > |library StringLib {
    |    /*
    |     *  Address: 0x443b53559d337277373171280ec57029718203fb
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'StringLib':
    |    /// @dev Converts an unsigned integert to its string representation.
    |    /// @param v The number to be converted.
  > |    function uintToBytes(uint v) constant returns (bytes32 ret) {
    |        if (v == 0) {
    |            ret = '0';
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'StringLib':
    |    /// @dev Converts a numeric string to it's unsigned integer representation.
    |    /// @param v The string to be converted.
  > |    function bytesToUInt(bytes32 v) constant returns (uint ret) {
    |        if (v == 0x0) {
    |            throw;
  at /home/jiaming/mavs_srcs/contract@0x07307d0b136a79bac718f43388aed706389c4588.sol(28)


