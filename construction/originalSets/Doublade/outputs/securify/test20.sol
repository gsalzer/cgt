Processing contract: /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol:ERC20Base
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol:Manager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol:ManualToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'ERC20Base':
    |
    |
  > |contract ERC20Base is ERC20Interface, ReentrancyGuard {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(128)

[33mWarning[0m for UnhandledException in contract 'ERC20Base':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Base':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Base':
    |
    |        uint256 previousBalances = balanceOf[_from].add(balanceOf[_to]);
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Base':
    |        uint256 previousBalances = balanceOf[_from].add(balanceOf[_to]);
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |        assert(balanceOf[_from].add(balanceOf[_to]) == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Base':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        return _transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Base':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Base':
    |
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowance[msg.sender][_spender] = (
    |        allowance[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowance[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Base':
    |        uint256 oldValue = allowance[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowance[msg.sender][_spender] = 0;
    |        } else {
    |            allowance[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Base':
    |            allowance[msg.sender][_spender] = 0;
    |        } else {
  > |            allowance[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowance[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(201)

[33mWarning[0m for LockedEther in contract 'Manager':
    |pragma solidity ^0.4.24;
    |
  > |contract Manager {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function transferOwnership(address _newOwner) onlyOwner public {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function transferManager(address _newManager) onlyAdmin public {
    |        newManager = _newManager;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |contract Manager {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |contract Manager {
    |    address public owner;
  > |    address public newOwner;
    |
    |    address public manager;
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    address public newOwner;
    |
  > |    address public manager;
    |    address public newManager;
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |    address public manager;
  > |    address public newManager;
    |
    |    event TransferOwnership(address oldaddr, address newaddr);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        address oldaddr = owner;
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function acceptManager() public {
    |        require(msg.sender == newManager);
    |        address oldaddr = manager;
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |
    |    function transferOwnership(address _newOwner) onlyOwner public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |
    |    function transferManager(address _newManager) onlyAdmin public {
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |        require(msg.sender == newOwner);
    |        address oldaddr = owner;
  > |        owner = newOwner;
    |        newOwner = address(0);
    |        emit TransferOwnership(oldaddr, owner);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |        address oldaddr = owner;
    |        owner = newOwner;
  > |        newOwner = address(0);
    |        emit TransferOwnership(oldaddr, owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |        require(msg.sender == newManager);
    |        address oldaddr = manager;
  > |        manager = newManager;
    |        newManager = address(0);
    |        emit TransferManager(oldaddr, manager);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |        address oldaddr = manager;
    |        manager = newManager;
  > |        newManager = address(0);
    |        emit TransferManager(oldaddr, manager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(44)

[33mWarning[0m for LockedEther in contract 'ManualToken':
    |}
    |
  > |contract ManualToken is Manager, ERC20Base {
    |    bool public isTokenLocked;
    |    bool public isUseFreeze;
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(216)

[33mWarning[0m for UnhandledException in contract 'ManualToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ManualToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |
    |    function transferOwnership(address _newOwner) onlyOwner public {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |
    |    function transferManager(address _newManager) onlyAdmin public {
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |        require(msg.sender == newOwner);
    |        address oldaddr = owner;
  > |        owner = newOwner;
    |        newOwner = address(0);
    |        emit TransferOwnership(oldaddr, owner);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |        address oldaddr = owner;
    |        owner = newOwner;
  > |        newOwner = address(0);
    |        emit TransferOwnership(oldaddr, owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |        require(msg.sender == newManager);
    |        address oldaddr = manager;
  > |        manager = newManager;
    |        newManager = address(0);
    |        emit TransferManager(oldaddr, manager);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |        address oldaddr = manager;
    |        manager = newManager;
  > |        newManager = address(0);
    |        emit TransferManager(oldaddr, manager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        return _transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowance[msg.sender][_spender] = (
    |        allowance[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowance[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |        uint256 oldValue = allowance[msg.sender][_spender];
    |        if (_subtractedValue >= oldValue) {
  > |            allowance[msg.sender][_spender] = 0;
    |        } else {
    |            allowance[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |            allowance[msg.sender][_spender] = 0;
    |        } else {
  > |            allowance[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowance[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |
    |    function setLockToken(bool _lock) onlyOwner public {
  > |        isTokenLocked = _lock;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |
    |    function setUseFreeze(bool _useOrNot) onlyAdmin public {
  > |        isUseFreeze = _useOrNot;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |
    |    function freezeAmount(address target, uint256 amountFreeze) onlyAdmin public {
  > |        frozenAccount[target].amount = amountFreeze;
    |        emit FrozenFunds(target, amountFreeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |        }
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'ManualToken':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(275)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    |
    |
  > |contract ReentrancyGuard {
    |    uint256 private guardCounter = 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(111)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 _a, uint256 _b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x0187247c7a9091fb4577581e47eaffd979043ea2.sol(50)


