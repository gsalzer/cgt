Processing contract: /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol:ECHO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ECHO':
    |        assert(totalSupply <= HARD_CAP);
    |        totalWeiReceived = totalWeiReceived.Add(msg.value);
  > |        ethCollector.transfer(msg.value);
    |        emit Transfer(0x0, beneficiary, tokensBought);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(440)

[33mWarning[0m for DAOConstantGas in contract 'ECHO':
    |    */
    |    function drain() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(467)

[33mWarning[0m for LockedEther in contract 'ECHO':
    |}
    |
  > |contract ECHO is ERC20 {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(149)

[31mViolation[0m for TODAmount in contract 'ECHO':
    |    */
    |    function drain() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(467)

[31mViolation[0m for TODReceiver in contract 'ECHO':
    |        assert(totalSupply <= HARD_CAP);
    |        totalWeiReceived = totalWeiReceived.Add(msg.value);
  > |        ethCollector.transfer(msg.value);
    |        emit Transfer(0x0, beneficiary, tokensBought);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(440)

[31mViolation[0m for TODReceiver in contract 'ECHO':
    |    */
    |    function drain() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(467)

[33mWarning[0m for UnhandledException in contract 'ECHO':
    |        if(isContract(_to)){
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(286)

[33mWarning[0m for UnhandledException in contract 'ECHO':
    |        if(isContract(_to)){
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(306)

[33mWarning[0m for UnhandledException in contract 'ECHO':
    |       if(isContract(_to)){
    |           ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |           receiver.tokenFallback(msg.sender, _value, _empty);
    |       }
    |       emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(332)

[33mWarning[0m for UnhandledException in contract 'ECHO':
    |        assert(totalSupply <= HARD_CAP);
    |        totalWeiReceived = totalWeiReceived.Add(msg.value);
  > |        ethCollector.transfer(msg.value);
    |        emit Transfer(0x0, beneficiary, tokensBought);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(440)

[33mWarning[0m for UnhandledException in contract 'ECHO':
    |    */
    |    function drain() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECHO':
    |        if(isContract(_to)){
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _empty);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECHO':
    |        if(isContract(_to)){
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECHO':
    |       if(isContract(_to)){
    |           ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |           receiver.tokenFallback(msg.sender, _value, _empty);
    |       }
    |       emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECHO':
    |        assert(totalSupply <= HARD_CAP);
    |        totalWeiReceived = totalWeiReceived.Add(msg.value);
  > |        ethCollector.transfer(msg.value);
    |        emit Transfer(0x0, beneficiary, tokensBought);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(440)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECHO':
    |    */
    |    function drain() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |        bytes memory _empty;
    |        assert((balances[msg.sender] >= _value) && _value > 0 && _to != address(0));
  > |        balances[msg.sender] = balances[msg.sender].Sub(_value);
    |        balances[_to] = balances[_to].Add(_value);
    |        if(isContract(_to)){
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |        assert((balances[msg.sender] >= _value) && _value > 0 && _to != address(0));
    |        balances[msg.sender] = balances[msg.sender].Sub(_value);
  > |        balances[_to] = balances[_to].Add(_value);
    |        if(isContract(_to)){
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |    function transfer(address _to, uint _value, bytes _data) onlyUnlocked onlyPayloadSize(3 * 32) public returns(bool _success) {
    |        assert((balances[msg.sender] >= _value) && _value > 0 && _to != address(0));
  > |        balances[msg.sender] = balances[msg.sender].Sub(_value);
    |        balances[_to] = balances[_to].Add(_value);
    |        if(isContract(_to)){
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |        assert((balances[msg.sender] >= _value) && _value > 0 && _to != address(0));
    |        balances[msg.sender] = balances[msg.sender].Sub(_value);
  > |        balances[_to] = balances[_to].Add(_value);
    |        if(isContract(_to)){
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |           && (_from != address(0))
    |           && (allowed[_from][msg.sender] >= _value ));
  > |       balances[_from] = balances[_from].Sub(_value);
    |       balances[_to] = balances[_to].Add(_value);
    |       allowed[_from][msg.sender] = allowed[_from][msg.sender].Sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |           && (allowed[_from][msg.sender] >= _value ));
    |       balances[_from] = balances[_from].Sub(_value);
  > |       balances[_to] = balances[_to].Add(_value);
    |       allowed[_from][msg.sender] = allowed[_from][msg.sender].Sub(_value);
    |       if(isContract(_to)){
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |       balances[_from] = balances[_from].Sub(_value);
    |       balances[_to] = balances[_to].Add(_value);
  > |       allowed[_from][msg.sender] = allowed[_from][msg.sender].Sub(_value);
    |       if(isContract(_to)){
    |           ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |    function approve(address _spender, uint256 _value) public returns (bool){
    |        if( _value > 0 && (balances[msg.sender] >= _value)){
  > |            allowed[msg.sender][_spender] = _value;
    |            emit Approval(msg.sender, _spender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |    function mintAndTransfer(address beneficiary, uint256 tokensToBeTransferred) public validTimeframe onlyOwner {
    |        require(totalSupply.Add(tokensToBeTransferred) <= MAXCAP);
  > |        totalSupply = totalSupply.Add(tokensToBeTransferred);
    |        balances[beneficiary] = balances[beneficiary].Add(tokensToBeTransferred);
    |        emit Transfer(0x0, beneficiary ,tokensToBeTransferred);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |        require(totalSupply.Add(tokensToBeTransferred) <= MAXCAP);
    |        totalSupply = totalSupply.Add(tokensToBeTransferred);
  > |        balances[beneficiary] = balances[beneficiary].Add(tokensToBeTransferred);
    |        emit Transfer(0x0, beneficiary ,tokensToBeTransferred);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |        uint256 tokensBought = msg.value.Mul(PRICE);
    |        tokensBought = tokensBought.Add(getBonus(tokensBought));
  > |        balances[beneficiary] = balances[beneficiary].Add(tokensBought);
    |        totalSupply = totalSupply.Add(tokensBought);
    |       
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |        tokensBought = tokensBought.Add(getBonus(tokensBought));
    |        balances[beneficiary] = balances[beneficiary].Add(tokensBought);
  > |        totalSupply = totalSupply.Add(tokensBought);
    |       
    |        assert(totalSupply <= HARD_CAP);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |       
    |        assert(totalSupply <= HARD_CAP);
  > |        totalWeiReceived = totalWeiReceived.Add(msg.value);
    |        ethCollector.transfer(msg.value);
    |        emit Transfer(0x0, beneficiary, tokensBought);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |        //If sale is running, then check if the hard cap has been reached or not
    |        assert(!isSaleRunning() || (HARD_CAP.Sub(totalSupply)) <= 1e18);
  > |        endTime = now;
    |
    |        //enable transferring of tokens among token holders
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |
    |        //enable transferring of tokens among token holders
  > |        locked = false;
    |        //Emit event when crowdsale state changes
    |        emit StateChanged(true);
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require (_newOwner != address(0));
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    //Record the pausing time only if any startTime is defined
    |    //in other cases, it will work as a toggle switch only
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |    //in other cases, it will work as a toggle switch only
    |    if(startTime > 0){
  > |        pauseTime = now;
    |    }
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    //if endTime is defined, only then proceed with its updation
    |    if(endTime > 0 && pauseTime > startTime){
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |    if(endTime > 0 && pauseTime > startTime){
    |        uint256 pauseDuration = pauseTime - startTime;
  > |        endTime = endTime + pauseDuration;
    |    }
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |    function setEthCollector(address _ethCollector) public onlyOwner{
    |        require(_ethCollector != address(0));
  > |        ethCollector = _ethCollector;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'ECHO':
    |    //To enable transfer of tokens
    |    function unlockTransfer() external onlyOwner{
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(237)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * Purpose: Defines Owner for contract and provide functionality to transfer ownership to another account
    | */
  > |contract Ownable {
    |
    |  //owner variable to store contract owner account
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |  //owner variable to store contract owner account
  > |  address public owner;
    |  //add another owner
    |  address deployer;
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |  //ownership can be transferred to provided newOwner. Function can only be initiated by contract owner's account
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require (_newOwner != address(0));
    |    owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require (_newOwner != address(0));
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(73)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  //owner variable to store contract owner account
  > |  address public owner;
    |  //add another owner
    |  address deployer;
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  //ownership can be transferred to provided newOwner. Function can only be initiated by contract owner's account
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require (_newOwner != address(0));
    |    owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |  uint256 public startTime;
    |  uint256 public endTime;
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  bool public paused = false;
  > |  uint256 public startTime;
    |  uint256 public endTime;
    |  uint256 private pauseTime;
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  bool public paused = false;
    |  uint256 public startTime;
  > |  uint256 public endTime;
    |  uint256 private pauseTime;
    |
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    //Record the pausing time only if any startTime is defined
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    //if endTime is defined, only then proceed with its updation
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require (_newOwner != address(0));
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    //Record the pausing time only if any startTime is defined
    |    //in other cases, it will work as a toggle switch only
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    //in other cases, it will work as a toggle switch only
    |    if(startTime > 0){
  > |        pauseTime = now;
    |    }
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    //if endTime is defined, only then proceed with its updation
    |    if(endTime > 0 && pauseTime > startTime){
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    if(endTime > 0 && pauseTime > startTime){
    |        uint256 pauseDuration = pauseTime - startTime;
  > |        endTime = endTime + pauseDuration;
    |    }
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(129)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title SafeMath for performing valid mathematics.
    | */
  > |library SafeMath {
    | 
    |  function Mul(uint a, uint b) internal pure returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x2ff994cdb80144fa84b2ab671fc46816d562b64c.sol(6)


