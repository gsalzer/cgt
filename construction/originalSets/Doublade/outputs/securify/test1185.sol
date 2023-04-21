Processing contract: /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol:CryptoMarketShortCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'CryptoMarketShortCoin':
    |    function wd(uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(293)

[33mWarning[0m for LockedEther in contract 'CryptoMarketShortCoin':
    |}
    |
  > |contract CryptoMarketShortCoin is Owned, SafeMath {
    |    string public name = "CRYPTO MARKET SHORT COIN";
    |    string public symbol = "CMSC";
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        // Return the balance for the specific address
    |        return balanceOf[_owner];
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(93)

[31mViolation[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function allowanceOf(address _address) public constant returns (uint256 _allowance) {
    |        return allowance[_address][msg.sender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    * @param _value the amount of money to burn
    |    */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        // Check if the targeted balance is enough
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(211)

[31mViolation[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function updateBuyStatus(bool _buyAllowed) public onlyOwner {
    |        buyAllowed = _buyAllowed;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |
    |contract Owned {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |
    |contract SafeMath {
  > |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a / b;
    |        return c;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |
    |contract CryptoMarketShortCoin is Owned, SafeMath {
  > |    string public name = "CRYPTO MARKET SHORT COIN";
    |    string public symbol = "CMSC";
    |    string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |contract CryptoMarketShortCoin is Owned, SafeMath {
    |    string public name = "CRYPTO MARKET SHORT COIN";
  > |    string public symbol = "CMSC";
    |    string public version = "1.0";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    string public name = "CRYPTO MARKET SHORT COIN";
    |    string public symbol = "CMSC";
  > |    string public version = "1.0";
    |    uint8 public decimals = 18;
    |    uint256 public decimalsFactor = 10 ** 18;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    string public symbol = "CMSC";
    |    string public version = "1.0";
  > |    uint8 public decimals = 18;
    |    uint256 public decimalsFactor = 10 ** 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    string public version = "1.0";
    |    uint8 public decimals = 18;
  > |    uint256 public decimalsFactor = 10 ** 18;
    |
    |    bool public buyAllowed = true;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    uint256 public decimalsFactor = 10 ** 18;
    |
  > |    bool public buyAllowed = true;
    |
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |
    |    uint256 public totalSupply;
  > |    uint256 public marketCap;
    |    uint256 public buyFactor = 25000;
    |    uint256 public buyFactorPromotion = 30000;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    uint256 public totalSupply;
    |    uint256 public marketCap;
  > |    uint256 public buyFactor = 25000;
    |    uint256 public buyFactorPromotion = 30000;
    |    uint8 public promotionsUsed = 0;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    uint256 public marketCap;
    |    uint256 public buyFactor = 25000;
  > |    uint256 public buyFactorPromotion = 30000;
    |    uint8 public promotionsUsed = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    uint256 public buyFactor = 25000;
    |    uint256 public buyFactorPromotion = 30000;
  > |    uint8 public promotionsUsed = 0;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function totalSupply() public constant returns (uint256 theTotalSupply) {
    |        return totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function circulatingSupply() public constant returns (uint256) {
    |        return sub(totalSupply, balanceOf[owner]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |
    |    /* Internal transfer, can only be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        // Prevent transfer to 0x0 address. Use burn() instead
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    * @param _value the amount of money to burn
    |    */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |     * @param amount the amount of tokens to buy
    |     */
  > |    function buy() payable returns (uint amount){
    |        require(buyAllowed);
    |        // calculates the amount
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'CryptoMarketShortCoin':
    |    }
    |
  > |    function wd(uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
    |        owner.transfer(_amount);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(291)

[33mWarning[0m for TODAmount in contract 'CryptoMarketShortCoin':
    |    function wd(uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(293)

[31mViolation[0m for TODReceiver in contract 'CryptoMarketShortCoin':
    |    function wd(uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(293)

[33mWarning[0m for UnhandledException in contract 'CryptoMarketShortCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(180)

[33mWarning[0m for UnhandledException in contract 'CryptoMarketShortCoin':
    |    function wd(uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoMarketShortCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoMarketShortCoin':
    |    function wd(uint256 _amount) public onlyOwner {
    |        require(this.balance >= _amount);
  > |        owner.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        require(add(balanceOf[_to], _value) > balanceOf[_to]);
    |        // Check for overflows
  > |        balanceOf[_from] -= _value;
    |        // Subtract from the sender
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        balanceOf[_from] -= _value;
    |        // Subtract from the sender
  > |        balanceOf[_to] += _value;
    |        // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        balanceOf[msg.sender] -= _value;
    |        // Subtract from the sender
  > |        totalSupply -= _value;
    |        // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        require(_value <= allowance[_from][msg.sender]);
    |        // Check allowance
  > |        balanceOf[_from] -= _value;
    |        // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        allowance[_from][msg.sender] -= _value;
    |        // Subtract from the sender's allowance
  > |        totalSupply -= _value;
    |        // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        require(balanceOf[this] >= amount);               // checks if it has enough to sell
    |        if(promotionsUsed < 50 && msg.value >= 100000000000000000) {
  > |            promotionsUsed += 1;
    |        }
    |        balanceOf[msg.sender] += amount;                  // adds the amount to buyer's balance
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |            promotionsUsed += 1;
    |        }
  > |        balanceOf[msg.sender] += amount;                  // adds the amount to buyer's balance
    |        balanceOf[this] -= amount;                        // subtracts amount from seller's balance
    |        Transfer(this, msg.sender, amount);               // execute an event reflecting the change
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        }
    |        balanceOf[msg.sender] += amount;                  // adds the amount to buyer's balance
  > |        balanceOf[this] -= amount;                        // subtracts amount from seller's balance
    |        Transfer(this, msg.sender, amount);               // execute an event reflecting the change
    |        return amount;                                    // ends function and returns
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        }
    |        // no change, do nothing
  > |        marketCap = _newMarketCap;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        require(_value <= allowance[_from][msg.sender]);
    |        // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        require(balanceOf[msg.sender] >= _value);
    |        // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;
    |        // Subtract from the sender
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        balanceOf[_from] -= _value;
    |        // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;
    |        // Subtract from the sender's allowance
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        totalSupply = totalSupply += _amount;
    |        balanceOf[_to] = balanceOf[_to] += _amount;
  > |        allowance[this][msg.sender] += _amount;
    |        Mint(_to, _amount);
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |     */
    |    function mint(address _to, uint256 _amount) onlyOwner public returns (bool) {
  > |        totalSupply = totalSupply += _amount;
    |        balanceOf[_to] = balanceOf[_to] += _amount;
    |        allowance[this][msg.sender] += _amount;
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |    function mint(address _to, uint256 _amount) onlyOwner public returns (bool) {
    |        totalSupply = totalSupply += _amount;
  > |        balanceOf[_to] = balanceOf[_to] += _amount;
    |        allowance[this][msg.sender] += _amount;
    |        Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoMarketShortCoin':
    |
    |    function updateBuyStatus(bool _buyAllowed) public onlyOwner {
  > |        buyAllowed = _buyAllowed;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(297)

[33mWarning[0m for LockedEther in contract 'Owned':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract Owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(22)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4ace10d39919aef52ddddc0a3473451ee610080d.sol(26)


