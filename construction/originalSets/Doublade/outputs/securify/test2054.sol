Processing contract: /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol:CappedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol:CustomToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol:ERC20Standard
Processing contract: /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |
    |
  > |contract BasicToken is ERC20Basic, Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(125)

[33mWarning[0m for LockedEther in contract 'CappedToken':
    | */
    |
  > |contract CappedToken is MintableToken {
    |
    |    uint256 public cap;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |     */
    |    function approve(address _spender, uint256 _value) transfersEnabled public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) transfersEnabled public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    function addMinter(address _addr) public onlyOwner {
    |        require(_addr != address(0));
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    function deleteMinter(address _addr) public onlyOwner {
    |        require(_addr != address(0));
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(301)

[33mWarning[0m for LockedEther in contract 'CustomToken':
    |
    |
  > |contract CustomToken is CappedToken {
    |    //1.3 update add minter/delete minter address validation
    |    string public version = "1.3";
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |     */
    |    function approve(address _spender, uint256 _value) transfersEnabled public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) transfersEnabled public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |    function addMinter(address _addr) public onlyOwner {
    |        require(_addr != address(0));
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |    function deleteMinter(address _addr) public onlyOwner {
    |        require(_addr != address(0));
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(301)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken {
    |    event Mint(address indexed to, uint256 amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function approve(address _spender, uint256 _value) transfersEnabled public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) transfersEnabled public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function addMinter(address _addr) public onlyOwner {
    |        require(_addr != address(0));
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function deleteMinter(address _addr) public onlyOwner {
    |        require(_addr != address(0));
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(301)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(103)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(37)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20Standard, BasicToken {
    |
    |    //set more spenders mapping
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) transfersEnabled public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) transfersEnabled public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8601e58163c2713b06b40a2000a30ff4a988e926.sol(125)


