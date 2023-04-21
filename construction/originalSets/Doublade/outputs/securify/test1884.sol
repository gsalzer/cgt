Processing contract: /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol:SKYFTeamFund
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol:SKYFTokenInterface
[33mWarning[0m for LockedEther in contract 'Ownable':
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(31)

[33mWarning[0m for LockedEther in contract 'SKYFTeamFund':
    |}
    |
  > |contract SKYFTeamFund is Ownable{
    |    uint256 public constant startTime = 1534334400;
    |    uint256 public constant firstYearEnd = startTime + 365 days;
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'SKYFTeamFund':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public onlyOwner returns (bool) {
    |        require(now > firstYearEnd);
    |
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'SKYFTeamFund':
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'SKYFTeamFund':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'SKYFTeamFund':
    |
    |contract SKYFTeamFund is Ownable{
  > |    uint256 public constant startTime = 1534334400;
    |    uint256 public constant firstYearEnd = startTime + 365 days;
    |    
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'SKYFTeamFund':
    |contract SKYFTeamFund is Ownable{
    |    uint256 public constant startTime = 1534334400;
  > |    uint256 public constant firstYearEnd = startTime + 365 days;
    |    
    |    SKYFTokenInterface public token;
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'SKYFTeamFund':
    |    uint256 public constant firstYearEnd = startTime + 365 days;
    |    
  > |    SKYFTokenInterface public token;
    |
    |    function setToken(address _token) public onlyOwner returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'SKYFTeamFund':
    |    SKYFTokenInterface public token;
    |
  > |    function setToken(address _token) public onlyOwner returns (bool) {
    |        require(_token != address(0));
    |        if (token == address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(48)

[33mWarning[0m for UnhandledException in contract 'SKYFTeamFund':
    |        require(now > firstYearEnd);
    |
  > |        token.transfer(_to, _value);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(60)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SKYFTeamFund':
    |        require(now > firstYearEnd);
    |
  > |        token.transfer(_to, _value);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'SKYFTeamFund':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'SKYFTeamFund':
    |        require(_token != address(0));
    |        if (token == address(0)) {
  > |            token = SKYFTokenInterface(_token);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x78a53fe8805989e073f69ea93e3e8ad64effb60c.sol(51)


