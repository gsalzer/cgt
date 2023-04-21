Processing contract: /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol:ForeignTokenProvider
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol:XataToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ForeignTokenProvider':
    |}
    |
  > |contract ForeignTokenProvider is Ownable {
    |    function withdrawForeignTokens(address _tokenContract) public onlyOwner returns (bool) {
    |        ForeignToken foreignToken = ForeignToken(_tokenContract);
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'ForeignTokenProvider':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'ForeignTokenProvider':
    |
    |contract ForeignTokenProvider is Ownable {
  > |    function withdrawForeignTokens(address _tokenContract) public onlyOwner returns (bool) {
    |        ForeignToken foreignToken = ForeignToken(_tokenContract);
    |        uint256 amount = foreignToken.balanceOf(address(this));
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(23)

[33mWarning[0m for UnhandledException in contract 'ForeignTokenProvider':
    |    function withdrawForeignTokens(address _tokenContract) public onlyOwner returns (bool) {
    |        ForeignToken foreignToken = ForeignToken(_tokenContract);
  > |        uint256 amount = foreignToken.balanceOf(address(this));
    |
    |        return foreignToken.transfer(owner, amount);
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(25)

[33mWarning[0m for UnhandledException in contract 'ForeignTokenProvider':
    |        uint256 amount = foreignToken.balanceOf(address(this));
    |
  > |        return foreignToken.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(27)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ForeignTokenProvider':
    |    function withdrawForeignTokens(address _tokenContract) public onlyOwner returns (bool) {
    |        ForeignToken foreignToken = ForeignToken(_tokenContract);
  > |        uint256 amount = foreignToken.balanceOf(address(this));
    |
    |        return foreignToken.transfer(owner, amount);
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(25)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ForeignTokenProvider':
    |        uint256 amount = foreignToken.balanceOf(address(this));
    |
  > |        return foreignToken.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(27)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(10)

[31mViolation[0m for DAOConstantGas in contract 'XataToken':
    |        require(msg.value > 0);
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(145)

[33mWarning[0m for LockedEther in contract 'XataToken':
    |}
    |
  > |contract XataToken is ForeignTokenProvider {
    |    bool public purchasingAllowed = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(31)

[31mViolation[0m for TODReceiver in contract 'XataToken':
    |        require(msg.value > 0);
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(145)

[33mWarning[0m for UnhandledException in contract 'XataToken':
    |    function withdrawForeignTokens(address _tokenContract) public onlyOwner returns (bool) {
    |        ForeignToken foreignToken = ForeignToken(_tokenContract);
  > |        uint256 amount = foreignToken.balanceOf(address(this));
    |
    |        return foreignToken.transfer(owner, amount);
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(25)

[33mWarning[0m for UnhandledException in contract 'XataToken':
    |        uint256 amount = foreignToken.balanceOf(address(this));
    |
  > |        return foreignToken.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(27)

[33mWarning[0m for UnhandledException in contract 'XataToken':
    |        require(msg.value > 0);
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XataToken':
    |    function withdrawForeignTokens(address _tokenContract) public onlyOwner returns (bool) {
    |        ForeignToken foreignToken = ForeignToken(_tokenContract);
  > |        uint256 amount = foreignToken.balanceOf(address(this));
    |
    |        return foreignToken.transfer(owner, amount);
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(25)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XataToken':
    |        uint256 amount = foreignToken.balanceOf(address(this));
    |
  > |        return foreignToken.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'XataToken':
    |
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |
    |        uint256 tokensIssued = (msg.value * 100);
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'XataToken':
    |        if (msg.value >= 10 finney) {
    |            tokensIssued += totalContribution;
  > |            totalBonusTokensIssued += totalContribution;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'XataToken':
    |        }
    |
  > |        totalSupply += tokensIssued;
    |        balances[msg.sender] += tokensIssued;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'XataToken':
    |        }
    |
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'XataToken':
    |            balances[_from] -= _value;
    |
  > |            allowed[_from][msg.sender] -= _value;
    |
    |            emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'XataToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'XataToken':
    |
    |        totalSupply += tokensIssued;
  > |        balances[msg.sender] += tokensIssued;
    |
    |        emit Transfer(address(this), msg.sender, tokensIssued);
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'XataToken':
    |        uint256 bonusValue = 10 * 1 ether;
    |
  > |        totalBonusTokensIssued += bonusValue;
    |        totalSupply += bonusValue;
    |        balances[_to] += bonusValue;
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'XataToken':
    |
    |        totalBonusTokensIssued += bonusValue;
  > |        totalSupply += bonusValue;
    |        balances[_to] += bonusValue;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'XataToken':
    |        totalBonusTokensIssued += bonusValue;
    |        totalSupply += bonusValue;
  > |        balances[_to] += bonusValue;
    |
    |        emit Transfer(address(this), _to, bonusValue);
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'XataToken':
    |
    |    function enablePurchasing() public onlyOwner {
  > |        purchasingAllowed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'XataToken':
    |
    |    function disablePurchasing() public onlyOwner {
  > |        purchasingAllowed = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67462b1d032f51646c09196c2bd30ad0cfbad8d.sol(134)


