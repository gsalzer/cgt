Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:ERC20PrivateInterface
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:ERC20TokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:Lockable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:MintableTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:MintingContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:OwnedInterface
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol:tokenRecipientInterface
[33mWarning[0m for LockedEther in contract 'ERC20PrivateInterface':
    |  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |}
  > |contract ERC20PrivateInterface {
    |    uint256 supply;
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(86)

[31mViolation[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token is ERC20TokenInterface, SafeMath, Owned, Lockable {
    |
    |    // Name of token
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(107)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |        tokenRecipientInterface spender = tokenRecipientInterface(_spender);
    |        approve(_spender, _value);
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(188)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |    */
    |    function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner public {
  > |        ERC20TokenInterface(_tokenAddress).transfer(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |        tokenRecipientInterface spender = tokenRecipientInterface(_spender);
    |        approve(_spender, _value);
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |    */
    |    function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner public {
  > |        ERC20TokenInterface(_tokenAddress).transfer(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function lockUntil(uint256 _untilBlock, string _reason) onlyOwner public {
  > |        lockedUntilBlock = _untilBlock;
    |        ContractLocked(_untilBlock, _reason);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transfer(address _to, uint256 _value) lockAffected public returns (bool success) {
    |        require(_to != 0x0 && _to != address(this));
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    */
    |    function approve(address _spender, uint256 _value) lockAffected public returns (bool success) {
  > |        allowances[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        allowances[_from][msg.sender] = safeSub(allowances[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    */
    |    function burn(uint _amount) public {
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _amount);
    |        supply = safeSub(supply, _amount);
    |        emit Burn(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_to != 0x0 && _to != address(this));
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transferFrom(address _from, address _to, uint256 _value) lockAffected public returns (bool success) {
    |        require(_to != 0x0 && _to != address(this));
  > |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        allowances[_from][msg.sender] = safeSub(allowances[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_to != 0x0 && _to != address(this));
    |        balances[_from] = safeSub(balanceOf(_from), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        allowances[_from][msg.sender] = safeSub(allowances[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function mint(address _to, uint256 _amount) public {
    |        require(msg.sender == mintingContract);
  > |        supply = safeAdd(supply, _amount);
    |        balances[_to] = safeAdd(balances[_to], _amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(msg.sender == mintingContract);
    |        supply = safeAdd(supply, _amount);
  > |        balances[_to] = safeAdd(balances[_to], _amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function burn(uint _amount) public {
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _amount);
  > |        supply = safeSub(supply, _amount);
    |        emit Burn(msg.sender, _amount);
    |        emit Transfer(msg.sender, 0x0, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(241)

[33mWarning[0m for LockedEther in contract 'Lockable':
    |}
    |
  > |contract Lockable is Owned {
    |
    |    uint256 public lockedUntilBlock;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |
    |
  > |    function lockUntil(uint256 _untilBlock, string _reason) onlyOwner public {
    |        lockedUntilBlock = _untilBlock;
    |        ContractLocked(_untilBlock, _reason);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |contract Lockable is Owned {
    |
  > |    uint256 public lockedUntilBlock;
    |
    |    event ContractLocked(uint256 _untilBlock, string _reason);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |
    |    function lockUntil(uint256 _untilBlock, string _reason) onlyOwner public {
  > |        lockedUntilBlock = _untilBlock;
    |        ContractLocked(_untilBlock, _reason);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(46)

[33mWarning[0m for LockedEther in contract 'MintingContract':
    |
    |
  > |contract MintingContract is Owned, SafeMath{
    |    
    |    address public tokenAddress;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |    
  > |    function doCommunityMinting(address _destination, uint _tokensToMint) public {
    |        require(msg.sender == communityAddress || msg.sender == owner);
    |        require(safeAdd(comunityMintedTokens, _tokensToMint) <= communityTokensCap);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(304)

[31mViolation[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |
  > |    function doPresaleMinting(address _destination, uint _tokensToMint) public onlyOwner {
    |        require(mintingState == state.crowdsaleMinting);
    |        require(safeAdd(tokensAlreadyMinted, _tokensToMint) <= crowdsaleMintingCap);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(312)

[31mViolation[0m for MissingInputValidation in contract 'MintingContract':
    |        tokensAlreadyMinted = safeAdd(tokensAlreadyMinted, _tokensToMint);
    |    }
  > |    function doCrowdsaleMinting(address _destination, uint _tokensToMint) public {
    |        require(msg.sender == crowdsaleContractAddress);
    |        require(mintingState == state.crowdsaleMinting);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(319)

[31mViolation[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |
  > |    function setTokenAddress(address _tokenAddress) onlyOwner public {
    |        tokenAddress = _tokenAddress;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |
  > |    function setCrowdsaleContractAddress(address _crowdsaleContractAddress) onlyOwner public {
    |        crowdsaleContractAddress = _crowdsaleContractAddress;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(343)

[31mViolation[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |    
  > |    function setTeamTokenAddress(address _address) onlyOwner public {
    |        teamTokenAddress = _address;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(347)

[31mViolation[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |    
  > |    function setCommunityAddress(address _address) onlyOwner public {
    |        communityAddress = _address;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(351)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |contract SafeMath {
    |    
  > |    uint256 constant public MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
    |    function safeAdd(uint256 x, uint256 y) constant internal returns (uint256 z) {
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    uint256 constant public MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  > |    function safeAdd(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        require(x <= MAX_UINT256 - y);
    |        return x + y;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |
  > |    function safeSub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        require(x >= y);
    |        return x - y;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |contract MintingContract is Owned, SafeMath{
    |    
  > |    address public tokenAddress;
    |    uint256 public tokensAlreadyMinted;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(278)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    
    |    address public tokenAddress;
  > |    uint256 public tokensAlreadyMinted;
    |
    |    enum state { crowdsaleMinting, teamMinting, finished}
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |
    |    enum state { crowdsaleMinting, teamMinting, finished}
  > |    state public mintingState; 
    |
    |    address public crowdsaleContractAddress;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    state public mintingState; 
    |
  > |    address public crowdsaleContractAddress;
    |    uint256 public crowdsaleMintingCap;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(284)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |
    |    address public crowdsaleContractAddress;
  > |    uint256 public crowdsaleMintingCap;
    |
    |    uint256 public teamTokensCap;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(285)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    uint256 public crowdsaleMintingCap;
    |
  > |    uint256 public teamTokensCap;
    |    address public teamTokenAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |
    |    uint256 public teamTokensCap;
  > |    address public teamTokenAddress;
    |
    |    uint256 public communityTokensCap;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(288)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    address public teamTokenAddress;
    |
  > |    uint256 public communityTokensCap;
    |    address public communityAddress;
    |    uint256 public comunityMintedTokens;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(290)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |
    |    uint256 public communityTokensCap;
  > |    address public communityAddress;
    |    uint256 public comunityMintedTokens;
    |    
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(291)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    uint256 public communityTokensCap;
    |    address public communityAddress;
  > |    uint256 public comunityMintedTokens;
    |    
    |    function MintingContract() public {
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(292)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |    
  > |    function finishCrowdsaleMinting() onlyOwner public {
    |        mintingState = state.teamMinting;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(328)

[33mWarning[0m for MissingInputValidation in contract 'MintingContract':
    |    }
    |    
  > |    function doTeamMinting() public {
    |        require(mintingState == state.teamMinting);
    |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, safeSub(crowdsaleMintingCap, tokensAlreadyMinted));
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(332)

[33mWarning[0m for UnhandledException in contract 'MintingContract':
    |        require(safeAdd(comunityMintedTokens, _tokensToMint) <= communityTokensCap);
    |
  > |        MintableTokenInterface(tokenAddress).mint(_destination, _tokensToMint);
    |        comunityMintedTokens = safeAdd(comunityMintedTokens, _tokensToMint);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(308)

[33mWarning[0m for UnhandledException in contract 'MintingContract':
    |        require(safeAdd(tokensAlreadyMinted, _tokensToMint) <= crowdsaleMintingCap);
    |
  > |        MintableTokenInterface(tokenAddress).mint(_destination, _tokensToMint);
    |        tokensAlreadyMinted = safeAdd(tokensAlreadyMinted, _tokensToMint);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(316)

[33mWarning[0m for UnhandledException in contract 'MintingContract':
    |        require(safeAdd(tokensAlreadyMinted, _tokensToMint) <= crowdsaleMintingCap);
    |
  > |        MintableTokenInterface(tokenAddress).mint(_destination, _tokensToMint);
    |        tokensAlreadyMinted = safeAdd(tokensAlreadyMinted, _tokensToMint);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(324)

[33mWarning[0m for UnhandledException in contract 'MintingContract':
    |    function doTeamMinting() public {
    |        require(mintingState == state.teamMinting);
  > |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, safeSub(crowdsaleMintingCap, tokensAlreadyMinted));
    |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, teamTokensCap);
    |        mintingState = state.finished;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(334)

[33mWarning[0m for UnhandledException in contract 'MintingContract':
    |        require(mintingState == state.teamMinting);
    |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, safeSub(crowdsaleMintingCap, tokensAlreadyMinted));
  > |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, teamTokensCap);
    |        mintingState = state.finished;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(335)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintingContract':
    |        require(safeAdd(comunityMintedTokens, _tokensToMint) <= communityTokensCap);
    |
  > |        MintableTokenInterface(tokenAddress).mint(_destination, _tokensToMint);
    |        comunityMintedTokens = safeAdd(comunityMintedTokens, _tokensToMint);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintingContract':
    |        require(safeAdd(tokensAlreadyMinted, _tokensToMint) <= crowdsaleMintingCap);
    |
  > |        MintableTokenInterface(tokenAddress).mint(_destination, _tokensToMint);
    |        tokensAlreadyMinted = safeAdd(tokensAlreadyMinted, _tokensToMint);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(316)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintingContract':
    |        require(safeAdd(tokensAlreadyMinted, _tokensToMint) <= crowdsaleMintingCap);
    |
  > |        MintableTokenInterface(tokenAddress).mint(_destination, _tokensToMint);
    |        tokensAlreadyMinted = safeAdd(tokensAlreadyMinted, _tokensToMint);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintingContract':
    |    function doTeamMinting() public {
    |        require(mintingState == state.teamMinting);
  > |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, safeSub(crowdsaleMintingCap, tokensAlreadyMinted));
    |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, teamTokensCap);
    |        mintingState = state.finished;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintingContract':
    |        require(mintingState == state.teamMinting);
    |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, safeSub(crowdsaleMintingCap, tokensAlreadyMinted));
  > |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, teamTokensCap);
    |        mintingState = state.finished;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(335)

[31mViolation[0m for UnrestrictedWrite in contract 'MintingContract':
    |
    |        MintableTokenInterface(tokenAddress).mint(_destination, _tokensToMint);
  > |        comunityMintedTokens = safeAdd(comunityMintedTokens, _tokensToMint);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(309)

[31mViolation[0m for UnrestrictedWrite in contract 'MintingContract':
    |
    |        MintableTokenInterface(tokenAddress).mint(_destination, _tokensToMint);
  > |        tokensAlreadyMinted = safeAdd(tokensAlreadyMinted, _tokensToMint);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(325)

[31mViolation[0m for UnrestrictedWrite in contract 'MintingContract':
    |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, safeSub(crowdsaleMintingCap, tokensAlreadyMinted));
    |        MintableTokenInterface(tokenAddress).mint(teamTokenAddress, teamTokensCap);
  > |        mintingState = state.finished;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'MintingContract':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'MintingContract':
    |    
    |    function finishCrowdsaleMinting() onlyOwner public {
  > |        mintingState = state.teamMinting;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'MintingContract':
    |
    |    function setTokenAddress(address _tokenAddress) onlyOwner public {
  > |        tokenAddress = _tokenAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'MintingContract':
    |
    |    function setCrowdsaleContractAddress(address _crowdsaleContractAddress) onlyOwner public {
  > |        crowdsaleContractAddress = _crowdsaleContractAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'MintingContract':
    |    
    |    function setTeamTokenAddress(address _address) onlyOwner public {
  > |        teamTokenAddress = _address;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'MintingContract':
    |    
    |    function setCommunityAddress(address _address) onlyOwner public {
  > |        communityAddress = _address;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'MintingContract':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'MintingContract':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(46)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(46)

[33mWarning[0m for LockedEther in contract 'OwnedInterface':
    |  function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData);
    |}
  > |contract OwnedInterface {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'OwnedInterface':
    |}
    |contract OwnedInterface {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'OwnedInterface':
    |contract OwnedInterface {
    |    address public owner;
  > |    address public newOwner;
    |
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(100)

[33mWarning[0m for LockedEther in contract 'SafeMath':
  > |contract SafeMath {
    |    
    |    uint256 constant public MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |contract SafeMath {
    |    
  > |    uint256 constant public MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
    |    function safeAdd(uint256 x, uint256 y) constant internal returns (uint256 z) {
  at /home/jiaming/mavs_srcs/contract@0xe7c79deb6a9b74f691d5f882b7c588bba5db1a20.sol(3)


