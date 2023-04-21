Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:IQBankToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:IQTKCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(136)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |     */
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(601)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * behavior.
    | */
  > |contract Crowdsale is Pausable {
    |    using SafeMath for uint256;
    |    using SafeERC20 for IQBankToken;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(447)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |        require(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(92)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |     */
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(601)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |        require(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(92)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |     */
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(601)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        // update state
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(430)

[33mWarning[0m for LockedEther in contract 'IQBankToken':
    |
    |// Êîíòðàêò òîêåíà (íàñëåäóåòñÿ îò ñòàíäàðòíîãî StandardToken)
  > |contract IQBankToken is MintableToken {
    |    string public constant name = "IQ Bank token"; // solium-disable-line uppercase
    |    string public constant symbol = "IQTK"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(606)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |    returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |    returns (bool)
    |    {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |    {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |
    |    function setCrowdsaleAddress(address _address) onlyOwner public{
  > |        own_contract = _address;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'IQBankToken':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(385)

[33mWarning[0m for DAOConstantGas in contract 'IQTKCrowdsale':
    |     */
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(601)

[33mWarning[0m for LockedEther in contract 'IQTKCrowdsale':
    |
    |// Êîíòðàêò ICO (íàñëåäóåòñÿ îò ñòàíäàðòíîãî Crowdlase è Ownable)
  > |contract IQTKCrowdsale is Crowdsale {
    |
    |    // Ìèíèìàëüíàÿ èíâåñòèöèÿ 0.01 eth
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(615)

[33mWarning[0m for UnhandledException in contract 'IQTKCrowdsale':
    |     */
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(601)

[33mWarning[0m for UnhandledException in contract 'IQTKCrowdsale':
    |
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |        token.mint(_beneficiary, _tokenAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(731)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IQTKCrowdsale':
    |     */
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(601)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IQTKCrowdsale':
    |
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |        token.mint(_beneficiary, _tokenAmount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(731)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |
    |        // update state
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |     */
    |    function addTokens(address _beneficiary, uint256 _tokenAmount) onlyOwner NotFinalized public {
  > |        balances[_beneficiary] = balances[_beneficiary].add(_tokenAmount);
    |        tokensIssued = tokensIssued.add(_tokenAmount);
    |        emit TokenAdded(_beneficiary, _tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(695)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |    function addTokens(address _beneficiary, uint256 _tokenAmount) onlyOwner NotFinalized public {
    |        balances[_beneficiary] = balances[_beneficiary].add(_tokenAmount);
  > |        tokensIssued = tokensIssued.add(_tokenAmount);
    |        emit TokenAdded(_beneficiary, _tokenAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(696)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |        uint256 amount = balances[receiver_];
    |        require(amount > 0);
  > |        balances[receiver_] = 0;
    |        emit TokenDelivered(receiver_, amount);
    |        _deliverTokens(receiver_, amount);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(721)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |
    |    function _processPurchase(address _beneficiary, uint256 _tokenAmount) internal {
  > |        balances[_beneficiary] = balances[_beneficiary].add(_tokenAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(727)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |    function unpause(uint _stage, uint _bonusPercent) onlyOwner whenPaused public {
    |        super.unpause(); // äåðãàåì ðîäèòåëüñêóþ ôóíêöèþ êîòîðàÿ ñòàâèò ñàì ôëàã ïàóçû â Ëîæü
  > |        stage = _stage;
    |        bonusPercent = _bonusPercent;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |        super.unpause(); // äåðãàåì ðîäèòåëüñêóþ ôóíêöèþ êîòîðàÿ ñòàâèò ñàì ôëàã ïàóçû â Ëîæü
    |        stage = _stage;
  > |        bonusPercent = _bonusPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(679)

[33mWarning[0m for UnrestrictedWrite in contract 'IQTKCrowdsale':
    |     */
    |    function finalize() onlyOwner NotFinalized public {
  > |        isFinalized = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(706)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |    event Mint(address indexed to, uint256 amount);
    |    event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |    {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Mint(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function setCrowdsaleAddress(address _address) onlyOwner public{
  > |        own_contract = _address;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(385)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(273)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * modifier anymore.
    |     */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(306)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        _transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function _transferOwnership(address _newOwner) internal {
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(326)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(395)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * modifier anymore.
    |     */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(306)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        _transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function _transferOwnership(address _newOwner) internal {
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(323)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(399)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(421)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(429)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(430)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |        require(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(90)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(38)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x02a725c0bdc5678539cd38e74e675fe537736389.sol(260)


