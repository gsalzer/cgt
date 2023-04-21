Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:BeetBuck
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:DundieDollar
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:KelevinKoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:MifflinMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:MifflinToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:NapNickel
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:NnexNote
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:QuabityQuarter
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol:TokenRecipient
[31mViolation[0m for DAOConstantGas in contract 'BeetBuck':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    
    |    address public owner;
  > |    mapping(address => bool) public owners;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function addOwner(address newOwner) public onlyOwners{
    |        owners[newOwner] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function removeOwner(address newOwner) public onlyOwner{
    |        owners[newOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function isOwner(address o) public view returns(bool){
    |        return owners[o] == true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns(bool success){
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public
    |	returns(bool success){
    |        TokenRecipient spender = TokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns(bool success){
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  > |    mapping(address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function take(address _from, uint256 _value) public onlyOwners returns(bool success){
    |        transfer(_from, this, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    // / @param target Address to be frozen
    |    // / @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) public onlyOwners{
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'BeetBuck':
    |    // / @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
    |    // / @param newBuyPrice Price users can buy from the contract
  > |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |contract Owned {
    |    
  > |    address public owner;
    |    mapping(address => bool) public owners;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function removeOwner() public onlyOwners{
    |        owners[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |contract TokenERC20 is Owned {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |contract MifflinToken is Owned, TokenERC20 {
    |    
  > |    uint8 public tokenId;
    |    uint256 ethDolRate = 1000;
    |    uint256 weiRate = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    uint256 weiRate = 1000000000000000000;
    |    address exchange;
  > |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    address exchange;
    |    uint256 public buyPrice;
  > |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
  > |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  > |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  > |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function buy(uint _value) internal {
    |        transfer(this, msg.sender, _value);
    |        totalBought += _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |    }
    |
  > |    function transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0); // Prevent transfer to 0x0 address. Use burn() instead
    |        require(balanceOf[_from] >= _value); // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'BeetBuck':
    |
    |    // RULE we always lower the price any time there is a new high contribution!
  > |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(216)

[33mWarning[0m for TODReceiver in contract 'BeetBuck':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'BeetBuck':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnhandledException in contract 'BeetBuck':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'BeetBuck':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnhandledException in contract 'BeetBuck':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BeetBuck':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BeetBuck':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BeetBuck':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  > |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
  > |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |    // / @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) public onlyOwners{
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |    // / @param newBuyPrice Price users can buy from the contract
    |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
  > |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
    |            highestContribution = amount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
    |            if(fullper > oneper) buyPrice = fullper;
  > |            else buyPrice = oneper;
    |            highestContribution = amount;
    |            // give reward
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
  > |            highestContribution = amount;
    |            // give reward
    |            MifflinMarket(exchange).highContributionAward(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'BeetBuck':
    |        } else if(amount < lowestContribution){
    |            MifflinMarket(exchange).lowContributionAward(msg.sender);
  > |            lowestContribution = amount;
    |            return -1;
    |        } else return 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'BeetBuck':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'BeetBuck':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'BeetBuck':
    |
    |    function approve(address _spender, uint256 _value) public returns(bool success){
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'BeetBuck':
    |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value; // Subtract from the sender
    |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'BeetBuck':
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BeetBuck':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'BeetBuck':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'BeetBuck':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)

[31mViolation[0m for DAOConstantGas in contract 'DundieDollar':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for TODReceiver in contract 'DundieDollar':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'DundieDollar':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnhandledException in contract 'DundieDollar':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'DundieDollar':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnhandledException in contract 'DundieDollar':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DundieDollar':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DundieDollar':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DundieDollar':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  > |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
  > |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |    // / @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) public onlyOwners{
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |    // / @param newBuyPrice Price users can buy from the contract
    |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
  > |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
    |            highestContribution = amount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
    |            if(fullper > oneper) buyPrice = fullper;
  > |            else buyPrice = oneper;
    |            highestContribution = amount;
    |            // give reward
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
  > |            highestContribution = amount;
    |            // give reward
    |            MifflinMarket(exchange).highContributionAward(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |        } else if(amount < lowestContribution){
    |            MifflinMarket(exchange).lowContributionAward(msg.sender);
  > |            lowestContribution = amount;
    |            return -1;
    |        } else return 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(230)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |
    |
  > |contract DundieDollar is Owned, MifflinToken {
    |    mapping(uint8 => string) public awards;
    |    uint8 public awardsCount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(539)

[31mViolation[0m for UnrestrictedWrite in contract 'DundieDollar':
    |    function addAward(string name) public onlyOwners{
    |        awards[awardsCount] = name;
  > |        awardsCount++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(576)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |
    |    function approve(address _spender, uint256 _value) public returns(bool success){
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value; // Subtract from the sender
    |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |    function buy(uint _value) internal {
    |        transfer(this, msg.sender, _value);
  > |        totalBought += _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |        if(from != address(this)) {
    |            require(awardBalanceOf(from,award) >= value );
  > |            awardsOf[from][award] -= value;
    |        }
    |        //dont try to send specific awards to the contract
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(623)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |        }
    |        //dont try to send specific awards to the contract
  > |        if(to != address(this)) awardsOf[to][award] += value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(626)

[33mWarning[0m for UnrestrictedWrite in contract 'DundieDollar':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)

[31mViolation[0m for DAOConstantGas in contract 'KelevinKoin':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for LockedEther in contract 'KelevinKoin':
    |
    |
  > |contract KelevinKoin is Owned, MifflinToken {
    |    
    |    function KelevinKoin(address exchange)
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(495)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    
    |    address public owner;
  > |    mapping(address => bool) public owners;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function addOwner(address newOwner) public onlyOwners{
    |        owners[newOwner] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function removeOwner(address newOwner) public onlyOwner{
    |        owners[newOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function isOwner(address o) public view returns(bool){
    |        return owners[o] == true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns(bool success){
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public
    |	returns(bool success){
    |        TokenRecipient spender = TokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns(bool success){
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  > |    mapping(address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function take(address _from, uint256 _value) public onlyOwners returns(bool success){
    |        transfer(_from, this, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    // / @param target Address to be frozen
    |    // / @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) public onlyOwners{
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'KelevinKoin':
    |    // / @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
    |    // / @param newBuyPrice Price users can buy from the contract
  > |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |contract Owned {
    |    
  > |    address public owner;
    |    mapping(address => bool) public owners;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function removeOwner() public onlyOwners{
    |        owners[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |contract TokenERC20 is Owned {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |contract MifflinToken is Owned, TokenERC20 {
    |    
  > |    uint8 public tokenId;
    |    uint256 ethDolRate = 1000;
    |    uint256 weiRate = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    uint256 weiRate = 1000000000000000000;
    |    address exchange;
  > |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    address exchange;
    |    uint256 public buyPrice;
  > |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
  > |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  > |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  > |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function buy(uint _value) internal {
    |        transfer(this, msg.sender, _value);
    |        totalBought += _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |    }
    |
  > |    function transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0); // Prevent transfer to 0x0 address. Use burn() instead
    |        require(balanceOf[_from] >= _value); // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'KelevinKoin':
    |
    |    // RULE we always lower the price any time there is a new high contribution!
  > |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(216)

[33mWarning[0m for TODReceiver in contract 'KelevinKoin':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'KelevinKoin':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnhandledException in contract 'KelevinKoin':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'KelevinKoin':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnhandledException in contract 'KelevinKoin':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KelevinKoin':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KelevinKoin':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KelevinKoin':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  > |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
  > |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |    // / @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) public onlyOwners{
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |    // / @param newBuyPrice Price users can buy from the contract
    |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
  > |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
    |            highestContribution = amount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
    |            if(fullper > oneper) buyPrice = fullper;
  > |            else buyPrice = oneper;
    |            highestContribution = amount;
    |            // give reward
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
  > |            highestContribution = amount;
    |            // give reward
    |            MifflinMarket(exchange).highContributionAward(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |        } else if(amount < lowestContribution){
    |            MifflinMarket(exchange).lowContributionAward(msg.sender);
  > |            lowestContribution = amount;
    |            return -1;
    |        } else return 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |
    |    function approve(address _spender, uint256 _value) public returns(bool success){
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value; // Subtract from the sender
    |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'KelevinKoin':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)

[33mWarning[0m for LockedEther in contract 'MifflinMarket':
    |
    |
  > |contract MifflinMarket is Owned {
    |    mapping(uint8 => address) public tokenIds;
    |    //mapping(uint8 => mapping(uint8 => uint256)) exchangeRates;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(640)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        MifflinToken mt = MifflinToken(msg.sender);
    |        // make sure sender is a token contract
  > |        require(tokenIds[mt.tokenId()] == msg.sender);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(654)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |    function getTokenByAddress(address addy) public view returns(MifflinToken){
    |        MifflinToken token = MifflinToken(addy);
  > |        uint8 tokenId = token.tokenId();
    |        require(tokenIds[tokenId] == addy);
    |        return token;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(681)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        MifflinToken fromToken = getTokenByAddress(from);
    |        MifflinToken toToken = getTokenByAddress(to);
  > |        uint8 fromId = fromToken.tokenId();
    |        uint8 toId = toToken.tokenId();
    |        uint256 fromPrice = fromToken.buyPrice();
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(691)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        MifflinToken toToken = getTokenByAddress(to);
    |        uint8 fromId = fromToken.tokenId();
  > |        uint8 toId = toToken.tokenId();
    |        uint256 fromPrice = fromToken.buyPrice();
    |        uint256 toPrice = toToken.buyPrice();
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(692)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        uint8 fromId = fromToken.tokenId();
    |        uint8 toId = toToken.tokenId();
  > |        uint256 fromPrice = fromToken.buyPrice();
    |        uint256 toPrice = toToken.buyPrice();
    |        uint256 toAmount = fromAmount * fromPrice / toPrice;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(693)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        uint8 toId = toToken.tokenId();
    |        uint256 fromPrice = fromToken.buyPrice();
  > |        uint256 toPrice = toToken.buyPrice();
    |        uint256 toAmount = fromAmount * fromPrice / toPrice;
    |        takeAmount = toAmount * toPrice / fromPrice;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(694)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        takeAmount = toAmount * toPrice / fromPrice;
    |        // take fromTokens back to contract
  > |        fromToken.take(msg.sender, takeAmount);
    |        // give toTokens out from contract
    |        toToken.give(msg.sender, toAmount);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(698)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        fromToken.take(msg.sender, takeAmount);
    |        // give toTokens out from contract
  > |        toToken.give(msg.sender, toAmount);
    |        // update some stats
    |        totalExchanged[fromId][toId] += int(toAmount);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(700)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        MifflinToken reward = getRewardToken();
    |        //dont throw an error if there are no more tokens
  > |        if(reward.balanceOf(reward) > 0){
    |            reward.give(to, 1);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(717)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        //dont throw an error if there are no more tokens
    |        if(reward.balanceOf(reward) > 0){
  > |            reward.give(to, 1);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(718)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        MifflinToken reward = getRewardToken();
    |        //dont throw an error here since this is just sugar
  > |        if(reward.balanceOf(to) > 0){
    |            reward.take(to, 1);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(725)

[33mWarning[0m for UnhandledException in contract 'MifflinMarket':
    |        //dont throw an error here since this is just sugar
    |        if(reward.balanceOf(to) > 0){
  > |            reward.take(to, 1);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(726)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        MifflinToken mt = MifflinToken(msg.sender);
    |        // make sure sender is a token contract
  > |        require(tokenIds[mt.tokenId()] == msg.sender);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(654)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |    function getTokenByAddress(address addy) public view returns(MifflinToken){
    |        MifflinToken token = MifflinToken(addy);
  > |        uint8 tokenId = token.tokenId();
    |        require(tokenIds[tokenId] == addy);
    |        return token;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(681)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        MifflinToken fromToken = getTokenByAddress(from);
    |        MifflinToken toToken = getTokenByAddress(to);
  > |        uint8 fromId = fromToken.tokenId();
    |        uint8 toId = toToken.tokenId();
    |        uint256 fromPrice = fromToken.buyPrice();
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        MifflinToken toToken = getTokenByAddress(to);
    |        uint8 fromId = fromToken.tokenId();
  > |        uint8 toId = toToken.tokenId();
    |        uint256 fromPrice = fromToken.buyPrice();
    |        uint256 toPrice = toToken.buyPrice();
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(692)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        uint8 fromId = fromToken.tokenId();
    |        uint8 toId = toToken.tokenId();
  > |        uint256 fromPrice = fromToken.buyPrice();
    |        uint256 toPrice = toToken.buyPrice();
    |        uint256 toAmount = fromAmount * fromPrice / toPrice;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(693)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        uint8 toId = toToken.tokenId();
    |        uint256 fromPrice = fromToken.buyPrice();
  > |        uint256 toPrice = toToken.buyPrice();
    |        uint256 toAmount = fromAmount * fromPrice / toPrice;
    |        takeAmount = toAmount * toPrice / fromPrice;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(694)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        takeAmount = toAmount * toPrice / fromPrice;
    |        // take fromTokens back to contract
  > |        fromToken.take(msg.sender, takeAmount);
    |        // give toTokens out from contract
    |        toToken.give(msg.sender, toAmount);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(698)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        fromToken.take(msg.sender, takeAmount);
    |        // give toTokens out from contract
  > |        toToken.give(msg.sender, toAmount);
    |        // update some stats
    |        totalExchanged[fromId][toId] += int(toAmount);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(700)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        MifflinToken reward = getRewardToken();
    |        //dont throw an error if there are no more tokens
  > |        if(reward.balanceOf(reward) > 0){
    |            reward.give(to, 1);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(717)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        //dont throw an error if there are no more tokens
    |        if(reward.balanceOf(reward) > 0){
  > |            reward.give(to, 1);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(718)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        MifflinToken reward = getRewardToken();
    |        //dont throw an error here since this is just sugar
  > |        if(reward.balanceOf(to) > 0){
    |            reward.take(to, 1);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinMarket':
    |        //dont throw an error here since this is just sugar
    |        if(reward.balanceOf(to) > 0){
  > |            reward.take(to, 1);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(726)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinMarket':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinMarket':
    |
    |    function setToken(uint8 tid,address addy) public onlyOwnerOrigin { // Only add tokens that were created by exchange owner
  > |        tokenIds[tid] = addy;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(659)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinMarket':
    |        toToken.give(msg.sender, toAmount);
    |        // update some stats
  > |        totalExchanged[fromId][toId] += int(toAmount);
    |        totalExchanged[toId][fromId] -= int(takeAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(702)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinMarket':
    |        // update some stats
    |        totalExchanged[fromId][toId] += int(toAmount);
  > |        totalExchanged[toId][fromId] -= int(takeAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(703)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinMarket':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinMarket':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinMarket':
    |
    |    function removeToken(uint8 id) public onlyOwner { // Only add tokens that were created by owner
  > |        tokenIds[id] = 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(663)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinMarket':
    |    
    |    function setActive(bool act) public onlyOwner {
  > |        active = act;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(667)

[33mWarning[0m for LockedEther in contract 'MifflinToken':
    |
    |
  > |contract MifflinToken is Owned, TokenERC20 {
    |    
    |    uint8 public tokenId;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    
    |    address public owner;
  > |    mapping(address => bool) public owners;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function addOwner(address newOwner) public onlyOwners{
    |        owners[newOwner] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function removeOwner(address newOwner) public onlyOwner{
    |        owners[newOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function isOwner(address o) public view returns(bool){
    |        return owners[o] == true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns(bool success){
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public
    |	returns(bool success){
    |        TokenRecipient spender = TokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns(bool success){
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  > |    mapping(address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function take(address _from, uint256 _value) public onlyOwners returns(bool success){
    |        transfer(_from, this, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    // / @param target Address to be frozen
    |    // / @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) public onlyOwners{
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'MifflinToken':
    |    // / @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
    |    // / @param newBuyPrice Price users can buy from the contract
  > |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |contract Owned {
    |    
  > |    address public owner;
    |    mapping(address => bool) public owners;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function removeOwner() public onlyOwners{
    |        owners[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |contract TokenERC20 is Owned {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |contract MifflinToken is Owned, TokenERC20 {
    |    
  > |    uint8 public tokenId;
    |    uint256 ethDolRate = 1000;
    |    uint256 weiRate = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    uint256 weiRate = 1000000000000000000;
    |    address exchange;
  > |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    address exchange;
    |    uint256 public buyPrice;
  > |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
  > |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  > |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  > |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'MifflinToken':
    |    }
    |
  > |    function transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0); // Prevent transfer to 0x0 address. Use burn() instead
    |        require(balanceOf[_from] >= _value); // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(179)

[33mWarning[0m for UnhandledException in contract 'MifflinToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MifflinToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinToken':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinToken':
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  > |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinToken':
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinToken':
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
  > |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinToken':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinToken':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinToken':
    |    // / @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) public onlyOwners{
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'MifflinToken':
    |    // / @param newBuyPrice Price users can buy from the contract
    |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinToken':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinToken':
    |
    |    function approve(address _spender, uint256 _value) public returns(bool success){
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinToken':
    |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value; // Subtract from the sender
    |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinToken':
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinToken':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'MifflinToken':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)

[31mViolation[0m for DAOConstantGas in contract 'NapNickel':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for LockedEther in contract 'NapNickel':
    |
    |
  > |contract NapNickel is Owned, MifflinToken {
    |
    |    function NapNickel(address exchange)
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(270)

[33mWarning[0m for TODReceiver in contract 'NapNickel':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'NapNickel':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnhandledException in contract 'NapNickel':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'NapNickel':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnhandledException in contract 'NapNickel':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NapNickel':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NapNickel':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NapNickel':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  > |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
  > |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |    // / @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) public onlyOwners{
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |    // / @param newBuyPrice Price users can buy from the contract
    |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
  > |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
    |            highestContribution = amount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
    |            if(fullper > oneper) buyPrice = fullper;
  > |            else buyPrice = oneper;
    |            highestContribution = amount;
    |            // give reward
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
  > |            highestContribution = amount;
    |            // give reward
    |            MifflinMarket(exchange).highContributionAward(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'NapNickel':
    |        } else if(amount < lowestContribution){
    |            MifflinMarket(exchange).lowContributionAward(msg.sender);
  > |            lowestContribution = amount;
    |            return -1;
    |        } else return 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'NapNickel':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'NapNickel':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'NapNickel':
    |
    |    function approve(address _spender, uint256 _value) public returns(bool success){
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'NapNickel':
    |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value; // Subtract from the sender
    |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'NapNickel':
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'NapNickel':
    |    function buy(uint _value) internal {
    |        transfer(this, msg.sender, _value);
  > |        totalBought += _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'NapNickel':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'NapNickel':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'NapNickel':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)

[31mViolation[0m for DAOConstantGas in contract 'NnexNote':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for LockedEther in contract 'NnexNote':
    |
    |
  > |contract NnexNote is Owned, MifflinToken {
    |    
    |    function NnexNote(address exchange) 
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(516)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    
    |    address public owner;
  > |    mapping(address => bool) public owners;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function addOwner(address newOwner) public onlyOwners{
    |        owners[newOwner] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function removeOwner(address newOwner) public onlyOwner{
    |        owners[newOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function isOwner(address o) public view returns(bool){
    |        return owners[o] == true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns(bool success){
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public
    |	returns(bool success){
    |        TokenRecipient spender = TokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns(bool success){
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  > |    mapping(address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function take(address _from, uint256 _value) public onlyOwners returns(bool success){
    |        transfer(_from, this, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    // / @param target Address to be frozen
    |    // / @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) public onlyOwners{
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'NnexNote':
    |    // / @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
    |    // / @param newBuyPrice Price users can buy from the contract
  > |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |contract Owned {
    |    
  > |    address public owner;
    |    mapping(address => bool) public owners;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function removeOwner() public onlyOwners{
    |        owners[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |contract TokenERC20 is Owned {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |contract MifflinToken is Owned, TokenERC20 {
    |    
  > |    uint8 public tokenId;
    |    uint256 ethDolRate = 1000;
    |    uint256 weiRate = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    uint256 weiRate = 1000000000000000000;
    |    address exchange;
  > |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    address exchange;
    |    uint256 public buyPrice;
  > |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
  > |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  > |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  > |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function buy(uint _value) internal {
    |        transfer(this, msg.sender, _value);
    |        totalBought += _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |    }
    |
  > |    function transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0); // Prevent transfer to 0x0 address. Use burn() instead
    |        require(balanceOf[_from] >= _value); // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'NnexNote':
    |
    |    // RULE we always lower the price any time there is a new high contribution!
  > |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(216)

[33mWarning[0m for TODReceiver in contract 'NnexNote':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'NnexNote':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnhandledException in contract 'NnexNote':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'NnexNote':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnhandledException in contract 'NnexNote':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NnexNote':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NnexNote':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NnexNote':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  > |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
  > |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |    // / @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) public onlyOwners{
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |    // / @param newBuyPrice Price users can buy from the contract
    |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
  > |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
    |            highestContribution = amount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
    |            if(fullper > oneper) buyPrice = fullper;
  > |            else buyPrice = oneper;
    |            highestContribution = amount;
    |            // give reward
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
  > |            highestContribution = amount;
    |            // give reward
    |            MifflinMarket(exchange).highContributionAward(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'NnexNote':
    |        } else if(amount < lowestContribution){
    |            MifflinMarket(exchange).lowContributionAward(msg.sender);
  > |            lowestContribution = amount;
    |            return -1;
    |        } else return 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'NnexNote':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'NnexNote':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'NnexNote':
    |
    |    function approve(address _spender, uint256 _value) public returns(bool success){
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'NnexNote':
    |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value; // Subtract from the sender
    |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'NnexNote':
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'NnexNote':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'NnexNote':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'NnexNote':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)

[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.16;
    |
  > |contract Owned {
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    
    |    address public owner;
  > |    mapping(address => bool) public owners;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function addOwner(address newOwner) public onlyOwners{
    |        owners[newOwner] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function removeOwner(address newOwner) public onlyOwner{
    |        owners[newOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function isOwner(address o) public view returns(bool){
    |        return owners[o] == true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    
  > |    address public owner;
    |    mapping(address => bool) public owners;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function removeOwner() public onlyOwners{
    |        owners[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)

[31mViolation[0m for DAOConstantGas in contract 'QuabityQuarter':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    
    |    address public owner;
  > |    mapping(address => bool) public owners;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function addOwner(address newOwner) public onlyOwners{
    |        owners[newOwner] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function removeOwner(address newOwner) public onlyOwner{
    |        owners[newOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function isOwner(address o) public view returns(bool){
    |        return owners[o] == true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns(bool success){
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public
    |	returns(bool success){
    |        TokenRecipient spender = TokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns(bool success){
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  > |    mapping(address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function take(address _from, uint256 _value) public onlyOwners returns(bool success){
    |        transfer(_from, this, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    // / @param target Address to be frozen
    |    // / @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) public onlyOwners{
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    // / @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
    |    // / @param newBuyPrice Price users can buy from the contract
  > |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |contract Owned {
    |    
  > |    address public owner;
    |    mapping(address => bool) public owners;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function removeOwner() public onlyOwners{
    |        owners[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |contract TokenERC20 is Owned {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |contract MifflinToken is Owned, TokenERC20 {
    |    
  > |    uint8 public tokenId;
    |    uint256 ethDolRate = 1000;
    |    uint256 weiRate = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    uint256 weiRate = 1000000000000000000;
    |    address exchange;
  > |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    address exchange;
    |    uint256 public buyPrice;
  > |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    uint256 public buyPrice;
    |    uint256 public totalContribution = 0;
  > |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    uint256 public totalContribution = 0;
    |    uint256 public highestContribution = 0;
  > |    uint256 public lowestContribution = 2 ** 256 - 1;
    |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    uint256 public highestContribution = 0;
    |    uint256 public lowestContribution = 2 ** 256 - 1;
  > |    uint256 public totalBought = 0;
    |    mapping(address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function buy(uint _value) internal {
    |        transfer(this, msg.sender, _value);
    |        totalBought += _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |    }
    |
  > |    function transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0); // Prevent transfer to 0x0 address. Use burn() instead
    |        require(balanceOf[_from] >= _value); // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'QuabityQuarter':
    |
    |    // RULE we always lower the price any time there is a new high contribution!
  > |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(216)

[33mWarning[0m for TODReceiver in contract 'QuabityQuarter':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'QuabityQuarter':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnhandledException in contract 'QuabityQuarter':
    |    // RULE we always lower the price any time there is a new high contribution!
    |    function contribution(uint256 amount)internal returns(int highlow){
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(217)

[33mWarning[0m for UnhandledException in contract 'QuabityQuarter':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnhandledException in contract 'QuabityQuarter':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QuabityQuarter':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QuabityQuarter':
    |            highestContribution = amount;
    |            // give reward
  > |            MifflinMarket(exchange).highContributionAward(msg.sender);
    |            return 1;
    |        } else if(amount < lowestContribution){
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QuabityQuarter':
    |            return 1;
    |        } else if(amount < lowestContribution){
  > |            MifflinMarket(exchange).lowContributionAward(msg.sender);
    |            lowestContribution = amount;
    |            return -1;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  > |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
  > |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |    // / @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) public onlyOwners{
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |    // / @param newBuyPrice Price users can buy from the contract
    |    function setBuyPrice(uint256 newBuyPrice) public onlyOwners{
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |    function contribution(uint256 amount)internal returns(int highlow){
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |        if (amount > highestContribution) {
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |            uint256 oneper = buyPrice * 99 / 100; // lower by 1%*
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
  > |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
    |            highestContribution = amount;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |            uint256 fullper = buyPrice *  highestContribution / amount; // lower by how much you beat the prior contribution
    |            if(fullper > oneper) buyPrice = fullper;
  > |            else buyPrice = oneper;
    |            highestContribution = amount;
    |            // give reward
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |            if(fullper > oneper) buyPrice = fullper;
    |            else buyPrice = oneper;
  > |            highestContribution = amount;
    |            // give reward
    |            MifflinMarket(exchange).highContributionAward(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |        } else if(amount < lowestContribution){
    |            MifflinMarket(exchange).lowContributionAward(msg.sender);
  > |            lowestContribution = amount;
    |            return -1;
    |        } else return 0;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |
    |    function approve(address _spender, uint256 _value) public returns(bool success){
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value; // Subtract from the sender
    |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |        require(!frozenAccount[_from]); // Check if sender is frozen
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
  > |        balanceOf[_from] -= _value; // Subtract from the sender
    |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |        require(!frozenAccount[_to]); // Check if recipient is frozen
    |        balanceOf[_from] -= _value; // Subtract from the sender
  > |        balanceOf[_to] += _value; // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'QuabityQuarter':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |
    |
  > |contract TokenERC20 is Owned {
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    
    |    address public owner;
  > |    mapping(address => bool) public owners;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function addOwner(address newOwner) public onlyOwners{
    |        owners[newOwner] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function removeOwner(address newOwner) public onlyOwner{
    |        owners[newOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function isOwner(address o) public view returns(bool){
    |        return owners[o] == true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns(bool success){
    |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public
    |	returns(bool success){
    |        TokenRecipient spender = TokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns(bool success){
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract Owned {
    |    
  > |    address public owner;
    |    mapping(address => bool) public owners;
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function removeOwner() public onlyOwners{
    |        owners[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 is Owned {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |
  > |    function transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(124)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function addOwner(address newOwner) public onlyOwners{
  > |        owners[newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value; // Subtract from the sender
  > |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value); // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
  > |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function removeOwner() public onlyOwners{
  > |        owners[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success){
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function approve(address _spender, uint256 _value) public returns(bool success){
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns(bool success){
    |        require(balanceOf[msg.sender] >= _value); // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value; // Subtract from the sender
    |        totalSupply -= _value; // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]); // Check allowance
    |        balanceOf[_from] -= _value; // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value; // Subtract from the sender's allowance
    |        totalSupply -= _value; // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function removeOwner(address newOwner) public onlyOwner{
  > |        owners[newOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x808a29d65e63c8df644bc66eee832eabfb65c146.sol(38)


