Processing contract: /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol:BasicToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol:MintableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol:StandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol:UNTToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(74)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(8)

[31mViolation[0m for LockedEther in contract 'UNTToken':
    |}
    |
  > |contract UNTToken is MintableToken{
    |
    |    string public constant name = "unttest";
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        //emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        //emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        //emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |     */
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        //emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        //emit Mint(_to, _amount);
    |        //emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        //emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |    {
    |       require(owner == msg.sender);
  > |       isFreezed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'UNTToken':
    |    {
    |       require(owner == msg.sender);
  > |       isFreezed = false;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00817122beef212ac22e65fc0fba8bc065fd5f66.sol(381)


