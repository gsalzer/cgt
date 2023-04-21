Processing contract: /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol:Bible
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Bible':
    |}
    |
  > |contract Bible is ERC20, SafeMath {
    |
    |    string public name = "Bible";      //  token name
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'Bible':
    |      
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    
    |    function Bible() public {
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'Bible':
    |    }
    |
  > |    function status(uint8 _status) isCreator public {
    |        tokenStatus = _status;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Bible':
    |    }
    |
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {
    |        return balanceOf[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'Bible':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'Bible':
    |    }
    |    
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |
    |contract SafeMath {
  > |    function add(uint256 x, uint256 y) pure internal returns(uint256) {
    |      uint256 z = x + y;
    |      assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |    }
    |
  > |    function subtract(uint256 x, uint256 y) pure internal returns(uint256) {
    |      assert(x >= y);
    |      uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |contract Bible is ERC20, SafeMath {
    |
  > |    string public name = "Bible";      //  token name
    |    string public symbol = "GIB";           //  token symbol
    |    uint256 public decimals = 18;            //  token digit
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |
    |    string public name = "Bible";      //  token name
  > |    string public symbol = "GIB";           //  token symbol
    |    uint256 public decimals = 18;            //  token digit
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |    string public name = "Bible";      //  token name
    |    string public symbol = "GIB";           //  token symbol
  > |    uint256 public decimals = 18;            //  token digit
    |    uint256 public totalSupply = 0;
    |    string public version = "1.0.0";
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |    uint256 public decimals = 18;            //  token digit
    |    uint256 public totalSupply = 0;
  > |    string public version = "1.0.0";
    |    address creator = 0x0;
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |     *  0 : init, 1 : limited, 2 : running, 3 : finishing
    |     */
  > |    uint8 public tokenStatus = 0;
    |      
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |    }
    |    
  > |    function getStatus() constant public returns (uint8 _status) {
    |        return tokenStatus;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |    }
    |    
  > |    function totalSupply() constant public returns (uint supply) {
    |        return totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |    }
    |    
  > |    function _transfer(address _from, address _to, uint _value) isRunning validAddress internal {
    |        require(balanceOf[_from] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Bible':
    |    }
    |    
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(120)

[33mWarning[0m for UnhandledException in contract 'Bible':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bible':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'Bible':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        uint previousBalances = SafeMath.add(balanceOf[_from], balanceOf[_to]);
  > |        balanceOf[_from] = SafeMath.subtract(balanceOf[_from], _value);
    |        balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'Bible':
    |        uint previousBalances = SafeMath.add(balanceOf[_from], balanceOf[_to]);
    |        balanceOf[_from] = SafeMath.subtract(balanceOf[_from], _value);
  > |        balanceOf[_to] = SafeMath.add(balanceOf[_to], _value);
    |        emit Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'Bible':
    |    function approve(address _spender, uint256 _value) isRunning validAddress public returns (bool success) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Bible':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'Bible':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'Bible':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Bible':
    |
    |    function status(uint8 _status) isCreator public {
  > |        tokenStatus = _status;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Bible':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Bible':
    |    function approve(address _spender, uint256 _value) isRunning validAddress public returns (bool success) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Bible':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Bible':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(132)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract SafeMath {
    |    function add(uint256 x, uint256 y) pure internal returns(uint256) {
    |      uint256 z = x + y;
  at /home/jiaming/mavs_srcs/contract@0x4fb2445742d0c413a917b2484960b0d80950b540.sol(5)


