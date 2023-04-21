Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:Factory
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:Fish
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:PromoContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:UppercaseCheck
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol:token
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(ethPromoHelpers(_to) == 0 && fishPromoHelpers(_to) == 0);
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(51)

[33mWarning[0m for LockedEther in contract 'Factory':
    |}
    |
  > |contract Factory is UppercaseCheck, StandardToken{
    |    
    |   uint contractCount = 0;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'Factory':
    |       require(promoCodeToContractAddress(PromoCode) == 0);
    |       address myContract = new PromoContract(PromoCode);
  > |       promoCodeToContractAddress_[PromoCode] = myContract;
    |       ethPromoHelpers_[myContract] = msg.sender;
    |   }
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'Factory':
    |       address myContract = new PromoContract(PromoCode);
    |       promoCodeToContractAddress_[PromoCode] = myContract;
  > |       ethPromoHelpers_[myContract] = msg.sender;
    |   }
    |   function getPromoCodeForFish(bytes16 PromoCode) external {
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'Factory':
    |       require(promoCodeToContractAddress(PromoCode) == 0);
    |       address myContract = new PromoContract(PromoCode);
  > |       promoCodeToContractAddress_[PromoCode] = myContract;
    |       fishPromoHelpers_[myContract] = msg.sender;
    |   }
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'Factory':
    |       address myContract = new PromoContract(PromoCode);
    |       promoCodeToContractAddress_[PromoCode] = myContract;
  > |       fishPromoHelpers_[myContract] = msg.sender;
    |   }
    |}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Factory':
    |        require(ethPromoHelpers(_to) == 0 && fishPromoHelpers(_to) == 0);
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Factory':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Factory':
    |    
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Factory':
    |    
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Factory':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if(_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;} 
    |        else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);}
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Factory':
    |        if(_subtractedValue > oldValue) {
    |        allowed[msg.sender][_spender] = 0;} 
  > |        else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);}
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(103)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address owner_;
    |    constructor() public {owner_ = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    constructor() public {owner_ = msg.sender;}
    |    modifier onlyOwner() {require(msg.sender == owner_);_;}
  > |    function transferOwnership(address newOwner) public onlyOwner {require(newOwner != address(0));owner_ = newOwner;}
    |    function owner() public view returns (address) {return owner_;}
    |}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    modifier onlyOwner() {require(msg.sender == owner_);_;}
    |    function transferOwnership(address newOwner) public onlyOwner {require(newOwner != address(0));owner_ = newOwner;}
  > |    function owner() public view returns (address) {return owner_;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    constructor() public {owner_ = msg.sender;}
    |    modifier onlyOwner() {require(msg.sender == owner_);_;}
  > |    function transferOwnership(address newOwner) public onlyOwner {require(newOwner != address(0));owner_ = newOwner;}
    |    function owner() public view returns (address) {return owner_;}
    |}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(114)

[33mWarning[0m for DAOConstantGas in contract 'PromoContract':
    |        if(token(masterContract).ethPromoHelpers(address(this)) != 0 && token(masterContract).promoEthCommission() != 0){
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
  > |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(228)

[33mWarning[0m for DAOConstantGas in contract 'PromoContract':
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
  > |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(229)

[33mWarning[0m for DAOConstantGas in contract 'PromoContract':
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
  > |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(230)

[33mWarning[0m for LockedEther in contract 'PromoContract':
    |}
    |
  > |contract PromoContract{
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(217)

[33mWarning[0m for TODAmount in contract 'PromoContract':
    |        if(token(masterContract).ethPromoHelpers(address(this)) != 0 && token(masterContract).promoEthCommission() != 0){
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
  > |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(228)

[33mWarning[0m for TODAmount in contract 'PromoContract':
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
  > |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(229)

[33mWarning[0m for TODAmount in contract 'PromoContract':
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
  > |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(230)

[33mWarning[0m for TODReceiver in contract 'PromoContract':
    |        if(token(masterContract).ethPromoHelpers(address(this)) != 0 && token(masterContract).promoEthCommission() != 0){
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
  > |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(228)

[33mWarning[0m for TODReceiver in contract 'PromoContract':
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
  > |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(229)

[33mWarning[0m for TODReceiver in contract 'PromoContract':
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
  > |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(230)

[33mWarning[0m for UnhandledException in contract 'PromoContract':
    |    function promoCode() public view returns (bytes16){return promoCode_;}
    |    function() payable public{
  > |        if(token(masterContract).ethPromoHelpers(address(this)) != 0 && token(masterContract).promoEthCommission() != 0){
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(226)

[33mWarning[0m for UnhandledException in contract 'PromoContract':
    |    function() payable public{
    |        if(token(masterContract).ethPromoHelpers(address(this)) != 0 && token(masterContract).promoEthCommission() != 0){
  > |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(227)

[33mWarning[0m for UnhandledException in contract 'PromoContract':
    |        if(token(masterContract).ethPromoHelpers(address(this)) != 0 && token(masterContract).promoEthCommission() != 0){
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
  > |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(228)

[33mWarning[0m for UnhandledException in contract 'PromoContract':
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
  > |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(229)

[33mWarning[0m for UnhandledException in contract 'PromoContract':
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
  > |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(230)

[33mWarning[0m for UnhandledException in contract 'PromoContract':
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
  > |        token(masterContract).specialSend(msg.value, msg.sender);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PromoContract':
    |    function promoCode() public view returns (bytes16){return promoCode_;}
    |    function() payable public{
  > |        if(token(masterContract).ethPromoHelpers(address(this)) != 0 && token(masterContract).promoEthCommission() != 0){
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PromoContract':
    |    function() payable public{
    |        if(token(masterContract).ethPromoHelpers(address(this)) != 0 && token(masterContract).promoEthCommission() != 0){
  > |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PromoContract':
    |        if(token(masterContract).ethPromoHelpers(address(this)) != 0 && token(masterContract).promoEthCommission() != 0){
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
  > |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PromoContract':
    |        uint amountToGive = token(masterContract).promoEthCommission().mul(msg.value).div(100);
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
  > |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PromoContract':
    |        token(masterContract).owner().transfer(msg.value.sub(amountToGive)); 
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
  > |        else{token(masterContract).owner().transfer(msg.value);}
    |        token(masterContract).specialSend(msg.value, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PromoContract':
    |        token(masterContract).ethPromoHelpers(address(this)).transfer(amountToGive);}
    |        else{token(masterContract).owner().transfer(msg.value);}
  > |        token(masterContract).specialSend(msg.value, msg.sender);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(231)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    if (char != 0 && !((char >= 97) && (char <= 122))){return false;}}return true;}
    |}
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256){if(a == 0){return 0;}uint256 c = a * b;assert(c / a == b);return c;}
    |    function div(uint256 a, uint256 b) internal pure returns (uint256){return a / b;}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(20)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(ethPromoHelpers(_to) == 0 && fishPromoHelpers(_to) == 0);
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if(_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;} 
    |        else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);}
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        if(_subtractedValue > oldValue) {
    |        allowed[msg.sender][_spender] = 0;} 
  > |        else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);}
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(103)

[33mWarning[0m for LockedEther in contract 'UppercaseCheck':
    |}
    |
  > |contract UppercaseCheck {
    |    function areAllUppercase(bytes16 str) internal pure returns (bool) {
    |    if(str == 0){return false;}
  at /home/jiaming/mavs_srcs/contract@0x631e4c0ed9e668ff0f016a5cd8c671d01ca7b397.sol(13)


