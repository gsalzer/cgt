Processing contract: /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol:NANJCOIN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(163)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |        TKN memory tkn;
    |        tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(163)

[33mWarning[0m for TODReceiver in contract 'NANJCOIN':
    |                && frozenAccount[msg.sender] == false
    |                && now > unlockUnixTime[msg.sender]);
  > |        if(msg.value > 0) activityFunds.transfer(msg.value);
    |        
    |        balanceOf[activityFunds] = balanceOf[activityFunds].sub(distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(582)

[33mWarning[0m for UnhandledException in contract 'NANJCOIN':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(321)

[33mWarning[0m for UnhandledException in contract 'NANJCOIN':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(389)

[33mWarning[0m for UnhandledException in contract 'NANJCOIN':
    |                && frozenAccount[msg.sender] == false
    |                && now > unlockUnixTime[msg.sender]);
  > |        if(msg.value > 0) activityFunds.transfer(msg.value);
    |        
    |        balanceOf[activityFunds] = balanceOf[activityFunds].sub(distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(582)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NANJCOIN':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(321)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NANJCOIN':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(389)

[31mViolation[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        for (uint j = 0; j < targets.length; j++) {
    |            require(targets[j] != 0x0);
  > |            frozenAccount[targets[j]] = isFrozen;
    |            FrozenFunds(targets[j], isFrozen);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        for(uint j = 0; j < targets.length; j++){
    |            require(unlockUnixTime[targets[j]] < unixTimes[j]);
  > |            unlockUnixTime[targets[j]] = unixTimes[j];
    |            LockedFunds(targets[j], unixTimes[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        if (isContract(_to)) {
    |            require(balanceOf[msg.sender] >= _value);
  > |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |            require(balanceOf[msg.sender] >= _value);
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |                && now > unlockUnixTime[_to]);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |                && balanceOf[_from] >= _unitAmount);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
    |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
  > |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        require(_unitAmount > 0);
    |        
  > |        totalSupply = totalSupply.add(_unitAmount);
    |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        
    |        totalSupply = totalSupply.add(_unitAmount);
  > |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
    |        Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |                    && now > unlockUnixTime[addresses[j]]);
    |
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].add(amount);
    |            Transfer(msg.sender, addresses[j], amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |            Transfer(msg.sender, addresses[j], amount);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(512)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        
    |        for (j = 0; j < addresses.length; j++) {
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].add(amounts[j]);
    |            Transfer(msg.sender, addresses[j], amounts[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(536)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |            Transfer(msg.sender, addresses[j], amounts[j]);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |            amounts[j] = amounts[j].mul(1e8);
    |            require(balanceOf[addresses[j]] >= amounts[j]);
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].sub(amounts[j]);
    |            totalAmount = totalAmount.add(amounts[j]);
    |            Transfer(addresses[j], msg.sender, amounts[j]);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |            Transfer(addresses[j], msg.sender, amounts[j]);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(564)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        if(msg.value > 0) activityFunds.transfer(msg.value);
    |        
  > |        balanceOf[activityFunds] = balanceOf[activityFunds].sub(distributeAmount);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].add(distributeAmount);
    |        Transfer(activityFunds, msg.sender, distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(584)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        
    |        balanceOf[activityFunds] = balanceOf[activityFunds].sub(distributeAmount);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(distributeAmount);
    |        Transfer(activityFunds, msg.sender, distributeAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(585)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'NANJCOIN':
    |
    |    function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
  > |        distributeAmount = _unitAmount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(570)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | *      control functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(120)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xffe02ee4c69edf1b340fcad64fbd6b37a7b9e265.sol(56)


