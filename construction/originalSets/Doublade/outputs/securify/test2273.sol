Processing contract: /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol:ERC827
Processing contract: /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol:TEFoods827Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol:TEFoodsToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(46)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(3)

[33mWarning[0m for LockedEther in contract 'TEFoodsToken':
    |
    |
  > |contract TEFoodsToken is Ownable, ERC20Interface {
    |
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    require (addr != 0x00);
    |    require (amount > 0);
  > |    balances[0x00] = balances[0x00].sub(amount);
    |    balances[addr] = balances[addr].add(amount);
    |    _circulatingSupply = _circulatingSupply.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    require (amount > 0);
    |    balances[0x00] = balances[0x00].sub(amount);
  > |    balances[addr] = balances[addr].add(amount);
    |    _circulatingSupply = _circulatingSupply.add(amount);
    |    assert (_vestedSupply.add(_circulatingSupply).add(balances[0x00]) == _totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    balances[0x00] = balances[0x00].sub(amount);
    |    balances[addr] = balances[addr].add(amount);
  > |    _circulatingSupply = _circulatingSupply.add(amount);
    |    assert (_vestedSupply.add(_circulatingSupply).add(balances[0x00]) == _totalSupply);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    require (amount > 0);
    |    require (vestingPeriod > 0);
  > |    balances[0x00] = balances[0x00].sub(amount);
    |    vestingMap[vestingPeriod].push( vestedBalance (addr,amount) );
    |    _vestedSupply = _vestedSupply.add(amount);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    require (vestingPeriod > 0);
    |    balances[0x00] = balances[0x00].sub(amount);
  > |    vestingMap[vestingPeriod].push( vestedBalance (addr,amount) );
    |    _vestedSupply = _vestedSupply.add(amount);
    |    assert (_vestedSupply.add(_circulatingSupply).add(balances[0x00]) == _totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    balances[0x00] = balances[0x00].sub(amount);
    |    vestingMap[vestingPeriod].push( vestedBalance (addr,amount) );
  > |    _vestedSupply = _vestedSupply.add(amount);
    |    assert (_vestedSupply.add(_circulatingSupply).add(balances[0x00]) == _totalSupply);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    var v = vestingMap[vestingPeriod];
    |    for (uint8 i = 0; i < v.length; i++) {
  > |      balances[v[i].addr] = balances[v[i].addr].add(v[i].balance);
    |      _circulatingSupply = _circulatingSupply.add(v[i].balance);
    |      _vestedSupply = _vestedSupply.sub(v[i].balance);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    for (uint8 i = 0; i < v.length; i++) {
    |      balances[v[i].addr] = balances[v[i].addr].add(v[i].balance);
  > |      _circulatingSupply = _circulatingSupply.add(v[i].balance);
    |      _vestedSupply = _vestedSupply.sub(v[i].balance);
    |      v[i].balance = 0;
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |      balances[v[i].addr] = balances[v[i].addr].add(v[i].balance);
    |      _circulatingSupply = _circulatingSupply.add(v[i].balance);
  > |      _vestedSupply = _vestedSupply.sub(v[i].balance);
    |      v[i].balance = 0;
    |      VestedTokensReleased(v[i].addr, v[i].balance);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |      _circulatingSupply = _circulatingSupply.add(v[i].balance);
    |      _vestedSupply = _vestedSupply.sub(v[i].balance);
  > |      v[i].balance = 0;
    |      VestedTokensReleased(v[i].addr, v[i].balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |  function enableTransfers () public onlyOwner returns (bool) {
    |    if (now.add(86400) < transferrableTime) {
  > |      transferrableTime = now.add(86400);
    |    }
    |    owner = 0x00;
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |      transferrableTime = now.add(86400);
    |    }
  > |    owner = 0x00;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    require (to != address(this));
    |    require (balances[msg.sender] >= tokens);
  > |    balances[msg.sender] = balances[msg.sender].sub(tokens);
    |    balances[to] = balances[to].add(tokens);
    |    Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    require (balances[msg.sender] >= tokens);
    |    balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |    balances[to] = balances[to].add(tokens);
    |    Transfer(msg.sender, to, tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |  function approve(address spender, uint tokens) public returns (bool success) {
    |    require (spender != address(this));
  > |    allowed[msg.sender][spender] = tokens;
    |    Approval(msg.sender, spender, tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    require (to != address(this));
    |    require (allowed[from][msg.sender] >= tokens);
  > |    balances[from] = balances[from].sub(tokens);
    |    allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |    balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    require (allowed[from][msg.sender] >= tokens);
    |    balances[from] = balances[from].sub(tokens);
  > |    allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |    balances[to] = balances[to].add(tokens);
    |    Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'TEFoodsToken':
    |    balances[from] = balances[from].sub(tokens);
    |    allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |    balances[to] = balances[to].add(tokens);
    |    Transfer(from, to, tokens);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x940d73c91db9f82440702f6cc8323a8c60583777.sol(190)


