Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:Controller
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:EventDefinitions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:Finalizable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:IToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:Ledger
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol:TokenReceivable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Controller':
    |}
    |
  > |contract Controller is Owned, Finalizable {
    |	Ledger public ledger;
    |	Token public token;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(221)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function changeOwner(address _newOwner) onlyOwner {
    |		newOwner = _newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	// functions below this line are onlyOwner
    |
  > |	function setToken(address _token) onlyOwner {
    |		token = Token(_token);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(230)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function setLedger(address _ledger) onlyOwner {
    |		ledger = Ledger(_ledger);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function balanceOf(address _a) constant returns (uint) {
    |		return ledger.balanceOf(_a);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(254)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function allowance(address _owner, address _spender) constant returns (uint) {
    |		return ledger.allowance(_owner, _spender);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	// is when we mint directly to the ledger and need the Transfer()
    |	// events to appear in the token)
  > |	function ledgerTransfer(address from, address to, uint val) onlyLedger {
    |		token.controllerTransfer(from, to, val);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(267)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	// functions below this line are onlyToken
    |
  > |	function transfer(address _from, address _to, uint _value) onlyToken returns (bool success) {
    |		return ledger.transfer(_from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(273)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function transferFrom(address _spender, address _from, address _to, uint _value) onlyToken returns (bool success) {
    |		return ledger.transferFrom(_spender, _from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(277)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function approve(address _owner, address _spender, uint _value) onlyToken returns (bool success) {
    |		return ledger.approve(_owner, _spender, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(281)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function increaseApproval (address _owner, address _spender, uint _addedValue) onlyToken returns (bool success) {
    |		return ledger.increaseApproval(_owner, _spender, _addedValue);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(285)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function decreaseApproval (address _owner, address _spender, uint _subtractedValue) onlyToken returns (bool success) {
    |		return ledger.decreaseApproval(_owner, _spender, _subtractedValue);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(289)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function burn(address _owner, uint _amount) onlyToken {
    |		ledger.burn(_owner, _amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(293)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |contract Owned {
  > |	address public owner;
    |	address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |	}
    |
  > |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
    |			owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |contract Finalizable is Owned {
  > |	bool public finalized;
    |
    |	function finalize() onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |	bool public finalized;
    |
  > |	function finalize() onlyOwner {
    |		finalized = true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |contract Controller is Owned, Finalizable {
  > |	Ledger public ledger;
    |	Token public token;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(222)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |contract Controller is Owned, Finalizable {
    |	Ledger public ledger;
  > |	Token public token;
    |
    |	function Controller() {
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |	// public functions
    |
  > |	function totalSupply() constant returns (uint) {
    |		return ledger.totalSupply();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(250)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |
    |	function totalSupply() constant returns (uint) {
  > |		return ledger.totalSupply();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(251)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |
    |	function balanceOf(address _a) constant returns (uint) {
  > |		return ledger.balanceOf(_a);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(255)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |
    |	function allowance(address _owner, address _spender) constant returns (uint) {
  > |		return ledger.allowance(_owner, _spender);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(259)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |	// events to appear in the token)
    |	function ledgerTransfer(address from, address to, uint val) onlyLedger {
  > |		token.controllerTransfer(from, to, val);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(268)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |
    |	function transfer(address _from, address _to, uint _value) onlyToken returns (bool success) {
  > |		return ledger.transfer(_from, _to, _value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(274)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |
    |	function transferFrom(address _spender, address _from, address _to, uint _value) onlyToken returns (bool success) {
  > |		return ledger.transferFrom(_spender, _from, _to, _value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(278)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |
    |	function approve(address _owner, address _spender, uint _value) onlyToken returns (bool success) {
  > |		return ledger.approve(_owner, _spender, _value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(282)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |
    |	function increaseApproval (address _owner, address _spender, uint _addedValue) onlyToken returns (bool success) {
  > |		return ledger.increaseApproval(_owner, _spender, _addedValue);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(286)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |
    |	function decreaseApproval (address _owner, address _spender, uint _subtractedValue) onlyToken returns (bool success) {
  > |		return ledger.decreaseApproval(_owner, _spender, _subtractedValue);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(290)

[33mWarning[0m for UnhandledException in contract 'Controller':
    |
    |	function burn(address _owner, uint _amount) onlyToken {
  > |		ledger.burn(_owner, _amount);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |
    |	function totalSupply() constant returns (uint) {
  > |		return ledger.totalSupply();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |
    |	function balanceOf(address _a) constant returns (uint) {
  > |		return ledger.balanceOf(_a);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(255)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |
    |	function allowance(address _owner, address _spender) constant returns (uint) {
  > |		return ledger.allowance(_owner, _spender);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |	// events to appear in the token)
    |	function ledgerTransfer(address from, address to, uint val) onlyLedger {
  > |		token.controllerTransfer(from, to, val);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |
    |	function transfer(address _from, address _to, uint _value) onlyToken returns (bool success) {
  > |		return ledger.transfer(_from, _to, _value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(274)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |
    |	function transferFrom(address _spender, address _from, address _to, uint _value) onlyToken returns (bool success) {
  > |		return ledger.transferFrom(_spender, _from, _to, _value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |
    |	function approve(address _owner, address _spender, uint _value) onlyToken returns (bool success) {
  > |		return ledger.approve(_owner, _spender, _value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |
    |	function increaseApproval (address _owner, address _spender, uint _addedValue) onlyToken returns (bool success) {
  > |		return ledger.increaseApproval(_owner, _spender, _addedValue);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |
    |	function decreaseApproval (address _owner, address _spender, uint _subtractedValue) onlyToken returns (bool success) {
  > |		return ledger.decreaseApproval(_owner, _spender, _subtractedValue);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Controller':
    |
    |	function burn(address _owner, uint _amount) onlyToken {
  > |		ledger.burn(_owner, _amount);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
  > |			owner = newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |	function changeOwner(address _newOwner) onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |	function finalize() onlyOwner {
  > |		finalized = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |	function setToken(address _token) onlyOwner {
  > |		token = Token(_token);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |	function setLedger(address _ledger) onlyOwner {
  > |		ledger = Ledger(_ledger);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(235)

[33mWarning[0m for LockedEther in contract 'EventDefinitions':
    |}
    |
  > |contract EventDefinitions {
    |	event Transfer(address indexed from, address indexed to, uint value);
    |	event TransferInternalLedgerAT(address indexed _from, address _to, uint256 indexed _value, bytes32 indexed mdn);
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(93)

[33mWarning[0m for LockedEther in contract 'Finalizable':
    |}
    |
  > |contract Finalizable is Owned {
    |	bool public finalized;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Finalizable':
    |	}
    |
  > |	function changeOwner(address _newOwner) onlyOwner {
    |		newOwner = _newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Finalizable':
    |
    |contract Owned {
  > |	address public owner;
    |	address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Finalizable':
    |	}
    |
  > |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
    |			owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Finalizable':
    |
    |contract Finalizable is Owned {
  > |	bool public finalized;
    |
    |	function finalize() onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Finalizable':
    |	bool public finalized;
    |
  > |	function finalize() onlyOwner {
    |		finalized = true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Finalizable':
    |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
  > |			owner = newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Finalizable':
    |
    |	function changeOwner(address _newOwner) onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Finalizable':
    |
    |	function finalize() onlyOwner {
  > |		finalized = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(70)

[33mWarning[0m for LockedEther in contract 'Ledger':
    |}
    |
  > |contract Ledger is Owned, SafeMath, Finalizable {
    |	Controller public controller;
    |	mapping(address => uint) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(298)

[33mWarning[0m for UnhandledException in contract 'Ledger':
    |			uint value = bits[i]&lomask;
    |			balanceOf[a] = balanceOf[a] + value;
  > |			controller.ledgerTransfer(0, a, value);
    |			created += value;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ledger':
    |			uint value = bits[i]&lomask;
    |			balanceOf[a] = balanceOf[a] + value;
  > |			controller.ledgerTransfer(0, a, value);
    |			created += value;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'Ledger':
    |			address a = address(bits[i]>>96);
    |			uint value = bits[i]&lomask;
  > |			balanceOf[a] = balanceOf[a] + value;
    |			controller.ledgerTransfer(0, a, value);
    |			created += value;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(328)

[31mViolation[0m for UnrestrictedWrite in contract 'Ledger':
    |			created += value;
    |		}
  > |		totalSupply += created;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
  > |			owner = newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |
    |	function changeOwner(address _newOwner) onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |
    |	function finalize() onlyOwner {
  > |		finalized = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |
    |	function setController(address _controller) onlyOwner notFinalized {
  > |		controller = Controller(_controller);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |
    |	function stopMinting() onlyOwner {
  > |		mintingStopped = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |		require(!mintingStopped);
    |		if (nonce != mintingNonce) return;
  > |		mintingNonce += 1;
    |		uint256 lomask = (1 << 96) - 1;
    |		uint created = 0;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |		if (balanceOf[_from] < _value) return false;
    |
  > |		balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |		balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |
    |		balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |		balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |		if (allowed < _value) return false;
    |
  > |		balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |		balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |		allowance[_from][_spender] = safeSub(allowed, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |
    |		balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  > |		balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |		allowance[_from][_spender] = safeSub(allowed, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |		balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |		balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |		allowance[_from][_spender] = safeSub(allowed, _value);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |		}
    |
  > |		allowance[_owner][_spender] = _value;
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |	function increaseApproval (address _owner, address _spender, uint _addedValue) onlyController returns (bool success) {
    |		uint oldValue = allowance[_owner][_spender];
  > |		allowance[_owner][_spender] = safeAdd(oldValue, _addedValue);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |		uint oldValue = allowance[_owner][_spender];
    |		if (_subtractedValue > oldValue) {
  > |			allowance[_owner][_spender] = 0;
    |		} else {
    |			allowance[_owner][_spender] = safeSub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |			allowance[_owner][_spender] = 0;
    |		} else {
  > |			allowance[_owner][_spender] = safeSub(oldValue, _subtractedValue);
    |		}
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |
    |	function burn(address _owner, uint _amount) onlyController {
  > |		balanceOf[_owner] = safeSub(balanceOf[_owner], _amount);
    |		totalSupply = safeSub(totalSupply, _amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'Ledger':
    |	function burn(address _owner, uint _amount) onlyController {
    |		balanceOf[_owner] = safeSub(balanceOf[_owner], _amount);
  > |		totalSupply = safeSub(totalSupply, _amount);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(390)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |	address public owner;
    |	address newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |	}
    |
  > |	function changeOwner(address _newOwner) onlyOwner {
    |		newOwner = _newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |	address public owner;
    |	address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |	}
    |
  > |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
    |			owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
  > |			owner = newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |	function changeOwner(address _newOwner) onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(39)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Owned {
    |	bool public paused;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |	}
    |
  > |	function changeOwner(address _newOwner) onlyOwner {
    |		newOwner = _newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Owned {
  > |	address public owner;
    |	address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |	}
    |
  > |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
    |			owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Pausable is Owned {
  > |	bool public paused;
    |
    |	function pause() onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |	bool public paused;
    |
  > |	function pause() onlyOwner {
    |		paused = true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |	}
    |
  > |	function unpause() onlyOwner {
    |		paused = false;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
  > |			owner = newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |	function changeOwner(address _newOwner) onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |	function pause() onlyOwner {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |	function unpause() onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |// from Zeppelin
  > |contract SafeMath {
    |	function safeMul(uint a, uint b) internal returns (uint) {
    |		uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(6)

[31mViolation[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is Finalizable, TokenReceivable, SafeMath, EventDefinitions, Pausable {
    |	// Set these appropriately before you deploy
    |	string constant public name = "AirToken";
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(99)

[33mWarning[0m for UnhandledException in contract 'Token':
    |	function claimTokens(address _token, address _to) onlyOwner returns (bool) {
    |		IToken token = IToken(_token);
  > |		return token.transfer(_to, token.balanceOf(this));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(89)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |	function balanceOf(address a) constant returns (uint) {
  > |		return controller.balanceOf(a);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(128)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |	function totalSupply() constant returns (uint) {
  > |		return controller.totalSupply();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(132)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |	function allowance(address _owner, address _spender) constant returns (uint) {
  > |		return controller.allowance(_owner, _spender);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(136)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |	function transfer(address _to, uint _value) onlyPayloadSize(2) notPaused returns (bool success) {
  > |		if (controller.transfer(msg.sender, _to, _value)) {
    |			Transfer(msg.sender, _to, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(140)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |	function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3) notPaused returns (bool success) {
  > |		if (controller.transferFrom(msg.sender, _from, _to, _value)) {
    |			Transfer(_from, _to, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(148)

[33mWarning[0m for UnhandledException in contract 'Token':
    |	function approve(address _spender, uint _value) onlyPayloadSize(2) notPaused returns (bool success) {
    |		// promote safe user behavior
  > |		if (controller.approve(msg.sender, _spender, _value)) {
    |			Approval(msg.sender, _spender, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(157)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |	function increaseApproval (address _spender, uint _addedValue) onlyPayloadSize(2) notPaused returns (bool success) {
  > |		if (controller.increaseApproval(msg.sender, _spender, _addedValue)) {
    |			uint newval = controller.allowance(msg.sender, _spender);
    |			Approval(msg.sender, _spender, newval);
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(165)

[33mWarning[0m for UnhandledException in contract 'Token':
    |	function increaseApproval (address _spender, uint _addedValue) onlyPayloadSize(2) notPaused returns (bool success) {
    |		if (controller.increaseApproval(msg.sender, _spender, _addedValue)) {
  > |			uint newval = controller.allowance(msg.sender, _spender);
    |			Approval(msg.sender, _spender, newval);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(166)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |	function decreaseApproval (address _spender, uint _subtractedValue) onlyPayloadSize(2) notPaused returns (bool success) {
  > |		if (controller.decreaseApproval(msg.sender, _spender, _subtractedValue)) {
    |			uint newval = controller.allowance(msg.sender, _spender);
    |			Approval(msg.sender, _spender, newval);
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(174)

[33mWarning[0m for UnhandledException in contract 'Token':
    |	function decreaseApproval (address _spender, uint _subtractedValue) onlyPayloadSize(2) notPaused returns (bool success) {
    |		if (controller.decreaseApproval(msg.sender, _spender, _subtractedValue)) {
  > |			uint newval = controller.allowance(msg.sender, _spender);
    |			Approval(msg.sender, _spender, newval);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(175)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |	function burn(uint _amount) notPaused {
  > |		controller.burn(msg.sender, _amount);
    |		Transfer(msg.sender, 0x0, _amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |	function claimTokens(address _token, address _to) onlyOwner returns (bool) {
    |		IToken token = IToken(_token);
  > |		return token.transfer(_to, token.balanceOf(this));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |	function balanceOf(address a) constant returns (uint) {
  > |		return controller.balanceOf(a);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |	function totalSupply() constant returns (uint) {
  > |		return controller.totalSupply();
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |	function allowance(address _owner, address _spender) constant returns (uint) {
  > |		return controller.allowance(_owner, _spender);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(136)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |	function transfer(address _to, uint _value) onlyPayloadSize(2) notPaused returns (bool success) {
  > |		if (controller.transfer(msg.sender, _to, _value)) {
    |			Transfer(msg.sender, _to, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |	function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3) notPaused returns (bool success) {
  > |		if (controller.transferFrom(msg.sender, _from, _to, _value)) {
    |			Transfer(_from, _to, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |	function approve(address _spender, uint _value) onlyPayloadSize(2) notPaused returns (bool success) {
    |		// promote safe user behavior
  > |		if (controller.approve(msg.sender, _spender, _value)) {
    |			Approval(msg.sender, _spender, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |	function increaseApproval (address _spender, uint _addedValue) onlyPayloadSize(2) notPaused returns (bool success) {
  > |		if (controller.increaseApproval(msg.sender, _spender, _addedValue)) {
    |			uint newval = controller.allowance(msg.sender, _spender);
    |			Approval(msg.sender, _spender, newval);
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |	function increaseApproval (address _spender, uint _addedValue) onlyPayloadSize(2) notPaused returns (bool success) {
    |		if (controller.increaseApproval(msg.sender, _spender, _addedValue)) {
  > |			uint newval = controller.allowance(msg.sender, _spender);
    |			Approval(msg.sender, _spender, newval);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |	function decreaseApproval (address _spender, uint _subtractedValue) onlyPayloadSize(2) notPaused returns (bool success) {
  > |		if (controller.decreaseApproval(msg.sender, _spender, _subtractedValue)) {
    |			uint newval = controller.allowance(msg.sender, _spender);
    |			Approval(msg.sender, _spender, newval);
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(174)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |	function decreaseApproval (address _spender, uint _subtractedValue) onlyPayloadSize(2) notPaused returns (bool success) {
    |		if (controller.decreaseApproval(msg.sender, _spender, _subtractedValue)) {
  > |			uint newval = controller.allowance(msg.sender, _spender);
    |			Approval(msg.sender, _spender, newval);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(175)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |	function burn(uint _amount) notPaused {
  > |		controller.burn(msg.sender, _amount);
    |		Transfer(msg.sender, 0x0, _amount);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |}
    |
  > |contract Token is Finalizable, TokenReceivable, SafeMath, EventDefinitions, Pausable {
    |	// Set these appropriately before you deploy
    |	string constant public name = "AirToken";
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
  > |			owner = newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |	function changeOwner(address _newOwner) onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |	function pause() onlyOwner {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |	function unpause() onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |	function finalize() onlyOwner {
  > |		finalized = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |}
    |
  > |contract Token is Finalizable, TokenReceivable, SafeMath, EventDefinitions, Pausable {
    |	// Set these appropriately before you deploy
    |	string constant public name = "AirToken";
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |	function setController(address _c) onlyOwner notFinalized {
  > |		controller = Controller(_c);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |	function setBeneficiary(address _beneficiary) onlyOwner {
  > |		atFundDeposit = _beneficiary;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(122)

[33mWarning[0m for LockedEther in contract 'TokenReceivable':
    |// In case someone accidentally sends token to one of these contracts,
    |// add a way to get them back out.
  > |contract TokenReceivable is Owned {
    |	function claimTokens(address _token, address _to) onlyOwner returns (bool) {
    |		IToken token = IToken(_token);
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'TokenReceivable':
    |	}
    |
  > |	function changeOwner(address _newOwner) onlyOwner {
    |		newOwner = _newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'TokenReceivable':
    |// add a way to get them back out.
    |contract TokenReceivable is Owned {
  > |	function claimTokens(address _token, address _to) onlyOwner returns (bool) {
    |		IToken token = IToken(_token);
    |		return token.transfer(_to, token.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'TokenReceivable':
    |
    |contract Owned {
  > |	address public owner;
    |	address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenReceivable':
    |	}
    |
  > |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
    |			owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(42)

[33mWarning[0m for UnhandledException in contract 'TokenReceivable':
    |	function claimTokens(address _token, address _to) onlyOwner returns (bool) {
    |		IToken token = IToken(_token);
  > |		return token.transfer(_to, token.balanceOf(this));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenReceivable':
    |	function claimTokens(address _token, address _to) onlyOwner returns (bool) {
    |		IToken token = IToken(_token);
  > |		return token.transfer(_to, token.balanceOf(this));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenReceivable':
    |	function acceptOwnership() {
    |		if (msg.sender == newOwner) {
  > |			owner = newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenReceivable':
    |
    |	function changeOwner(address _newOwner) onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x7f2e9820c99c8abcd9d5467dd38f1a928d2a7197.sol(39)


