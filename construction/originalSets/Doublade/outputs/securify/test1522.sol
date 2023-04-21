Processing contract: /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol:Leader
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol:WWC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Leader':
    |}
    |
  > |contract Leader {
    |    address owner;
    |    mapping (address => bool) public admins;
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Leader':
    |contract Leader {
    |    address owner;
  > |    mapping (address => bool) public admins;
    |    
    |    modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Leader':
    |    }
    |    
  > |    function setOwner (address _addr) onlyOwner() public {
    |        owner = _addr;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'Leader':
    |    }
    |
  > |    function addAdmin (address _addr) onlyOwner() public {
    |        admins[_addr] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Leader':
    |    }
    |
  > |    function removeAdmin (address _addr) onlyOwner() public {
    |        delete admins[_addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Leader':
    |    
    |    function setOwner (address _addr) onlyOwner() public {
  > |        owner = _addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Leader':
    |
    |    function addAdmin (address _addr) onlyOwner() public {
  > |        admins[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Leader':
    |
    |    function removeAdmin (address _addr) onlyOwner() public {
  > |        delete admins[_addr];
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(36)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(94)

[33mWarning[0m for LockedEther in contract 'WWC':
    |}
    |
  > |contract WWC is ERC20, Leader {
    |    string public name = "WWC";
    |    string public symbol = "WWC";
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'WWC':
    |        }
    |        require (balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'WWC':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        require (_value > 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'WWC':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'WWC':
    |    
    |    function setOwner (address _addr) onlyOwner() public {
  > |        owner = _addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'WWC':
    |
    |    function addAdmin (address _addr) onlyOwner() public {
  > |        admins[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'WWC':
    |
    |    function removeAdmin (address _addr) onlyOwner() public {
  > |        delete admins[_addr];
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x60eadbcca9cce6802b6c72c3b3afde4b37cbe515.sol(36)


