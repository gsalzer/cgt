Processing contract: /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol:ENKToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol:HasAddresses
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol:Vestable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol:VestingPeriods
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ENKToken':
    | * @notice The ERC20 Token.
    | */
  > |contract ENKToken is IERC20, Ownable, Vestable, HasAddresses, VestingPeriods {
    |    
    |    using SafeMathLib for uint256;
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'ENKToken':
    |    function burn(uint256 _value) public {
    |        require (balances[msg.sender] >= _value);                 // Check if the sender has enough
  > |        balances[msg.sender] = balances[msg.sender].minus(_value);
    |        burntTokens += _value;
    |        emit BurnToken(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'ENKToken':
    |        require (balances[msg.sender] >= _value);                 // Check if the sender has enough
    |        balances[msg.sender] = balances[msg.sender].minus(_value);
  > |        burntTokens += _value;
    |        emit BurnToken(msg.sender, _value);
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'ENKToken':
    |        require (balances[_from] >= _value);                 // Check if the sender has enough
    |        require (balances[_to] + _value > balances[_to]);   // Check for overflows
  > |        balances[_from] = balances[_from].minus(_value);    // Subtract from the sender
    |        balances[_to] = balances[_to].plus(_value);         // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ENKToken':
    |        require (balances[_to] + _value > balances[_to]);   // Check for overflows
    |        balances[_from] = balances[_from].minus(_value);    // Subtract from the sender
  > |        balances[_to] = balances[_to].plus(_value);         // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'ENKToken':
    |        require(checkVestingCondition(_from));
    |        require (_value <= approved[_from][msg.sender]);     // Check allowance
  > |        approved[_from][msg.sender] = approved[_from][msg.sender].minus(_value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'ENKToken':
    |        require(checkVestingCondition(_spender));
    |        if(balances[msg.sender] >= _value) {
  > |            approved[msg.sender][_spender] = _value;
    |            emit Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'ENKToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(73)

[33mWarning[0m for LockedEther in contract 'HasAddresses':
    |}
    |
  > |contract HasAddresses {
    |    address teamAddress = 0xb72D3a827c7a7267C0c8E14A1F4729bF38950887;
    |    address advisoryPoolAddress = 0x83a330c4A0f7b2bBe1B463F7a5a5eb6EA429E981;
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(78)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(73)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | * Checking overflows for various operations
    | */
  > |library SafeMathLib {
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(21)

[33mWarning[0m for LockedEther in contract 'Vestable':
    |
    |
  > |contract Vestable {
    |
    |    uint defaultVestingDate = 1526428800;  // timestamp after which transfers will be enabled,  Wednesday, 16 May 2018 00:00:00
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'Vestable':
    |    }
    |
  > |    function checkVestingTimestamp(address testAddress) public constant returns(uint){
    |        return vestedAddresses[testAddress];
    |
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(105)

[33mWarning[0m for LockedEther in contract 'VestingPeriods':
    |
    |
  > |contract VestingPeriods{
    |    uint teamVestingTime = 1557360000;            // GMT: Thursday, 9 May 2019 00:00:00 
    |    uint advisoryPoolVestingTime = 1541721600;    // Human time (GMT): Friday, 9 November 2018 00:00:00
  at /home/jiaming/mavs_srcs/contract@0x8993db1795b9a7b317b98ebfa4c971f225bf1248.sol(86)


