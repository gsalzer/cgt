Processing contract: /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol:LBN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'LBN':
    |    function withdrawEther(uint256 amount) public {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(141)

[33mWarning[0m for LockedEther in contract 'LBN':
    |}
    |
  > |contract LBN is SafeMath {
    |    string public constant name = "Leber Network";
    |    string public constant symbol = "LBN";
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'LBN':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'LBN':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'LBN':
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => uint256) public freezeOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'LBN':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value) public
    |    returns (bool success) {
    |        require(_value > 0);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'LBN':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_to != 0x0);
    |        require(_value > 0);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'LBN':
    |
    |    // transfer balance to owner
  > |    function withdrawEther(uint256 amount) public {
    |        require(msg.sender == owner);
    |        owner.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |    }
    |
  > |    function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |    }
    |
  > |    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |
    |contract LBN is SafeMath {
  > |    string public constant name = "Leber Network";
    |    string public constant symbol = "LBN";
    |    uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |contract LBN is SafeMath {
    |    string public constant name = "Leber Network";
  > |    string public constant symbol = "LBN";
    |    uint8 public constant decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |    string public constant name = "Leber Network";
    |    string public constant symbol = "LBN";
  > |    uint8 public constant decimals = 18;
    |
    |    uint256 public totalSupply = 100000000 * (10 ** uint256(decimals));
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |    uint8 public constant decimals = 18;
    |
  > |    uint256 public totalSupply = 100000000 * (10 ** uint256(decimals));
    |    uint256 public airdropSupply = 9000000 * (10 ** uint256(decimals));
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |
    |    uint256 public totalSupply = 100000000 * (10 ** uint256(decimals));
  > |    uint256 public airdropSupply = 9000000 * (10 ** uint256(decimals));
    |
    |    uint256 public airdropCount;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |    uint256 public airdropSupply = 9000000 * (10 ** uint256(decimals));
    |
  > |    uint256 public airdropCount;
    |    mapping(address => bool) airdropTouched;
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |    mapping(address => bool) airdropTouched;
    |
  > |    uint256 public constant airdropCountLimit1 = 20000;
    |    uint256 public constant airdropCountLimit2 = 20000;
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |
    |    uint256 public constant airdropCountLimit1 = 20000;
  > |    uint256 public constant airdropCountLimit2 = 20000;
    |
    |    uint256 public constant airdropNum1 = 300 * (10 ** uint256(decimals));
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |    uint256 public constant airdropCountLimit2 = 20000;
    |
  > |    uint256 public constant airdropNum1 = 300 * (10 ** uint256(decimals));
    |    uint256 public constant airdropNum2 = 150 * (10 ** uint256(decimals));
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |
    |    uint256 public constant airdropNum1 = 300 * (10 ** uint256(decimals));
  > |    uint256 public constant airdropNum2 = 150 * (10 ** uint256(decimals));
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |    uint256 public constant airdropNum2 = 150 * (10 ** uint256(decimals));
    |
  > |    address public owner;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'LBN':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {     
    |        require(balanceOf[_from] >= _value);               // Check if the sender has enough
    |        require(balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(159)

[33mWarning[0m for TODAmount in contract 'LBN':
    |    function withdrawEther(uint256 amount) public {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(141)

[33mWarning[0m for TODReceiver in contract 'LBN':
    |    function withdrawEther(uint256 amount) public {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(141)

[33mWarning[0m for UnhandledException in contract 'LBN':
    |    function withdrawEther(uint256 amount) public {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LBN':
    |    function withdrawEther(uint256 amount) public {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                     // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                     // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                           // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(_value > 0);
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
    |        totalSupply = SafeMath.safeSub(totalSupply, _value);                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(_value > 0);
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
  > |        totalSupply = SafeMath.safeSub(totalSupply, _value);                                // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(_value > 0);
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
    |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        Freeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(_value > 0);
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
  > |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        Freeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(freezeOf[msg.sender] >= _value);
    |        require(_value > 0);
  > |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
    |        balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(_value > 0);
    |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
  > |        balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |        require(balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
    |   
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |         
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'LBN':
    |   
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);                            // Add the same to the recipient
    |         
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'LBN':
    |    returns (bool success) {
    |        require(_value > 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |    function safeMul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x48bd67ad140c9d10f94099c1cef7ab17d90ac335.sol(6)


