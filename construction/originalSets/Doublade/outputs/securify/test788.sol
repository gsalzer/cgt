Processing contract: /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol:LEON
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol:Moderated
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol:Token
[33mWarning[0m for LockedEther in contract 'LEON':
    |// @dev Assign moderation of contract to CrowdSale
    |
  > |contract LEON is Moderated {	
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(126)

[33mWarning[0m for UnhandledException in contract 'LEON':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(55)

[33mWarning[0m for UnhandledException in contract 'LEON':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LEON':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(55)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LEON':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |    
    |    function reassignModerator(address newModerator) public onlyModerator {
  > |        moderator = newModerator;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |    
    |    function restrict() public onlyModerator {
  > |        unrestricted = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |    
    |    function unrestrict() public onlyModerator {
  > |        unrestricted = true;
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |		function transferFrom(address _from, address _to, uint256 _value) public ifUnrestricted onlyPayloadSize(3) returns (bool) {
    |		    require(_value <= allowed[_from][msg.sender]);
  > |		    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		    return _transfer(_from, _to, _value);
    |		}		
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			require(_value <= balances[_from]);
    |			// Update balance of sending address
  > |			balances[_from] = balances[_from].sub(_value);	
    |			// Update balance of receiving address
    |			balances[_to] = balances[_to].add(_value);		
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			balances[_from] = balances[_from].sub(_value);	
    |			// Update balance of receiving address
  > |			balances[_to] = balances[_to].add(_value);		
    |			// An event to make the transfer easy to find on the blockchain
    |			Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			// Can only approve when value has not already been set or is zero
    |			require(allowed[msg.sender][_spender] == 0 || _value == 0);
  > |			allowed[msg.sender][_spender] = _value;
    |			Approval(msg.sender, _spender, _value);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |		function increaseApproval(address _spender, uint256 _addedValue) public ifUnrestricted onlyPayloadSize(2) returns (bool) {
    |			require(_addedValue > 0);
  > |			allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |			Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			require(_subtractedValue > 0);
    |			if (_subtractedValue > oldValue) {
  > |				allowed[msg.sender][_spender] = 0;
    |			} else {
    |				allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |				allowed[msg.sender][_spender] = 0;
    |			} else {
  > |				allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |			}
    |			Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |		    require(isContract(moderator));
    |			require(totalSupply_.add(_amount) <= maximumTokenIssue);
  > |			totalSupply_ = totalSupply_.add(_amount);
    |			balances[_to] = balances[_to].add(_amount);
    |			Transfer(address(0x0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'LEON':
    |			require(totalSupply_.add(_amount) <= maximumTokenIssue);
    |			totalSupply_ = totalSupply_.add(_amount);
  > |			balances[_to] = balances[_to].add(_amount);
    |			Transfer(address(0x0), _to, _amount);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(272)

[33mWarning[0m for LockedEther in contract 'Moderated':
    | * @dev allows for the extraction of ether or other ERC20 tokens mistakenly sent to this address
    | */
  > |contract Moderated {
    |    
    |    address public moderator;
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'Moderated':
    |    }
    |    
  > |    function reassignModerator(address newModerator) public onlyModerator {
    |        moderator = newModerator;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |contract Moderated {
    |    
  > |    address public moderator;
    |    
    |    bool public unrestricted;
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    address public moderator;
    |    
  > |    bool public unrestricted;
    |    
    |    modifier onlyModerator {
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    }
    |    
  > |    function restrict() public onlyModerator {
    |        unrestricted = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    }
    |    
  > |    function unrestrict() public onlyModerator {
    |        unrestricted = true;
    |    }  
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    /// This method can be used to extract tokens mistakenly sent to this contract.
    |    /// @param _token The address of the token contract that you want to recover
  > |    function extract(address _token) public returns (bool) {
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Moderated':
    |    }  
    |    
  > |    function getModerator() public view returns (address) {
    |        return moderator;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(65)

[33mWarning[0m for UnhandledException in contract 'Moderated':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(55)

[33mWarning[0m for UnhandledException in contract 'Moderated':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Moderated':
    |        require(_token != address(0x0));
    |        Token token = Token(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        return token.transfer(moderator, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(55)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Moderated':
    |        Token token = Token(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        return token.transfer(moderator, balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Moderated':
    |    
    |    function reassignModerator(address newModerator) public onlyModerator {
  > |        moderator = newModerator;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Moderated':
    |    
    |    function restrict() public onlyModerator {
  > |        unrestricted = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Moderated':
    |    
    |    function unrestrict() public onlyModerator {
  > |        unrestricted = true;
    |    }  
    |    
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(47)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x320015ee3eb9cea123f910a78bbbf9e65f2bdfd5.sol(95)


