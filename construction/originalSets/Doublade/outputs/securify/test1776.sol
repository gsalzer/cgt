Processing contract: /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol:VRYCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(11)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(113)

[31mViolation[0m for DAOConstantGas in contract 'VRYCoin':
    |  
    |  function() payable{   
  > |        fundsWallet.transfer(msg.value);
    |        uint256 unitsOneEthCanBuy = 1000;
    |        uint256 amount = msg.value * unitsOneEthCanBuy;
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(143)

[33mWarning[0m for LockedEther in contract 'VRYCoin':
    |}
    |
  > |contract VRYCoin is StandardToken {
    |  string public constant name = "VRY";
    |  string public constant symbol = "VRY";
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(129)

[33mWarning[0m for TODReceiver in contract 'VRYCoin':
    |  
    |  function() payable{   
  > |        fundsWallet.transfer(msg.value);
    |        uint256 unitsOneEthCanBuy = 1000;
    |        uint256 amount = msg.value * unitsOneEthCanBuy;
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(143)

[33mWarning[0m for UnhandledException in contract 'VRYCoin':
    |  
    |  function() payable{   
  > |        fundsWallet.transfer(msg.value);
    |        uint256 unitsOneEthCanBuy = 1000;
    |        uint256 amount = msg.value * unitsOneEthCanBuy;
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'VRYCoin':
    |            return;
    |        }
  > |        balances[fundsWallet] = balances[fundsWallet] - amount;
    |        balances[msg.sender] = balances[msg.sender] + amount;
    |        Transfer(fundsWallet, msg.sender, amount); 
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'VRYCoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'VRYCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'VRYCoin':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'VRYCoin':
    |        }
    |        balances[fundsWallet] = balances[fundsWallet] - amount;
  > |        balances[msg.sender] = balances[msg.sender] + amount;
    |        Transfer(fundsWallet, msg.sender, amount); 
    |
  at /home/jiaming/mavs_srcs/contract@0x71186cc94d4bd4aad5bc2e5e329e32a9f70e1ac6.sol(150)


