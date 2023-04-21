Processing contract: /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol:CEEDCOIN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for TODReceiver in contract 'CEEDCOIN':
    |                && frozenAccount[msg.sender] == false
    |                && now > unlockUnixTime[msg.sender]);
  > |        if(msg.value > 0) activityFunds.transfer(msg.value);
    |        
    |        balanceOf[activityFunds] = balanceOf[activityFunds].sub(distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(517)

[33mWarning[0m for UnhandledException in contract 'CEEDCOIN':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(256)

[33mWarning[0m for UnhandledException in contract 'CEEDCOIN':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(324)

[33mWarning[0m for UnhandledException in contract 'CEEDCOIN':
    |                && frozenAccount[msg.sender] == false
    |                && now > unlockUnixTime[msg.sender]);
  > |        if(msg.value > 0) activityFunds.transfer(msg.value);
    |        
    |        balanceOf[activityFunds] = balanceOf[activityFunds].sub(distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(517)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CEEDCOIN':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CEEDCOIN':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(324)

[31mViolation[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        for (uint j = 0; j < targets.length; j++) {
    |            require(targets[j] != 0x0);
  > |            frozenAccount[targets[j]] = isFrozen;
    |            FrozenFunds(targets[j], isFrozen);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        for(uint j = 0; j < targets.length; j++){
    |            require(unlockUnixTime[targets[j]] < unixTimes[j]);
  > |            unlockUnixTime[targets[j]] = unixTimes[j];
    |            LockedFunds(targets[j], unixTimes[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        if (isContract(_to)) {
    |            require(balanceOf[msg.sender] >= _value);
  > |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |            require(balanceOf[msg.sender] >= _value);
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |                && now > unlockUnixTime[_to]);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |                && balanceOf[_from] >= _unitAmount);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
    |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
  > |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        require(_unitAmount > 0);
    |        
  > |        totalSupply = totalSupply.add(_unitAmount);
    |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        
    |        totalSupply = totalSupply.add(_unitAmount);
  > |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
    |        Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |                    && now > unlockUnixTime[addresses[j]]);
    |
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].add(amount);
    |            Transfer(msg.sender, addresses[j], amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |            Transfer(msg.sender, addresses[j], amount);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        
    |        for (j = 0; j < addresses.length; j++) {
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].add(amounts[j]);
    |            Transfer(msg.sender, addresses[j], amounts[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |            Transfer(msg.sender, addresses[j], amounts[j]);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |            amounts[j] = amounts[j].mul(1e8);
    |            require(balanceOf[addresses[j]] >= amounts[j]);
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].sub(amounts[j]);
    |            totalAmount = totalAmount.add(amounts[j]);
    |            Transfer(addresses[j], msg.sender, amounts[j]);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |            Transfer(addresses[j], msg.sender, amounts[j]);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        if(msg.value > 0) activityFunds.transfer(msg.value);
    |        
  > |        balanceOf[activityFunds] = balanceOf[activityFunds].sub(distributeAmount);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].add(distributeAmount);
    |        Transfer(activityFunds, msg.sender, distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(519)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        
    |        balanceOf[activityFunds] = balanceOf[activityFunds].sub(distributeAmount);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(distributeAmount);
    |        Transfer(activityFunds, msg.sender, distributeAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(520)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'CEEDCOIN':
    |
    |    function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
  > |        distributeAmount = _unitAmount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(505)

[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |        TKN memory tkn;
    |        tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(115)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | *      control functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8cf217e285cc2cdaf0b05383341da7739812eb0e.sol(8)


