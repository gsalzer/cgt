Processing contract: /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol:RevvaCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol:Token
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function changeOwner(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |contract Token is Owned {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function changeOwner(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(66)

[33mWarning[0m for LockedEther in contract 'Owned':
    |*/
    |
  > |contract Owned {
    |
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function changeOwner(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function changeOwner(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(18)

[33mWarning[0m for DAOConstantGas in contract 'RevvaCoin':
    |
    |    function sendFund() onlyOwner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(131)

[33mWarning[0m for LockedEther in contract 'RevvaCoin':
    |}
    |
  > |contract RevvaCoin is ERC20Token {
    |
    |    bool public isTokenSale = true;
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(79)

[31mViolation[0m for TODAmount in contract 'RevvaCoin':
    |
    |    function sendFund() onlyOwner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(131)

[31mViolation[0m for TODReceiver in contract 'RevvaCoin':
    |
    |    function sendFund() onlyOwner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(131)

[31mViolation[0m for UnhandledException in contract 'RevvaCoin':
    |
    |    function sendFund() onlyOwner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RevvaCoin':
    |
    |    function sendFund() onlyOwner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |
    |    function changeOwner(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |            }
    |            balances[owner] -= tokenAmount;
  > |            balances[msg.sender] += tokenAmount;
    |            Transfer(owner, msg.sender, tokenAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |
    |    function stopSale() onlyOwner {
  > |        isTokenSale = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |
    |    function startSale() onlyOwner {
  > |        isTokenSale = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |
    |    function setPrice(uint256 newPrice) onlyOwner {
  > |        price = newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |
    |    function setLimit(uint256 newLimit) onlyOwner {
  > |        limit = newLimit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |
    |    function setWallet(address _to) onlyOwner {
  > |        walletOut = _to;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |            return false;
    |        }
  > |        totalSupply += _value;
    |        balances[msg.sender] += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |        }
    |        totalSupply += _value;
  > |        balances[msg.sender] += _value;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |            return false;
    |        }
  > |        totalSupply -= _value;
    |        balances[msg.sender] -= _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'RevvaCoin':
    |        }
    |        totalSupply -= _value;
  > |        balances[msg.sender] -= _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31c9c1e892b916fee242ec35fcb2220abfea3be9.sol(169)


