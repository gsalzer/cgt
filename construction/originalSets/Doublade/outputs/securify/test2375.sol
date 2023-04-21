Processing contract: /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol:IgnisLite
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IgnisLite':
    |
    |
  > |contract IgnisLite is Ownable{
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'IgnisLite':
    |
    |        if( !touched[msg.sender] && currentTotalSupply < totalSupply ){
  > |            balances[msg.sender] = balances[msg.sender].add( startBalance );
    |            touched[msg.sender] = true;
    |            currentTotalSupply = currentTotalSupply.add( startBalance );
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'IgnisLite':
    |        if( !touched[msg.sender] && currentTotalSupply < totalSupply ){
    |            balances[msg.sender] = balances[msg.sender].add( startBalance );
  > |            touched[msg.sender] = true;
    |            currentTotalSupply = currentTotalSupply.add( startBalance );
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'IgnisLite':
    |        require(_value <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'IgnisLite':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'IgnisLite':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'IgnisLite':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'IgnisLite':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |          allowed[msg.sender][_spender] = 0;
    |        } else {
    |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'IgnisLite':
    |          allowed[msg.sender][_spender] = 0;
    |        } else {
  > |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'IgnisLite':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(49)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x9aa9f330ab322e8a6f044c46a109b5910fa373ce.sol(4)


