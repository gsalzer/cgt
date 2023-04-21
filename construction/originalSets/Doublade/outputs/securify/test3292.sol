Processing contract: /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol:ERC20Protocol
Processing contract: /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol:OriginsTraceChainToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'OriginsTraceChainToken':
    |    }
    |
  > |    contract OriginsTraceChainToken is StandardToken {
    |        /// Constant token specific fields
    |        string public constant name = "OriginsTraceChain";
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginsTraceChainToken':
    |            //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            if (balances[msg.sender] >= _value) {
  > |                balances[msg.sender] -= _value;
    |                balances[_to] += _value;
    |                emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginsTraceChainToken':
    |                balances[_to] += _value;
    |                balances[_from] -= _value;
  > |                allowed[_from][msg.sender] -= _value;
    |                emit Transfer(_from, _to, _value);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginsTraceChainToken':
    |            assert((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |            allowed[msg.sender][_spender] = _value;
    |            emit Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginsTraceChainToken':
    |            returns (bool)
    |        {
  > |            totalSupply = totalSupply.add(_amount);
    |            balances[recipient] = balances[recipient].add(_amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginsTraceChainToken':
    |        {
    |            totalSupply = totalSupply.add(_amount);
  > |            balances[recipient] = balances[recipient].add(_amount);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(239)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |    contract Owned {
    |
    |        /// @dev `owner` is the only address that can call a function with this
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |        /// @param _newOwner The address of the new owner. 0x0 can be used to create
    |        ///  an unowned neutral vault, however that cannot be undone
  > |        function changeOwner(address _newOwner) onlyOwner public {
    |            newOwner = _newOwner;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        }
    |
  > |        address public owner;
    |        /// @notice The Constructor assigns the message sender to be `owner`
    |        function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        }
    |
  > |        address public newOwner;
    |
    |        /// @notice `owner` can step down and assign some other address to this role
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |        function acceptOwnership() public {
    |            if (msg.sender == newOwner) {
    |                owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        function acceptOwnership() public {
    |            if (msg.sender == newOwner) {
  > |                owner = newOwner;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        ///  an unowned neutral vault, however that cannot be undone
    |        function changeOwner(address _newOwner) onlyOwner public {
  > |            newOwner = _newOwner;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(70)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    * Math operations with safety checks
    |    */
  > |    library SafeMath {
    |    function mul(uint a, uint b) internal pure returns (uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(6)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    }
    |
  > |    contract StandardToken is ERC20Protocol {
    |        using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        }
    |
  > |        function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) public returns (bool success) {
    |            //Default assumes totalSupply can't be over max (2^256 - 1).
    |            //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        }
    |
  > |        function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) public returns (bool success) {
    |            //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |            //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        }
    |
  > |        function balanceOf(address _owner) constant public returns (uint balance) {
    |            return balances[_owner];
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(163)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        }
    |
  > |        function allowance(address _owner, address _spender) constant public returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |        */
    |        /// total amount of tokens
  > |        uint public totalSupply;
    |
    |        /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            if (balances[msg.sender] >= _value) {
  > |                balances[msg.sender] -= _value;
    |                balances[_to] += _value;
    |                emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |                balances[_to] += _value;
    |                balances[_from] -= _value;
  > |                allowed[_from][msg.sender] -= _value;
    |                emit Transfer(_from, _to, _value);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            assert((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |            allowed[msg.sender][_spender] = _value;
    |            emit Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xd79cb502973ea7d89a4f2ce63b2b331ab5b62fe7.sol(174)


