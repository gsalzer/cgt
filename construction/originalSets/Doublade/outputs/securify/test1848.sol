Processing contract: /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol:TCASH
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol:TcashCrowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TCASH':
    |  }
    |  
  > |  contract TCASH is ERC20 {
    |     string public constant symbol = "TCASH";
    |     string public constant name = "Tcash";
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'TCASH':
    |  
    |
  > |     function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |     }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'TCASH':
    |     
    |     
  > |     function transferFrom(
    |         address _from,
    |         address _to,
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'TCASH':
    |     }
    | 
  > |     function approve(address _spender, uint256 _amount) returns (bool success) {
    |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'TCASH':
    |     }
    |  
  > |     function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |         return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'TCASH':
    |  
    |  contract TCASH is ERC20 {
  > |     string public constant symbol = "TCASH";
    |     string public constant name = "Tcash";
    |     uint8 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'TCASH':
    |  contract TCASH is ERC20 {
    |     string public constant symbol = "TCASH";
  > |     string public constant name = "Tcash";
    |     uint8 public constant decimals = 8;
    |     uint256 _totalSupply = 88000000 * 10**8;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'TCASH':
    |     string public constant symbol = "TCASH";
    |     string public constant name = "Tcash";
  > |     uint8 public constant decimals = 8;
    |     uint256 _totalSupply = 88000000 * 10**8;
    |     
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'TCASH':
    |     
    |
  > |     address public owner;
    |  
    |     mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'TCASH':
    |     
    |     
  > |    function distributeTCASH(address[] addresses) onlyOwner {
    |         for (uint i = 0; i < addresses.length; i++) {
    |             balances[owner] -= 245719916000;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'TCASH':
    |     
    |  
  > |     function totalSupply() constant returns (uint256 totalsupply) {
    |         totalsupply = _totalSupply;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'TCASH':
    |    function distributeTCASH(address[] addresses) onlyOwner {
    |         for (uint i = 0; i < addresses.length; i++) {
  > |             balances[owner] -= 245719916000;
    |             balances[addresses[i]] += 245719916000;
    |             Transfer(owner, addresses[i], 245719916000);
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'TCASH':
    |         for (uint i = 0; i < addresses.length; i++) {
    |             balances[owner] -= 245719916000;
  > |             balances[addresses[i]] += 245719916000;
    |             Transfer(owner, addresses[i], 245719916000);
    |         }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'TCASH':
    |            && _amount > 0
    |             && balances[_to] + _amount > balances[_to]) {
  > |             balances[msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'TCASH':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'TCASH':
    | 
    |     function approve(address _spender, uint256 _amount) returns (bool success) {
  > |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |         return true;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(91)

[33mWarning[0m for DAOConstantGas in contract 'TcashCrowdsale':
    |        weiRaised = safeAdd(weiRaised, weiAmount);
    |        contributors = safeAdd(contributors, 1);
  > |        if (!target.send(weiAmount)) {
    |           revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |
    |contract TcashCrowdsale {
  > |    address public founder;
    |    address public target;
    |    uint256 public weiRaised;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |contract TcashCrowdsale {
    |    address public founder;
  > |    address public target;
    |    uint256 public weiRaised;
    |    uint256 public tokenIssued;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    address public founder;
    |    address public target;
  > |    uint256 public weiRaised;
    |    uint256 public tokenIssued;
    |    uint256 public contributors;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    address public target;
    |    uint256 public weiRaised;
  > |    uint256 public tokenIssued;
    |    uint256 public contributors;
    |    TCASH public tokenReward;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    uint256 public weiRaised;
    |    uint256 public tokenIssued;
  > |    uint256 public contributors;
    |    TCASH public tokenReward;
    |    uint256 public phase = 0;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    uint256 public tokenIssued;
    |    uint256 public contributors;
  > |    TCASH public tokenReward;
    |    uint256 public phase = 0;
    |    bool public halted = false;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    uint256 public contributors;
    |    TCASH public tokenReward;
  > |    uint256 public phase = 0;
    |    bool public halted = false;
    |    bool crowdsaleClosed = false;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    TCASH public tokenReward;
    |    uint256 public phase = 0;
  > |    bool public halted = false;
    |    bool crowdsaleClosed = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    bool crowdsaleClosed = false;
    |
  > |    uint256[10] public priceToken = [
    |        2600,
    |        2500,
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    ];
    |
  > |    uint256 public constant HARDCAP = 20000 ether;
    |    uint256 public constant MULTIPLIER = 10 ** 10;
    |
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |
    |    uint256 public constant HARDCAP = 20000 ether;
  > |    uint256 public constant MULTIPLIER = 10 ** 10;
    |
    |     /*
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    }
    |
  > |    function safeAdd(uint256 a, uint256 b) internal constant returns (uint256) {
    |      uint256 c = a + b;
    |      require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    }
    |
  > |    function safeMul(uint256 a, uint256 b) internal constant returns (uint256) {
    |      uint256 c = a * b;
    |      require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    }
    |
  > |    function safeDiv(uint256 a, uint256 b) internal constant returns (uint256) {
    |      // require(b > 0); // Solidity automatically throws when dividing by 0
    |      uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    }
    |
  > |    function price() constant returns (uint256 tokens) {
    |        tokens = priceToken[phase];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |    }
    |
  > |    function computeTokenAmount(uint256 weiAmount) internal constant returns (uint256 tokens) {
    |        tokens = safeMul(safeDiv(weiAmount, MULTIPLIER), priceToken[phase]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |     *
    |     */
  > |    function halt() onlyFounder {
    |        halted = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |     *
    |     */
  > |    function unhalt() onlyFounder {
    |        halted = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |     *
    |     */
  > |    function setPhase(uint256 nPhase) onlyFounder {
    |        require((nPhase < priceToken.length) && (nPhase >= 0));
    |        phase = nPhase;
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |     *
    |     */
  > |    function tokenWithdraw(address receiver, uint256 tokens) onlyFounder {
    |        require(receiver != 0x0);
    |        require(tokens > 0);
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'TcashCrowdsale':
    |     * Close the crowdsale
    |     */
  > |    function closeCrowdsale() onlyFounder {
    |        crowdsaleClosed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(257)

[33mWarning[0m for UnhandledException in contract 'TcashCrowdsale':
    |        uint256 weiAmount = msg.value;
    |        uint256 tokens = computeTokenAmount(weiAmount);
  > |        if (tokenReward.transfer(receiver, tokens)) {
    |           tokenIssued = safeAdd(tokenIssued, tokens);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(195)

[33mWarning[0m for UnhandledException in contract 'TcashCrowdsale':
    |        weiRaised = safeAdd(weiRaised, weiAmount);
    |        contributors = safeAdd(contributors, 1);
  > |        if (!target.send(weiAmount)) {
    |           revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(202)

[33mWarning[0m for UnhandledException in contract 'TcashCrowdsale':
    |        require(receiver != 0x0);
    |        require(tokens > 0);
  > |        if (!tokenReward.transfer(receiver, tokens)) {
    |           revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TcashCrowdsale':
    |        require(receiver != 0x0);
    |        require(tokens > 0);
  > |        if (!tokenReward.transfer(receiver, tokens)) {
    |           revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'TcashCrowdsale':
    |        uint256 tokens = computeTokenAmount(weiAmount);
    |        if (tokenReward.transfer(receiver, tokens)) {
  > |           tokenIssued = safeAdd(tokenIssued, tokens);
    |        } else {
    |           revert();
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'TcashCrowdsale':
    |           revert();
    |        }
  > |        weiRaised = safeAdd(weiRaised, weiAmount);
    |        contributors = safeAdd(contributors, 1);
    |        if (!target.send(weiAmount)) {
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'TcashCrowdsale':
    |        }
    |        weiRaised = safeAdd(weiRaised, weiAmount);
  > |        contributors = safeAdd(contributors, 1);
    |        if (!target.send(weiAmount)) {
    |           revert();
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'TcashCrowdsale':
    |     */
    |    function halt() onlyFounder {
  > |        halted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'TcashCrowdsale':
    |     */
    |    function unhalt() onlyFounder {
  > |        halted = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'TcashCrowdsale':
    |    function setPhase(uint256 nPhase) onlyFounder {
    |        require((nPhase < priceToken.length) && (nPhase >= 0));
  > |        phase = nPhase;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'TcashCrowdsale':
    |     */
    |    function closeCrowdsale() onlyFounder {
  > |        crowdsaleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x763d3a11796551b435c8d789086e922625461410.sol(258)


