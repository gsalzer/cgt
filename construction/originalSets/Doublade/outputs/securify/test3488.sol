Processing contract: /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol:MayanProtocolContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'MayanProtocolContract':
    |        multisigAddress = _multisigAddress;
    |        address contractAddress = this;
  > |        multisigAddress.transfer(contractAddress.balance);
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(168)

[33mWarning[0m for LockedEther in contract 'MayanProtocolContract':
    |}
    |
  > |contract MayanProtocolContract is ERC20Token, Owned{
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    }
    |    
  > |    function changeOwner(address _newOwner) public onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    }
    |    
  > |    function setMAYExchangeRate(uint256 _MAYExchangeRate) public onlyOwner {
    |        MAYExchangeRate = _MAYExchangeRate;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    }
    |    
  > |    function crowdsaleOpen(bool _crowdsaleIsOpen) public {
    |        crowdsaleIsOpen = _crowdsaleIsOpen;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |
    |    /* Returns balance of address */
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |
    |    /* Transfers tokens from your address to other */
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require (balances[msg.sender] >= _value);            // Throw if sender has insufficient balance
    |        require (balances[_to] + _value >= balances[_to]);   // Throw if owerflow detected
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |
    |    /* Approve other address to spend tokens on your account */
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowances[msg.sender][_spender] = _value;          // Set allowance         
    |        emit Approval(msg.sender, _spender, _value);             // Raise Approval event         
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |
    |    /* Approve and then communicate the approved contract in a single tx */ 
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {            
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract         
    |        approve(_spender, _value);                                      // Set approval to contract for _value         
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {      
    |        require (balances[_from] >= _value);                // Throw if sender does not have enough balance     
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if overflow detected    
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |
    |    /* Get the amount of allowed tokens to spend */     
  > |    function allowance(address _owner, address _spender) constant public returns (uint256 remaining) {         
    |        return allowances[_owner][_spender];
    |    }     
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    }  
    |    
  > |    function mintTokens(address _sendTo, uint256 _sendAmount) public onlyOwner {
    |        mintMAYToken(_sendTo, _sendAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    
    |    /* Destroy tokens from owners account */
  > |    function burnTokens(address _addr, uint256 _amount) public onlyOwner {
    |        require (balances[_addr] >= _amount);               // Throw if you do not have enough balance
    |        totalRemainSupply += _amount;                           // Deduct totalSupply
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |
    |contract Owned {
  > |    address public owner;
    |    modifier onlyOwner() {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |
    |    /* Public variables of the token */
  > |    string  public constant standard = "Mayan protocol V1.0";
    |    string  public constant name = "Mayan protocol";
    |    string  public constant symbol = "MAY";
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    /* Public variables of the token */
    |    string  public constant standard = "Mayan protocol V1.0";
  > |    string  public constant name = "Mayan protocol";
    |    string  public constant symbol = "MAY";
    |    uint256 public constant decimals = 6;
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    string  public constant standard = "Mayan protocol V1.0";
    |    string  public constant name = "Mayan protocol";
  > |    string  public constant symbol = "MAY";
    |    uint256 public constant decimals = 6;
    |    uint256 private constant etherChange = 10**18;
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    string  public constant name = "Mayan protocol";
    |    string  public constant symbol = "MAY";
  > |    uint256 public constant decimals = 6;
    |    uint256 private constant etherChange = 10**18;
    |    
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    
    |    /* Variables of the token */
  > |    uint256 public totalSupply;
    |    uint256 public totalRemainSupply;
    |    uint256 public MAYExchangeRate;
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    /* Variables of the token */
    |    uint256 public totalSupply;
  > |    uint256 public totalRemainSupply;
    |    uint256 public MAYExchangeRate;
    |    bool    public crowdsaleIsOpen;
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    uint256 public totalSupply;
    |    uint256 public totalRemainSupply;
  > |    uint256 public MAYExchangeRate;
    |    bool    public crowdsaleIsOpen;
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    uint256 public totalRemainSupply;
    |    uint256 public MAYExchangeRate;
  > |    bool    public crowdsaleIsOpen;
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowances;
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowances;
  > |    address public multisigAddress;
    |    /* Events */
    |    event mintToken(address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    }
    |    /* Returns total supply of issued tokens */
  > |    function MAYTotalSupply() view public returns (uint256) {   
    |        return totalSupply - totalRemainSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |        
    |    /*withdraw Ether to a multisig address*/
  > |    function withdraw(address _multisigAddress) public onlyOwner {    
    |        require(_multisigAddress != 0x0);
    |        multisigAddress = _multisigAddress;
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'MayanProtocolContract':
    |    
    |    /* Issue new tokens */     
  > |    function mintMAYToken(address _to, uint256 _amount) internal { 
    |        require (balances[_to] + _amount >= balances[_to]);      // Check for overflows
    |        require (totalRemainSupply >= _amount);
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(172)

[31mViolation[0m for TODAmount in contract 'MayanProtocolContract':
    |        multisigAddress = _multisigAddress;
    |        address contractAddress = this;
  > |        multisigAddress.transfer(contractAddress.balance);
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(168)

[31mViolation[0m for TODReceiver in contract 'MayanProtocolContract':
    |        multisigAddress = _multisigAddress;
    |        address contractAddress = this;
  > |        multisigAddress.transfer(contractAddress.balance);
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(168)

[33mWarning[0m for UnhandledException in contract 'MayanProtocolContract':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract         
    |        approve(_spender, _value);                                      // Set approval to contract for _value         
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract         
    |        return true;     
    |    }     
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(142)

[33mWarning[0m for UnhandledException in contract 'MayanProtocolContract':
    |        multisigAddress = _multisigAddress;
    |        address contractAddress = this;
  > |        multisigAddress.transfer(contractAddress.balance);
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MayanProtocolContract':
    |        tokenRecipient spender = tokenRecipient(_spender);              // Cast spender to tokenRecipient contract         
    |        approve(_spender, _value);                                      // Set approval to contract for _value         
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);  // Raise method on _spender contract         
    |        return true;     
    |    }     
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(142)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MayanProtocolContract':
    |        multisigAddress = _multisigAddress;
    |        address contractAddress = this;
  > |        multisigAddress.transfer(contractAddress.balance);
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |    
    |    function crowdsaleOpen(bool _crowdsaleIsOpen) public {
  > |        crowdsaleIsOpen = _crowdsaleIsOpen;
    |    }
    |    /* Returns total supply of issued tokens */
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        require (balances[_to] + _value >= balances[_to]);   // Throw if owerflow detected
    |        balances[msg.sender] -= _value;                     // Deduct senders balance
  > |        balances[_to] += _value;                            // Add recivers blaance 
    |        emit Transfer(msg.sender, _to, _value);                  // Raise Transfer event
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        require (balances[_to] + _value >= balances[_to]);  // Throw if overflow detected    
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance       
  > |        balances[_from] -= _value;                          // Deduct senders balance    
    |        balances[_to] += _value;                            // Add recipient blaance         
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address         
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        require (_value <= allowances[_from][msg.sender]);  // Throw if you do not have allowance       
    |        balances[_from] -= _value;                          // Deduct senders balance    
  > |        balances[_to] += _value;                            // Add recipient blaance         
    |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address         
    |        emit Transfer(_from, _to, _value);                       // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        require (balances[_to] + _amount >= balances[_to]);      // Check for overflows
    |        require (totalRemainSupply >= _amount);
  > |        totalRemainSupply -= _amount;                           // Update total supply
    |        balances[_to] += _amount;                               // Set minted coins to target
    |        emit mintToken(_to, _amount);                                // Create Mint event       
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        require (totalRemainSupply >= _amount);
    |        totalRemainSupply -= _amount;                           // Update total supply
  > |        balances[_to] += _amount;                               // Set minted coins to target
    |        emit mintToken(_to, _amount);                                // Create Mint event       
    |        emit Transfer(0x0, _to, _amount);                            // Create Transfer event from 0x
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        require (balances[msg.sender] >= _value);            // Throw if sender has insufficient balance
    |        require (balances[_to] + _value >= balances[_to]);   // Throw if owerflow detected
  > |        balances[msg.sender] -= _value;                     // Deduct senders balance
    |        balances[_to] += _value;                            // Add recivers blaance 
    |        emit Transfer(msg.sender, _to, _value);                  // Raise Transfer event
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |    /* Approve other address to spend tokens on your account */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowances[msg.sender][_spender] = _value;          // Set allowance         
    |        emit Approval(msg.sender, _spender, _value);             // Raise Approval event         
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        balances[_from] -= _value;                          // Deduct senders balance    
    |        balances[_to] += _value;                            // Add recipient blaance         
  > |        allowances[_from][msg.sender] -= _value;            // Deduct allowance for this address         
    |        emit Transfer(_from, _to, _value);                       // Raise Transfer event
    |        return true;     
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |    
    |    function changeOwner(address _newOwner) public onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |    
    |    function setMAYExchangeRate(uint256 _MAYExchangeRate) public onlyOwner {
  > |        MAYExchangeRate = _MAYExchangeRate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |    function withdraw(address _multisigAddress) public onlyOwner {    
    |        require(_multisigAddress != 0x0);
  > |        multisigAddress = _multisigAddress;
    |        address contractAddress = this;
    |        multisigAddress.transfer(contractAddress.balance);
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        require (balances[_to] + _amount >= balances[_to]);      // Check for overflows
    |        require (totalRemainSupply >= _amount);
  > |        totalRemainSupply -= _amount;                           // Update total supply
    |        balances[_to] += _amount;                               // Set minted coins to target
    |        emit mintToken(_to, _amount);                                // Create Mint event       
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        require (totalRemainSupply >= _amount);
    |        totalRemainSupply -= _amount;                           // Update total supply
  > |        balances[_to] += _amount;                               // Set minted coins to target
    |        emit mintToken(_to, _amount);                                // Create Mint event       
    |        emit Transfer(0x0, _to, _amount);                            // Create Transfer event from 0x
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |    function burnTokens(address _addr, uint256 _amount) public onlyOwner {
    |        require (balances[_addr] >= _amount);               // Throw if you do not have enough balance
  > |        totalRemainSupply += _amount;                           // Deduct totalSupply
    |        balances[_addr] -= _amount;                             // Destroy coins on senders wallet
    |        emit burnToken(_addr, _amount);                              // Raise Burn event
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'MayanProtocolContract':
    |        require (balances[_addr] >= _amount);               // Throw if you do not have enough balance
    |        totalRemainSupply += _amount;                           // Deduct totalSupply
  > |        balances[_addr] -= _amount;                             // Destroy coins on senders wallet
    |        emit burnToken(_addr, _amount);                              // Raise Burn event
    |        emit Transfer(_addr, 0x0, _amount);                          // Raise transfer to 0x0
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(189)

[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.18;
    |
  > |contract Owned {
    |    address public owner;
    |    modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function changeOwner(address _newOwner) public onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    modifier onlyOwner() {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    
    |    function changeOwner(address _newOwner) public onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe4ad5cd795b116499445667dc43a0962f468aa27.sol(15)


