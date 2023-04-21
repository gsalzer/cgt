Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:Distributable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:DistributionToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:LeCarboneToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(178)

[33mWarning[0m for LockedEther in contract 'Distributable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Distributable is Ownable {
    |  mapping(address => bool) public dealership;
    |  event Trust(address dealer);
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(79)

[31mViolation[0m for MissingInputValidation in contract 'Distributable':
    | */
    |contract Distributable is Ownable {
  > |  mapping(address => bool) public dealership;
    |  event Trust(address dealer);
    |  event Distrust(address dealer);
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'Distributable':
    |  }
    |
  > |  function distrust(address dealer) public onlyOwner {
    |    require(dealership[dealer]);
    |    dealership[dealer] = false;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Distributable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Distributable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Distributable':
    |  }
    |
  > |  function trust(address newDealer) public onlyOwner {
    |    require(newDealer != address(0));
    |    require(!dealership[newDealer]);
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Distributable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Distributable':
    |    require(newDealer != address(0));
    |    require(!dealership[newDealer]);
  > |    dealership[newDealer] = true;
    |    Trust(newDealer);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Distributable':
    |  function distrust(address dealer) public onlyOwner {
    |    require(dealership[dealer]);
  > |    dealership[dealer] = false;
    |    Distrust(dealer);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(98)

[33mWarning[0m for LockedEther in contract 'DistributionToken':
    |
    |
  > |contract DistributionToken is StandardToken, Distributable {
    |  event Mint(address indexed dealer, address indexed to, uint256 value);
    |  event Burn(address indexed dealer, address indexed from, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'DistributionToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'DistributionToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'DistributionToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'DistributionToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'DistributionToken':
    |    require(newDealer != address(0));
    |    require(!dealership[newDealer]);
  > |    dealership[newDealer] = true;
    |    Trust(newDealer);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'DistributionToken':
    |  function distrust(address dealer) public onlyOwner {
    |    require(dealership[dealer]);
  > |    dealership[dealer] = false;
    |    Distrust(dealer);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(98)

[33mWarning[0m for LockedEther in contract 'LeCarboneToken':
    |
    |
  > |contract LeCarboneToken is DistributionToken {
    |  string public name = "LeCarbone Token";
    |  string public symbol = "LCT";
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'LeCarboneToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'LeCarboneToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'LeCarboneToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'LeCarboneToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'LeCarboneToken':
    |    require(newDealer != address(0));
    |    require(!dealership[newDealer]);
  > |    dealership[newDealer] = true;
    |    Trust(newDealer);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'LeCarboneToken':
    |  function distrust(address dealer) public onlyOwner {
    |    require(dealership[dealer]);
  > |    dealership[dealer] = false;
    |    Distrust(dealer);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(98)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(68)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(141)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0f3ce9be205d4abcf3ec2aea83c35cc16fb8a415.sol(252)


