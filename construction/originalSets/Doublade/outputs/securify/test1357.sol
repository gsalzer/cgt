Processing contract: /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol:FixedSupplyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FixedSupplyToken':
    |}
    | 
  > |contract FixedSupplyToken is ERC20Interface {
    |    string public constant symbol = "EFFI";
    |    string public constant name = "EFFICACIOUS";
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'FixedSupplyToken':
    | 
    |    // What is the balance of a particular account?
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    // deliberately authorized the sender of the message via some mechanism; we propose
    |    // these standardized APIs for approval:
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    // Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |    // If this function is called again it overwrites the current allowance with _value.
  > |    function approve(address _spender, uint256 _amount) returns (bool success) {
    |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    }
    | 
  > |	function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |			return allowed[_owner][_spender];
    |		}
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'FixedSupplyToken':
    | 
    |contract FixedSupplyToken is ERC20Interface {
  > |    string public constant symbol = "EFFI";
    |    string public constant name = "EFFICACIOUS";
    |    uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |contract FixedSupplyToken is ERC20Interface {
    |    string public constant symbol = "EFFI";
  > |    string public constant name = "EFFICACIOUS";
    |    uint8 public constant decimals = 18;
    |    uint256 _totalSupply = 360000000 * 1000000000000000000; //360 million * 10^18;
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    string public constant symbol = "EFFI";
    |    string public constant name = "EFFICACIOUS";
  > |    uint8 public constant decimals = 18;
    |    uint256 _totalSupply = 360000000 * 1000000000000000000; //360 million * 10^18;
    |    
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |	
    |    // Owner of this contract
  > |    address public owner;
    | 
    |    // Balances for each account
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'FixedSupplyToken':
    |    }
    | 
  > |    function totalSupply() constant returns (uint256 totalSupply) {
    |        totalSupply = _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'FixedSupplyToken':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x563cc93a2f4f00c1e963e0da73c8b1279d382bd6.sol(111)


