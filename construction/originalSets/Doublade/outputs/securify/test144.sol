Processing contract: /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol:BasicTokenSC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol:PartialSafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicTokenSC':
    |
    |
  > |contract BasicTokenSC {
    |    using PartialSafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicTokenSC':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicTokenSC':
    |
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicTokenSC':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicTokenSC':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicTokenSC':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicTokenSC':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol(104)

[33mWarning[0m for LockedEther in contract 'PartialSafeMath':
    |
    |
  > |library PartialSafeMath {
    |    int256 constant private INT256_MIN = -2**255;
    |
  at /home/jiaming/mavs_srcs/contract@0x098c1a62c5b0bafdb204eba1345e869b5bedac65.sol(4)


