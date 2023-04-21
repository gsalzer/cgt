Processing contract: /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol:LLL
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol:OnlyOwner
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LLL':
    |}
    |
  > |contract LLL is StandardToken, OnlyOwner{
    |	uint256 public constant decimals = 18;
    |    string public constant name = "llltoken";
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'LLL':
    |      require(_to != address(0));
    |      //subtract tokens from the sender on transfer
  > |      balances[_from] = balances[_from].safeSub(_value);
    |      //add tokens to the receiver on reception
    |      balances[_to] = balances[_to].safeAdd(_value);
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'LLL':
    |      balances[_from] = balances[_from].safeSub(_value);
    |      //add tokens to the receiver on reception
  > |      balances[_to] = balances[_to].safeAdd(_value);
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'LLL':
    |      _transfer(_from,_to,_value);
    |      //subtract the amount allowed to the sender 
  > |      allowed[_from][msg.sender] = _allowance.safeSub(_value);
    |      //trigger Transfer event
    |      emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'LLL':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'LLL':
    |        require(minRequiredApprovals <= approvalCounts);
    |		require(_value <= balances[_from]);		
  > |        balances[_from] = balances[_from].safeSub(_value);
    |        balances[burnedTokensReceiver] = balances[burnedTokensReceiver].safeAdd(_value);
    |        emit Transfer(_from,burnedTokensReceiver, _value);
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'LLL':
    |		require(_value <= balances[_from]);		
    |        balances[_from] = balances[_from].safeSub(_value);
  > |        balances[burnedTokensReceiver] = balances[burnedTokensReceiver].safeAdd(_value);
    |        emit Transfer(_from,burnedTokensReceiver, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'LLL':
    |  function replaceController(address new_controller) isController public returns(bool){
    |    require(new_controller != address(0x0));
  > |	controller = new_controller;
    |    emit SetNewController(msg.sender,controller);
    |    return true;   
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'LLL':
    |   */
    |    function setApprovalCounts(uint _value) public isController {
  > |        approvalCounts = _value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'LLL':
    |    function setMinApprovalCounts(uint _value) public isController returns (bool){
    |        require(_value > 0);
  > |        minRequiredApprovals = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(194)

[33mWarning[0m for LockedEther in contract 'OnlyOwner':
    |}
    |
  > |contract OnlyOwner {
    |  address public owner;
    |  address private controller;
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'OnlyOwner':
    |
    |contract OnlyOwner {
  > |  address public owner;
    |  address private controller;
    |  //log the previous and new controller when event  is fired.
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'OnlyOwner':
    |  }
    |  
  > |  function replaceController(address new_controller) isController public returns(bool){
    |    require(new_controller != address(0x0));
    |	controller = new_controller;
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'OnlyOwner':
    |  function replaceController(address new_controller) isController public returns(bool){
    |    require(new_controller != address(0x0));
  > |	controller = new_controller;
    |    emit SetNewController(msg.sender,controller);
    |    return true;   
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(76)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  
    |  function safeMul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(14)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20{
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      require(_to != address(0));
    |      //subtract tokens from the sender on transfer
  > |      balances[_from] = balances[_from].safeSub(_value);
    |      //add tokens to the receiver on reception
    |      balances[_to] = balances[_to].safeAdd(_value);
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      balances[_from] = balances[_from].safeSub(_value);
    |      //add tokens to the receiver on reception
  > |      balances[_to] = balances[_to].safeAdd(_value);
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      _transfer(_from,_to,_value);
    |      //subtract the amount allowed to the sender 
  > |      allowed[_from][msg.sender] = _allowance.safeSub(_value);
    |      //trigger Transfer event
    |      emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x838571a0aed436abb272365beac687f6570e4c56.sol(147)


