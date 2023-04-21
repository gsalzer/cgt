Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:Data
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:Declaration
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:Investors
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:Referral
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol:WealthBuilderToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(78)

[33mWarning[0m for LockedEther in contract 'Data':
    |}
    |
  > |contract Data is Ownable {
    |
    |    // node => its parent
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(303)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |
    |    // node => its status
  > |    mapping (address => uint8) public statuses;
    |
    |    // node => sum of all his child deposits in USD cents
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(309)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |
    |    // node => sum of all his child deposits in USD cents
  > |    mapping (address => uint) public referralDeposits;
    |
    |    // client => balance in wei*10^(-6) available for withdrawal
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(312)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    mapping(address => uint256) private investorBalances;
    |
  > |    function parentOf(address _addr) public constant returns (address) {
    |        return parent[_addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(320)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    }
    |
  > |    function balanceOf(address _addr) public constant returns (uint256) {
    |        return balances[_addr] / 1000000;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(324)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    }
    |
  > |    function investorBalanceOf(address _addr) public constant returns (uint256) {
    |        return investorBalances[_addr] / 1000000;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(328)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    }
    |
  > |    function addBalance(address _addr, uint256 amount) onlyOwner public {
    |        balances[_addr] += amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(340)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    }
    |
  > |    function subtrBalance(address _addr, uint256 amount) onlyOwner public {
    |        require(balances[_addr] >= amount);
    |        balances[_addr] -= amount;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(344)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    }
    |
  > |    function addInvestorBalance(address _addr, uint256 amount) onlyOwner public {
    |        investorBalances[_addr] += amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(349)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    }
    |
  > |    function subtrInvestorBalance(address _addr, uint256 amount) onlyOwner public {
    |        require(investorBalances[_addr] >= amount);
    |        investorBalances[_addr] -= amount;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(353)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    }
    |
  > |    function addReferralDeposit(address _addr, uint256 amount) onlyOwner public {
    |        referralDeposits[_addr] += amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(358)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    }
    |
  > |    function setStatus(address _addr, uint8 _status) onlyOwner public {
    |        statuses[_addr] = _status;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(362)

[31mViolation[0m for MissingInputValidation in contract 'Data':
    |    }
    |
  > |    function setParent(address _addr, address _parent) onlyOwner public {
    |        parent[_addr] = _parent;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(366)

[33mWarning[0m for MissingInputValidation in contract 'Data':
    |   * @dev set `owner` of the contract to the sender
    |   */
  > |  address public owner = msg.sender;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Data':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Data':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Data':
    |
    |    function addBalance(address _addr, uint256 amount) onlyOwner public {
  > |        balances[_addr] += amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'Data':
    |    function subtrBalance(address _addr, uint256 amount) onlyOwner public {
    |        require(balances[_addr] >= amount);
  > |        balances[_addr] -= amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'Data':
    |
    |    function addInvestorBalance(address _addr, uint256 amount) onlyOwner public {
  > |        investorBalances[_addr] += amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'Data':
    |    function subtrInvestorBalance(address _addr, uint256 amount) onlyOwner public {
    |        require(investorBalances[_addr] >= amount);
  > |        investorBalances[_addr] -= amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'Data':
    |
    |    function addReferralDeposit(address _addr, uint256 amount) onlyOwner public {
  > |        referralDeposits[_addr] += amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'Data':
    |
    |    function setStatus(address _addr, uint8 _status) onlyOwner public {
  > |        statuses[_addr] = _status;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'Data':
    |
    |    function setParent(address _addr, address _parent) onlyOwner public {
  > |        parent[_addr] = _parent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(367)

[33mWarning[0m for LockedEther in contract 'Declaration':
    |}
    |
  > |contract Declaration {
    |    
    |    // threshold in USD => status
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(233)

[33mWarning[0m for LockedEther in contract 'Investors':
    |}
    |
  > |contract Investors is Ownable {
    |
    |    // investors
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(372)

[31mViolation[0m for MissingInputValidation in contract 'Investors':
    |        6,6,125,50
    |    */
  > |    mapping (address => uint) public investorPercentages;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(388)

[33mWarning[0m for MissingInputValidation in contract 'Investors':
    |   * @dev set `owner` of the contract to the sender
    |   */
  > |  address public owner = msg.sender;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Investors':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Investors':
    |        "0xb16e28be300f579a81f2b80fdd5a95cf168bf3a4", "0xd69835daeee01601ea991efe9fd0309c64c07d42", "0x30b45ed69250a160ee91dadab2986d21626d7f4b", "0xd28075489da5f9ef51bcc61668c114296a8e8603"
    |    */
  > |    address[] public investors;
    |
    |    // investor address => percentage * 10^(-2)
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'Investors':
    |     *  @return uint count
    |     */
  > |    function getInvestorsCount() public constant returns (uint) {
    |        return investors.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(406)

[33mWarning[0m for MissingInputValidation in contract 'Investors':
    |     *  @return uint8 The fee percentage, which investors get
    |     */
  > |    function getInvestorsFee() public constant returns (uint8) {
    |        //01/01/2020
    |        if (now >= 1577836800) {
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(415)

[31mViolation[0m for UnrestrictedWrite in contract 'Investors':
    |pragma solidity ^0.4.19;
    |
  > |contract Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Investors':
    |    function addInvestors(address[] _investors, uint[] _investorPercentages) onlyOwner public {
    |        for (uint i = 0; i < _investors.length; i++) {
  > |            investors.push(_investors[i]);
    |            investorPercentages[_investors[i]] = _investorPercentages[i];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(396)

[31mViolation[0m for UnrestrictedWrite in contract 'Investors':
    |        for (uint i = 0; i < _investors.length; i++) {
    |            investors.push(_investors[i]);
  > |            investorPercentages[_investors[i]] = _investorPercentages[i];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'Investors':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(24)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event Burn(address indexed burner, uint value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply += _amount;
    |    balances[_to] += _amount;
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply += _amount;
  > |    balances[_to] += _amount;
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function burn(address _addr, uint _amount) onlyOwner public {
    |    require(_amount > 0 && balances[_addr] >= _amount && totalSupply >= _amount);
  > |    balances[_addr] -= _amount;
    |    totalSupply -= _amount;
    |    Burn(_addr, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_amount > 0 && balances[_addr] >= _amount && totalSupply >= _amount);
    |    balances[_addr] -= _amount;
  > |    totalSupply -= _amount;
    |    Burn(_addr, _amount);
    |    Transfer(_addr, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(204)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.19;
    |
  > |contract Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev set `owner` of the contract to the sender
    |   */
  > |  address public owner = msg.sender;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(24)

[33mWarning[0m for DAOConstantGas in contract 'Referral':
    |        }
    |
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(652)

[33mWarning[0m for DAOConstantGas in contract 'Referral':
    |    function withdrawOwner(address _addr, uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(662)

[33mWarning[0m for DAOConstantGas in contract 'Referral':
    |        token.burn(_addr, _amount);
    |        uint256 etherValue = _amount * token.mrate() / token.rate();
  > |        _addr.transfer(etherValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(674)

[33mWarning[0m for LockedEther in contract 'Referral':
    |}
    |
  > |contract Referral is Declaration, Ownable {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(429)

[33mWarning[0m for TODAmount in contract 'Referral':
    |        }
    |
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(652)

[33mWarning[0m for TODAmount in contract 'Referral':
    |    function withdrawOwner(address _addr, uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(662)

[33mWarning[0m for TODAmount in contract 'Referral':
    |        token.burn(_addr, _amount);
    |        uint256 etherValue = _amount * token.mrate() / token.rate();
  > |        _addr.transfer(etherValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(674)

[33mWarning[0m for TODReceiver in contract 'Referral':
    |        }
    |
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(652)

[33mWarning[0m for TODReceiver in contract 'Referral':
    |    function withdrawOwner(address _addr, uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(662)

[33mWarning[0m for TODReceiver in contract 'Referral':
    |        token.burn(_addr, _amount);
    |        uint256 etherValue = _amount * token.mrate() / token.rate();
  > |        _addr.transfer(etherValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(674)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |
    |            if (depositsCount == 0) {
  > |                uint8 investorsFeePercentage = investors.getInvestorsFee();
    |                serviceFee = amount * (serviceFees[depositsCount].sub(investorsFeePercentage));
    |                investorsFee = amount * investorsFeePercentage;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(481)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |
    |            // distribute deposit fee among users above on the branch & update users' statuses
  > |            distribute(data.parentOf(client), 0, depositsCount, amount);
    |
    |            // update balance & number of deposits of user
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(492)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |                .sub(serviceFee)
    |                .sub(investorsFee);
  > |            token.mint(client, active / 100 * token.rate() / token.mrate());
    |
    |            // update owner`s balance
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(499)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |
    |            // update owner`s balance
  > |            data.addBalance(owner, serviceFee * 10000);
    |        } else {
    |            token.mint(client, amount * token.rate() / token.mrate());
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(502)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |            data.addBalance(owner, serviceFee * 10000);
    |        } else {
  > |            token.mint(client, amount * token.rate() / token.mrate());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(504)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |        // distribute deposit fee among users above on the branch & update users' statuses
    |        while(node != address(0)) {
  > |            uint8 status = data.statuses(node);
    |
    |            // count fee percentage of current node
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(529)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |            uint nodePercentage = feeDistribution[status][_depositsCount];
    |            uint percentage = nodePercentage.sub(prevPercentage);
  > |            data.addBalance(node, _amount * percentage * 10000);
    |
    |            //update refferals sum amount
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(534)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |
    |            //update refferals sum amount
  > |            data.addReferralDeposit(node, _amount * ethUsdRate / 10**18);
    |
    |            //update status
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(537)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |            updateStatus(node, status);
    |
  > |            node = data.parentOf(node);
    |            prevPercentage = nodePercentage;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(542)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |     */
    |    function updateStatus(address _node, uint8 _status) private {
  > |        uint refDep = data.referralDeposits(_node);
    |
    |        for (uint i = thresholds.length - 1; i > _status; i--) {
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(554)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |
    |            if (refDep >= threshold) {
  > |                data.setStatus(_node, statusThreshold[threshold]);
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(560)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |    function distributeInvestorsFee(uint start, uint end) onlyOwner public {
    |        for (uint i = start; i < end; i++) {
  > |            address investor = investors.investors(i);
    |            uint investorPercentage = investors.investorPercentages(investor);
    |            data.addInvestorBalance(investor, investorsBalance * investorPercentage);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(572)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |        for (uint i = start; i < end; i++) {
    |            address investor = investors.investors(i);
  > |            uint investorPercentage = investors.investorPercentages(investor);
    |            data.addInvestorBalance(investor, investorsBalance * investorPercentage);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(573)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |            address investor = investors.investors(i);
    |            uint investorPercentage = investors.investorPercentages(investor);
  > |            data.addInvestorBalance(investor, investorsBalance * investorPercentage);
    |        }
    |        if (end == investors.getInvestorsCount()) {
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(574)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |            data.addInvestorBalance(investor, investorsBalance * investorPercentage);
    |        }
  > |        if (end == investors.getInvestorsCount()) {
    |            investorsBalance = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(576)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |     */
    |    function setRate(uint _rate) onlyOwner public {
  > |        token.setRate(_rate);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(587)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |        public onlyOwner
    |    {
  > |        data.setParent(_invitee, _inviter);
    |        // Agent - 0
    |        data.setStatus(_invitee, 0);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(611)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |        data.setParent(_invitee, _inviter);
    |        // Agent - 0
  > |        data.setStatus(_invitee, 0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(613)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |     */
    |    function setStatus(address _addr, uint8 _status) public onlyOwner {
  > |        data.setStatus(_addr, _status);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(623)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |     */
    |    function withdraw(address _addr, uint256 _amount, bool investor) public onlyOwner {
  > |        uint amount = investor ? data.investorBalanceOf(_addr)
    |                               : data.balanceOf(_addr);
    |        require(amount >= _amount && this.balance >= _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(642)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |    function withdraw(address _addr, uint256 _amount, bool investor) public onlyOwner {
    |        uint amount = investor ? data.investorBalanceOf(_addr)
  > |                               : data.balanceOf(_addr);
    |        require(amount >= _amount && this.balance >= _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(643)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |
    |        if (investor) {
  > |            data.subtrInvestorBalance(_addr, _amount * 1000000);
    |        } else {
    |            data.subtrBalance(_addr, _amount * 1000000);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(647)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |            data.subtrInvestorBalance(_addr, _amount * 1000000);
    |        } else {
  > |            data.subtrBalance(_addr, _amount * 1000000);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(649)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |        }
    |
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(652)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |    function withdrawOwner(address _addr, uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(662)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |     */
    |    function withdrawToken(address _addr, uint256 _amount) onlyOwner public {
  > |        token.burn(_addr, _amount);
    |        uint256 etherValue = _amount * token.mrate() / token.rate();
    |        _addr.transfer(etherValue);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(672)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |    function withdrawToken(address _addr, uint256 _amount) onlyOwner public {
    |        token.burn(_addr, _amount);
  > |        uint256 etherValue = _amount * token.mrate() / token.rate();
    |        _addr.transfer(etherValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(673)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |        token.burn(_addr, _amount);
    |        uint256 etherValue = _amount * token.mrate() / token.rate();
  > |        _addr.transfer(etherValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(674)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |     */
    |    function transferTokenOwnership(address _addr) onlyOwner public {
  > |        token.transferOwnership(_addr);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(683)

[33mWarning[0m for UnhandledException in contract 'Referral':
    |     */
    |    function transferDataOwnership(address _addr) onlyOwner public {
  > |        data.transferOwnership(_addr);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(692)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |
    |            if (depositsCount == 0) {
  > |                uint8 investorsFeePercentage = investors.getInvestorsFee();
    |                serviceFee = amount * (serviceFees[depositsCount].sub(investorsFeePercentage));
    |                investorsFee = amount * investorsFeePercentage;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(481)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |
    |            // distribute deposit fee among users above on the branch & update users' statuses
  > |            distribute(data.parentOf(client), 0, depositsCount, amount);
    |
    |            // update balance & number of deposits of user
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |                .sub(serviceFee)
    |                .sub(investorsFee);
  > |            token.mint(client, active / 100 * token.rate() / token.mrate());
    |
    |            // update owner`s balance
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(499)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |
    |            // update owner`s balance
  > |            data.addBalance(owner, serviceFee * 10000);
    |        } else {
    |            token.mint(client, amount * token.rate() / token.mrate());
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(502)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |            data.addBalance(owner, serviceFee * 10000);
    |        } else {
  > |            token.mint(client, amount * token.rate() / token.mrate());
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(504)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |        // distribute deposit fee among users above on the branch & update users' statuses
    |        while(node != address(0)) {
  > |            uint8 status = data.statuses(node);
    |
    |            // count fee percentage of current node
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(529)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |            uint nodePercentage = feeDistribution[status][_depositsCount];
    |            uint percentage = nodePercentage.sub(prevPercentage);
  > |            data.addBalance(node, _amount * percentage * 10000);
    |
    |            //update refferals sum amount
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(534)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |
    |            //update refferals sum amount
  > |            data.addReferralDeposit(node, _amount * ethUsdRate / 10**18);
    |
    |            //update status
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(537)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |            updateStatus(node, status);
    |
  > |            node = data.parentOf(node);
    |            prevPercentage = nodePercentage;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(542)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |     */
    |    function updateStatus(address _node, uint8 _status) private {
  > |        uint refDep = data.referralDeposits(_node);
    |
    |        for (uint i = thresholds.length - 1; i > _status; i--) {
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |
    |            if (refDep >= threshold) {
  > |                data.setStatus(_node, statusThreshold[threshold]);
    |                break;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |    function distributeInvestorsFee(uint start, uint end) onlyOwner public {
    |        for (uint i = start; i < end; i++) {
  > |            address investor = investors.investors(i);
    |            uint investorPercentage = investors.investorPercentages(investor);
    |            data.addInvestorBalance(investor, investorsBalance * investorPercentage);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(572)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |        for (uint i = start; i < end; i++) {
    |            address investor = investors.investors(i);
  > |            uint investorPercentage = investors.investorPercentages(investor);
    |            data.addInvestorBalance(investor, investorsBalance * investorPercentage);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(573)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |            address investor = investors.investors(i);
    |            uint investorPercentage = investors.investorPercentages(investor);
  > |            data.addInvestorBalance(investor, investorsBalance * investorPercentage);
    |        }
    |        if (end == investors.getInvestorsCount()) {
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(574)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |            data.addInvestorBalance(investor, investorsBalance * investorPercentage);
    |        }
  > |        if (end == investors.getInvestorsCount()) {
    |            investorsBalance = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(576)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |     */
    |    function setRate(uint _rate) onlyOwner public {
  > |        token.setRate(_rate);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(587)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |        public onlyOwner
    |    {
  > |        data.setParent(_invitee, _inviter);
    |        // Agent - 0
    |        data.setStatus(_invitee, 0);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(611)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |        data.setParent(_invitee, _inviter);
    |        // Agent - 0
  > |        data.setStatus(_invitee, 0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(613)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |     */
    |    function setStatus(address _addr, uint8 _status) public onlyOwner {
  > |        data.setStatus(_addr, _status);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(623)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |     */
    |    function withdraw(address _addr, uint256 _amount, bool investor) public onlyOwner {
  > |        uint amount = investor ? data.investorBalanceOf(_addr)
    |                               : data.balanceOf(_addr);
    |        require(amount >= _amount && this.balance >= _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(642)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |    function withdraw(address _addr, uint256 _amount, bool investor) public onlyOwner {
    |        uint amount = investor ? data.investorBalanceOf(_addr)
  > |                               : data.balanceOf(_addr);
    |        require(amount >= _amount && this.balance >= _amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(643)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |
    |        if (investor) {
  > |            data.subtrInvestorBalance(_addr, _amount * 1000000);
    |        } else {
    |            data.subtrBalance(_addr, _amount * 1000000);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(647)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |            data.subtrInvestorBalance(_addr, _amount * 1000000);
    |        } else {
  > |            data.subtrBalance(_addr, _amount * 1000000);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(649)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |     */
    |    function withdrawToken(address _addr, uint256 _amount) onlyOwner public {
  > |        token.burn(_addr, _amount);
    |        uint256 etherValue = _amount * token.mrate() / token.rate();
    |        _addr.transfer(etherValue);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(672)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |    function withdrawToken(address _addr, uint256 _amount) onlyOwner public {
    |        token.burn(_addr, _amount);
  > |        uint256 etherValue = _amount * token.mrate() / token.rate();
    |        _addr.transfer(etherValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(673)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |     */
    |    function transferTokenOwnership(address _addr) onlyOwner public {
  > |        token.transferOwnership(_addr);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(683)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |     */
    |    function transferDataOwnership(address _addr) onlyOwner public {
  > |        data.transferOwnership(_addr);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(692)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |        }
    |
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(652)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |    function withdrawOwner(address _addr, uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        _addr.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(662)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Referral':
    |        token.burn(_addr, _amount);
    |        uint256 etherValue = _amount * token.mrate() / token.rate();
  > |        _addr.transfer(etherValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(674)

[31mViolation[0m for UnrestrictedWrite in contract 'Referral':
    |                serviceFee = amount * (serviceFees[depositsCount].sub(investorsFeePercentage));
    |                investorsFee = amount * investorsFeePercentage;
  > |                investorsBalance += investorsFee;
    |            } else {
    |                serviceFee = amount * serviceFees[depositsCount];
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(484)

[31mViolation[0m for UnrestrictedWrite in contract 'Referral':
    |        }
    |        if (end == investors.getInvestorsCount()) {
  > |            investorsBalance = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(577)

[33mWarning[0m for UnrestrictedWrite in contract 'Referral':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Referral':
    |     */
    |    function setEthUsdRate(uint _ethUsdRate) onlyOwner public {
  > |        ethUsdRate = _ethUsdRate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(596)

[33mWarning[0m for UnrestrictedWrite in contract 'Referral':
    |     */
    |    function setInvestors(address _addr) public onlyOwner {
  > |        investors = Investors(_addr);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(632)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    require(b <= a);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(29)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(136)

[33mWarning[0m for LockedEther in contract 'WealthBuilderToken':
    |}
    |
  > |contract WealthBuilderToken is MintableToken {
    |    
    |    string public name = "Wealth Builder Token";
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply += _amount;
    |    balances[_to] += _amount;
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply += _amount;
  > |    balances[_to] += _amount;
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |  function burn(address _addr, uint _amount) onlyOwner public {
    |    require(_amount > 0 && balances[_addr] >= _amount && totalSupply >= _amount);
  > |    balances[_addr] -= _amount;
    |    totalSupply -= _amount;
    |    Burn(_addr, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |    require(_amount > 0 && balances[_addr] >= _amount && totalSupply >= _amount);
    |    balances[_addr] -= _amount;
  > |    totalSupply -= _amount;
    |    Burn(_addr, _amount);
    |    Transfer(_addr, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |
    |    function setRate(uint _rate) onlyOwner public {
  > |        rate = _rate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9735c9b9ed14f3f6cab74c267a720bfd2715eb2b.sol(228)


