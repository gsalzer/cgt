Processing contract: /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol:Pedigree
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol:PedigreeFactory
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Pedigree':
    |}
    |
  > |contract Pedigree {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(37)

[31mViolation[0m for UnrestrictedWrite in contract 'Pedigree':
    |pragma solidity ^0.4.24;
    |
  > |contract PedigreeFactory {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Pedigree':
    |}
    |
  > |contract Pedigree {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(37)

[31mViolation[0m for UnrestrictedWrite in contract 'Pedigree':
    |
    |    function addChild(address _childAddr) external {
  > |        childs.push(_childAddr);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Pedigree':
    |}
    |
  > |contract Pedigree {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Pedigree':
    |
    |    function setSpouse(address _spouseAddr) external onlyOwner {
  > |        spouse = _spouseAddr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(90)

[33mWarning[0m for DAOConstantGas in contract 'PedigreeFactory':
    |    function widthdraw() external payable{
    |        require( msg.sender == owner );
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(29)

[33mWarning[0m for LockedEther in contract 'PedigreeFactory':
    |pragma solidity ^0.4.24;
    |
  > |contract PedigreeFactory {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(3)

[31mViolation[0m for TODAmount in contract 'PedigreeFactory':
    |    function widthdraw() external payable{
    |        require( msg.sender == owner );
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(29)

[33mWarning[0m for TODReceiver in contract 'PedigreeFactory':
    |    function widthdraw() external payable{
    |        require( msg.sender == owner );
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(29)

[33mWarning[0m for UnhandledException in contract 'PedigreeFactory':
    |    function widthdraw() external payable{
    |        require( msg.sender == owner );
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(29)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PedigreeFactory':
    |    function widthdraw() external payable{
    |        require( msg.sender == owner );
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'PedigreeFactory':
    |pragma solidity ^0.4.24;
    |
  > |contract PedigreeFactory {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'PedigreeFactory':
    |    function createPedigreeWithParent(address _father, address _mother, string _name, bool _gender, string _birthday, string _ipfs) public returns ( Pedigree ) {
    |        Pedigree newPedigree = new Pedigree(msg.sender, _father, _mother, _name, _gender, _birthday, _ipfs);
  > |        list[msg.sender].push(newPedigree);
    |        return newPedigree;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97ed4e76a1c7c3e0627c025aa3c9e48bf38b1363.sol(15)


