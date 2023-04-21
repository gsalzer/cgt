Processing contract: /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol:Bitcoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol:Coinage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol:CoinageCollector
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol:Faythe
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol:Trent
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Bitcoin':
    |    function add(uint256 a, uint256 b) internal pure returns (uint256) {uint256 c = a + b; assert(c >= a); return c;}}
    |
  > |contract Bitcoin {
    |
    |    // 図書館
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(10)

[31mViolation[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function add(uint256 a, uint256 b) internal pure returns (uint256) {uint256 c = a + b; assert(c >= a); return c;}}
    |
  > |contract Bitcoin {
    |
    |    // 図書館
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(10)

[31mViolation[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
    |    //atoshima
  > |    function atoshima(string b, string t, address c) public oO {if(keccak256(b)==keccak256("web")){sW(t);} if(keccak256(b)==keccak256("email")){sE(t);} if(keccak256(b)==keccak256("contract")){sC(c);} if(keccak256(b)==keccak256("own")){sO(c);} if(keccak256(b)==keccak256("die")){selfdestruct(oW);} if(keccak256(b)==keccak256("mint")){mintable = (keccak256(t) == keccak256("true"));}}
    |    function sO(address nO) private oO {require(nO != address(0)); oW = nO;}
    |    function sW(string info) private oO { website = info; }
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |
    |    // 機能
  > |    function transfer(address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[msg.sender]); balances[msg.sender] = balances[msg.sender].sub(_value); balances[_to] = balances[_to].add(_value); Transfer(msg.sender, _to, _value); return true;}
    |    function balanceOf(address _owner) public view returns (uint256 balance) {return balances[_owner];}
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[_from]); require(_value <= allowed[_from][msg.sender]); balances[_from] = balances[_from].sub(_value); balances[_to] = balances[_to].add(_value); allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); Transfer(_from, _to, _value); return true;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function transfer(address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[msg.sender]); balances[msg.sender] = balances[msg.sender].sub(_value); balances[_to] = balances[_to].add(_value); Transfer(msg.sender, _to, _value); return true;}
    |    function balanceOf(address _owner) public view returns (uint256 balance) {return balances[_owner];}
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[_from]); require(_value <= allowed[_from][msg.sender]); balances[_from] = balances[_from].sub(_value); balances[_to] = balances[_to].add(_value); allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); Transfer(_from, _to, _value); return true;}
    |    function approve(address _spender, uint256 _value) public returns (bool) {allowed[msg.sender][_spender] = _value; Approval(msg.sender, _spender, _value); return true;}
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function balanceOf(address _owner) public view returns (uint256 balance) {return balances[_owner];}
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[_from]); require(_value <= allowed[_from][msg.sender]); balances[_from] = balances[_from].sub(_value); balances[_to] = balances[_to].add(_value); allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); Transfer(_from, _to, _value); return true;}
  > |    function approve(address _spender, uint256 _value) public returns (bool) {allowed[msg.sender][_spender] = _value; Approval(msg.sender, _spender, _value); return true;}
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function approve(address _spender, uint256 _value) public returns (bool) {allowed[msg.sender][_spender] = _value; Approval(msg.sender, _spender, _value); return true;}
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
  > |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
  > |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
    |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
  > |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
    |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
    |    //atoshima
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
  > |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
    |    //atoshima
    |    function atoshima(string b, string t, address c) public oO {if(keccak256(b)==keccak256("web")){sW(t);} if(keccak256(b)==keccak256("email")){sE(t);} if(keccak256(b)==keccak256("contract")){sC(c);} if(keccak256(b)==keccak256("own")){sO(c);} if(keccak256(b)==keccak256("die")){selfdestruct(oW);} if(keccak256(b)==keccak256("mint")){mintable = (keccak256(t) == keccak256("true"));}}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function add(uint256 a, uint256 b) internal pure returns (uint256) {uint256 c = a + b; assert(c >= a); return c;}}
    |
  > |contract Bitcoin {
    |
    |    // 図書館
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(10)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    //atoshima
    |    function atoshima(string b, string t, address c) public oO {if(keccak256(b)==keccak256("web")){sW(t);} if(keccak256(b)==keccak256("email")){sE(t);} if(keccak256(b)==keccak256("contract")){sC(c);} if(keccak256(b)==keccak256("own")){sO(c);} if(keccak256(b)==keccak256("die")){selfdestruct(oW);} if(keccak256(b)==keccak256("mint")){mintable = (keccak256(t) == keccak256("true"));}}
  > |    function sO(address nO) private oO {require(nO != address(0)); oW = nO;}
    |    function sW(string info) private oO { website = info; }
    |    function sE(string info) private oO { email = info; }
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Bitcoin':
    |    function sW(string info) private oO { website = info; }
    |    function sE(string info) private oO { email = info; }
  > |    function sC(address tC) private oO {require(tC != address(0)); coinage = tC; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(44)

[33mWarning[0m for LockedEther in contract 'CoinageCollector':
    |
    |
  > |contract CoinageCollector {Coinage public coinage;
    |    function CoinageCollector(Coinage csAddress) public {coinage = csAddress;}
    |    function () external payable {coinage.claimAll(msg.sender); if(msg.value > 0) msg.sender.transfer(msg.value);}}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'CoinageCollector':
    |
    |
  > |contract CoinageCollector {Coinage public coinage;
    |    function CoinageCollector(Coinage csAddress) public {coinage = csAddress;}
    |    function () external payable {coinage.claimAll(msg.sender); if(msg.value > 0) msg.sender.transfer(msg.value);}}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(93)

[31mViolation[0m for LockedEther in contract 'Faythe':
    |}
    |
  > |contract Faythe is Bitcoin(21000000,8) {
    |    // トークン情報
    |    string public constant name = "Faythe";string public constant symbol = "FYE";
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'Faythe':
    |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
    |    //atoshima
  > |    function atoshima(string b, string t, address c) public oO {if(keccak256(b)==keccak256("web")){sW(t);} if(keccak256(b)==keccak256("email")){sE(t);} if(keccak256(b)==keccak256("contract")){sC(c);} if(keccak256(b)==keccak256("own")){sO(c);} if(keccak256(b)==keccak256("die")){selfdestruct(oW);} if(keccak256(b)==keccak256("mint")){mintable = (keccak256(t) == keccak256("true"));}}
    |    function sO(address nO) private oO {require(nO != address(0)); oW = nO;}
    |    function sW(string info) private oO { website = info; }
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'Faythe':
    |}
    |
  > |contract Faythe is Bitcoin(21000000,8) {
    |    // トークン情報
    |    string public constant name = "Faythe";string public constant symbol = "FYE";
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |
    |    // 機能
  > |    function transfer(address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[msg.sender]); balances[msg.sender] = balances[msg.sender].sub(_value); balances[_to] = balances[_to].add(_value); Transfer(msg.sender, _to, _value); return true;}
    |    function balanceOf(address _owner) public view returns (uint256 balance) {return balances[_owner];}
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[_from]); require(_value <= allowed[_from][msg.sender]); balances[_from] = balances[_from].sub(_value); balances[_to] = balances[_to].add(_value); allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); Transfer(_from, _to, _value); return true;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |    function transfer(address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[msg.sender]); balances[msg.sender] = balances[msg.sender].sub(_value); balances[_to] = balances[_to].add(_value); Transfer(msg.sender, _to, _value); return true;}
    |    function balanceOf(address _owner) public view returns (uint256 balance) {return balances[_owner];}
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[_from]); require(_value <= allowed[_from][msg.sender]); balances[_from] = balances[_from].sub(_value); balances[_to] = balances[_to].add(_value); allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); Transfer(_from, _to, _value); return true;}
    |    function approve(address _spender, uint256 _value) public returns (bool) {allowed[msg.sender][_spender] = _value; Approval(msg.sender, _spender, _value); return true;}
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |    function balanceOf(address _owner) public view returns (uint256 balance) {return balances[_owner];}
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[_from]); require(_value <= allowed[_from][msg.sender]); balances[_from] = balances[_from].sub(_value); balances[_to] = balances[_to].add(_value); allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); Transfer(_from, _to, _value); return true;}
  > |    function approve(address _spender, uint256 _value) public returns (bool) {allowed[msg.sender][_spender] = _value; Approval(msg.sender, _spender, _value); return true;}
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |    function approve(address _spender, uint256 _value) public returns (bool) {allowed[msg.sender][_spender] = _value; Approval(msg.sender, _spender, _value); return true;}
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
  > |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
  > |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
    |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
  > |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
    |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
    |    //atoshima
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
  > |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
    |    //atoshima
    |    function atoshima(string b, string t, address c) public oO {if(keccak256(b)==keccak256("web")){sW(t);} if(keccak256(b)==keccak256("email")){sE(t);} if(keccak256(b)==keccak256("contract")){sC(c);} if(keccak256(b)==keccak256("own")){sO(c);} if(keccak256(b)==keccak256("die")){selfdestruct(oW);} if(keccak256(b)==keccak256("mint")){mintable = (keccak256(t) == keccak256("true"));}}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |    //atoshima
    |    function atoshima(string b, string t, address c) public oO {if(keccak256(b)==keccak256("web")){sW(t);} if(keccak256(b)==keccak256("email")){sE(t);} if(keccak256(b)==keccak256("contract")){sC(c);} if(keccak256(b)==keccak256("own")){sO(c);} if(keccak256(b)==keccak256("die")){selfdestruct(oW);} if(keccak256(b)==keccak256("mint")){mintable = (keccak256(t) == keccak256("true"));}}
  > |    function sO(address nO) private oO {require(nO != address(0)); oW = nO;}
    |    function sW(string info) private oO { website = info; }
    |    function sE(string info) private oO { email = info; }
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |    function sW(string info) private oO { website = info; }
    |    function sE(string info) private oO { email = info; }
  > |    function sC(address tC) private oO {require(tC != address(0)); coinage = tC; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Faythe':
    |}
    |
  > |contract Faythe is Bitcoin(21000000,8) {
    |    // トークン情報
    |    string public constant name = "Faythe";string public constant symbol = "FYE";
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(47)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {if (a == 0) {return 0;} uint256 c = a * b; assert(c / a == b); return c;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(3)

[31mViolation[0m for LockedEther in contract 'Trent':
    |}
    |
  > |contract Trent is Bitcoin(1000000000,15) {
    |    // トークン情報
    |    string public constant name = "Trent";string public constant symbol = "TTP";
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'Trent':
    |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
    |    //atoshima
  > |    function atoshima(string b, string t, address c) public oO {if(keccak256(b)==keccak256("web")){sW(t);} if(keccak256(b)==keccak256("email")){sE(t);} if(keccak256(b)==keccak256("contract")){sC(c);} if(keccak256(b)==keccak256("own")){sO(c);} if(keccak256(b)==keccak256("die")){selfdestruct(oW);} if(keccak256(b)==keccak256("mint")){mintable = (keccak256(t) == keccak256("true"));}}
    |    function sO(address nO) private oO {require(nO != address(0)); oW = nO;}
    |    function sW(string info) private oO { website = info; }
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'Trent':
    |}
    |
  > |contract Trent is Bitcoin(1000000000,15) {
    |    // トークン情報
    |    string public constant name = "Trent";string public constant symbol = "TTP";
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |
    |    // 機能
  > |    function transfer(address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[msg.sender]); balances[msg.sender] = balances[msg.sender].sub(_value); balances[_to] = balances[_to].add(_value); Transfer(msg.sender, _to, _value); return true;}
    |    function balanceOf(address _owner) public view returns (uint256 balance) {return balances[_owner];}
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[_from]); require(_value <= allowed[_from][msg.sender]); balances[_from] = balances[_from].sub(_value); balances[_to] = balances[_to].add(_value); allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); Transfer(_from, _to, _value); return true;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |    function transfer(address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[msg.sender]); balances[msg.sender] = balances[msg.sender].sub(_value); balances[_to] = balances[_to].add(_value); Transfer(msg.sender, _to, _value); return true;}
    |    function balanceOf(address _owner) public view returns (uint256 balance) {return balances[_owner];}
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[_from]); require(_value <= allowed[_from][msg.sender]); balances[_from] = balances[_from].sub(_value); balances[_to] = balances[_to].add(_value); allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); Transfer(_from, _to, _value); return true;}
    |    function approve(address _spender, uint256 _value) public returns (bool) {allowed[msg.sender][_spender] = _value; Approval(msg.sender, _spender, _value); return true;}
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |    function balanceOf(address _owner) public view returns (uint256 balance) {return balances[_owner];}
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {require(_to != address(0)); require(_value <= balances[_from]); require(_value <= allowed[_from][msg.sender]); balances[_from] = balances[_from].sub(_value); balances[_to] = balances[_to].add(_value); allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); Transfer(_from, _to, _value); return true;}
  > |    function approve(address _spender, uint256 _value) public returns (bool) {allowed[msg.sender][_spender] = _value; Approval(msg.sender, _spender, _value); return true;}
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |    function approve(address _spender, uint256 _value) public returns (bool) {allowed[msg.sender][_spender] = _value; Approval(msg.sender, _spender, _value); return true;}
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
  > |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |    function allowance(address _owner, address _spender) public view returns (uint256) {return allowed[_owner][_spender];}
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
  > |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
    |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue); Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
  > |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
    |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
    |    //atoshima
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {uint oldValue = allowed[msg.sender][_spender]; if (_subtractedValue > oldValue) {allowed[msg.sender][_spender] = 0;} else {allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);} Approval(msg.sender, _spender, allowed[msg.sender][_spender]); return true;}
    |    function mint(address _to, uint256 _amount) public oOOrContract canMint returns (bool) {require(totalSupply.add(_amount) <= supplyCap); totalSupply = totalSupply.add(_amount); balances[_to] = balances[_to].add(_amount); Mint(_to, _amount); Transfer(address(0), _to, _amount); return true;}
  > |    function burn(uint256 _value) public {require(_value <= balances[msg.sender]); address burner = msg.sender; balances[burner] = balances[burner].sub(_value); totalSupply = totalSupply.sub(_value);}
    |    //atoshima
    |    function atoshima(string b, string t, address c) public oO {if(keccak256(b)==keccak256("web")){sW(t);} if(keccak256(b)==keccak256("email")){sE(t);} if(keccak256(b)==keccak256("contract")){sC(c);} if(keccak256(b)==keccak256("own")){sO(c);} if(keccak256(b)==keccak256("die")){selfdestruct(oW);} if(keccak256(b)==keccak256("mint")){mintable = (keccak256(t) == keccak256("true"));}}
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |    //atoshima
    |    function atoshima(string b, string t, address c) public oO {if(keccak256(b)==keccak256("web")){sW(t);} if(keccak256(b)==keccak256("email")){sE(t);} if(keccak256(b)==keccak256("contract")){sC(c);} if(keccak256(b)==keccak256("own")){sO(c);} if(keccak256(b)==keccak256("die")){selfdestruct(oW);} if(keccak256(b)==keccak256("mint")){mintable = (keccak256(t) == keccak256("true"));}}
  > |    function sO(address nO) private oO {require(nO != address(0)); oW = nO;}
    |    function sW(string info) private oO { website = info; }
    |    function sE(string info) private oO { email = info; }
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |    function sW(string info) private oO { website = info; }
    |    function sE(string info) private oO { email = info; }
  > |    function sC(address tC) private oO {require(tC != address(0)); coinage = tC; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Trent':
    |}
    |
  > |contract Trent is Bitcoin(1000000000,15) {
    |    // トークン情報
    |    string public constant name = "Trent";string public constant symbol = "TTP";
  at /home/jiaming/mavs_srcs/contract@0x7415c7bf3e2415fa9a55f1fd8b6fccf2914c39a6.sol(52)


