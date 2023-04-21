Processing contract: /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol:BazistaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BazistaToken':
    |}
    |
  > |contract BazistaToken is ERC20, owned {
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |
    |	function transferOwnership(address newOwner) public onlyOwner {
  > |		owner = newOwner;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |
    |	function setWallets(address _advisorsWallet, address _teamWallet, address _marketingWallet, address _bountyWallet) public onlyOwner {
  > |		advisorsWallet = _advisorsWallet;
    |		_transferFrom(this, advisorsWallet, advisorsSupply);
    |
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |		_transferFrom(this, advisorsWallet, advisorsSupply);
    |
  > |		teamWallet = _teamWallet;
    |		_transferFrom(this, teamWallet, teamSupply);
    |
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |		_transferFrom(this, teamWallet, teamSupply);
    |
  > |		marketingWallet = _marketingWallet;
    |		_transferFrom(this, marketingWallet, marketingSupply);
    |
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |		_transferFrom(this, marketingWallet, marketingSupply);
    |
  > |		bountyWallet = _bountyWallet;
    |		_transferFrom(this, bountyWallet, bountySupply);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |
    |	function setICO(address _icoWallet) public onlyOwner {
  > |		icoWallet = _icoWallet;
    |		_transferFrom(this, icoWallet, icoSupply);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |	}
    |	function transferFrom(address _from, address _to, uint256 _value) public onlyPayloadSize(3 * 32) returns (bool) {
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		_transferFrom(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |	function _transferFrom(address _from, address _to, uint256 _value) internal {
    |		require(_value > 0);
  > |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |		require(_value > 0);
    |		balances[_from] = balances[_from].sub(_value);
  > |		balances[_to] = balances[_to].add(_value);
    |		Transfer(_from, _to, _value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'BazistaToken':
    |	function approve(address _spender, uint256 _value) public returns (bool) {
    |		require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(150)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |		uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(22)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |	}
    |
  > |	function transferOwnership(address newOwner) public onlyOwner {
    |		owner = newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |	address public owner;
    |
    |	function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |	function transferOwnership(address newOwner) public onlyOwner {
  > |		owner = newOwner;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x37bda986671aa761dc4a1c532b18117ebf8879ee.sol(61)


