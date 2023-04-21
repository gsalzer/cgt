Processing contract: /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol:ISTCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic, Ownable {
    |    using SafeMath for uint256;
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    if(msg.sender == owner){
    |            if(now >= 1533128400 && now < 1534337940){
  > |                privatePreSale = privatePreSale.sub(_value);
    |            } else if(now >= 1534338000 && now < 1535547600){
    |                openPreSale = openPreSale.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |                privatePreSale = privatePreSale.sub(_value);
    |            } else if(now >= 1534338000 && now < 1535547600){
  > |                openPreSale = openPreSale.sub(_value);
    |            }  else if(now > 1536152400 && now < 1542204000){
    |                openSale = openSale.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |                openPreSale = openPreSale.sub(_value);
    |            }  else if(now > 1536152400 && now < 1542204000){
  > |                openSale = openSale.sub(_value);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(43)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |    }
    |}
  > |contract BurnableToken is BasicToken {
    |    event Burn(address indexed burner, uint256 value);
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    if(msg.sender == owner){
    |            if(now >= 1533128400 && now < 1534337940){
  > |                privatePreSale = privatePreSale.sub(_value);
    |            } else if(now >= 1534338000 && now < 1535547600){
    |                openPreSale = openPreSale.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |                privatePreSale = privatePreSale.sub(_value);
    |            } else if(now >= 1534338000 && now < 1535547600){
  > |                openPreSale = openPreSale.sub(_value);
    |            }  else if(now > 1536152400 && now < 1542204000){
    |                openSale = openSale.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |                openPreSale = openPreSale.sub(_value);
    |            }  else if(now > 1536152400 && now < 1542204000){
  > |                openSale = openSale.sub(_value);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(43)

[33mWarning[0m for LockedEther in contract 'ISTCoin':
    |}
    |
  > |contract ISTCoin is StandardToken, BurnableToken {
    |    string public constant name = "ISTCoin";
    |    string public constant symbol = "IST";
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |    if(msg.sender == owner){
    |            if(now >= 1533128400 && now < 1534337940){
  > |                privatePreSale = privatePreSale.sub(_value);
    |            } else if(now >= 1534338000 && now < 1535547600){
    |                openPreSale = openPreSale.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |                privatePreSale = privatePreSale.sub(_value);
    |            } else if(now >= 1534338000 && now < 1535547600){
  > |                openPreSale = openPreSale.sub(_value);
    |            }  else if(now > 1536152400 && now < 1542204000){
    |                openSale = openSale.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |                openPreSale = openPreSale.sub(_value);
    |            }  else if(now > 1536152400 && now < 1542204000){
  > |                openSale = openSale.sub(_value);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |       require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'ISTCoin':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(123)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |    }
    |}
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |    constructor () public {
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(43)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// File: contracts/ISTCoin.sol
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(5)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    }
    |}
  > |contract StandardToken is ERC20, BasicToken {
    |    mapping(address => mapping(address => uint256)) internal allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if(msg.sender == owner){
    |            if(now >= 1533128400 && now < 1534337940){
  > |                privatePreSale = privatePreSale.sub(_value);
    |            } else if(now >= 1534338000 && now < 1535547600){
    |                openPreSale = openPreSale.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |                privatePreSale = privatePreSale.sub(_value);
    |            } else if(now >= 1534338000 && now < 1535547600){
  > |                openPreSale = openPreSale.sub(_value);
    |            }  else if(now > 1536152400 && now < 1542204000){
    |                openSale = openSale.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |                openPreSale = openPreSale.sub(_value);
    |            }  else if(now > 1536152400 && now < 1542204000){
  > |                openSale = openSale.sub(_value);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |       require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd40a28f34e7fe9337d28600e15f40d51bf6dc609.sol(123)


