Processing contract: /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol:Exchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol:TokenTransferProxy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol:Whitelist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | */
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(99)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |    function safeMul(uint a, uint b) internal constant returns (uint256) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(204)

[33mWarning[0m for LockedEther in contract 'Token':
    |
    |
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(40)

[31mViolation[0m for LockedEther in contract 'TokenTransferProxy':
    |/// @title TokenTransferProxy - Transfers tokens on behalf of contracts that have been approved via decentralized governance.
    |/// @author Amir Bandeali - <amir@0xProject.com>, Will Warren - <will@0xProject.com>
  > |contract TokenTransferProxy is Ownable {
    |
    |    /// @dev Only authorized addresses can invoke functions with this modifier.
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(107)

[33mWarning[0m for UnhandledException in contract 'TokenTransferProxy':
    |        returns (bool)
    |    {
  > |        return Token(token).transferFrom(from, to, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTransferProxy':
    |        returns (bool)
    |    {
  > |        return Token(token).transferFrom(from, to, value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |/// @title TokenTransferProxy - Transfers tokens on behalf of contracts that have been approved via decentralized governance.
    |/// @author Amir Bandeali - <amir@0xProject.com>, Will Warren - <will@0xProject.com>
  > |contract TokenTransferProxy is Ownable {
    |
    |    /// @dev Only authorized addresses can invoke functions with this modifier.
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |        for (uint i = 0; i < authorities.length; i++) {
    |            if (authorities[i] == target) {
  > |                authorities[i] = authorities[authorities.length - 1];
    |                authorities.length -= 1;
    |                break;
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |  Copyright 2017 ZeroEx Intl.
    |
  > |  Licensed under the Apache License, Version 2.0 (the "License");
    |  you may not use this file except in compliance with the License.
    |  You may obtain a copy of the License at
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |        targetNotAuthorized(target)
    |    {
  > |        authorized[target] = true;
    |        authorities.push(target);
    |        LogAuthorizedAddressAdded(target, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |    {
    |        authorized[target] = true;
  > |        authorities.push(target);
    |        LogAuthorizedAddressAdded(target, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenTransferProxy':
    |        targetAuthorized(target)
    |    {
  > |        delete authorized[target];
    |        for (uint i = 0; i < authorities.length; i++) {
    |            if (authorities[i] == target) {
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(158)

[33mWarning[0m for LockedEther in contract 'Whitelist':
    |
    |
  > |contract Whitelist is Ownable {
    |    mapping (address => uint128) whitelist;
    |
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(248)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function whitelistUser(address who, uint128 nonce) external onlyOwner {
    |        setWhitelisting(who, nonce);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(263)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function whitelistMe(uint128 nonce, uint8 v, bytes32 r, bytes32 s) external {
    |        bytes32 hash = keccak256(msg.sender, nonce);
    |        require(ecrecover(hash, v, r, s) == owner);
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(267)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function isWhitelisted(address who) external view returns(bool) {
    |        return whitelist[who] > 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(275)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function setWhitelisting(address who, uint128 nonce) internal {
    |        whitelist[who] = nonce;
    |
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(257)

[33mWarning[0m for UnhandledException in contract 'Whitelist':
    |    function whitelistMe(uint128 nonce, uint8 v, bytes32 r, bytes32 s) external {
    |        bytes32 hash = keccak256(msg.sender, nonce);
  > |        require(ecrecover(hash, v, r, s) == owner);
    |        require(whitelist[msg.sender] == 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Whitelist':
    |    function whitelistMe(uint128 nonce, uint8 v, bytes32 r, bytes32 s) external {
    |        bytes32 hash = keccak256(msg.sender, nonce);
  > |        require(ecrecover(hash, v, r, s) == owner);
    |        require(whitelist[msg.sender] == 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(269)

[31mViolation[0m for UnrestrictedWrite in contract 'Whitelist':
    |
    |    function setWhitelisting(address who, uint128 nonce) internal {
  > |        whitelist[who] = nonce;
    |
    |        Whitelisted(who, nonce);
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |
    |    function setWhitelisting(address who, uint128 nonce) internal {
  > |        whitelist[who] = nonce;
    |
    |        Whitelisted(who, nonce);
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |
    |    function setWhitelisting(address who, uint128 nonce) internal {
  > |        whitelist[who] = nonce;
    |
    |        Whitelisted(who, nonce);
  at /home/jiaming/mavs_srcs/contract@0x5fb2f392772a6cb5ac423ceb587b62898c06c8cf.sol(258)


