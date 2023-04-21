Processing contract: /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol:TokenTransferProxy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | */
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(80)

[33mWarning[0m for LockedEther in contract 'Token':
    |
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(21)

[31mViolation[0m for LockedEther in contract 'TokenTransferProxy':
    |/// @title TokenTransferProxy - Transfers tokens on behalf of contracts that have been approved via decentralized governance.
    |/// @author Amir Bandeali - <amir@0xProject.com>, Will Warren - <will@0xProject.com>
  > |contract TokenTransferProxy is Ownable {
    |
    |    /// @dev Only authorized addresses can invoke functions with this modifier.
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(88)

[33mWarning[0m for UnhandledException in contract 'TokenTransferProxy':
    |        returns (bool)
    |    {
  > |        return Token(token).transferFrom(from, to, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTransferProxy':
    |        returns (bool)
    |    {
  > |        return Token(token).transferFrom(from, to, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |/// @title TokenTransferProxy - Transfers tokens on behalf of contracts that have been approved via decentralized governance.
    |/// @author Amir Bandeali - <amir@0xProject.com>, Will Warren - <will@0xProject.com>
  > |contract TokenTransferProxy is Ownable {
    |
    |    /// @dev Only authorized addresses can invoke functions with this modifier.
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |        for (uint i = 0; i < authorities.length; i++) {
    |            if (authorities[i] == target) {
  > |                authorities[i] = authorities[authorities.length - 1];
    |                authorities.length -= 1;
    |                break;
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |  Copyright 2017 ZeroEx Intl.
    |
  > |  Licensed under the Apache License, Version 2.0 (the "License");
    |  you may not use this file except in compliance with the License.
    |  You may obtain a copy of the License at
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |        targetNotAuthorized(target)
    |    {
  > |        authorized[target] = true;
    |        authorities.push(target);
    |        LogAuthorizedAddressAdded(target, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |    {
    |        authorized[target] = true;
  > |        authorities.push(target);
    |        LogAuthorizedAddressAdded(target, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |        targetAuthorized(target)
    |    {
  > |        delete authorized[target];
    |        for (uint i = 0; i < authorities.length; i++) {
    |            if (authorities[i] == target) {
  at /home/jiaming/mavs_srcs/contract@0x42839cf89def7cc156c6065877967ed670f0717c.sol(139)


