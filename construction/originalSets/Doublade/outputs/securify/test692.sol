Processing contract: /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol:BCBtuCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BCBtuCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(120)

[33mWarning[0m for LockedEther in contract 'BCBtuCoin':
    |}
    |
  > |contract BCBtuCoin is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(41)

[31mViolation[0m for TODAmount in contract 'BCBtuCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(120)

[31mViolation[0m for TODReceiver in contract 'BCBtuCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(120)

[33mWarning[0m for UnhandledException in contract 'BCBtuCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(120)

[33mWarning[0m for UnhandledException in contract 'BCBtuCoin':
    |        Approval(msg.sender, _spender, _value);
    |        
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCBtuCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCBtuCoin':
    |        Approval(msg.sender, _spender, _value);
    |        
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |    
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |    
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'BCBtuCoin':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(70)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x2c3801c08894684e9a911cdd0e1ae966713e668e.sol(3)


