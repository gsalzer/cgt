Processing contract: /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol:EthereumBlack
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'EthereumBlack':
    |
    |    function withdrawFunds() public onlyDirectorForce {
  > |        director.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(101)

[33mWarning[0m for LockedEther in contract 'EthereumBlack':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract EthereumBlack {
    |    // Public variables of ETBT
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |    uint256 public retentionMax;
    |
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public buried;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public buried;
    |    mapping (address => uint256) public claimed;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |    mapping (address => bool) public buried;
    |    mapping (address => uint256) public claimed;
    |
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public buried;
  > |    mapping (address => uint256) public claimed;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |    }
    |    
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |    
    |
  > |    function transferDirector(address newDirector) public onlyDirectorForce {
    |        director = newDirector;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |    }
    |    
  > |    function amendClaim(uint8 claimAmountSet, uint8 payAmountSet, uint8 feeAmountSet, uint8 accuracy) public onlyDirector returns (bool success) {
    |        require(claimAmountSet == (payAmountSet + feeAmountSet));
    |        
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |    
    |
  > |    function amendEpoch(uint256 epochSet) public onlyDirector returns (bool success) {
    |        // Set the epoch
    |        epoch = epochSet;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |    
    |
  > |    function amendRetention(uint8 retentionSet, uint8 accuracy) public onlyDirector returns (bool success) {
    |        // Set retentionMax
    |        retentionMax = retentionSet * 10 ** (uint256(decimals) - accuracy);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |
    |
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(281)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        // Check allowance
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(286)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(305)

[31mViolation[0m for MissingInputValidation in contract 'EthereumBlack':
    |
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        // Buried addresses cannot be burnt
    |        require(!buried[_from]);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(331)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |contract EthereumBlack {
    |    // Public variables of ETBT
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    // Public variables of ETBT
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    uint256 public funds;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    uint256 public funds;
    |    address public director;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |    uint256 public funds;
    |    address public director;
    |    bool public saleClosed;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    uint256 public totalSupply;
    |    uint256 public funds;
  > |    address public director;
    |    bool public saleClosed;
    |    bool public directorLock;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    uint256 public funds;
    |    address public director;
  > |    bool public saleClosed;
    |    bool public directorLock;
    |    uint256 public claimAmount;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    address public director;
    |    bool public saleClosed;
  > |    bool public directorLock;
    |    uint256 public claimAmount;
    |    uint256 public payAmount;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    bool public saleClosed;
    |    bool public directorLock;
  > |    uint256 public claimAmount;
    |    uint256 public payAmount;
    |    uint256 public feeAmount;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    bool public directorLock;
    |    uint256 public claimAmount;
  > |    uint256 public payAmount;
    |    uint256 public feeAmount;
    |    uint256 public epoch;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    uint256 public claimAmount;
    |    uint256 public payAmount;
  > |    uint256 public feeAmount;
    |    uint256 public epoch;
    |    uint256 public retentionMax;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    uint256 public payAmount;
    |    uint256 public feeAmount;
  > |    uint256 public epoch;
    |    uint256 public retentionMax;
    |
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    uint256 public feeAmount;
    |    uint256 public epoch;
  > |    uint256 public retentionMax;
    |
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    
    |
  > |    function withdrawFunds() public onlyDirectorForce {
    |        director.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |
    |	
  > |    function selfLock() public payable onlyDirector {
    |        // The sale must be closed before the director gets locked out
    |        require(saleClosed);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    
    |
  > |    function closeSale() public onlyDirector returns (bool success) {
    |        // The sale must be currently open
    |        require(!saleClosed);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |
    |
  > |    function openSale() public onlyDirector returns (bool success) {
    |        // The sale must be currently closed
    |        require(saleClosed);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    
    |
  > |    function bury() public returns (bool success) {
    |        // The address must be previously unburied
    |        require(!buried[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    
    |
  > |    function claim(address _payout, address _fee) public returns (bool success) {
    |        // The claimed address must have already been buried
    |        require(buried[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Sending addresses cannot be buried
    |        require(!buried[_from]);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'EthereumBlack':
    |
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        // Buried addresses cannot be burnt
    |        require(!buried[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(314)

[31mViolation[0m for TODAmount in contract 'EthereumBlack':
    |
    |    function withdrawFunds() public onlyDirectorForce {
  > |        director.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(101)

[31mViolation[0m for TODReceiver in contract 'EthereumBlack':
    |
    |    function withdrawFunds() public onlyDirectorForce {
  > |        director.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(101)

[33mWarning[0m for UnhandledException in contract 'EthereumBlack':
    |
    |    function withdrawFunds() public onlyDirectorForce {
  > |        director.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(101)

[33mWarning[0m for UnhandledException in contract 'EthereumBlack':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumBlack':
    |
    |    function withdrawFunds() public onlyDirectorForce {
  > |        director.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumBlack':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        uint256 previousBalances = balances[_from] + balances[_to];
    |        
  > |        balances[_from] -= _value;
    |        
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(272)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        balances[_from] -= _value;
    |        
  > |        balances[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Updates totalSupply
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(325)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Subtract from the targeted balance
  > |        balances[_from] -= _value;
    |        
    |        // Subtract from the sender's allowance
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(342)

[31mViolation[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Update totalSupply
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Set buried state to true
  > |        buried[msg.sender] = true;
    |        
    |        // Set the initial claim clock to 1
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Set the initial claim clock to 1
  > |        claimed[msg.sender] = 1;
    |        
    |        // Execute an event reflecting the change
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Reset the claim clock to the current block time
  > |        claimed[msg.sender] = block.timestamp;
    |        
    |        // Save this for an assertion in the future
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Remove claimAmount from the buried address
  > |        balances[msg.sender] -= claimAmount;
    |        
    |        // Pay the website owner that invoked the web node that found the ETBT seed key
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        uint256 previousBalances = balances[_from] + balances[_to];
    |        
  > |        balances[_from] -= _value;
    |        
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        // Check allowance
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        require(!buried[msg.sender]);
    |        
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Subtract from the sender
  > |        balances[msg.sender] -= _value;
    |        
    |        // Updates totalSupply
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Subtract from the sender's allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        
    |        // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |
    |    function transferDirector(address newDirector) public onlyDirectorForce {
  > |        director = newDirector;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Permanently lock out the director
  > |        directorLock = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        require(claimAmountSet == (payAmountSet + feeAmountSet));
    |        
  > |        claimAmount = claimAmountSet * 10 ** (uint256(decimals) - accuracy);
    |        payAmount = payAmountSet * 10 ** (uint256(decimals) - accuracy);
    |        feeAmount = feeAmountSet * 10 ** (uint256(decimals) - accuracy);
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        claimAmount = claimAmountSet * 10 ** (uint256(decimals) - accuracy);
  > |        payAmount = payAmountSet * 10 ** (uint256(decimals) - accuracy);
    |        feeAmount = feeAmountSet * 10 ** (uint256(decimals) - accuracy);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        claimAmount = claimAmountSet * 10 ** (uint256(decimals) - accuracy);
    |        payAmount = payAmountSet * 10 ** (uint256(decimals) - accuracy);
  > |        feeAmount = feeAmountSet * 10 ** (uint256(decimals) - accuracy);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |    function amendEpoch(uint256 epochSet) public onlyDirector returns (bool success) {
    |        // Set the epoch
  > |        epoch = epochSet;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |    function amendRetention(uint8 retentionSet, uint8 accuracy) public onlyDirector returns (bool success) {
    |        // Set retentionMax
  > |        retentionMax = retentionSet * 10 ** (uint256(decimals) - accuracy);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Lock the crowdsale
  > |        saleClosed = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Unlock the crowdsale
  > |        saleClosed = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Pay the website owner that invoked the web node that found the ETBT seed key
  > |        balances[_payout] += payAmount;
    |        
    |        // Pay the broker node that unlocked the ETBT
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlack':
    |        
    |        // Pay the broker node that unlocked the ETBT
  > |        balances[_fee] += feeAmount;
    |        
    |        // Execute events to reflect the changes
  at /home/jiaming/mavs_srcs/contract@0x9d5b592b687c887a5a34df5f9207adb2c2db3aec.sol(214)


