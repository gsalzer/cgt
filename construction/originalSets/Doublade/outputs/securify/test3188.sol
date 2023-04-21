Processing contract: /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol:PermissionGroups
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol:SetStepFunctionInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol:SetStepFunctionWrapper
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol:Withdrawable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'PermissionGroups':
    |pragma solidity ^0.4.18;
    |
  > |contract PermissionGroups {
    |
    |    address public admin;
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |pragma solidity ^0.4.18;
    |
  > |contract PermissionGroups {
    |
    |    address public admin;
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |        for (uint i = 0; i < alertersGroup.length; ++i) {
    |            if (alertersGroup[i] == alerter) {
  > |                alertersGroup[i] = alertersGroup[alertersGroup.length - 1];
    |                alertersGroup.length--;
    |                AlerterAdded(alerter, false);
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |        for (uint i = 0; i < operatorsGroup.length; ++i) {
    |            if (operatorsGroup[i] == operator) {
  > |                operatorsGroup[i] = operatorsGroup[operatorsGroup.length - 1];
    |                operatorsGroup.length -= 1;
    |                OperatorAdded(operator, false);
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |pragma solidity ^0.4.18;
    |
  > |contract PermissionGroups {
    |
    |    address public admin;
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |        require(newAdmin != address(0));
    |        TransferAdminPending(pendingAdmin);
  > |        pendingAdmin = newAdmin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |        TransferAdminPending(newAdmin);
    |        AdminClaimed(newAdmin, admin);
  > |        admin = newAdmin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |        require(pendingAdmin == msg.sender);
    |        AdminClaimed(pendingAdmin, admin);
  > |        admin = pendingAdmin;
    |        pendingAdmin = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |        AdminClaimed(pendingAdmin, admin);
    |        admin = pendingAdmin;
  > |        pendingAdmin = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |
    |        AlerterAdded(newAlerter, true);
  > |        alerters[newAlerter] = true;
    |        alertersGroup.push(newAlerter);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |        AlerterAdded(newAlerter, true);
    |        alerters[newAlerter] = true;
  > |        alertersGroup.push(newAlerter);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |    function removeAlerter (address alerter) public onlyAdmin {
    |        require(alerters[alerter]);
  > |        alerters[alerter] = false;
    |
    |        for (uint i = 0; i < alertersGroup.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |
    |        OperatorAdded(newOperator, true);
  > |        operators[newOperator] = true;
    |        operatorsGroup.push(newOperator);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |        OperatorAdded(newOperator, true);
    |        operators[newOperator] = true;
  > |        operatorsGroup.push(newOperator);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'PermissionGroups':
    |    function removeOperator (address operator) public onlyAdmin {
    |        require(operators[operator]);
  > |        operators[operator] = false;
    |
    |        for (uint i = 0; i < operatorsGroup.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(113)

[33mWarning[0m for DAOConstantGas in contract 'SetStepFunctionWrapper':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[33mWarning[0m for LockedEther in contract 'SetStepFunctionWrapper':
    |}
    |
  > |contract SetStepFunctionWrapper is Withdrawable {
    |    SetStepFunctionInterface public rateContract;
    |    function SetStepFunctionWrapper(address admin, address operator) public {
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(180)

[33mWarning[0m for TODAmount in contract 'SetStepFunctionWrapper':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[33mWarning[0m for TODReceiver in contract 'SetStepFunctionWrapper':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[33mWarning[0m for UnhandledException in contract 'SetStepFunctionWrapper':
    |     */
    |    function withdrawToken(ERC20 token, uint amount, address sendTo) external onlyAdmin {
  > |        require(token.transfer(sendTo, amount));
    |        TokenWithdraw(token, amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(154)

[33mWarning[0m for UnhandledException in contract 'SetStepFunctionWrapper':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[33mWarning[0m for UnhandledException in contract 'SetStepFunctionWrapper':
    |        }
    |
  > |        rateContract.setImbalanceStepFunction(token,xBuy,yBuy,xSell,ySell);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SetStepFunctionWrapper':
    |     */
    |    function withdrawToken(ERC20 token, uint amount, address sendTo) external onlyAdmin {
  > |        require(token.transfer(sendTo, amount));
    |        TokenWithdraw(token, amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SetStepFunctionWrapper':
    |        }
    |
  > |        rateContract.setImbalanceStepFunction(token,xBuy,yBuy,xSell,ySell);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SetStepFunctionWrapper':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |        for (uint i = 0; i < alertersGroup.length; ++i) {
    |            if (alertersGroup[i] == alerter) {
  > |                alertersGroup[i] = alertersGroup[alertersGroup.length - 1];
    |                alertersGroup.length--;
    |                AlerterAdded(alerter, false);
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |        for (uint i = 0; i < operatorsGroup.length; ++i) {
    |            if (operatorsGroup[i] == operator) {
  > |                operatorsGroup[i] = operatorsGroup[operatorsGroup.length - 1];
    |                operatorsGroup.length -= 1;
    |                OperatorAdded(operator, false);
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |}
    |
  > |contract SetStepFunctionWrapper is Withdrawable {
    |    SetStepFunctionInterface public rateContract;
    |    function SetStepFunctionWrapper(address admin, address operator) public {
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |
    |    function setConversionRateAddress(SetStepFunctionInterface _contract) public onlyOperator {
  > |        rateContract = _contract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |pragma solidity ^0.4.18;
    |
  > |contract PermissionGroups {
    |
    |    address public admin;
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |        require(newAdmin != address(0));
    |        TransferAdminPending(pendingAdmin);
  > |        pendingAdmin = newAdmin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |        TransferAdminPending(newAdmin);
    |        AdminClaimed(newAdmin, admin);
  > |        admin = newAdmin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |        require(pendingAdmin == msg.sender);
    |        AdminClaimed(pendingAdmin, admin);
  > |        admin = pendingAdmin;
    |        pendingAdmin = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |        AdminClaimed(pendingAdmin, admin);
    |        admin = pendingAdmin;
  > |        pendingAdmin = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |
    |        AlerterAdded(newAlerter, true);
  > |        alerters[newAlerter] = true;
    |        alertersGroup.push(newAlerter);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |        AlerterAdded(newAlerter, true);
    |        alerters[newAlerter] = true;
  > |        alertersGroup.push(newAlerter);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |    function removeAlerter (address alerter) public onlyAdmin {
    |        require(alerters[alerter]);
  > |        alerters[alerter] = false;
    |
    |        for (uint i = 0; i < alertersGroup.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |
    |        OperatorAdded(newOperator, true);
  > |        operators[newOperator] = true;
    |        operatorsGroup.push(newOperator);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |        OperatorAdded(newOperator, true);
    |        operators[newOperator] = true;
  > |        operatorsGroup.push(newOperator);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'SetStepFunctionWrapper':
    |    function removeOperator (address operator) public onlyAdmin {
    |        require(operators[operator]);
  > |        operators[operator] = false;
    |
    |        for (uint i = 0; i < operatorsGroup.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(113)

[33mWarning[0m for DAOConstantGas in contract 'Withdrawable':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[33mWarning[0m for LockedEther in contract 'Withdrawable':
    | * This will prevent any accidental loss of tokens.
    | */
  > |contract Withdrawable is PermissionGroups {
    |
    |    event TokenWithdraw(ERC20 token, uint amount, address sendTo);
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(145)

[33mWarning[0m for TODAmount in contract 'Withdrawable':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[33mWarning[0m for TODReceiver in contract 'Withdrawable':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[33mWarning[0m for UnhandledException in contract 'Withdrawable':
    |     */
    |    function withdrawToken(ERC20 token, uint amount, address sendTo) external onlyAdmin {
  > |        require(token.transfer(sendTo, amount));
    |        TokenWithdraw(token, amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(154)

[33mWarning[0m for UnhandledException in contract 'Withdrawable':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawable':
    |     */
    |    function withdrawToken(ERC20 token, uint amount, address sendTo) external onlyAdmin {
  > |        require(token.transfer(sendTo, amount));
    |        TokenWithdraw(token, amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawable':
    |     */
    |    function withdrawEther(uint amount, address sendTo) external onlyAdmin {
  > |        sendTo.transfer(amount);
    |        EtherWithdraw(amount, sendTo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'Withdrawable':
    |        for (uint i = 0; i < alertersGroup.length; ++i) {
    |            if (alertersGroup[i] == alerter) {
  > |                alertersGroup[i] = alertersGroup[alertersGroup.length - 1];
    |                alertersGroup.length--;
    |                AlerterAdded(alerter, false);
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'Withdrawable':
    |        for (uint i = 0; i < operatorsGroup.length; ++i) {
    |            if (operatorsGroup[i] == operator) {
  > |                operatorsGroup[i] = operatorsGroup[operatorsGroup.length - 1];
    |                operatorsGroup.length -= 1;
    |                OperatorAdded(operator, false);
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'Withdrawable':
    | * This will prevent any accidental loss of tokens.
    | */
  > |contract Withdrawable is PermissionGroups {
    |
    |    event TokenWithdraw(ERC20 token, uint amount, address sendTo);
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |pragma solidity ^0.4.18;
    |
  > |contract PermissionGroups {
    |
    |    address public admin;
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |        require(newAdmin != address(0));
    |        TransferAdminPending(pendingAdmin);
  > |        pendingAdmin = newAdmin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |        TransferAdminPending(newAdmin);
    |        AdminClaimed(newAdmin, admin);
  > |        admin = newAdmin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |        require(pendingAdmin == msg.sender);
    |        AdminClaimed(pendingAdmin, admin);
  > |        admin = pendingAdmin;
    |        pendingAdmin = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |        AdminClaimed(pendingAdmin, admin);
    |        admin = pendingAdmin;
  > |        pendingAdmin = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |
    |        AlerterAdded(newAlerter, true);
  > |        alerters[newAlerter] = true;
    |        alertersGroup.push(newAlerter);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |        AlerterAdded(newAlerter, true);
    |        alerters[newAlerter] = true;
  > |        alertersGroup.push(newAlerter);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |    function removeAlerter (address alerter) public onlyAdmin {
    |        require(alerters[alerter]);
  > |        alerters[alerter] = false;
    |
    |        for (uint i = 0; i < alertersGroup.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |
    |        OperatorAdded(newOperator, true);
  > |        operators[newOperator] = true;
    |        operatorsGroup.push(newOperator);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |        OperatorAdded(newOperator, true);
    |        operators[newOperator] = true;
  > |        operatorsGroup.push(newOperator);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawable':
    |    function removeOperator (address operator) public onlyAdmin {
    |        require(operators[operator]);
  > |        operators[operator] = false;
    |
    |        for (uint i = 0; i < operatorsGroup.length; ++i) {
  at /home/jiaming/mavs_srcs/contract@0xd11797a6fbeb97e388b1ce73bc40903508a0ab3c.sol(113)


