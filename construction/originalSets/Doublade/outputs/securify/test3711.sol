Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:CryptomonToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(113)

[33mWarning[0m for LockedEther in contract 'CryptomonToken':
    | * @dev Mintable token created for Cryptomon.io
    | */
  > |contract CryptomonToken is PausableToken, MintableToken {
    |
    |    // Standard token variables
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |    function transfer(address _to, uint256 _value) returns (bool) {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |     */
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
    |        Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |     */
    |    function finishMinting() onlyOwner public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |        require(balances[_partner] >= _tokens);
    |
  > |        balances[_partner] -= _tokens;
    |        totalSupply -= _tokens;
    |        TokensBurned(msg.sender, _partner, _tokens);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptomonToken':
    |
    |        balances[_partner] -= _tokens;
  > |        totalSupply -= _tokens;
    |        TokensBurned(msg.sender, _partner, _tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(360)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    event Mint(address indexed to, uint256 amount);
    |    event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function transfer(address _to, uint256 _value) returns (bool) {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
    |        Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function finishMinting() onlyOwner public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(322)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(68)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(241)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(250)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | **/
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |    function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(250)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf2f8a2df2070f970af1014d3d3b514766a63c61e.sol(203)


