Processing contract: /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol:BtradeWhiteList
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BtradeWhiteList':
    |}
    |
  > |contract BtradeWhiteList {
    |	mapping(address => bool) public whiteList;
    |	
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'BtradeWhiteList':
    |
    |contract BtradeWhiteList {
  > |	mapping(address => bool) public whiteList;
    |	
    |	function BtradeWhiteList() public {
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'BtradeWhiteList':
    |    }
    |
  > |    function isRegistered(address _address) public view returns (bool registered) {
    |        return whiteList[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'BtradeWhiteList':
    |	}
    |	
  > |	function register(address _address) public {
    |        whiteList[msg.sender] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'BtradeWhiteList':
    |    }
    |
  > |    function unregister(address _address) public {
    |        whiteList[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'BtradeWhiteList':
    |	
    |	function register(address _address) public {
  > |        whiteList[msg.sender] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'BtradeWhiteList':
    |
    |    function unregister(address _address) public {
  > |        whiteList[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(47)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0)); 
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0)); 
  > |        owner = newOwner;
    |        emit OwnershipTransferred(owner, newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x839d4bc00744a64af316000c31ecbf26fc07727a.sol(30)


