Processing contract: /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol:EtherOlympics
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EtherOlympics':
    |    function withdraw(address payTo, uint256 amount) onlyOwner {
    |        require(amount <= this.balance);
  > |        assert(payTo.send(amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(137)

[33mWarning[0m for LockedEther in contract 'EtherOlympics':
    |}
    |
  > |contract EtherOlympics is Ownable {
    |    mapping(bytes3 => uint16) iocCountryCodesToPriceMap;
    |    event newTeamCreated(bytes32 teamName, bytes3 country1, bytes3 country2, bytes3 country3,
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'EtherOlympics':
    |    }
    |
  > |    function createTeam(bytes32 _teamName, bytes3 _country1, bytes3 _country2, bytes3 _country3,   bytes3 _country4, bytes3 _country5, bytes3 _country6) public payable {
    |        require (msg.value > 99999999999999999);
    |        
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'EtherOlympics':
    |    }
    |
  > |    function withdraw(address payTo, uint256 amount) onlyOwner {
    |        require(amount <= this.balance);
    |        assert(payTo.send(amount));
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'EtherOlympics':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'EtherOlympics':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(35)

[33mWarning[0m for TODAmount in contract 'EtherOlympics':
    |    function withdraw(address payTo, uint256 amount) onlyOwner {
    |        require(amount <= this.balance);
  > |        assert(payTo.send(amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(137)

[33mWarning[0m for TODReceiver in contract 'EtherOlympics':
    |    function withdraw(address payTo, uint256 amount) onlyOwner {
    |        require(amount <= this.balance);
  > |        assert(payTo.send(amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(137)

[33mWarning[0m for UnhandledException in contract 'EtherOlympics':
    |    function withdraw(address payTo, uint256 amount) onlyOwner {
    |        require(amount <= this.balance);
  > |        assert(payTo.send(amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherOlympics':
    |    function withdraw(address payTo, uint256 amount) onlyOwner {
    |        require(amount <= this.balance);
  > |        assert(payTo.send(amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherOlympics':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(38)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3bebb8b23413088cd120aebb3d1b88fb8e394de9.sol(38)


