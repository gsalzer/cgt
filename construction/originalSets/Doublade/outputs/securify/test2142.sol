Processing contract: /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol:XstarToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(131)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(64)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(104)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |}
    |
  > |contract PausableToken is StandardToken, Pausable {
    |
    |    function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(104)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(221)

[33mWarning[0m for LockedEther in contract 'XstarToken':
    |}
    |
  > |contract XstarToken is PausableToken {
    |    string public name = "XstarToken";
    |    string public symbol = "XT";
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'XstarToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'XstarToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'XstarToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'XstarToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'XstarToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'XstarToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'XstarToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'XstarToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'XstarToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bdbc2eee1fef348007e656c531d26e139a023ae.sol(104)


