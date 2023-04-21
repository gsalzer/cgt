Processing contract: /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol:ClaimableCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol:HoQuToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(145)

[33mWarning[0m for DAOConstantGas in contract 'ClaimableCrowdsale':
    |        TokenBought(msg.sender, tokensAmount, payAmount);
    |
  > |        beneficiaryAddress.transfer(payAmount);
    |    
    |        if (returnAmount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(368)

[33mWarning[0m for DAOConstantGas in contract 'ClaimableCrowdsale':
    |    
    |        if (returnAmount > 0) {
  > |            msg.sender.transfer(returnAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(371)

[33mWarning[0m for LockedEther in contract 'ClaimableCrowdsale':
    | * @title HoQu.io claimable crowdsale contract.
    | */
  > |contract ClaimableCrowdsale is Pausable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(265)

[33mWarning[0m for TODAmount in contract 'ClaimableCrowdsale':
    |        TokenBought(msg.sender, tokensAmount, payAmount);
    |
  > |        beneficiaryAddress.transfer(payAmount);
    |    
    |        if (returnAmount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(368)

[33mWarning[0m for TODAmount in contract 'ClaimableCrowdsale':
    |    
    |        if (returnAmount > 0) {
  > |            msg.sender.transfer(returnAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(371)

[33mWarning[0m for TODReceiver in contract 'ClaimableCrowdsale':
    |    
    |        if (returnAmount > 0) {
  > |            msg.sender.transfer(returnAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(371)

[33mWarning[0m for UnhandledException in contract 'ClaimableCrowdsale':
    |        TokenBought(msg.sender, tokensAmount, payAmount);
    |
  > |        beneficiaryAddress.transfer(payAmount);
    |    
    |        if (returnAmount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(368)

[33mWarning[0m for UnhandledException in contract 'ClaimableCrowdsale':
    |    
    |        if (returnAmount > 0) {
  > |            msg.sender.transfer(returnAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(371)

[33mWarning[0m for UnhandledException in contract 'ClaimableCrowdsale':
    |        tokens[_receiver] = 0;
    |
  > |        token.transferFrom(bankAddress, _receiver, tokensToSend);
    |        TokenSent(_receiver, tokensToSend);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(459)

[33mWarning[0m for UnhandledException in contract 'ClaimableCrowdsale':
    |        require (!isFinished);
    |        isFinished = true;
  > |        token.transfer(bankAddress, token.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(474)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClaimableCrowdsale':
    |        TokenBought(msg.sender, tokensAmount, payAmount);
    |
  > |        beneficiaryAddress.transfer(payAmount);
    |    
    |        if (returnAmount > 0) {
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(368)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClaimableCrowdsale':
    |    
    |        if (returnAmount > 0) {
  > |            msg.sender.transfer(returnAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(371)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClaimableCrowdsale':
    |        tokens[_receiver] = 0;
    |
  > |        token.transferFrom(bankAddress, _receiver, tokensToSend);
    |        TokenSent(_receiver, tokensToSend);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(459)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClaimableCrowdsale':
    |        require (!isFinished);
    |        isFinished = true;
  > |        token.transfer(bankAddress, token.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |        }
    |    
  > |        issuedTokensAmount = issuedTokensAmount.add(tokensAmount);
    |        require (issuedTokensAmount <= maxTokensAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |    function add(address _receiver, uint256 _equivalentEthAmount) onlyOwner inProgress whenNotPaused {
    |        uint256 tokensAmount = tokenRate.mul(_equivalentEthAmount);
  > |        issuedTokensAmount = issuedTokensAmount.add(tokensAmount);
    |
    |        storeTokens(_receiver, tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |    function topUp(address _receiver, uint256 _equivalentEthAmount) onlyOwner whenNotPaused {
    |        uint256 tokensAmount = tokenRate.mul(_equivalentEthAmount);
  > |        issuedTokensAmount = issuedTokensAmount.add(tokensAmount);
    |
    |        storeTokens(_receiver, tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |        require (tokens[_receiver] >= tokensAmount);
    |
  > |        tokens[_receiver] = tokens[_receiver].sub(tokensAmount);
    |        issuedTokensAmount = issuedTokensAmount.sub(tokensAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |
    |        tokens[_receiver] = tokens[_receiver].sub(tokensAmount);
  > |        issuedTokensAmount = issuedTokensAmount.sub(tokensAmount);
    |
    |        TokenSubtracted(_receiver, tokensAmount, _equivalentEthAmount);
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |    function storeTokens(address _receiver, uint256 _tokensAmount) internal whenNotPaused {
    |        if (tokens[_receiver] == 0) {
  > |            tokenReceivers[receiversCount] = _receiver;
    |            receiversCount++;
    |            approved[_receiver] = false;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |        if (tokens[_receiver] == 0) {
    |            tokenReceivers[receiversCount] = _receiver;
  > |            receiversCount++;
    |            approved[_receiver] = false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |            tokenReceivers[receiversCount] = _receiver;
    |            receiversCount++;
  > |            approved[_receiver] = false;
    |        }
    |        tokens[_receiver] = tokens[_receiver].add(_tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |            approved[_receiver] = false;
    |        }
  > |        tokens[_receiver] = tokens[_receiver].add(_tokensAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |
    |        uint256 tokensToSend = tokens[_receiver];
  > |        tokens[_receiver] = 0;
    |
    |        token.transferFrom(bankAddress, _receiver, tokensToSend);
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(457)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |     */
    |    function pause() onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        Pause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |     */
    |    function unpause() onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        Unpause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |    function setTokenRate(uint256 _tokenRate) onlyOwner {
    |        require (_tokenRate > 0);
  > |        tokenRate = _tokenRate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |
    |    function approve(address _receiver) onlyOwner whenNotPaused {
  > |        approved[_receiver] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'ClaimableCrowdsale':
    |        require (issuedTokensAmount >= maxTokensAmount || now > endDate);
    |        require (!isFinished);
  > |        isFinished = true;
    |        token.transfer(bankAddress, token.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(473)

[33mWarning[0m for LockedEther in contract 'HoQuToken':
    | * @dev HoQu.io token contract.
    | */
  > |contract HoQuToken is StandardToken, Pausable {
    |
    |    string public constant name = "HOQU Token";
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'HoQuToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'HoQuToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'HoQuToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'HoQuToken':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'HoQuToken':
    |     */
    |    function pause() onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        Pause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'HoQuToken':
    |     */
    |    function unpause() onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        Unpause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(112)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(66)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused returns (bool) {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused returns (bool) {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        Pause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        Unpause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(112)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x903e7414cb54e44766dcf03e4ab424fdf9259d78.sol(217)


