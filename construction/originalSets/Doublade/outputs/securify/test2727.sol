Processing contract: /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol:CMCToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'CMCToken':
    |pragma solidity ^0.4.11;
    |
  > |contract CMCToken {
    |
    |    string public name = "CMCToken";      //  token name
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'CMCToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[0x0] += _value;
    |        Transfer(msg.sender, 0x0, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |pragma solidity ^0.4.11;
    |
  > |contract CMCToken {
    |
    |    string public name = "CMCToken";      //  token name
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        require(allowance[_from][msg.sender] >= _value);
  > |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |        require(allowance[_from][msg.sender] >= _value);
    |        balanceOf[_to] += _value;
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |        balanceOf[_to] += _value;
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |    function approve(address _spender, uint256 _value) isRunning validAddress returns (bool success) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |
    |    function stop() isOwner {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |
    |    function start() isOwner {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'CMCToken':
    |    function burn(uint256 _value) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[0x0] += _value;
    |        Transfer(msg.sender, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0xb260afedf422cd670776edbebe62682bca507456.sol(81)


