Processing contract: /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol:SharderToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |    function mul(uint a, uint b) internal pure returns (uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(36)

[31mViolation[0m for LockedEther in contract 'SharderToken':
    |* @dev ERC-20: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
    |*/
  > |contract SharderToken {
    |    using SafeMath for uint;
    |    string public name = "Sharder";
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'SharderToken':
    |* @dev ERC-20: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
    |*/
  > |contract SharderToken {
    |    using SafeMath for uint;
    |    string public name = "Sharder";
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |* @dev ERC-20: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
    |*/
  > |contract SharderToken {
    |    using SafeMath for uint;
    |    string public name = "Sharder";
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        require(_transferTokensWithDecimal <= allowance[_from][msg.sender]);
    |        // Check allowance
  > |        allowance[_from][msg.sender] -= _transferTokensWithDecimal;
    |        _transfer(_from, _to, _transferTokensWithDecimal);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |     */
    |    function approve(address _spender, uint256 _approveTokensWithDecimal) public isNotFrozen isNotPaused returns (bool success) {
  > |        allowance[msg.sender][_spender] = _approveTokensWithDecimal;
    |        Approval(msg.sender, _spender, _approveTokensWithDecimal);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        require(balanceOf[msg.sender] >= _burnedTokensWithDecimal);
    |        /// Check if the sender has enough
  > |        balanceOf[msg.sender] -= _burnedTokensWithDecimal;
    |        /// Subtract from the sender
    |        totalSupply -= _burnedTokensWithDecimal;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        balanceOf[_from] -= _burnedTokensWithDecimal;
    |        /// Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _burnedTokensWithDecimal;
    |        /// Subtract from the sender's allowance
    |        totalSupply -= _burnedTokensWithDecimal;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        // Check and add holder to array
    |        if (holderIndex[_holderAddr] == 0) {
  > |            holderIndex[_holderAddr] = holders.length++;
    |        }
    |        holders[holderIndex[_holderAddr]] = _holderAddr;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |            holderIndex[_holderAddr] = holders.length++;
    |        }
  > |        holders[holderIndex[_holderAddr]] = _holderAddr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        require(!firstRoundTokenIssued);
    |
  > |        balanceOf[owner] = balanceOf[owner].add(totalSupply);
    |        Issue(issueIndex++, owner, 0, totalSupply);
    |        addOrUpdateHolder(owner);
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |
    |        balanceOf[owner] = balanceOf[owner].add(totalSupply);
  > |        Issue(issueIndex++, owner, 0, totalSupply);
    |        addOrUpdateHolder(owner);
    |        firstRoundTokenIssued = true;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        Issue(issueIndex++, owner, 0, totalSupply);
    |        addOrUpdateHolder(owner);
  > |        firstRoundTokenIssued = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |    */
    |    function issueReserveToken(uint256 _issueTokensWithDecimal) onlyOwner public {
  > |        balanceOf[owner] = balanceOf[owner].add(_issueTokensWithDecimal);
    |        totalSupply = totalSupply.add(_issueTokensWithDecimal);
    |        Issue(issueIndex++, owner, 0, _issueTokensWithDecimal);
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |    function issueReserveToken(uint256 _issueTokensWithDecimal) onlyOwner public {
    |        balanceOf[owner] = balanceOf[owner].add(_issueTokensWithDecimal);
  > |        totalSupply = totalSupply.add(_issueTokensWithDecimal);
    |        Issue(issueIndex++, owner, 0, _issueTokensWithDecimal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        balanceOf[owner] = balanceOf[owner].add(_issueTokensWithDecimal);
    |        totalSupply = totalSupply.add(_issueTokensWithDecimal);
  > |        Issue(issueIndex++, owner, 0, _issueTokensWithDecimal);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |* @dev ERC-20: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
    |*/
  > |contract SharderToken {
    |    using SafeMath for uint;
    |    string public name = "Sharder";
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        // Update holders
    |        addOrUpdateHolder(_from);
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        balanceOf[msg.sender] -= _burnedTokensWithDecimal;
    |        /// Subtract from the sender
  > |        totalSupply -= _burnedTokensWithDecimal;
    |        Burn(msg.sender, _burnedTokensWithDecimal);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        require(_burnedTokensWithDecimal <= allowance[_from][msg.sender]);
    |        /// Check allowance
  > |        balanceOf[_from] -= _burnedTokensWithDecimal;
    |        /// Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _burnedTokensWithDecimal;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        allowance[_from][msg.sender] -= _burnedTokensWithDecimal;
    |        /// Subtract from the sender's allowance
  > |        totalSupply -= _burnedTokensWithDecimal;
    |        Burn(_from, _burnedTokensWithDecimal);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |    */
    |    function setAdmin(address _address) public onlyOwner {
  > |        admin = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |    */
    |    function changeFrozenStatus(address _address, bool _frozenStatus) public onlyAdmin {
  > |        frozenAccounts[_address] = _frozenStatus;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        require((accountLockup[_address] && now > accountLockupTime[_address]) || !accountLockup[_address]);
    |        // lock-up account
  > |        accountLockupTime[_address] = now + _lockupSeconds;
    |        accountLockup[_address] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |        // lock-up account
    |        accountLockupTime[_address] = now + _lockupSeconds;
  > |        accountLockup[_address] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |    */
    |    function pause() onlyAdmin isNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'SharderToken':
    |    */
    |    function unpause() onlyAdmin isPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x996ccd50d1e3aee157dac4ee79942ab63ad86ebc.sol(391)


