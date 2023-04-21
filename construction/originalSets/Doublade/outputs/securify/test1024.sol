Processing contract: /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol:AddressMapper
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol:ERC20Capped
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol:ERC20Mintable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol:MasterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol:MinterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'AddressMapper':
    |            let x := mload(0x40)   // "Allocate" memory for output (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |                sub(gas, 34710),   // 34710 is the value that solidity is currently emitting
    |                                   // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(312)

[33mWarning[0m for DAOConstantGas in contract 'AddressMapper':
    |        require(msg.value > 0);
    |        _doMapAuto(msg.sender, string(msg.data));
  > |        msg.sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(247)

[33mWarning[0m for LockedEther in contract 'AddressMapper':
    |}
    |
  > |contract AddressMapper is MasterRole {
    |    
    |    event DoMap(address indexed src, bytes32 indexed target, string rawTarget);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(226)

[33mWarning[0m for TODAmount in contract 'AddressMapper':
    |            let x := mload(0x40)   // "Allocate" memory for output (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |                sub(gas, 34710),   // 34710 is the value that solidity is currently emitting
    |                                   // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(312)

[33mWarning[0m for TODReceiver in contract 'AddressMapper':
    |        require(msg.value > 0);
    |        _doMapAuto(msg.sender, string(msg.data));
  > |        msg.sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(247)

[33mWarning[0m for TODReceiver in contract 'AddressMapper':
    |            let x := mload(0x40)   // "Allocate" memory for output (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |                sub(gas, 34710),   // 34710 is the value that solidity is currently emitting
    |                                   // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(312)

[31mViolation[0m for UnhandledException in contract 'AddressMapper':
    |            let x := mload(0x40)   // "Allocate" memory for output (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |                sub(gas, 34710),   // 34710 is the value that solidity is currently emitting
    |                                   // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(312)

[33mWarning[0m for UnhandledException in contract 'AddressMapper':
    |        require(msg.value > 0);
    |        _doMapAuto(msg.sender, string(msg.data));
  > |        msg.sender.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AddressMapper':
    |            let x := mload(0x40)   // "Allocate" memory for output (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |                sub(gas, 34710),   // 34710 is the value that solidity is currently emitting
    |                                   // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressMapper':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressMapper':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressMapper':
    |}
    |
  > |contract AddressMapper is MasterRole {
    |    
    |    event DoMap(address indexed src, bytes32 indexed target, string rawTarget);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(226)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    emit TransferWithData(from, to, data, value);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(526)

[33mWarning[0m for LockedEther in contract 'ERC20Capped':
    | * @dev Mintable token with a token cap.
    | */
  > |contract ERC20Capped is ERC20Mintable {
    |
    |  event SetIsPreventedAddr(address indexed preventedAddr, bool hbool);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(611)

[33mWarning[0m for UnhandledException in contract 'ERC20Capped':
    |    
    |    if(isPreventedAddr[to]) {
  > |      require(addressMapper.isAddressSet(from));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(671)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Capped':
    |    
    |    if(isPreventedAddr[to]) {
  > |      require(addressMapper.isAddressSet(from));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(671)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _checkedTransfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _checkedTransfer(from, to, value);
    |    emit TransferWithData(from, to, data, value);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(659)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    }
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(674)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(675)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Capped':
    |    onlyMinter
    |  {
  > |    isPreventedAddr[thisAddr] = hbool;
    |    emit SetIsPreventedAddr(thisAddr, hbool);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(683)

[33mWarning[0m for LockedEther in contract 'ERC20Mintable':
    | * @dev ERC20 minting logic
    | */
  > |contract ERC20Mintable is ERC20, MinterRole {
    |
    |  constructor(address addressMapperAddr)
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(!has(role, account));
    |
  > |    role.bearer[account] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(has(role, account));
    |
  > |    role.bearer[account] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    emit TransferWithData(from, to, data, value);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(485)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(526)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |  function _mint(address account, uint256 value) internal {
    |    require(account != 0);
  > |    _totalSupply = _totalSupply.add(value);
    |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(539)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Mintable':
    |    require(account != 0);
    |    _totalSupply = _totalSupply.add(value);
  > |    _balances[account] = _balances[account].add(value);
    |    emit Transfer(address(0), account, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(540)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(6)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x40847bfb149ddd6c32ba629651da0e7a693e6c9f.sol(166)


