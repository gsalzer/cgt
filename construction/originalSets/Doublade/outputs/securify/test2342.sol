Processing contract: /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol:Bqt_Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Bqt_Token':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(140)

[33mWarning[0m for LockedEther in contract 'Bqt_Token':
    |  }  
    |   
  > |  contract Bqt_Token is ERC20Interface {
    |
    |      string public constant symbol = "BQT";
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(65)

[31mViolation[0m for TODAmount in contract 'Bqt_Token':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(140)

[33mWarning[0m for TODAmount in contract 'Bqt_Token':
    |        if(_seller_money + _buyer_money > msg.value) throw;
    |
  > |        if(_seller_money > 0) _from.send(_seller_money);
    |        if(_buyer_money > 0) msg.sender.send(_buyer_money);
    |
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(372)

[33mWarning[0m for TODAmount in contract 'Bqt_Token':
    |
    |        if(_seller_money > 0) _from.send(_seller_money);
  > |        if(_buyer_money > 0) msg.sender.send(_buyer_money);
    |
    |        orders_sell_amount[_from] -= _amount;        
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(373)

[33mWarning[0m for TODReceiver in contract 'Bqt_Token':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(140)

[33mWarning[0m for TODReceiver in contract 'Bqt_Token':
    |        if(_seller_money + _buyer_money > msg.value) throw;
    |
  > |        if(_seller_money > 0) _from.send(_seller_money);
    |        if(_buyer_money > 0) msg.sender.send(_buyer_money);
    |
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(372)

[33mWarning[0m for TODReceiver in contract 'Bqt_Token':
    |
    |        if(_seller_money > 0) _from.send(_seller_money);
  > |        if(_buyer_money > 0) msg.sender.send(_buyer_money);
    |
    |        orders_sell_amount[_from] -= _amount;        
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(373)

[31mViolation[0m for UnhandledException in contract 'Bqt_Token':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(140)

[31mViolation[0m for UnhandledException in contract 'Bqt_Token':
    |        if(_seller_money + _buyer_money > msg.value) throw;
    |
  > |        if(_seller_money > 0) _from.send(_seller_money);
    |        if(_buyer_money > 0) msg.sender.send(_buyer_money);
    |
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(372)

[31mViolation[0m for UnhandledException in contract 'Bqt_Token':
    |
    |        if(_seller_money > 0) _from.send(_seller_money);
  > |        if(_buyer_money > 0) msg.sender.send(_buyer_money);
    |
    |        orders_sell_amount[_from] -= _amount;        
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(373)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bqt_Token':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Bqt_Token':
    |              && _amount > 0
    |              && balances[_to] + _amount > balances[_to]) {
  > |              balances[msg.sender] -= _amount;
    |              balances[_to] += _amount;
    |              Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'Bqt_Token':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'Bqt_Token':
    |     // If this function is called again it overwrites the current allowance with _value.
    |     function approve(address _spender, uint256 _amount) returns (bool success) {
  > |         allowed[msg.sender][_spender] = _amount;
    |         Approval(msg.sender, _spender, _amount);
    |         return true;
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Bqt_Token':
    |        if(_totalSupply.add(tokens_buy_total) > maxTokens) throw;
    |        _totalSupply = _totalSupply.add(tokens_buy_total);
  > |        balances[msg.sender] = balances[msg.sender].add(tokens_buy_total);         
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'Bqt_Token':
    |        if(!(_price > 0)) throw;        
    |
  > |        orders_sell_amount[msg.sender] = _max_amount;
    |        orders_sell_price[msg.sender] = (_price*exchange_coefficient).div(100);
    |        orders_sell_list.push(msg.sender);        
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'Bqt_Token':
    |
    |        orders_sell_amount[msg.sender] = _max_amount;
  > |        orders_sell_price[msg.sender] = (_price*exchange_coefficient).div(100);
    |        orders_sell_list.push(msg.sender);        
    |
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'Bqt_Token':
    |        orders_sell_amount[_from] -= _amount;        
    |        balances[_from] -= _amount;
  > |        balances[msg.sender] += _amount; 
    |
    |        Order_execute(_from, msg.sender, _amount, orders_sell_price[_from]);
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'Bqt_Token':
    |      //Change ico_start date
    |      function change_ico_start(uint256 _ico_start) onlyOwner returns (bool result) {
  > |          ico_start = _ico_start;
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Bqt_Token':
    |      //Change ico_finish date
    |      function change_ico_finish(uint256 _ico_finish) onlyOwner returns (bool result) {
  > |          ico_finish = _ico_finish;
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(152)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;    
    |
  > |  library SafeMath {
    |    function mul(uint256 a, uint256 b) internal returns (uint256) {
    |      uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x986ad7884422864a1c3c139dc3b4a44c83008bc4.sol(11)


