Processing contract: /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol:Marriage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol:MarriageRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Marriage':
    |    */
    |    function collect() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(83)

[33mWarning[0m for LockedEther in contract 'Marriage':
    | * that lets people ring a bell to celebrate the wedding
    | */
  > |contract Marriage {
    |
    |    event weddingBells(address ringer, uint256 count);
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |
    |    // Owner address
  > |    address public owner;
    |
    |    /// Marriage Vows
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |
    |    /// Marriage Vows
  > |    string public leftName;
    |    string public leftVows;
    |    string public rightName;
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    /// Marriage Vows
    |    string public leftName;
  > |    string public leftVows;
    |    string public rightName;
    |    string public rightVows;
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    string public leftName;
    |    string public leftVows;
  > |    string public rightName;
    |    string public rightVows;
    |    // date public marriageDate;
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    string public leftVows;
    |    string public rightName;
  > |    string public rightVows;
    |    // date public marriageDate;
    |    uint public marriageDate;
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    string public rightVows;
    |    // date public marriageDate;
  > |    uint public marriageDate;
    |    
    |    // Bell counter
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    
    |    // Bell counter
  > |    uint256 public bellCounter;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    * @dev Adds two numbers, throws on overflow.
    |    */
  > |    function add(uint256 a, uint256 b) private pure returns (uint256 c) {
    |        c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    * also send Ether to the marriage contract
    |    */
  > |    function ringBell() public payable {
    |        bellCounter = add(1, bellCounter);
    |        emit weddingBells(msg.sender, bellCounter);
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    * @dev withdraw allows the owner of the contract to withdraw all ether collected by bell ringers
    |    */
  > |    function collect() external onlyOwner {
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    * @dev withdraw allows the owner of the contract to withdraw all ether collected by bell ringers
    |    */
  > |    function getBalance() public view returns (uint) {
    |        return address(this).balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Marriage':
    |    * Not sure if this works yet
    |    */
  > |    function getMarriageDetails() public view returns (
    |        address, string, string, string, string, uint, uint256) {
    |        return (
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(97)

[31mViolation[0m for TODAmount in contract 'Marriage':
    |    */
    |    function collect() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(83)

[33mWarning[0m for TODReceiver in contract 'Marriage':
    |    */
    |    function collect() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(83)

[33mWarning[0m for UnhandledException in contract 'Marriage':
    |    */
    |    function collect() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Marriage':
    |    */
    |    function collect() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'Marriage':
    |    */
    |    function ringBell() public payable {
  > |        bellCounter = add(1, bellCounter);
    |        emit weddingBells(msg.sender, bellCounter);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(75)

[31mViolation[0m for LockedEther in contract 'MarriageRegistry':
  > |contract MarriageRegistry {
    |    address [] public registeredMarriages;
    |    event ContractCreated(address contractAddress);
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'MarriageRegistry':
    |contract MarriageRegistry {
  > |    address [] public registeredMarriages;
    |    event ContractCreated(address contractAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'MarriageRegistry':
    |        address newMarriage = new Marriage(msg.sender, _leftName, _leftVows, _rightName, _rightVows, _date);
    |        emit ContractCreated(newMarriage);
  > |        registeredMarriages.push(newMarriage);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf600c8faf89504850e26bcb8c03d04fa5b00ac8f.sol(8)


