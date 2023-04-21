Processing contract: /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol:NOTNCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |        TKN memory tkn;
    |        tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(101)

[31mViolation[0m for LockedEther in contract 'NOTNCoin':
    |
    |
  > |contract NOTNCoin is ERC223, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(129)

[33mWarning[0m for UnhandledException in contract 'NOTNCoin':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(219)

[33mWarning[0m for UnhandledException in contract 'NOTNCoin':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NOTNCoin':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NOTNCoin':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(287)

[31mViolation[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |        for (uint j = 0; j < targets.length; j++) {
    |            require(targets[j] != 0x0);
  > |            frozenAccount[targets[j]] = isFrozen;
    |            FrozenFunds(targets[j], isFrozen);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |        for(uint j = 0; j < targets.length; j++){
    |            require(unlockUnixTime[targets[j]] < unixTimes[j]);
  > |            unlockUnixTime[targets[j]] = unixTimes[j];
    |            LockedFunds(targets[j], unixTimes[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |        if (isContract(_to)) {
    |            require(balanceOf[msg.sender] >= _value);
  > |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |            require(balanceOf[msg.sender] >= _value);
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |                && now > unlockUnixTime[_to]);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |                && balanceOf[_from] >= _unitAmount);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
    |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
  > |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |        require(_unitAmount > 0);
    |
  > |        totalSupply = totalSupply.add(_unitAmount);
    |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |
    |        totalSupply = totalSupply.add(_unitAmount);
  > |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
    |        Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |                    && now > unlockUnixTime[addresses[j]]);
    |
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].add(amount);
    |            Transfer(msg.sender, addresses[j], amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |            Transfer(msg.sender, addresses[j], amount);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |
    |        for (j = 0; j < addresses.length; j++) {
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].add(amounts[j]);
    |            Transfer(msg.sender, addresses[j], amounts[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |            Transfer(msg.sender, addresses[j], amounts[j]);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |            amounts[j] = amounts[j].mul(1e8);
    |            require(balanceOf[addresses[j]] >= amounts[j]);
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].sub(amounts[j]);
    |            totalAmount = totalAmount.add(amounts[j]);
    |            Transfer(addresses[j], msg.sender, amounts[j]);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |            Transfer(addresses[j], msg.sender, amounts[j]);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'NOTNCoin':
    |
    |    function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
  > |        distributeAmount = _unitAmount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(468)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | *      control functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(67)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8edbc572144ddce43f6bece96688879336aa8b7d.sol(3)


