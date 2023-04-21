Processing contract: /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol:Buyers
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol:FeedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol:OrderInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol:ProductsInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Buyers':
    |}
    |
  > |contract Buyers{
    |   
    |    struct Buyer{
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Buyers':
    |}
    |
  > |contract Buyers{
    |   
    |    struct Buyer{
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(78)

[33mWarning[0m for LockedEther in contract 'FeedToken':
    |}
    |
  > |contract FeedToken is  ProductsInterface,OrderInterface, ERC20Interface,Ownable,Buyers {
    |
    |   using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(160)

[33mWarning[0m for UnhandledException in contract 'FeedToken':
    |     // ------------------------------------------------------------------------
    |     function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |         return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(303)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FeedToken':
    |     // ------------------------------------------------------------------------
    |     function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |         return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'FeedToken':
    |             
    |        );
  > |        counter++;
    |        seller_products[counter] = Product(counter,_name,_image, _price,_detail,msg.sender);
    |        products_price[counter]=_price;
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |}
    |
  > |contract FeedToken is  ProductsInterface,OrderInterface, ERC20Interface,Ownable,Buyers {
    |
    |   using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |         require(tokens <= tokenBalances[msg.sender]);
    |         //checkTokenVesting(msg.sender, tokens);
  > |         tokenBalances[msg.sender] = tokenBalances[msg.sender].sub(tokens);
    |         tokenBalances[to] = tokenBalances[to].add(tokens);
    |         emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |    tokenBalances[_from] = tokenBalances[_from].sub(_value);
    |    tokenBalances[_to] = tokenBalances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |       
    |     
  > |      seller_products[_index].price=_price;
    |      products_price[_index]=_price;
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'FeedToken':
    |     
    |      seller_products[_index].price=_price;
  > |      products_price[_index]=_price;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(344)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    | 
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | 
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(62)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    | 
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x17e93704f59ed67279a56a72c675bb70fa838f5a.sol(4)


