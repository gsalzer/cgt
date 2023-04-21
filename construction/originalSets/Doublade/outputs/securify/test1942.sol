Processing contract: /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol:NBE
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) internal balances;
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(75)

[31mViolation[0m for DAOConstantGas in contract 'NBE':
    |                        uint256 valueLeft = raisedAmount.sub(maxRaiseAmount);
    |                        valueNeed = msg.value.sub(valueLeft);
  > |                        msg.sender.transfer(valueLeft);
    |                        raisedAmount = maxRaiseAmount;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(226)

[33mWarning[0m for DAOConstantGas in contract 'NBE':
    |                }
    |            } else {
  > |                msg.sender.transfer(msg.value);
    |            }
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(243)

[33mWarning[0m for DAOConstantGas in contract 'NBE':
    |            }
    |        } else {
  > |            msg.sender.transfer(msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(246)

[33mWarning[0m for DAOConstantGas in contract 'NBE':
    |    returns (bool) {
    |        require(msg.sender == admin);
  > |        msg.sender.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(273)

[33mWarning[0m for LockedEther in contract 'NBE':
    |
    |// ERC20 standard token
  > |contract NBE is StandardToken {
    |    address public admin;
    |    string public name = "NBE";
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(192)

[33mWarning[0m for TODAmount in contract 'NBE':
    |    returns (bool) {
    |        require(msg.sender == admin);
  > |        msg.sender.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(273)

[33mWarning[0m for TODAmount in contract 'NBE':
    |                        uint256 valueLeft = raisedAmount.sub(maxRaiseAmount);
    |                        valueNeed = msg.value.sub(valueLeft);
  > |                        msg.sender.transfer(valueLeft);
    |                        raisedAmount = maxRaiseAmount;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(226)

[33mWarning[0m for TODReceiver in contract 'NBE':
    |                        uint256 valueLeft = raisedAmount.sub(maxRaiseAmount);
    |                        valueNeed = msg.value.sub(valueLeft);
  > |                        msg.sender.transfer(valueLeft);
    |                        raisedAmount = maxRaiseAmount;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(226)

[33mWarning[0m for TODReceiver in contract 'NBE':
    |                }
    |            } else {
  > |                msg.sender.transfer(msg.value);
    |            }
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(243)

[33mWarning[0m for TODReceiver in contract 'NBE':
    |            }
    |        } else {
  > |            msg.sender.transfer(msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(246)

[33mWarning[0m for TODReceiver in contract 'NBE':
    |    returns (bool) {
    |        require(msg.sender == admin);
  > |        msg.sender.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(273)

[33mWarning[0m for UnhandledException in contract 'NBE':
    |                        uint256 valueLeft = raisedAmount.sub(maxRaiseAmount);
    |                        valueNeed = msg.value.sub(valueLeft);
  > |                        msg.sender.transfer(valueLeft);
    |                        raisedAmount = maxRaiseAmount;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(226)

[33mWarning[0m for UnhandledException in contract 'NBE':
    |                }
    |            } else {
  > |                msg.sender.transfer(msg.value);
    |            }
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(243)

[33mWarning[0m for UnhandledException in contract 'NBE':
    |            }
    |        } else {
  > |            msg.sender.transfer(msg.value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(246)

[33mWarning[0m for UnhandledException in contract 'NBE':
    |    returns (bool) {
    |        require(msg.sender == admin);
  > |        msg.sender.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(273)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NBE':
    |                        uint256 valueLeft = raisedAmount.sub(maxRaiseAmount);
    |                        valueNeed = msg.value.sub(valueLeft);
  > |                        msg.sender.transfer(valueLeft);
    |                        raisedAmount = maxRaiseAmount;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NBE':
    |    returns (bool) {
    |        require(msg.sender == admin);
  > |        msg.sender.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |                if (raisedAmount < maxRaiseAmount) {
    |                    uint256 valueNeed = msg.value;
  > |                    raisedAmount = raisedAmount.add(msg.value);
    |                    if (raisedAmount > maxRaiseAmount) {
    |                        uint256 valueLeft = raisedAmount.sub(maxRaiseAmount);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |                        valueNeed = msg.value.sub(valueLeft);
    |                        msg.sender.transfer(valueLeft);
  > |                        raisedAmount = maxRaiseAmount;
    |                    }
    |                    if (raisedAmount >= maxRaiseAmount) {
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |                    }
    |                    if (raisedAmount >= maxRaiseAmount) {
  > |                        exchangeFlag = false;
    |                    }
    |                   
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |
    |                    require(_value <= balances[admin]);
  > |                    balances[admin] = balances[admin].sub(_value);
    |                    balances[msg.sender] = balances[msg.sender].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |                    require(_value <= balances[admin]);
    |                    balances[admin] = balances[admin].sub(_value);
  > |                    balances[msg.sender] = balances[msg.sender].add(_value);
    |
    |                    emit Transfer(admin, msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |        require(msg.sender == admin);
    |        require(_newAdmin != address(0));
  > |        balances[_newAdmin] = balances[_newAdmin].add(balances[admin]);
    |        balances[admin] = 0;
    |        admin = _newAdmin;
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |        require(_newAdmin != address(0));
    |        balances[_newAdmin] = balances[_newAdmin].add(balances[admin]);
  > |        balances[admin] = 0;
    |        admin = _newAdmin;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |        balances[_newAdmin] = balances[_newAdmin].add(balances[admin]);
    |        balances[admin] = 0;
  > |        admin = _newAdmin;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |        require(msg.sender == admin);
    |        require(_target != address(0));
  > |        frozenTimestamp[_target] = _timestamp;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |    returns (bool) {
    |        require(msg.sender == admin);
  > |        exchangeFlag = _flag;
    |        return true;
    |
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'NBE':
    |    returns (bool) {
    |        require(msg.sender == admin);
  > |        raiseRatio = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(352)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 _a, uint256 _b) internal pure returns (uint256 c) {
    |    if (_a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7d648eb91deec2e88f6437789793221c1b6557d5.sol(183)


