Processing contract: /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol:SWAP
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol:TokenInterface
[33mWarning[0m for DAOConstantGas in contract 'SWAP':
    |    
    |    function withdrawEtherOnlyOwner() external onlyMyETHWallet{
  > |        msg.sender.transfer(address(this).balance);
    |        emit Withdraw(msg.sender,address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(97)

[33mWarning[0m for DAOConstantGas in contract 'SWAP':
    |
    |    function sendEthToAddress(address _address, uint256 _value) external onlyValidAddress(_address){
  > |        _address.transfer(_value);
    |        emit Withdraw(_address,_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(102)

[33mWarning[0m for LockedEther in contract 'SWAP':
    |}
    |
  > |contract SWAP{
    |    
    |    string public name="SWAP";
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'SWAP':
    |    }
    |    mapping (address => uint256) balances; 
  > |    mapping (address => mapping (address => uint256)) public allowance; //phu cap
    |
    |    function setPrice(uint256 _price) public returns (uint256){
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'SWAP':
    |    mapping (address => mapping (address => uint256)) public allowance; //phu cap
    |
  > |    function setPrice(uint256 _price) public returns (uint256){
    |        price = _price;
    |        return price;
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'SWAP':
    |    }
    |
  > |    function setDecimals(uint256 _decimals) public returns (uint256){
    |        decimals = _decimals;
    |        return decimals;
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'SWAP':
    |    }
    |    
  > |    function balanceOf(address _owner) view public returns(uint256){
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'SWAP':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);  
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'SWAP':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'SWAP':
    |    }
    |
  > |    function sendEthToAddress(address _address, uint256 _value) external onlyValidAddress(_address){
    |        _address.transfer(_value);
    |        emit Withdraw(_address,_value);
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'SWAP':
    |contract SWAP{
    |    
  > |    string public name="SWAP";
    |    string public symbol="SWAP";
    |    
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'SWAP':
    |    
    |    string public name="SWAP";
  > |    string public symbol="SWAP";
    |    
    |    uint256 public totalSupply; 
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SWAP':
    |    string public symbol="SWAP";
    |    
  > |    uint256 public totalSupply; 
    |    uint256 public price = 50;
    |    uint256 public decimals = 18; 
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SWAP':
    |    
    |    uint256 public totalSupply; 
  > |    uint256 public price = 50;
    |    uint256 public decimals = 18; 
    |
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SWAP':
    |    uint256 public totalSupply; 
    |    uint256 public price = 50;
  > |    uint256 public decimals = 18; 
    |
    |    address MyETHWallet;
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'SWAP':
    |    event Withdraw(address to, uint amount); //rut tien
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balances[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'SWAP':
    |    }
    |    
  > |    function withdrawEtherOnlyOwner() external onlyMyETHWallet{
    |        msg.sender.transfer(address(this).balance);
    |        emit Withdraw(msg.sender,address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(96)

[31mViolation[0m for TODAmount in contract 'SWAP':
    |    
    |    function withdrawEtherOnlyOwner() external onlyMyETHWallet{
  > |        msg.sender.transfer(address(this).balance);
    |        emit Withdraw(msg.sender,address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(97)

[33mWarning[0m for TODAmount in contract 'SWAP':
    |
    |    function sendEthToAddress(address _address, uint256 _value) external onlyValidAddress(_address){
  > |        _address.transfer(_value);
    |        emit Withdraw(_address,_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(102)

[33mWarning[0m for TODReceiver in contract 'SWAP':
    |    
    |    function withdrawEtherOnlyOwner() external onlyMyETHWallet{
  > |        msg.sender.transfer(address(this).balance);
    |        emit Withdraw(msg.sender,address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(97)

[33mWarning[0m for TODReceiver in contract 'SWAP':
    |
    |    function sendEthToAddress(address _address, uint256 _value) external onlyValidAddress(_address){
  > |        _address.transfer(_value);
    |        emit Withdraw(_address,_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(102)

[33mWarning[0m for UnhandledException in contract 'SWAP':
    |    
    |    function withdrawEtherOnlyOwner() external onlyMyETHWallet{
  > |        msg.sender.transfer(address(this).balance);
    |        emit Withdraw(msg.sender,address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(97)

[33mWarning[0m for UnhandledException in contract 'SWAP':
    |
    |    function sendEthToAddress(address _address, uint256 _value) external onlyValidAddress(_address){
  > |        _address.transfer(_value);
    |        emit Withdraw(_address,_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(102)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'SWAP':
    |
    |    function sendEthToAddress(address _address, uint256 _value) external onlyValidAddress(_address){
  > |        _address.transfer(_value);
    |        emit Withdraw(_address,_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(102)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SWAP':
    |    
    |    function withdrawEtherOnlyOwner() external onlyMyETHWallet{
  > |        msg.sender.transfer(address(this).balance);
    |        emit Withdraw(msg.sender,address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'SWAP':
    |
    |    function setPrice(uint256 _price) public returns (uint256){
  > |        price = _price;
    |        return price;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'SWAP':
    |
    |    function setDecimals(uint256 _decimals) public returns (uint256){
  > |        decimals = _decimals;
    |        return decimals;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'SWAP':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        
  > |        balances[_from] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'SWAP':
    |        
    |        balances[_from] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        
  > |        balances[_from] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);  
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'SWAP':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe995e03275dafdb7cc1fa17c6bbc21bfed379fdd.sol(80)


