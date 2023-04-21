Processing contract: /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol:CryptoChamps
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'CryptoChamps':
    |        uint commision = _price * 10 / 100;
    |        
  > |        _target.transfer(_price - commision);
    |        
    |        owner.transfer(commision);
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(131)

[31mViolation[0m for DAOConstantGas in contract 'CryptoChamps':
    |        _target.transfer(_price - commision);
    |        
  > |        owner.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(133)

[33mWarning[0m for DAOConstantGas in contract 'CryptoChamps':
    |    
    |    function withdraw() external onlyOwner returns (bool){
  > |        owner.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(213)

[33mWarning[0m for LockedEther in contract 'CryptoChamps':
    |}
    |
  > |contract CryptoChamps is Ownable{
    |    
    |    struct Person {
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(20)

[31mViolation[0m for TODAmount in contract 'CryptoChamps':
    |    
    |    function withdraw() external onlyOwner returns (bool){
  > |        owner.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(213)

[31mViolation[0m for TODReceiver in contract 'CryptoChamps':
    |        _target.transfer(_price - commision);
    |        
  > |        owner.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(133)

[31mViolation[0m for TODReceiver in contract 'CryptoChamps':
    |        _target.transfer(_price - commision);
    |        
  > |        owner.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(143)

[31mViolation[0m for TODReceiver in contract 'CryptoChamps':
    |    
    |    function withdraw() external onlyOwner returns (bool){
  > |        owner.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(213)

[33mWarning[0m for TODReceiver in contract 'CryptoChamps':
    |        
    |        if(price < msg.value){
  > |            msg.sender.transfer(msg.value - price);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(85)

[33mWarning[0m for UnhandledException in contract 'CryptoChamps':
    |        
    |        if(price < msg.value){
  > |            msg.sender.transfer(msg.value - price);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(85)

[33mWarning[0m for UnhandledException in contract 'CryptoChamps':
    |        uint commision = _price * 10 / 100;
    |        
  > |        _target.transfer(_price - commision);
    |        
    |        owner.transfer(commision);
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(131)

[33mWarning[0m for UnhandledException in contract 'CryptoChamps':
    |        _target.transfer(_price - commision);
    |        
  > |        owner.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(133)

[33mWarning[0m for UnhandledException in contract 'CryptoChamps':
    |        uint commision = profit * 30 / 100;
    |        
  > |        _target.transfer(_price - commision);
    |        
    |        owner.transfer(commision);
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(141)

[33mWarning[0m for UnhandledException in contract 'CryptoChamps':
    |        _target.transfer(_price - commision);
    |        
  > |        owner.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(143)

[33mWarning[0m for UnhandledException in contract 'CryptoChamps':
    |    
    |    function withdraw() external onlyOwner returns (bool){
  > |        owner.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoChamps':
    |        
    |        if(price < msg.value){
  > |            msg.sender.transfer(msg.value - price);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(85)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoChamps':
    |        uint commision = _price * 10 / 100;
    |        
  > |        _target.transfer(_price - commision);
    |        
    |        owner.transfer(commision);
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoChamps':
    |        _target.transfer(_price - commision);
    |        
  > |        owner.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoChamps':
    |        uint commision = profit * 30 / 100;
    |        
  > |        _target.transfer(_price - commision);
    |        
    |        owner.transfer(commision);
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoChamps':
    |        _target.transfer(_price - commision);
    |        
  > |        owner.transfer(commision);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoChamps':
    |    
    |    function withdraw() external onlyOwner returns (bool){
  > |        owner.transfer(this.balance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |}
    |
  > |contract CryptoChamps is Ownable{
    |    
    |    struct Person {
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        require(people[_id].id == 0);
    |        Person memory person = Person(_id, _name, 0, false);
  > |        people[_id] = person;
    |        personToOwner[_id] = owner;
    |        personToPrice[_id] = _startingPrice;
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        Person memory person = Person(_id, _name, 0, false);
    |        people[_id] = person;
  > |        personToOwner[_id] = owner;
    |        personToPrice[_id] = _startingPrice;
    |        totalSupply++;
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        people[_id] = person;
    |        personToOwner[_id] = owner;
  > |        personToPrice[_id] = _startingPrice;
    |        totalSupply++;
    |        Birth(_id, _startingPrice);
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        personToOwner[_id] = owner;
    |        personToPrice[_id] = _startingPrice;
  > |        totalSupply++;
    |        Birth(_id, _startingPrice);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |pragma solidity ^0.4.19;
    |
  > |contract Ownable{
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        
    |        if(!isUserAdded[msg.sender]){
  > |            users.push(msg.sender);
    |            isUserAdded[msg.sender] = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        if(!isUserAdded[msg.sender]){
    |            users.push(msg.sender);
  > |            isUserAdded[msg.sender] = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        
    |        noOfPersonsOwned[_owner]--;
  > |        noOfPersonsOwned[msg.sender]++;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        }
    |        
  > |        personToOldPrice[_person.id] = currentPrice;
    |        uint newPrice = _approx((currentPrice * percent) / 100);
    |        personToPrice[_person.id] = newPrice;
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        personToOldPrice[_person.id] = currentPrice;
    |        uint newPrice = _approx((currentPrice * percent) / 100);
  > |        personToPrice[_person.id] = newPrice;
    |        
    |        _person.txCount++;
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        _person.txCount++;
    |        if(_person.discounted){
  > |            _person.discounted = false;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        personToOwner[_id] = _to;
    |        noOfPersonsOwned[_to]++;
  > |        noOfPersonsOwned[msg.sender]--;
    |        Transfer(msg.sender, _to, _id);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |}
    |
  > |contract CryptoChamps is Ownable{
    |    
    |    struct Person {
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        require(people[_id].id == 0);
    |        Person memory person = Person(_id, _name, 0, false);
  > |        people[_id] = person;
    |        personToOwner[_id] = owner;
    |        personToPrice[_id] = _startingPrice;
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        
    |        Person storage person = people[_id];
  > |        person.discounted = true;
    |        
    |        personToPrice[_id] = _newPrice;
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        person.discounted = true;
    |        
  > |        personToPrice[_id] = _newPrice;
    |        
    |        Discount(_id, _newPrice);
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        }
    |        
  > |        personToOwner[_person.id] = msg.sender;
    |        
    |        noOfPersonsOwned[_owner]--;
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        personToOwner[_person.id] = msg.sender;
    |        
  > |        noOfPersonsOwned[_owner]--;
    |        noOfPersonsOwned[msg.sender]++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |        personToPrice[_person.id] = newPrice;
    |        
  > |        _person.txCount++;
    |        if(_person.discounted){
    |            _person.discounted = false;
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |    
    |    function transfer(address _to, uint32 _id) external ownsPerson(_id){
  > |        personToOwner[_id] = _to;
    |        noOfPersonsOwned[_to]++;
    |        noOfPersonsOwned[msg.sender]--;
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |    function transfer(address _to, uint32 _id) external ownsPerson(_id){
    |        personToOwner[_id] = _to;
  > |        noOfPersonsOwned[_to]++;
    |        noOfPersonsOwned[msg.sender]--;
    |        Transfer(msg.sender, _to, _id);
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoChamps':
    |    function setStore(address _store) external onlyOwner returns (bool) {
    |        require(_store != 0);
  > |        store = _store;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(204)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.19;
    |
  > |contract Ownable{
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable{
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9720b742c04e272b5fd5be56f4b4881aa3597b82.sol(16)


