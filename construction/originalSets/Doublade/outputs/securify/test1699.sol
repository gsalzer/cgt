Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol:PowerToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol:TokenRecipient
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(69)

[33mWarning[0m for LockedEther in contract 'PowerToken':
    |
    |
  > |contract PowerToken is TokenERC20 {
    |
    |    function PowerToken() TokenERC20(20000000, "Capricorn Coin", "CCC", 18) public {
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(254)

[33mWarning[0m for UnhandledException in contract 'PowerToken':
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerToken':
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |        uint previousBalances = balances[_from].add(balances[_to]);
    |         // SafeMath.sub will throw if there is not enough balance.
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |         // SafeMath.sub will throw if there is not enough balance.
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |        require(_value > 0);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |    function approve(address _spender, uint256 _value) public returns(bool) {
    |        require((_value == 0) || (allowances[msg.sender][_spender] == 0));
  > |        allowances[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |
    |      // SafeMath.sub will throw if there is not enough balance.
  > |      balances[msg.sender] = balances[msg.sender].sub(_amounts[i]);
    |      balances[_addresses[i]] = balances[_addresses[i]].add(_amounts[i]);
    |      Transfer(msg.sender, _addresses[i], _amounts[i]);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |      // SafeMath.sub will throw if there is not enough balance.
    |      balances[msg.sender] = balances[msg.sender].sub(_amounts[i]);
  > |      balances[_addresses[i]] = balances[_addresses[i]].add(_amounts[i]);
    |      Transfer(msg.sender, _addresses[i], _amounts[i]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |    function burn(uint256 _value) public returns(bool) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);            // Subtract from the sender
    |        totalSupply = totalSupply.sub(_value);                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] = balances[msg.sender].sub(_value);            // Subtract from the sender
  > |        totalSupply = totalSupply.sub(_value);                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
  > |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the targeted balance
    |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);             // Subtract from the sender's allowance
    |        totalSupply = totalSupply.sub(_value);                                 // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
    |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the targeted balance
  > |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);             // Subtract from the sender's allowance
    |        totalSupply = totalSupply.sub(_value);                                 // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the targeted balance
    |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);             // Subtract from the sender's allowance
  > |        totalSupply = totalSupply.sub(_value);                                 // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |        require(allowances[msg.sender][_spender].add(_addedValue) > allowances[msg.sender][_spender]);
    |
  > |        allowances[msg.sender][_spender] =allowances[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |        uint oldValue = allowances[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowances[msg.sender][_spender] = 0;
    |        } else {
    |            allowances[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerToken':
    |            allowances[msg.sender][_spender] = 0;
    |        } else {
  > |            allowances[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(244)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(6)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |
    |
  > |contract TokenERC20 is ERC20, Ownable{
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(81)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        if (approve(_spender, _value)) {
    |            TokenRecipient spender = TokenRecipient(_spender);
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balances[_from].add(balances[_to]);
    |         // SafeMath.sub will throw if there is not enough balance.
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |         // SafeMath.sub will throw if there is not enough balance.
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value > 0);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public returns(bool) {
    |        require((_value == 0) || (allowances[msg.sender][_spender] == 0));
  > |        allowances[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |      // SafeMath.sub will throw if there is not enough balance.
  > |      balances[msg.sender] = balances[msg.sender].sub(_amounts[i]);
    |      balances[_addresses[i]] = balances[_addresses[i]].add(_amounts[i]);
    |      Transfer(msg.sender, _addresses[i], _amounts[i]);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |      // SafeMath.sub will throw if there is not enough balance.
    |      balances[msg.sender] = balances[msg.sender].sub(_amounts[i]);
  > |      balances[_addresses[i]] = balances[_addresses[i]].add(_amounts[i]);
    |      Transfer(msg.sender, _addresses[i], _amounts[i]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns(bool) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);            // Subtract from the sender
    |        totalSupply = totalSupply.sub(_value);                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] = balances[msg.sender].sub(_value);            // Subtract from the sender
  > |        totalSupply = totalSupply.sub(_value);                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
  > |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the targeted balance
    |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);             // Subtract from the sender's allowance
    |        totalSupply = totalSupply.sub(_value);                                 // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowances[_from][msg.sender]);    // Check allowance
    |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the targeted balance
  > |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);             // Subtract from the sender's allowance
    |        totalSupply = totalSupply.sub(_value);                                 // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balances[_from] = balances[_from].sub(_value);                         // Subtract from the targeted balance
    |        allowances[_from][msg.sender] = allowances[_from][msg.sender].sub(_value);             // Subtract from the sender's allowance
  > |        totalSupply = totalSupply.sub(_value);                                 // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(allowances[msg.sender][_spender].add(_addedValue) > allowances[msg.sender][_spender]);
    |
  > |        allowances[msg.sender][_spender] =allowances[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint oldValue = allowances[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowances[msg.sender][_spender] = 0;
    |        } else {
    |            allowances[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |            allowances[msg.sender][_spender] = 0;
    |        } else {
  > |            allowances[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowances[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6c2f647d66e7a658c624948898cdd17399b1b99f.sol(244)


