Processing contract: /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol:Authorizable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol:BIGFARMCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Authorizable':
    |
    |
  > |contract Authorizable is owned {
    |
    |    struct Authoriz{
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    |    }
    |    
  > |    mapping(address => bool) public authorized;
    |    mapping(address => Authoriz) public authorizs;
    |    address[] public authorizedAccts;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    |    
    |    mapping(address => bool) public authorized;
  > |    mapping(address => Authoriz) public authorizs;
    |    address[] public authorizedAccts;
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |    mapping(address => bool) public authorized;
    |    mapping(address => Authoriz) public authorizs;
  > |    address[] public authorizedAccts;
    |
    |    modifier onlyAuthorized() {
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |    }
    |
  > |    function addAuthorized(address _toAdd) 
    |        onlyOwner 
    |        public 
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |    }
    |
  > |    function removeAuthorized(address _toRemove) 
    |        onlyOwner 
    |        public 
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |/**
  > |* The BIGFARM Coin contract bases on the ERC20 standard token contracts
    |* Author: Farm Suk Jai Social Enterprise
    |*/
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |        require(_toAdd != 0);
    |        require(!isAuthorizedAccount(_toAdd));
  > |        authorized[_toAdd] = true;
    |        Authoriz storage authoriz = authorizs[_toAdd];
    |        authoriz.account = _toAdd;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |        authorized[_toAdd] = true;
    |        Authoriz storage authoriz = authorizs[_toAdd];
  > |        authoriz.account = _toAdd;
    |        authoriz.index = authorizedAccts.push(_toAdd) -1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |        Authoriz storage authoriz = authorizs[_toAdd];
    |        authoriz.account = _toAdd;
  > |        authoriz.index = authorizedAccts.push(_toAdd) -1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |        require(_toRemove != 0);
    |        require(_toRemove != msg.sender);
  > |        authorized[_toRemove] = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(95)

[33mWarning[0m for DAOConstantGas in contract 'BIGFARMCoin':
    |        doIssueTokens(_beneficiary, _tokens);
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(326)

[33mWarning[0m for DAOConstantGas in contract 'BIGFARMCoin':
    |    /// @notice collect ether to owner account
    |    function collect() external onlyAuthorized {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(389)

[33mWarning[0m for DAOConstantGas in contract 'BIGFARMCoin':
    |        tokenSaleClosed = true;
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(401)

[33mWarning[0m for LockedEther in contract 'BIGFARMCoin':
    |/******************************************/
    |
  > |contract BIGFARMCoin is Authorizable, TokenERC20 {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(273)

[31mViolation[0m for TODAmount in contract 'BIGFARMCoin':
    |        doIssueTokens(_beneficiary, _tokens);
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(326)

[31mViolation[0m for TODAmount in contract 'BIGFARMCoin':
    |    /// @notice collect ether to owner account
    |    function collect() external onlyAuthorized {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(389)

[31mViolation[0m for TODAmount in contract 'BIGFARMCoin':
    |        tokenSaleClosed = true;
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(401)

[31mViolation[0m for TODReceiver in contract 'BIGFARMCoin':
    |        doIssueTokens(_beneficiary, _tokens);
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(326)

[31mViolation[0m for TODReceiver in contract 'BIGFARMCoin':
    |    /// @notice collect ether to owner account
    |    function collect() external onlyAuthorized {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(389)

[31mViolation[0m for TODReceiver in contract 'BIGFARMCoin':
    |        tokenSaleClosed = true;
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(401)

[33mWarning[0m for UnhandledException in contract 'BIGFARMCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(229)

[33mWarning[0m for UnhandledException in contract 'BIGFARMCoin':
    |        doIssueTokens(_beneficiary, _tokens);
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(326)

[33mWarning[0m for UnhandledException in contract 'BIGFARMCoin':
    |    /// @notice collect ether to owner account
    |    function collect() external onlyAuthorized {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(389)

[33mWarning[0m for UnhandledException in contract 'BIGFARMCoin':
    |        tokenSaleClosed = true;
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(401)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BIGFARMCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BIGFARMCoin':
    |        doIssueTokens(_beneficiary, _tokens);
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BIGFARMCoin':
    |    /// @notice collect ether to owner account
    |    function collect() external onlyAuthorized {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(389)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BIGFARMCoin':
    |        tokenSaleClosed = true;
    |        /// forward the raised funds to the contract creator
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(401)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(262)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(337)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyAuthorized public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(345)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    function mintToken(address target, uint256 mintedAmount) onlyAuthorized public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(346)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyAuthorized public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(355)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @param newRate Price the users can sell to the contract
    |    function setRatePrices(uint256 newRate) onlyAuthorized public {
  > |        baseRate = newRate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(362)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @param newTokenSaleHardCap Amount of BIF token sale hard cap
    |    function setTokenSaleHardCap(uint256 newTokenSaleHardCap) onlyAuthorized public {
  > |        tokenSaleHardCap = newTokenSaleHardCap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(368)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @dev Closes the sale, issues the team tokens and burns the unsold
    |    function close() public onlyAuthorized beforeEnd {
  > |        tokenSaleClosed = true;
    |        /// forward the raised funds to the contract creator
    |        owner.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(399)

[31mViolation[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @dev Open the sale status
    |    function openSale() public onlyAuthorized{
  > |        tokenSaleClosed = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    function doIssueTokens(address _beneficiary, uint256 _tokens) internal {
    |        require(_beneficiary != address(0));
  > |        balanceOf[_beneficiary] += _tokens;
    |        totalSupply += _tokens;
    |        emit Transfer(0, this, _tokens);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |/**
  > |* The BIGFARM Coin contract bases on the ERC20 standard token contracts
    |* Author: Farm Suk Jai Social Enterprise
    |*/
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        require(_toAdd != 0);
    |        require(!isAuthorizedAccount(_toAdd));
  > |        authorized[_toAdd] = true;
    |        Authoriz storage authoriz = authorizs[_toAdd];
    |        authoriz.account = _toAdd;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        authorized[_toAdd] = true;
    |        Authoriz storage authoriz = authorizs[_toAdd];
  > |        authoriz.account = _toAdd;
    |        authoriz.index = authorizedAccts.push(_toAdd) -1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        Authoriz storage authoriz = authorizs[_toAdd];
    |        authoriz.account = _toAdd;
  > |        authoriz.index = authorizedAccts.push(_toAdd) -1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        require(_toRemove != 0);
    |        require(_toRemove != msg.sender);
  > |        authorized[_toRemove] = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyAuthorized public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    function mintToken(address target, uint256 mintedAmount) onlyAuthorized public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyAuthorized public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @param newRate Price the users can sell to the contract
    |    function setRatePrices(uint256 newRate) onlyAuthorized public {
  > |        baseRate = newRate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @param newTokenSaleHardCap Amount of BIF token sale hard cap
    |    function setTokenSaleHardCap(uint256 newTokenSaleHardCap) onlyAuthorized public {
  > |        tokenSaleHardCap = newTokenSaleHardCap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |        require(_beneficiary != address(0));
    |        balanceOf[_beneficiary] += _tokens;
  > |        totalSupply += _tokens;
    |        emit Transfer(0, this, _tokens);
    |        emit Transfer(this, _beneficiary, _tokens);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @dev Closes the sale, issues the team tokens and burns the unsold
    |    function close() public onlyAuthorized beforeEnd {
  > |        tokenSaleClosed = true;
    |        /// forward the raised funds to the contract creator
    |        owner.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'BIGFARMCoin':
    |    /// @dev Open the sale status
    |    function openSale() public onlyAuthorized{
  > |        tokenSaleClosed = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(406)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(9)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(193)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(208)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(224)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(257)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(241)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(261)

[33mWarning[0m for LockedEther in contract 'owned':
    |
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xab2dc8c089d59e7c32618eedcac59be8b1e54cba.sol(49)


