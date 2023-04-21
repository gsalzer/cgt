Processing contract: /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol:ApodTokenContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol:ERC20PrivateInterface
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol:ERC20TokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol:Lockable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol:OwnedInterface
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol:tokenRecipientInterface
[31mViolation[0m for LockedEther in contract 'ApodTokenContract':
    |
    |
  > |contract ApodTokenContract is ERC20Token {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(270)

[33mWarning[0m for UnhandledException in contract 'ApodTokenContract':
    |        tokenRecipientInterface spender = tokenRecipientInterface(_spender);
    |        approve(_spender, _value);
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(188)

[33mWarning[0m for UnhandledException in contract 'ApodTokenContract':
    |    */
    |    function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner public {
  > |        ERC20TokenInterface(_tokenAddress).transfer(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ApodTokenContract':
    |        tokenRecipientInterface spender = tokenRecipientInterface(_spender);
    |        approve(_spender, _value);
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ApodTokenContract':
    |    */
    |    function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner public {
  > |        ERC20TokenInterface(_tokenAddress).transfer(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |
    |    function lockUntil(uint256 _untilBlock, string _reason) onlyOwner public {
  > |        lockedUntilBlock = _untilBlock;
    |        ContractLocked(_untilBlock, _reason);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |    function transfer(address _to, uint256 _value) lockAffected public returns (bool success) {
    |        require(_to != 0x0 && _to != address(this));
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |    */
    |    function approve(address _spender, uint256 _value) lockAffected public returns (bool success) {
  > |        allowances[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        allowances[_from][msg.sender] = safeSub(allowances[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |    */
    |    function burn(uint _amount) public {
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _amount);
    |        supply = safeSub(supply, _amount);
    |        emit Burn(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |        require(_to != 0x0 && _to != address(this));
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |    function transferFrom(address _from, address _to, uint256 _value) lockAffected public returns (bool success) {
    |        require(_to != 0x0 && _to != address(this));
  > |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        allowances[_from][msg.sender] = safeSub(allowances[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |        require(_to != 0x0 && _to != address(this));
    |        balances[_from] = safeSub(balanceOf(_from), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        allowances[_from][msg.sender] = safeSub(allowances[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |    function mint(address _to, uint256 _amount) public {
    |        require(msg.sender == mintingContract);
  > |        supply = safeAdd(supply, _amount);
    |        balances[_to] = safeAdd(balances[_to], _amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |        require(msg.sender == mintingContract);
    |        supply = safeAdd(supply, _amount);
  > |        balances[_to] = safeAdd(balances[_to], _amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'ApodTokenContract':
    |    function burn(uint _amount) public {
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _amount);
  > |        supply = safeSub(supply, _amount);
    |        emit Burn(msg.sender, _amount);
    |        emit Transfer(msg.sender, 0x0, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(241)

[33mWarning[0m for LockedEther in contract 'ERC20PrivateInterface':
    |  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |}
  > |contract ERC20PrivateInterface {
    |    uint256 supply;
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(86)

[31mViolation[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token is ERC20TokenInterface, SafeMath, Owned, Lockable {
    |
    |    // Name of token
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(107)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |        tokenRecipientInterface spender = tokenRecipientInterface(_spender);
    |        approve(_spender, _value);
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(188)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |    */
    |    function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner public {
  > |        ERC20TokenInterface(_tokenAddress).transfer(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |        tokenRecipientInterface spender = tokenRecipientInterface(_spender);
    |        approve(_spender, _value);
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |    */
    |    function salvageTokensFromContract(address _tokenAddress, address _to, uint _amount) onlyOwner public {
  > |        ERC20TokenInterface(_tokenAddress).transfer(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function lockUntil(uint256 _untilBlock, string _reason) onlyOwner public {
  > |        lockedUntilBlock = _untilBlock;
    |        ContractLocked(_untilBlock, _reason);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transfer(address _to, uint256 _value) lockAffected public returns (bool success) {
    |        require(_to != 0x0 && _to != address(this));
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    */
    |    function approve(address _spender, uint256 _value) lockAffected public returns (bool success) {
  > |        allowances[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        allowances[_from][msg.sender] = safeSub(allowances[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    */
    |    function burn(uint _amount) public {
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _amount);
    |        supply = safeSub(supply, _amount);
    |        emit Burn(msg.sender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_to != 0x0 && _to != address(this));
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transferFrom(address _from, address _to, uint256 _value) lockAffected public returns (bool success) {
    |        require(_to != 0x0 && _to != address(this));
  > |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        allowances[_from][msg.sender] = safeSub(allowances[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_to != 0x0 && _to != address(this));
    |        balances[_from] = safeSub(balanceOf(_from), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        allowances[_from][msg.sender] = safeSub(allowances[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function mint(address _to, uint256 _amount) public {
    |        require(msg.sender == mintingContract);
  > |        supply = safeAdd(supply, _amount);
    |        balances[_to] = safeAdd(balances[_to], _amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(msg.sender == mintingContract);
    |        supply = safeAdd(supply, _amount);
  > |        balances[_to] = safeAdd(balances[_to], _amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function burn(uint _amount) public {
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _amount);
  > |        supply = safeSub(supply, _amount);
    |        emit Burn(msg.sender, _amount);
    |        emit Transfer(msg.sender, 0x0, _amount);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(241)

[33mWarning[0m for LockedEther in contract 'Lockable':
    |}
    |
  > |contract Lockable is Owned {
    |
    |    uint256 public lockedUntilBlock;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'Lockable':
    |
    |
  > |    function lockUntil(uint256 _untilBlock, string _reason) onlyOwner public {
    |        lockedUntilBlock = _untilBlock;
    |        ContractLocked(_untilBlock, _reason);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |contract Lockable is Owned {
    |
  > |    uint256 public lockedUntilBlock;
    |
    |    event ContractLocked(uint256 _untilBlock, string _reason);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |
    |    function lockUntil(uint256 _untilBlock, string _reason) onlyOwner public {
  > |        lockedUntilBlock = _untilBlock;
    |        ContractLocked(_untilBlock, _reason);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(46)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(46)

[33mWarning[0m for LockedEther in contract 'OwnedInterface':
    |  function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData);
    |}
  > |contract OwnedInterface {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'OwnedInterface':
    |}
    |contract OwnedInterface {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'OwnedInterface':
    |contract OwnedInterface {
    |    address public owner;
  > |    address public newOwner;
    |
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(100)

[33mWarning[0m for LockedEther in contract 'SafeMath':
  > |contract SafeMath {
    |    
    |    uint256 constant public MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |contract SafeMath {
    |    
  > |    uint256 constant public MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
    |    function safeAdd(uint256 x, uint256 y) constant internal returns (uint256 z) {
  at /home/jiaming/mavs_srcs/contract@0x99bc08db67f52010f2d6017b7ad968808113db10.sol(3)


