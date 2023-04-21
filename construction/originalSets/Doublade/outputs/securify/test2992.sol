Processing contract: /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol:WhiteXToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(36)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(3)

[33mWarning[0m for LockedEther in contract 'WhiteXToken':
    |}
    |
  > |contract WhiteXToken is ERC20Interface, Owned, SafeMath {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(48)

[33mWarning[0m for UnhandledException in contract 'WhiteXToken':
    |    function approveAndCall(address _spender, uint _tokens, bytes _data) external returns (bool _success) {
    |        require(approve(_spender, _tokens));
  > |        tokenRecipient(_spender).recieveApproval(msg.sender, _tokens, this, _data);
    |        _success = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(150)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhiteXToken':
    |    function approveAndCall(address _spender, uint _tokens, bytes _data) external returns (bool _success) {
    |        require(approve(_spender, _tokens));
  > |        tokenRecipient(_spender).recieveApproval(msg.sender, _tokens, this, _data);
    |        _success = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |        require(_newOwner != address(0));
    |        emit Transfer(owner, _newOwner, balances[owner]);
  > |        balances[_newOwner] = safeAdd(balances[_newOwner], balances[owner]);
    |        balances[owner] = 0;
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |        emit Transfer(owner, _newOwner, balances[owner]);
    |        balances[_newOwner] = safeAdd(balances[_newOwner], balances[owner]);
  > |        balances[owner] = 0;
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |        balances[_newOwner] = safeAdd(balances[_newOwner], balances[owner]);
    |        balances[owner] = 0;
  > |        owner = _newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |    // reissuing token
    |    function mintToken(uint _mintedAmount) external onlyOwner {
  > |        balances[owner] = safeAdd(balances[owner], _mintedAmount);
    |        totalSupply = safeAdd(totalSupply, _mintedAmount);
    |        emit Transfer(address(0), owner, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |    function mintToken(uint _mintedAmount) external onlyOwner {
    |        balances[owner] = safeAdd(balances[owner], _mintedAmount);
  > |        totalSupply = safeAdd(totalSupply, _mintedAmount);
    |        emit Transfer(address(0), owner, _mintedAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |        require(_tokens > 0);
    |        require(balances[msg.sender] >= _tokens);
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _tokens);
    |        balances[_to] = safeAdd(balances[_to], _tokens);
    |        emit Transfer(msg.sender, _to, _tokens);
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |        require(balances[msg.sender] >= _tokens);
    |        balances[msg.sender] = safeSub(balances[msg.sender], _tokens);
  > |        balances[_to] = safeAdd(balances[_to], _tokens);
    |        emit Transfer(msg.sender, _to, _tokens);
    |        _success = true;
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |
    |    function approve(address _spender, uint _tokens) public returns (bool _success) {
  > |        allowed[msg.sender][_spender] = _tokens;
    |        emit Approval(msg.sender, _spender, _tokens);
    |        _success = true;
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |        require(allowed[_from][msg.sender] >= _tokens);
    |        require(balances[msg.sender] >= _tokens);
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _tokens);
    |        balances[_from] = safeSub(balances[_from], _tokens);
    |        balances[_to] = safeAdd(balances[_to], _tokens);
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _tokens);
    |        balances[_from] = safeSub(balances[_from], _tokens);
  > |        balances[_to] = safeAdd(balances[_to], _tokens);
    |        emit Transfer(_from, _to, _tokens);
    |        _success = true;
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'WhiteXToken':
    |    // freeze account
    |    function freezeAccount(address _target, bool _freeze) external onlyOwner {
  > |        frozenAccount[_target] = _freeze;
    |        emit FrozenFunds(_target, _freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc40d3367c4f8be6296b5f91feb21b4def3b9d7a4.sol(92)


