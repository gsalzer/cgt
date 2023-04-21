Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:EventChain
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:EventChainCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:ReleasableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |     */
    |    function transfer(address _to, uint256 _value) onlyPayloadSize(2 * 32) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(144)

[33mWarning[0m for LockedEther in contract 'EventChain':
    | * @dev Contract for the EventChain token.
    | */
  > |contract EventChain is ReleasableToken, MintableToken {
    |    string public name = "EventChain";
    |    string public symbol = "EVC";
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChain':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        assert(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChain':
    |     */
    |    function transfer(address _to, uint256 _value) onlyPayloadSize(2 * 32) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChain':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChain':
    |        assert((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChain':
    |     */
    |    function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |        mintAgents[addr] = state;
    |        MintingAgentChanged(addr, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChain':
    |     */
    |    function releaseToken() public onlyReleaseAgent {
  > |        released = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChain':
    |     */
    |    function setReleaseAgent(address addr) onlyOwner inReleaseState(false) public {
  > |        releaseAgent = addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(309)

[33mWarning[0m for LockedEther in contract 'EventChainCrowdsale':
    | * @dev see: https://ethereum.stackexchange.com/a/24185
    | */
  > |contract EventChainCrowdsale is Haltable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(365)

[31mViolation[0m for TODAmount in contract 'EventChainCrowdsale':
    |    function phaseClaim() internal {
    |        uint256 beneficiaryTwoClaim = this.balance.div(100).mul(BTWO_CLAIM_PERCENT);
  > |        beneficiaryTwo.transfer(beneficiaryTwoClaim);
    |        FundsClaimed(beneficiaryTwo, beneficiaryTwoClaim, currentStateToString());
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(486)

[31mViolation[0m for TODAmount in contract 'EventChainCrowdsale':
    |
    |        uint256 beneficiaryClaim = this.balance;
  > |        beneficiary.transfer(this.balance);
    |        FundsClaimed(beneficiary, beneficiaryClaim, currentStateToString());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(490)

[33mWarning[0m for UnhandledException in contract 'EventChainCrowdsale':
    |        uint256 tokens = msg.value.mul(currentRate);
    |        currentSupply = currentSupply.sub(tokens);
  > |        evc.mint(msg.sender, tokens);
    |        totalRaised = totalRaised.add(msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(416)

[33mWarning[0m for UnhandledException in contract 'EventChainCrowdsale':
    |
    |    function startPhase1() onlyOwner inState(State.Ready) stopInEmergency external {
  > |        currentTotalSupply = evc.mintableSupply().sub(PHASE2_SUPPLY).sub(PHASE3_SUPPLY);
    |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE1_RATE;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(429)

[33mWarning[0m for UnhandledException in contract 'EventChainCrowdsale':
    |    function phaseClaim() internal {
    |        uint256 beneficiaryTwoClaim = this.balance.div(100).mul(BTWO_CLAIM_PERCENT);
  > |        beneficiaryTwo.transfer(beneficiaryTwoClaim);
    |        FundsClaimed(beneficiaryTwo, beneficiaryTwoClaim, currentStateToString());
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(486)

[33mWarning[0m for UnhandledException in contract 'EventChainCrowdsale':
    |
    |        uint256 beneficiaryClaim = this.balance;
  > |        beneficiary.transfer(this.balance);
    |        FundsClaimed(beneficiary, beneficiaryClaim, currentStateToString());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(490)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EventChainCrowdsale':
    |        uint256 tokens = msg.value.mul(currentRate);
    |        currentSupply = currentSupply.sub(tokens);
  > |        evc.mint(msg.sender, tokens);
    |        totalRaised = totalRaised.add(msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(416)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EventChainCrowdsale':
    |
    |    function startPhase1() onlyOwner inState(State.Ready) stopInEmergency external {
  > |        currentTotalSupply = evc.mintableSupply().sub(PHASE2_SUPPLY).sub(PHASE3_SUPPLY);
    |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE1_RATE;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(429)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EventChainCrowdsale':
    |    function phaseClaim() internal {
    |        uint256 beneficiaryTwoClaim = this.balance.div(100).mul(BTWO_CLAIM_PERCENT);
  > |        beneficiaryTwo.transfer(beneficiaryTwoClaim);
    |        FundsClaimed(beneficiaryTwo, beneficiaryTwoClaim, currentStateToString());
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(486)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        assert(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |     */
    |    function halt() external onlyOwner {
  > |        halted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |     */
    |    function unhalt() external onlyOwner onlyInEmergency {
  > |        halted = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |
    |        uint256 tokens = msg.value.mul(currentRate);
  > |        currentSupply = currentSupply.sub(tokens);
    |        evc.mint(msg.sender, tokens);
    |        totalRaised = totalRaised.add(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |        currentSupply = currentSupply.sub(tokens);
    |        evc.mint(msg.sender, tokens);
  > |        totalRaised = totalRaised.add(msg.value);
    |
    |        InvestmentMade(
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |
    |    function startPhase1() onlyOwner inState(State.Ready) stopInEmergency external {
  > |        currentTotalSupply = evc.mintableSupply().sub(PHASE2_SUPPLY).sub(PHASE3_SUPPLY);
    |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE1_RATE;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |    function startPhase1() onlyOwner inState(State.Ready) stopInEmergency external {
    |        currentTotalSupply = evc.mintableSupply().sub(PHASE2_SUPPLY).sub(PHASE3_SUPPLY);
  > |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE1_RATE;
    |        currentState = State.Phase1;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |        currentTotalSupply = evc.mintableSupply().sub(PHASE2_SUPPLY).sub(PHASE3_SUPPLY);
    |        currentSupply = currentTotalSupply;
  > |        currentRate = PHASE1_RATE;
    |        currentState = State.Phase1;
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE1_RATE;
  > |        currentState = State.Phase1;
    |
    |        StateChanged(State.Ready, currentState);
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |        phaseClaim();
    |
  > |        currentTotalSupply = currentSupply.add(PHASE2_SUPPLY);
    |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE2_RATE;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |
    |        currentTotalSupply = currentSupply.add(PHASE2_SUPPLY);
  > |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE2_RATE;
    |        currentState = State.Phase2;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(441)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |        currentTotalSupply = currentSupply.add(PHASE2_SUPPLY);
    |        currentSupply = currentTotalSupply;
  > |        currentRate = PHASE2_RATE;
    |        currentState = State.Phase2;
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE2_RATE;
  > |        currentState = State.Phase2;
    |
    |        StateChanged(State.Phase1, currentState);
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |        phaseClaim();
    |
  > |        currentTotalSupply = currentSupply.add(PHASE3_SUPPLY);
    |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE3_RATE;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |
    |        currentTotalSupply = currentSupply.add(PHASE3_SUPPLY);
  > |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE3_RATE;
    |        currentState = State.Phase3;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |        currentTotalSupply = currentSupply.add(PHASE3_SUPPLY);
    |        currentSupply = currentTotalSupply;
  > |        currentRate = PHASE3_RATE;
    |        currentState = State.Phase3;
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'EventChainCrowdsale':
    |        currentSupply = currentTotalSupply;
    |        currentRate = PHASE3_RATE;
  > |        currentState = State.Phase3;
    |
    |        StateChanged(State.Phase2, currentState);
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(454)

[33mWarning[0m for LockedEther in contract 'Haltable':
    | * @dev Differs from Pausable by causing a throw when in halt mode.
    | */
  > |contract Haltable is Ownable {
    |    bool public halted;
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        assert(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |    bool public halted;
    |
    |    modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |     * @dev Called by the owner on emergency, triggers stopped state.
    |     */
  > |    function halt() external onlyOwner {
    |        halted = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |     * @dev Called by the owner on end of emergency, returns to normal state.
    |     */
  > |    function unhalt() external onlyOwner onlyInEmergency {
    |        halted = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        assert(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |     */
    |    function halt() external onlyOwner {
  > |        halted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |     */
    |    function unhalt() external onlyOwner onlyInEmergency {
  > |        halted = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(99)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * @dev Based on https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        assert(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function transfer(address _to, uint256 _value) onlyPayloadSize(2 * 32) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        assert((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |        mintAgents[addr] = state;
    |        MintingAgentChanged(addr, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(260)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        assert(newOwner != address(0));
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        assert(newOwner != address(0));
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(65)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |    mapping (address => mapping (address => uint256)) allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function transfer(address _to, uint256 _value) onlyPayloadSize(2 * 32) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        assert((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb70f92ff6bca4aa0c61973c27243978b20ecbe5a.sol(210)


