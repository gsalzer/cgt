Processing contract: /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol:BTC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BTC20Token':
    |}
    |
  > |contract BTC20Token is BasicToken,Ownable {
    |
    |   using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(tokenBalances[msg.sender]>=_value);
  > |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |    require(tokenBalances[msg.sender]>=_value);
    |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
  > |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |    function mint(address wallet, address buyer, uint256 tokenAmount) public onlyOwner {
    |      require(tokenBalances[wallet] >= tokenAmount);               // checks if it has enough to sell
  > |      tokenBalances[buyer] = tokenBalances[buyer].add(tokenAmount);                  // adds the amount to buyer's balance
    |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |      require(tokenBalances[wallet] >= tokenAmount);               // checks if it has enough to sell
    |      tokenBalances[buyer] = tokenBalances[buyer].add(tokenAmount);                  // adds the amount to buyer's balance
  > |      tokenBalances[wallet] = tokenBalances[wallet].sub(tokenAmount);                        // subtracts amount from seller's balance
    |      Transfer(wallet, buyer, tokenAmount); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'BTC20Token':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(71)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    require(tokenBalances[msg.sender]>=_value);
  > |    tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(104)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | 
    | 
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe24dc2c17da55d290b273c84ad0447ba33b8d526.sol(13)


