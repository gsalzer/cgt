Processing contract: /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol:BanliangCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol:ERC20Interface
[33mWarning[0m for LockedEther in contract 'BanliangCoin':
    |
    |   //继承接口后的实例
  > |   contract BanliangCoin is ERC20Interface {
    |      string public constant symbol = "BLC"; //单位
    |      string public constant name = "BanliangCoin Token"; //名称
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'BanliangCoin':
    |
    |      // 特定账户的余额
  > |      function balanceOf(address _owner) constant returns (uint256 balance) {
    |          return balances[_owner];
    |      }
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'BanliangCoin':
    |
    |      //从一个账户转移到另一个账户，前提是需要有允许转移的余额
  > |      function transferFrom(
    |          address _from,
    |          address _to,
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'BanliangCoin':
    |
    |      //允许账户从当前用户转移余额到那个账户，多次调用会覆盖
  > |      function approve(address _spender, uint256 _amount) returns (bool success) {
    |          allowed[msg.sender][_spender] = _amount;
    |          Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'BanliangCoin':
    |
    |      //返回被允许转移的余额数量
  > |      function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |          return allowed[_owner][_spender];
    |      }
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'BanliangCoin':
    |   //继承接口后的实例
    |   contract BanliangCoin is ERC20Interface {
  > |      string public constant symbol = "BLC"; //单位
    |      string public constant name = "BanliangCoin Token"; //名称
    |      uint8 public constant decimals = 18; //小数点后的位数
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'BanliangCoin':
    |   contract BanliangCoin is ERC20Interface {
    |      string public constant symbol = "BLC"; //单位
  > |      string public constant name = "BanliangCoin Token"; //名称
    |      uint8 public constant decimals = 18; //小数点后的位数
    |      uint256 _totalSupply = 10000000000 * 10 ** uint256(decimals); //发行总量
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'BanliangCoin':
    |      string public constant symbol = "BLC"; //单位
    |      string public constant name = "BanliangCoin Token"; //名称
  > |      uint8 public constant decimals = 18; //小数点后的位数
    |      uint256 _totalSupply = 10000000000 * 10 ** uint256(decimals); //发行总量
    |
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'BanliangCoin':
    |
    |      // 智能合约的所有者
  > |      address public owner;
    |
    |      // 每个账户的余额
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'BanliangCoin':
    |      }
    |
  > |      function totalSupply() constant returns (uint256 totalSupply) {
    |          totalSupply = _totalSupply;
    |      }
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BanliangCoin':
    |              && _amount > 0
    |              && balances[_to] + _amount > balances[_to]) {
  > |              balances[msg.sender] -= _amount;
    |              balances[_to] += _amount;
    |              Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'BanliangCoin':
    |              && balances[_to] + _amount > balances[_to]) {
    |              balances[_from] -= _amount;
  > |              allowed[_from][msg.sender] -= _amount;
    |              balances[_to] += _amount;
    |              Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BanliangCoin':
    |      //允许账户从当前用户转移余额到那个账户，多次调用会覆盖
    |      function approve(address _spender, uint256 _amount) returns (bool success) {
  > |          allowed[msg.sender][_spender] = _amount;
    |          Approval(msg.sender, _spender, _amount);
    |          return true;
  at /home/jiaming/mavs_srcs/contract@0xf5e1c61253d0ed8117ba2a98fa9b7cabad76c78a.sol(110)


