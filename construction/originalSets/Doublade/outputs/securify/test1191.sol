Processing contract: /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol:TIP
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * Basic version of StandardToken, with no allowances
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath
    |    for uint;
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |    function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |    function mul(uint a, uint b) internal returns(uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(22)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is BasicToken, ERC20 {
    |
    |    mapping(address => mapping(address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint _value) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(142)

[31mViolation[0m for LockedEther in contract 'TIP':
    |}
    |
  > |contract TIP is StandardToken {
    |    string public constant symbol = "TIP";
    |    string public constant name = "EthereumTipToken";
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'TIP':
    |
    |    function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'TIP':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'TIP':
    |
    |    function approve(address _spender, uint _value) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'TIP':
    |
    |        balances[owner] -= transferAmount;
  > |        balances[msg.sender] += transferAmount;
    |        address_claimed_tokens[msg.sender] += transferAmount;
    |        Transfer(owner, msg.sender, transferAmount);
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'TIP':
    |        balances[owner] -= transferAmount;
    |        balances[msg.sender] += transferAmount;
  > |        address_claimed_tokens[msg.sender] += transferAmount;
    |        Transfer(owner, msg.sender, transferAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b480c1abef305c0e21644d083f677405ab8250c.sol(185)


