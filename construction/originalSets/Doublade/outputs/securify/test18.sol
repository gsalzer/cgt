Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:Array256Lib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:BytesToTypes
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:PrivateSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:Seriality
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:SizeOf
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:StandardERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:TimedEscrow
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol:TypesToBytes
[31mViolation[0m for LockedEther in contract 'Array256Lib':
    |}
    |
  > |library Array256Lib {
    |
    |  /// @dev Sum vector
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(429)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |}
    |
  > |library Array256Lib {
    |
    |  /// @dev Sum vector
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(429)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |        else {
    |          temp = self[swap];
  > |          self[swap] = self[root];
    |          self[root] = temp;
    |          root = swap;
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(568)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |          temp = self[swap];
    |          self[swap] = self[root];
  > |          self[root] = temp;
    |          root = swap;
    |          lChild = getLeftChildI(root);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(569)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |    while(end > 0){
    |      temp = self[end];
  > |      self[end] = self[0];
    |      self[0] = temp;
    |      end = end - 1;
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(581)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |      temp = self[end];
    |      self[end] = self[0];
  > |      self[0] = temp;
    |      end = end - 1;
    |      root = 0;
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(582)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |        else {
    |          temp = self[swap];
  > |          self[swap] = self[root];
    |          self[root] = temp;
    |          root = swap;
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(597)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |          temp = self[swap];
    |          self[swap] = self[root];
  > |          self[root] = temp;
    |          root = swap;
    |          lChild = getLeftChildI(root);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(598)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |      if (i > index) {
    |        for (uint256 j = i; j < self.length - 1; j++){
  > |          self[j] = self[j + 1];
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(617)

[31mViolation[0m for UnrestrictedWrite in contract 'Array256Lib':
    |        }
    |
  > |        delete self[self.length - 1];
    |        self.length--;
    |        i--;
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(620)

[33mWarning[0m for LockedEther in contract 'BytesToTypes':
    |}
    |
  > |contract BytesToTypes {
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(630)

[33mWarning[0m for DAOConstantGas in contract 'PrivateSale':
    |        require(now < end && msg.value >= mincontrib);
    |        // Forward ether to owner, throws if error
  > |        owner.transfer(msg.value);
    |
    |        uint256 toks = msg.value.mul(rate);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(98)

[33mWarning[0m for TODReceiver in contract 'PrivateSale':
    |        require(now < end && msg.value >= mincontrib);
    |        // Forward ether to owner, throws if error
  > |        owner.transfer(msg.value);
    |
    |        uint256 toks = msg.value.mul(rate);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(98)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |    // Function to access remaining tokens allocated to this contract
    |    function remaining() public view returns (uint) {
  > |        return tokContract.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(79)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |        require(now > end);
    |        require(msg.sender == owner);
  > |        tokContract.transfer(owner, tokContract.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(86)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |        require(now < end && msg.value >= mincontrib);
    |        // Forward ether to owner, throws if error
  > |        owner.transfer(msg.value);
    |
    |        uint256 toks = msg.value.mul(rate);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(98)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |        uint256 toks2 = toks - toks1;
    |
  > |        bytes memory data = escrow.transactionRawToBytes(toks1, msg.sender, lockend1, true, false);
    |
    |        bytes memory data2 = escrow.transactionRawToBytes(toks2, msg.sender, lockend2, true, false);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(108)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |        bytes memory data = escrow.transactionRawToBytes(toks1, msg.sender, lockend1, true, false);
    |
  > |        bytes memory data2 = escrow.transactionRawToBytes(toks2, msg.sender, lockend2, true, false);
    |
    |        // Transfer tokens to escrow
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(110)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |
    |        // Transfer tokens to escrow
  > |        tokContract.transfer(
    |            escrow,
    |            toks1,
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(113)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |        );
    |
  > |        tokContract.transfer(
    |            escrow,
    |            toks2,
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |    // Function to access remaining tokens allocated to this contract
    |    function remaining() public view returns (uint) {
  > |        return tokContract.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |        require(now > end);
    |        require(msg.sender == owner);
  > |        tokContract.transfer(owner, tokContract.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |        uint256 toks2 = toks - toks1;
    |
  > |        bytes memory data = escrow.transactionRawToBytes(toks1, msg.sender, lockend1, true, false);
    |
    |        bytes memory data2 = escrow.transactionRawToBytes(toks2, msg.sender, lockend2, true, false);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |        bytes memory data = escrow.transactionRawToBytes(toks1, msg.sender, lockend1, true, false);
    |
  > |        bytes memory data2 = escrow.transactionRawToBytes(toks2, msg.sender, lockend2, true, false);
    |
    |        // Transfer tokens to escrow
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |
    |        // Transfer tokens to escrow
  > |        tokContract.transfer(
    |            escrow,
    |            toks1,
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |        );
    |
  > |        tokContract.transfer(
    |            escrow,
    |            toks2,
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |    function setMinContrib(uint256 _mincontrib){
    |        require(msg.sender == owner);
  > |        mincontrib = _mincontrib;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |        require(msg.sender == owner);
    |        require(_lockend1 <= lockend1);
  > |        lockend1 = _lockend1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |        require(msg.sender == owner);
    |        require(_lockend2 <= lockend2);
  > |        lockend2 = _lockend2;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |        require(msg.sender == owner);
    |        require(_denominator > 0);
  > |        numerator = _numerator;
    |        denominator = _denominator;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |        require(_denominator > 0);
    |        numerator = _numerator;
  > |        denominator = _denominator;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(74)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1148)

[33mWarning[0m for LockedEther in contract 'Seriality':
    |}
    |
  > |contract Seriality is BytesToTypes, TypesToBytes, SizeOf {
    |
    |    function Seriality() public {
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1320)

[33mWarning[0m for LockedEther in contract 'SizeOf':
    |}
    |
  > |contract  SizeOf {
    |    
    |    function sizeOfString(string _in) internal pure  returns(uint _size){
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1194)

[33mWarning[0m for LockedEther in contract 'StandardERC20':
    |}
    |
  > |contract StandardERC20 is ERC20Interface {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |    */
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardERC20':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(263)

[33mWarning[0m for LockedEther in contract 'TimedEscrow':
    |}
    |
  > |contract TimedEscrow is ContractReceiver, Seriality {
    |
    |    using Array256Lib for uint256[];
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1327)

[33mWarning[0m for UnhandledException in contract 'TimedEscrow':
    |        );
    |        transactions[transaction_id].valid = false;
  > |        tokContract.transfer(owner, transactions[transaction_id].value);
    |        emit voidingTransaction(transaction_id);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1377)

[33mWarning[0m for UnhandledException in contract 'TimedEscrow':
    |        tbp.executed = true;
    |        transactions[transaction_id] = tbp;
  > |        tokContract.transfer(tbp.to_address, tbp.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1400)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimedEscrow':
    |        );
    |        transactions[transaction_id].valid = false;
  > |        tokContract.transfer(owner, transactions[transaction_id].value);
    |        emit voidingTransaction(transaction_id);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1377)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimedEscrow':
    |        tbp.executed = true;
    |        transactions[transaction_id] = tbp;
  > |        tokContract.transfer(tbp.to_address, tbp.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1400)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |pragma solidity ^0.4.13;
    |
  > |contract ContractReceiver {
    |    function tokenFallback(address _from, uint _value, bytes _data) public;
    |}
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |
    |    function addTransaction(Transaction transaction) private {
  > |        transactions.push(transaction);
    |        transactions_of[transaction.to_address].push(transactions.length - 1);
    |        emit addingTransaction(transaction.value, transaction.to_address, transaction.time, transaction.valid, transaction.executed, transactions.length - 1);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1357)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |    function addTransaction(Transaction transaction) private {
    |        transactions.push(transaction);
  > |        transactions_of[transaction.to_address].push(transactions.length - 1);
    |        emit addingTransaction(transaction.value, transaction.to_address, transaction.time, transaction.valid, transaction.executed, transactions.length - 1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1358)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |        Transaction tbp = transactions[transaction_id];
    |        require(now > tbp.time && tbp.valid && !tbp.executed, 'Invalid transaction data');
  > |        tbp.executed = true;
    |        transactions[transaction_id] = tbp;
    |        tokContract.transfer(tbp.to_address, tbp.value);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1398)

[31mViolation[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |        require(now > tbp.time && tbp.valid && !tbp.executed, 'Invalid transaction data');
    |        tbp.executed = true;
  > |        transactions[transaction_id] = tbp;
    |        tokContract.transfer(tbp.to_address, tbp.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1399)

[33mWarning[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |        && transactions[transaction_id].valid
    |        );
  > |        transactions[transaction_id].valid = false;
    |        tokContract.transfer(owner, transactions[transaction_id].value);
    |        emit voidingTransaction(transaction_id);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1376)

[33mWarning[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |    function transferOwnership(address tbo){
    |        require(msg.sender == owner, 'Unauthorized');
  > |        owner = tbo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1364)

[33mWarning[0m for UnrestrictedWrite in contract 'TimedEscrow':
    |        && transactions[transaction_id].valid
    |        && transactions[transaction_id].time > newtime);
  > |        transactions[transaction_id].time = newtime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(1471)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is StandardERC20 {
    |    
    |    string public name    = "Genuine Token";
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(272)

[33mWarning[0m for UnhandledException in contract 'Token':
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
  > |            assert(_to.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data));
    |            emit Transfer(msg.sender, _to, _value, _data);
    |            // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(327)

[33mWarning[0m for UnhandledException in contract 'Token':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
  > |            assert(_to.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data));
    |            emit Transfer(msg.sender, _to, _value, _data);
    |            // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    */
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferOwnership(address tbo) public {
    |        require(msg.sender == owner, 'Unauthorized');
  > |        owner = tbo;
    |    }
    |       
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        if (isContract(_to)) {
    |            if (balanceOf(msg.sender) < _value) revert();
  > |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
    |            assert(_to.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            if (balanceOf(msg.sender) < _value) revert();
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |            balances[_to] = balanceOf(_to).add(_value);
    |            assert(_to.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data));
    |            emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert("Insufficient balance");
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        if (balanceOf(msg.sender) < _value) revert("Insufficient balance");
    |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |        balances[_to] = balanceOf(_to).add(_value);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        // ERC20 compliant transfer
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert("Insufficient balance");
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        if (balanceOf(msg.sender) < _value) revert("Insufficient balance");
    |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function setBurnable(bool _burnable) public {
    |        require (msg.sender == owner);
  > |        burnable = _burnable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_who] = balances[_who].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[_who] = balances[_who].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(_who, _value);
    |        emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x013f7a6b98010e85fd4c8887d30f48c409b5643d.sol(423)


