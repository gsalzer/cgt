Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:Array256Lib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:BytesToTypes
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:Seriality
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:SizeOf
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:StandardERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:TimedEscrow
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol:TypesToBytes
[31mViolation[0m for LockedEther in contract 'Array256Lib':
    |}
    |
  > |library Array256Lib {
    |
    |  /// @dev Sum vector
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |}
    |
  > |library Array256Lib {
    |
    |  /// @dev Sum vector
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |        else {
    |          temp = self[swap];
  > |          self[swap] = self[root];
    |          self[root] = temp;
    |          root = swap;
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(447)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |          temp = self[swap];
    |          self[swap] = self[root];
  > |          self[root] = temp;
    |          root = swap;
    |          lChild = getLeftChildI(root);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(448)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |    while(end > 0){
    |      temp = self[end];
  > |      self[end] = self[0];
    |      self[0] = temp;
    |      end = end - 1;
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(460)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |      temp = self[end];
    |      self[end] = self[0];
  > |      self[0] = temp;
    |      end = end - 1;
    |      root = 0;
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(461)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |        else {
    |          temp = self[swap];
  > |          self[swap] = self[root];
    |          self[root] = temp;
    |          root = swap;
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(476)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |          temp = self[swap];
    |          self[swap] = self[root];
  > |          self[root] = temp;
    |          root = swap;
    |          lChild = getLeftChildI(root);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(477)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |      if (i > index) {
    |        for (uint256 j = i; j < self.length - 1; j++){
  > |          self[j] = self[j + 1];
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(496)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |        }
    |
  > |        delete self[self.length - 1];
    |        self.length--;
    |        i--;
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(499)

[33mWarning[0m for LockedEther in contract 'BytesToTypes':
    |}
    |
  > |contract BytesToTypes {
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(509)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1027)

[33mWarning[0m for LockedEther in contract 'Seriality':
    |}
    |
  > |contract Seriality is BytesToTypes, TypesToBytes, SizeOf {
    |
    |    function Seriality() public {
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1199)

[33mWarning[0m for LockedEther in contract 'SizeOf':
    |}
    |
  > |contract  SizeOf {
    |    
    |    function sizeOfString(string _in) internal pure  returns(uint _size){
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1073)

[33mWarning[0m for LockedEther in contract 'StandardERC20':
    |}
    |
  > |contract StandardERC20 is ERC20Interface {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |    */
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(142)

[33mWarning[0m for LockedEther in contract 'TimedEscrow':
    |}
    |
  > |contract TimedEscrow is ContractReceiver, Seriality {
    |
    |    using Array256Lib for uint256[];
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1206)

[33mWarning[0m for UnhandledException in contract 'TimedEscrow':
    |        );
    |        transactions[transaction_id].valid = false;
  > |        tokContract.transfer(owner, transactions[transaction_id].value);
    |        emit voidingTransaction(transaction_id);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1256)

[33mWarning[0m for UnhandledException in contract 'TimedEscrow':
    |        tbp.executed = true;
    |        transactions[transaction_id] = tbp;
  > |        tokContract.transfer(tbp.to_address, tbp.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1279)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimedEscrow':
    |        );
    |        transactions[transaction_id].valid = false;
  > |        tokContract.transfer(owner, transactions[transaction_id].value);
    |        emit voidingTransaction(transaction_id);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimedEscrow':
    |        tbp.executed = true;
    |        transactions[transaction_id] = tbp;
  > |        tokContract.transfer(tbp.to_address, tbp.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1279)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |pragma solidity ^0.4.13;
    |
  > |contract ContractReceiver {
    |    function tokenFallback(address _from, uint _value, bytes _data) public;
    |}
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |
    |    function addTransaction(Transaction transaction) private {
  > |        transactions.push(transaction);
    |        transactions_of[transaction.to_address].push(transactions.length - 1);
    |        emit addingTransaction(transaction.value, transaction.to_address, transaction.time, transaction.valid, transaction.executed, transactions.length - 1);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1236)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |    function addTransaction(Transaction transaction) private {
    |        transactions.push(transaction);
  > |        transactions_of[transaction.to_address].push(transactions.length - 1);
    |        emit addingTransaction(transaction.value, transaction.to_address, transaction.time, transaction.valid, transaction.executed, transactions.length - 1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1237)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |        Transaction tbp = transactions[transaction_id];
    |        require(now > tbp.time && tbp.valid && !tbp.executed, 'Invalid transaction data');
  > |        tbp.executed = true;
    |        transactions[transaction_id] = tbp;
    |        tokContract.transfer(tbp.to_address, tbp.value);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1277)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |        require(now > tbp.time && tbp.valid && !tbp.executed, 'Invalid transaction data');
    |        tbp.executed = true;
  > |        transactions[transaction_id] = tbp;
    |        tokContract.transfer(tbp.to_address, tbp.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1278)

[33mWarning[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |        && transactions[transaction_id].valid
    |        );
  > |        transactions[transaction_id].valid = false;
    |        tokContract.transfer(owner, transactions[transaction_id].value);
    |        emit voidingTransaction(transaction_id);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1255)

[33mWarning[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |    function transferOwnership(address tbo){
    |        require(msg.sender == owner, 'Unauthorized');
  > |        owner = tbo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1243)

[33mWarning[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |        && transactions[transaction_id].valid
    |        && transactions[transaction_id].time > newtime);
  > |        transactions[transaction_id].time = newtime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(1350)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is StandardERC20 {
    |    
    |    string public name    = "Genuine Token";
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(151)

[33mWarning[0m for UnhandledException in contract 'Token':
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
  > |            assert(_to.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data));
    |            emit Transfer(msg.sender, _to, _value, _data);
    |            // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(206)

[33mWarning[0m for UnhandledException in contract 'Token':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(273)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
  > |            assert(_to.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data));
    |            emit Transfer(msg.sender, _to, _value, _data);
    |            // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    */
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferOwnership(address tbo) public {
    |        require(msg.sender == owner, 'Unauthorized');
  > |        owner = tbo;
    |    }
    |       
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        if (isContract(_to)) {
    |            if (balanceOf(msg.sender) < _value) revert();
  > |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
    |            assert(_to.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            if (balanceOf(msg.sender) < _value) revert();
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |            balances[_to] = balanceOf(_to).add(_value);
    |            assert(_to.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data));
    |            emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert("Insufficient balance");
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        if (balanceOf(msg.sender) < _value) revert("Insufficient balance");
    |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |        balances[_to] = balanceOf(_to).add(_value);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert("Insufficient balance");
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        if (balanceOf(msg.sender) < _value) revert("Insufficient balance");
    |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function setBurnable(bool _burnable) public {
    |        require (msg.sender == owner);
  > |        burnable = _burnable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_who] = balances[_who].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[_who] = balances[_who].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(_who, _value);
    |        emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xcf8e00794c9c50248fce3f37b1f9c50a4974358e.sol(302)


