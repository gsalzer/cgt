Processing contract: /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol:HAIMIAN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'HAIMIAN':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract HAIMIAN is ERC20Interface, Pausable {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(150)

[33mWarning[0m for UnhandledException in contract 'HAIMIAN':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(271)

[33mWarning[0m for UnhandledException in contract 'HAIMIAN':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HAIMIAN':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HAIMIAN':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public whenNotPaused returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public whenNotPaused returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |    function increaseApproval (address _spender, uint _addedValue) public whenNotPaused
    |        returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |          allowed[msg.sender][_spender] = 0;
    |        } else {
    |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |          allowed[msg.sender][_spender] = 0;
    |        } else {
  > |          allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |    function transferFrom(address from, address to, uint tokens) public whenNotPaused returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public whenNotPaused returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |	 */
    |	function pause() onlyOwner whenNotPaused public returns (bool) {
  > |		paused = true;
    |		emit Pause();
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'HAIMIAN':
    |	 */
    |	function unpause() onlyOwner whenPaused public returns (bool) {
  > |		paused = false;
    |		emit Unpause();
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(68)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |// ----------------------------------------------------------------------------
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(28)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |	event Pause();
    |	event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |// ----------------------------------------------------------------------------
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |	event Unpause();
    |
  > |	bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |	 * @dev called by the owner to pause, triggers stopped state
    |	 */
  > |	function pause() onlyOwner whenNotPaused public returns (bool) {
    |		paused = true;
    |		emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |	 * @dev called by the owner to unpause, returns to normal state
    |	 */
  > |	function unpause() onlyOwner whenPaused public returns (bool) {
    |		paused = false;
    |		emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |	 */
    |	function pause() onlyOwner whenNotPaused public returns (bool) {
  > |		paused = true;
    |		emit Pause();
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |	 */
    |	function unpause() onlyOwner whenPaused public returns (bool) {
  > |		paused = false;
    |		emit Unpause();
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(68)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7958b3ee4f381f3f2f796599a1ab4dbe86375274.sol(77)


