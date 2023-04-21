Processing contract: /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol:ADZbuzzCommunityToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ADZbuzzCommunityToken':
    |    // token transfers
    |    // ----------------------------------------------------------------------------
  > |    contract ADZbuzzCommunityToken is ERC20Interface, Owned, SafeMath {
    |        string public symbol;
    |        string public  name;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        }
    |    
  > |        function transferOwnership(address _newOwner) public onlyOwner {
    |            newOwner = _newOwner;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        // Get the token balance for account tokenOwner
    |        // ------------------------------------------------------------------------
  > |        function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |            return balances[tokenOwner];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        // - 0 value transfers are allowed
    |        // ------------------------------------------------------------------------
  > |        function transfer(address to, uint tokens) public returns (bool success) {
    |            balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |            balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        // as this should be implemented in user interfaces 
    |        // ------------------------------------------------------------------------
  > |        function approve(address spender, uint tokens) public returns (bool success) {
    |            allowed[msg.sender][spender] = tokens;
    |            emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(163)

[31mViolation[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        // - 0 value transfers are allowed
    |        // ------------------------------------------------------------------------
  > |        function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |            balances[from] = safeSub(balances[from], tokens);
    |            allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(179)

[31mViolation[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        // transferred to the spender's account
    |        // ------------------------------------------------------------------------
  > |        function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |            return allowed[tokenOwner][spender];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        // receiveApproval(...) is then executed
    |        // ------------------------------------------------------------------------
  > |        function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |            allowed[msg.sender][spender] = tokens;
    |            emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(202)

[31mViolation[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        // Owner can transfer out any accidentally sent ERC20 tokens
    |        // ------------------------------------------------------------------------
  > |        function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |            return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |    // ----------------------------------------------------------------------------
    |    contract SafeMath {
  > |        function safeAdd(uint a, uint b) public pure returns (uint c) {
    |            c = a + b;
    |            require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |            require(c >= a);
    |        }
  > |        function safeSub(uint a, uint b) public pure returns (uint c) {
    |            require(b <= a);
    |            c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |            c = a - b;
    |        }
  > |        function safeMul(uint a, uint b) public pure returns (uint c) {
    |            c = a * b;
    |            require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |            require(a == 0 || c / a == b);
    |        }
  > |        function safeDiv(uint a, uint b) public pure returns (uint c) {
    |            require(b > 0);
    |            c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |    // ----------------------------------------------------------------------------
    |    contract Owned {
  > |        address public owner;
    |        address public newOwner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |    contract Owned {
    |        address public owner;
  > |        address public newOwner;
    |    
    |        event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |            newOwner = _newOwner;
    |        }
  > |        function acceptOwnership() public {
    |            require(msg.sender == newOwner);
    |            emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |    // ----------------------------------------------------------------------------
    |    contract ADZbuzzCommunityToken is ERC20Interface, Owned, SafeMath {
  > |        string public symbol;
    |        string public  name;
    |        uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |    contract ADZbuzzCommunityToken is ERC20Interface, Owned, SafeMath {
    |        string public symbol;
  > |        string public  name;
    |        uint8 public decimals;
    |        uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        string public symbol;
    |        string public  name;
  > |        uint8 public decimals;
    |        uint public _totalSupply;
    |    
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        string public  name;
    |        uint8 public decimals;
  > |        uint public _totalSupply;
    |    
    |        mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'ADZbuzzCommunityToken':
    |        // Total supply
    |        // ------------------------------------------------------------------------
  > |        function totalSupply() public constant returns (uint) {
    |            return _totalSupply  - balances[address(0)];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(129)

[33mWarning[0m for UnhandledException in contract 'ADZbuzzCommunityToken':
    |            allowed[msg.sender][spender] = tokens;
    |            emit Approval(msg.sender, spender, tokens);
  > |            ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(205)

[33mWarning[0m for UnhandledException in contract 'ADZbuzzCommunityToken':
    |        // ------------------------------------------------------------------------
    |        function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |            return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ADZbuzzCommunityToken':
    |            allowed[msg.sender][spender] = tokens;
    |            emit Approval(msg.sender, spender, tokens);
  > |            ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ADZbuzzCommunityToken':
    |        // ------------------------------------------------------------------------
    |        function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |            return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'ADZbuzzCommunityToken':
    |        // ------------------------------------------------------------------------
    |        function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |            balances[from] = safeSub(balances[from], tokens);
    |            allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |            balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ADZbuzzCommunityToken':
    |        // ------------------------------------------------------------------------
    |        function transfer(address to, uint tokens) public returns (bool success) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |            balances[to] = safeAdd(balances[to], tokens);
    |            emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'ADZbuzzCommunityToken':
    |        // ------------------------------------------------------------------------
    |        function approve(address spender, uint tokens) public returns (bool success) {
  > |            allowed[msg.sender][spender] = tokens;
    |            emit Approval(msg.sender, spender, tokens);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ADZbuzzCommunityToken':
    |        function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |            balances[from] = safeSub(balances[from], tokens);
  > |            allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |            balances[to] = safeAdd(balances[to], tokens);
    |            emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'ADZbuzzCommunityToken':
    |        // ------------------------------------------------------------------------
    |        function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |            allowed[msg.sender][spender] = tokens;
    |            emit Approval(msg.sender, spender, tokens);
    |            ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'ADZbuzzCommunityToken':
    |    
    |        function transferOwnership(address _newOwner) public onlyOwner {
  > |            newOwner = _newOwner;
    |        }
    |        function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'ADZbuzzCommunityToken':
    |            require(msg.sender == newOwner);
    |            emit OwnershipTransferred(owner, newOwner);
  > |            owner = newOwner;
    |            newOwner = address(0);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'ADZbuzzCommunityToken':
    |            emit OwnershipTransferred(owner, newOwner);
    |            owner = newOwner;
  > |            newOwner = address(0);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(94)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    // Owned contract
    |    // ----------------------------------------------------------------------------
  > |    contract Owned {
    |        address public owner;
    |        address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |        }
    |    
  > |        function transferOwnership(address _newOwner) public onlyOwner {
    |            newOwner = _newOwner;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    // ----------------------------------------------------------------------------
    |    contract Owned {
  > |        address public owner;
    |        address public newOwner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    contract Owned {
    |        address public owner;
  > |        address public newOwner;
    |    
    |        event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |            newOwner = _newOwner;
    |        }
  > |        function acceptOwnership() public {
    |            require(msg.sender == newOwner);
    |            emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    
    |        function transferOwnership(address _newOwner) public onlyOwner {
  > |            newOwner = _newOwner;
    |        }
    |        function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |            require(msg.sender == newOwner);
    |            emit OwnershipTransferred(owner, newOwner);
  > |            owner = newOwner;
    |            newOwner = address(0);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |            emit OwnershipTransferred(owner, newOwner);
    |            owner = newOwner;
  > |            newOwner = address(0);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(94)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    // Safe maths
    |    // ----------------------------------------------------------------------------
  > |    contract SafeMath {
    |        function safeAdd(uint a, uint b) public pure returns (uint c) {
    |            c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |    // ----------------------------------------------------------------------------
    |    contract SafeMath {
  > |        function safeAdd(uint a, uint b) public pure returns (uint c) {
    |            c = a + b;
    |            require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |            require(c >= a);
    |        }
  > |        function safeSub(uint a, uint b) public pure returns (uint c) {
    |            require(b <= a);
    |            c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |            c = a - b;
    |        }
  > |        function safeMul(uint a, uint b) public pure returns (uint c) {
    |            c = a * b;
    |            require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |            require(a == 0 || c / a == b);
    |        }
  > |        function safeDiv(uint a, uint b) public pure returns (uint c) {
    |            require(b > 0);
    |            c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x5cdb8070634b7ef1cb7c56f766579de9eb0a3cea.sol(35)


