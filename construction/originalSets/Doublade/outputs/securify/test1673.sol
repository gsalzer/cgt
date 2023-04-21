Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol:IMCIssuingRecord
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol:IMCToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'IMCIssuingRecord':
    |// 发行记录合约
    |// ----------------------------------------------------------------------------
  > |contract IMCIssuingRecord is Owned{
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(314)

[33mWarning[0m for UnhandledException in contract 'IMCIssuingRecord':
    |    function sendTokenToPlatform(uint _tokens) internal returns (bool) {
    |
  > |        imcToken.transfer(platformAddr, _tokens);
    |        
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(388)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IMCIssuingRecord':
    |    function sendTokenToPlatform(uint _tokens) internal returns (bool) {
    |
  > |        imcToken.transfer(platformAddr, _tokens);
    |        
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(388)

[31mViolation[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |// 发行记录合约
    |// ----------------------------------------------------------------------------
  > |contract IMCIssuingRecord is Owned{
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |        
    |        // 记录发行信息
  > |        issuingRecord[_date] = RecordInfo(_date, _hash, _depth, _userCount, _token, _fileFormat, _stripLen);
    |
    |        // 转账到中间帐户
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |// 发行记录合约
    |// ----------------------------------------------------------------------------
  > |contract IMCIssuingRecord is Owned{
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |     */
    |    function modifyPlatformAddr(address _addr) public onlyOwner {
  > |        platformAddr = _addr;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |     */
    |    function modifyExecutorAddr(address _addr) public onlyOwner {
  > |        executorAddress = _addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |
    |        // 累计用户数
  > |        userCount = userCount.add(_userCount);
    |
    |        // 累计发行币数
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |
    |        // 累计发行币数
  > |        totalIssuingBalance = totalIssuingBalance.add(_token);
    |        
    |        // 记录发行信息
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCIssuingRecord':
    |        
    |        // 记录发行信息
  > |        issuingRecord[_date] = RecordInfo(_date, _hash, _depth, _userCount, _token, _fileFormat, _stripLen);
    |
    |        // 转账到中间帐户
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(417)

[33mWarning[0m for LockedEther in contract 'IMCToken':
    |// fixed supply
    |// ----------------------------------------------------------------------------
  > |contract IMCToken is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(129)

[33mWarning[0m for UnhandledException in contract 'IMCToken':
    |        if (approve(_spender, _value)) {
    |            // 通知合约
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IMCToken':
    |        if (approve(_spender, _value)) {
    |            // 通知合约
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCToken':
    |
    |        // 从发送者减掉发送额
  > |        balances[_from] = balances[_from].sub(_value);
    |        // 给接收者加上相同的量
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        // 给接收者加上相同的量
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        // 通知任何监听该交易的客户端
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCToken':
    |            // 授权给第三方时，需检查发送者是否拥有足够余额
    |            require(allowed[_from][msg.sender] >= _value);
  > |            allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |            _transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCToken':
    |    */
    |    function approve(address _spender, uint _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCToken':
    |     */
    |    function approveContractCall(address _contractAddress) public onlyOwner returns (bool){
  > |        externalContractAddress = _contractAddress;
    |        
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(297)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(120)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x6ad3ed9302e9a9a0c112989ba2e5408d25a9303f.sol(18)


