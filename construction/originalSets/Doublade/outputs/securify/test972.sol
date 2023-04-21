Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol:DetailedERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol:ERC20Basic
[33mWarning[0m for DAO in contract 'Crowdsale':
    |
    |		// issue tokens, taking into account decimals
  > |		token.transferFrom(creator, investor, tokens * k);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(323)

[33mWarning[0m for DAO in contract 'Crowdsale':
    |	function __redeemAmount(address investor) internal view returns (uint amount) {
    |		// round down allowance taking into account token decimals
  > |		uint allowance = token.allowance(investor, this) / k;
    |
    |		// for open crowdsales we check previously tracked investor balance
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(329)

[33mWarning[0m for DAO in contract 'Crowdsale':
    |
    |		// redeem tokens, taking into account decimals coefficient
  > |		token.transferFrom(investor, creator, tokens * k);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(344)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |
    |		// transfer the change to investor
  > |		investor.transfer(msg.value - value);
    |
    |		// accumulate the value or transfer it to beneficiary
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(219)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |
    |		// make a refund
  > |		investor.transfer(refundValue + msg.value);
    |
    |		// log an event
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(259)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |	// transfers a value to beneficiary, validations are not required
    |	function __beneficiaryTransfer(uint value) internal {
  > |		beneficiary.transfer(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(349)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * This implementation can be used to make several crowdsales with the same token being sold.
    | */
  > |contract Crowdsale {
    |	/**
    |	* Descriptive name of this Crowdsale. There could be multiple crowdsales for same Token.
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |	// investor's mapping, required for token redemption in a failed crowdsale
    |	// making this field public allows to extend investor-related functionality in the future
  > |	mapping(address => uint) public balances;
    |
    |	// events to log
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	* Descriptive name of this Crowdsale. There could be multiple crowdsales for same Token.
    |	*/
  > |	string public name;
    |
    |	// contract creator, owner of the contract
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// crowdsale start (unix timestamp)
  > |	uint public offset;
    |
    |	// crowdsale length in seconds
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// crowdsale length in seconds
  > |	uint public length;
    |
    |	// one token price in wei
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// one token price in wei
  > |	uint public price;
    |
    |	// crowdsale minimum goal in wei
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// crowdsale minimum goal in wei
  > |	uint public softCap;
    |
    |	// crowdsale maximum goal in wei
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// crowdsale maximum goal in wei
  > |	uint public hardCap;
    |
    |	// minimum amount of value to transfer to beneficiary in automatic mode
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// how much value collected (funds raised)
  > |	uint public collected;
    |
    |	// how many different addresses made an investment
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// how many different addresses made an investment
  > |	uint public investorsCount;
    |
    |	// how much value refunded (if crowdsale failed)
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// how much value refunded (if crowdsale failed)
  > |	uint public refunded;
    |
    |	// how much tokens issued to investors
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// how much tokens issued to investors
  > |	uint public tokensIssued;
    |
    |	// how much tokens redeemed and refunded (if crowdsale failed)
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// how much tokens redeemed and refunded (if crowdsale failed)
  > |	uint public tokensRedeemed;
    |
    |	// how many successful transactions (with tokens being send back) do we have
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// how many successful transactions (with tokens being send back) do we have
  > |	uint public transactions;
    |
    |	// how many refund transactions (in exchange for tokens) made (if crowdsale failed)
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// how many refund transactions (in exchange for tokens) made (if crowdsale failed)
  > |	uint public refunds;
    |
    |	// The token being sold
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// address where funds are collected
  > |	address public beneficiary;
    |
    |	// investor's mapping, required for token redemption in a failed crowdsale
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	// accepts crowdsale investment, requires
    |	// crowdsale to be running and not reached its goal
  > |	function invest() public payable {
    |		// perform validations
    |		assert(now >= offset && now < offset + length); // crowdsale is active
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	// refunds an investor of failed crowdsale,
    |	// requires investor to allow token transfer back
  > |	function refund() public payable {
    |		// perform validations
    |		assert(now >= offset + length); // crowdsale ended
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// sends all the value to the beneficiary
  > |	function withdraw() public {
    |		// perform validations
    |		assert(creator == msg.sender || beneficiary == msg.sender); // only creator or beneficiary can initiate this call
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(266)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// transfers tokens to investor, validations are not required
  > |	function __issueTokens(address investor, uint tokens) internal {
    |		// if this is a new investor update investor count
    |		if (balances[investor] == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(313)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// calculates amount of tokens available to redeem from investor, validations are not required
  > |	function __redeemAmount(address investor) internal view returns (uint amount) {
    |		// round down allowance taking into account token decimals
    |		uint allowance = token.allowance(investor, this) / k;
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(327)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// transfers tokens from investor, validations are not required
  > |	function __redeemTokens(address investor, uint tokens) internal {
    |		// for open crowdsales we track investors balances
    |		balances[investor] -= tokens;
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(339)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |	// transfers a value to beneficiary, validations are not required
  > |	function __beneficiaryTransfer(uint value) internal {
    |		beneficiary.transfer(value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(348)

[31mViolation[0m for TODAmount in contract 'Crowdsale':
    |	// transfers a value to beneficiary, validations are not required
    |	function __beneficiaryTransfer(uint value) internal {
  > |		beneficiary.transfer(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(349)

[33mWarning[0m for TODAmount in contract 'Crowdsale':
    |	// transfers a value to beneficiary, validations are not required
    |	function __beneficiaryTransfer(uint value) internal {
  > |		beneficiary.transfer(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(349)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |
    |		// transfer the change to investor
  > |		investor.transfer(msg.value - value);
    |
    |		// accumulate the value or transfer it to beneficiary
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(219)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    |
    |		// make a refund
  > |		investor.transfer(refundValue + msg.value);
    |
    |		// log an event
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(259)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |		// transfer the change to investor
  > |		investor.transfer(msg.value - value);
    |
    |		// accumulate the value or transfer it to beneficiary
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(219)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |		// make a refund
  > |		investor.transfer(refundValue + msg.value);
    |
    |		// log an event
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(259)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |		// issue tokens, taking into account decimals
  > |		token.transferFrom(creator, investor, tokens * k);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(323)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |	function __redeemAmount(address investor) internal view returns (uint amount) {
    |		// round down allowance taking into account token decimals
  > |		uint allowance = token.allowance(investor, this) / k;
    |
    |		// for open crowdsales we check previously tracked investor balance
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(329)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |		// redeem tokens, taking into account decimals coefficient
  > |		token.transferFrom(investor, creator, tokens * k);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(344)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |	// transfers a value to beneficiary, validations are not required
    |	function __beneficiaryTransfer(uint value) internal {
  > |		beneficiary.transfer(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(349)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |	// transfers a value to beneficiary, validations are not required
    |	function __beneficiaryTransfer(uint value) internal {
  > |		beneficiary.transfer(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |		// issue tokens, taking into account decimals
  > |		token.transferFrom(creator, investor, tokens * k);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |	function __redeemAmount(address investor) internal view returns (uint amount) {
    |		// round down allowance taking into account token decimals
  > |		uint allowance = token.allowance(investor, this) / k;
    |
    |		// for open crowdsales we check previously tracked investor balance
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |		// redeem tokens, taking into account decimals coefficient
  > |		token.transferFrom(investor, creator, tokens * k);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(344)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |	// transfers a value to beneficiary, validations are not required
    |	function __beneficiaryTransfer(uint value) internal {
  > |		beneficiary.transfer(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(349)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |		// update crowdsale status
  > |		collected += value;
    |		tokensIssued += tokens;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |		// update crowdsale status
    |		collected += value;
  > |		tokensIssued += tokens;
    |
    |		// transfer tokens to investor
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |		// update crowdsale status
  > |		refunded += refundValue;
    |		tokensRedeemed += tokens;
    |		refunds++;
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |		// update crowdsale status
    |		refunded += refundValue;
  > |		tokensRedeemed += tokens;
    |		refunds++;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |		refunded += refundValue;
    |		tokensRedeemed += tokens;
  > |		refunds++;
    |
    |		// transfer the tokens back
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |		// if this is a new investor update investor count
    |		if (balances[investor] == 0) {
  > |			investorsCount++;
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |		// for open crowdsales we track investors balances
  > |		balances[investor] += tokens;
    |
    |		// issue tokens, taking into account decimals
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(320)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |	function __redeemTokens(address investor, uint tokens) internal {
    |		// for open crowdsales we track investors balances
  > |		balances[investor] -= tokens;
    |
    |		// redeem tokens, taking into account decimals coefficient
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |		// for open crowdsales we track investors balances
  > |		balances[investor] += tokens;
    |
    |		// issue tokens, taking into account decimals
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |	function __redeemTokens(address investor, uint tokens) internal {
    |		// for open crowdsales we track investors balances
  > |		balances[investor] -= tokens;
    |
    |		// redeem tokens, taking into account decimals coefficient
  at /home/jiaming/mavs_srcs/contract@0x3d3209362c7edb604c77e7bf22143c948ddf3d28.sol(341)


