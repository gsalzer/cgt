Processing contract: /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'TokenERC20':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);            
  > |        msg.sender.transfer(amount * sellPrice);       
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(155)

[33mWarning[0m for DAOConstantGas in contract 'TokenERC20':
    |    
    |    function getEth(uint num) payable public {
  > |    	owner.transfer(num);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(190)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 is owned {
    |
    |    string public name = "TJB coin";
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(22)

[33mWarning[0m for TODAmount in contract 'TokenERC20':
    |    
    |    function getEth(uint num) payable public {
  > |    	owner.transfer(num);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(190)

[33mWarning[0m for TODAmount in contract 'TokenERC20':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);            
  > |        msg.sender.transfer(amount * sellPrice);       
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(155)

[31mViolation[0m for TODReceiver in contract 'TokenERC20':
    |    
    |    function getEth(uint num) payable public {
  > |    	owner.transfer(num);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(190)

[33mWarning[0m for TODReceiver in contract 'TokenERC20':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);            
  > |        msg.sender.transfer(amount * sellPrice);       
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(155)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(94)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);            
  > |        msg.sender.transfer(amount * sellPrice);       
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(155)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |    
    |    function getEth(uint num) payable public {
  > |    	owner.transfer(num);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(190)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |    
    |    function getEth(uint num) payable public {
  > |    	owner.transfer(num);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);            
  > |        msg.sender.transfer(amount * sellPrice);       
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balances[msg.sender] >= _value);   
    |        balances[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balances[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  > |        balances[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;              
    |        totalSupply -= _value;                               
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balances[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;              
  > |        totalSupply -= _value;                               
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |                return balances[_a];
    |            else
  > |                return balances[_a] += airdropNum ;
    |        } else {
    |            return balances[_a];
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |		if( !touched[_from] && currentTotalSupply < totalSupply  && currentTotalSupply < airdroptotal ){
  > |            balances[_from] += airdropNum ;
    |            touched[_from] = true;
    |            currentTotalSupply  += airdropNum;
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |		if( !touched[_from] && currentTotalSupply < totalSupply  && currentTotalSupply < airdroptotal ){
    |            balances[_from] += airdropNum ;
  > |            touched[_from] = true;
    |            currentTotalSupply  += airdropNum;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |            balances[_from] += airdropNum ;
    |            touched[_from] = true;
  > |            currentTotalSupply  += airdropNum;
    |        }
    |		
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balances[_to] + _value > balances[_to]);
    |        uint previousBalances = balances[_from] + balances[_to];
  > |        balances[_from] -= _value;
    |        balances[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        balances[_from] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balances[_from] + balances[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);   
  > |        balances[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    
    |        balances[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;              
    |        totalSupply -= _value;                               
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balances[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balances[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    | 
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(140)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0821f459bfbe966bb93ad220ece6e1bdfcadeab3.sol(16)


