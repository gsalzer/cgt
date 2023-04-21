Processing contract: /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol:RubusFundOrangeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'BasicToken':
    |      totalSupply = totalSupply.sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(141)

[33mWarning[0m for DAOConstantGas in contract 'BasicToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(msg.sender, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(142)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(102)

[33mWarning[0m for TODAmount in contract 'BasicToken':
    |      totalSupply = totalSupply.sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(141)

[33mWarning[0m for TODAmount in contract 'BasicToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(msg.sender, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(142)

[33mWarning[0m for TODReceiver in contract 'BasicToken':
    |      totalSupply = totalSupply.sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(141)

[33mWarning[0m for TODReceiver in contract 'BasicToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(msg.sender, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(142)

[33mWarning[0m for UnhandledException in contract 'BasicToken':
    |      totalSupply = totalSupply.sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(141)

[33mWarning[0m for UnhandledException in contract 'BasicToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(msg.sender, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |      uint256 weiAmount = _value.mul(withdrawCommission).div(priceEthPerToken);
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      totalSupply = totalSupply.sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    } else {
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(149)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(51)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |  /**
    |   * @dev Modifier to make a function callable only when the contract is not paused.
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.16;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(3)

[31mViolation[0m for DAOConstantGas in contract 'StandardToken':
    |      totalSupply = totalSupply.sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(141)

[31mViolation[0m for DAOConstantGas in contract 'StandardToken':
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(192)

[33mWarning[0m for DAOConstantGas in contract 'StandardToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(msg.sender, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(142)

[33mWarning[0m for DAOConstantGas in contract 'StandardToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(_from, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(193)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(175)

[33mWarning[0m for TODAmount in contract 'StandardToken':
    |      totalSupply = totalSupply.sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(141)

[33mWarning[0m for TODAmount in contract 'StandardToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(msg.sender, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(142)

[33mWarning[0m for TODAmount in contract 'StandardToken':
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(192)

[33mWarning[0m for TODAmount in contract 'StandardToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(_from, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(193)

[33mWarning[0m for TODReceiver in contract 'StandardToken':
    |      totalSupply = totalSupply.sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(141)

[33mWarning[0m for TODReceiver in contract 'StandardToken':
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(192)

[33mWarning[0m for TODReceiver in contract 'StandardToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(msg.sender, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(142)

[33mWarning[0m for TODReceiver in contract 'StandardToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(_from, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(193)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |      totalSupply = totalSupply.sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(141)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(msg.sender, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(142)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  > |      msg.sender.transfer(weiAmount);
    |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(192)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |
    |      msg.sender.transfer(weiAmount);
  > |      exitWallet.transfer(weiAmount.div(100).mul(uint256(100).sub(withdrawCommission)));
    |
    |      Transfer(_from, rubusOrangeAddress, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      uint256 weiAmount = _value.mul(withdrawCommission).div(priceEthPerToken);
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      totalSupply = totalSupply.sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    } else {
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |      balances[_from] = balances[_from].sub(_value);
  > |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |      msg.sender.transfer(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        MoreData(0, priceEthPerToken);
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x876a11639ce3d2bba1712fc9f47bd6faee575ad4.sol(222)


