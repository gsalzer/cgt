Processing contract: /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol:DAO
Processing contract: /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol:untrustedChildWithdraw
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'untrustedChildWithdraw':
    |
    |    // Transfer childDao tokens first, then send Ether back in return
  > |    if (!whiteList[proposalId].dao.transferFrom(msg.sender, this, balance) || !msg.sender.send(adjustedBalance))
    |      throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(62)

[33mWarning[0m for LockedEther in contract 'untrustedChildWithdraw':
    | * Based on the official WithdrawDAO contract found here: https://etherscan.io/address/0xbf4ed7b27f1d666546e30d74d50d173d20bca754#code
    | */
  > |contract untrustedChildWithdraw {
    |
    |  struct childDAO {
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'untrustedChildWithdraw':
    |  uint public ratioDenominator = 1000000000;
    |  uint[] public untrustedTokenNumerator = [1458321331, 1458321331, 1399760834, 1457994374, 1457994374, 1146978827, 1457994374, 1458321336, 1458307000, 1458328768, 1458376290];
  > |  mapping (uint => childDAO) public whiteList;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'untrustedChildWithdraw':
    |   * @dev This requires that the token-holder authorizes this contract's address using the approve() function.
    |   */
  > |  function withdraw(uint proposalId) {
    |    //Check the token balance
    |    uint balance = whiteList[proposalId].dao.balanceOf(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'untrustedChildWithdraw':
    |	}
    |
  > |  DAO constant public mainDAO = DAO(0xbb9bc244d798123fde783fcc1c72d3bb8c189413);
    |  uint[] public untrustedProposals = [35, 36, 53, 62, 67, 68, 70, 71, 73, 76, 87];
    |  uint public ratioDenominator = 1000000000;
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'untrustedChildWithdraw':
    |
    |  DAO constant public mainDAO = DAO(0xbb9bc244d798123fde783fcc1c72d3bb8c189413);
  > |  uint[] public untrustedProposals = [35, 36, 53, 62, 67, 68, 70, 71, 73, 76, 87];
    |  uint public ratioDenominator = 1000000000;
    |  uint[] public untrustedTokenNumerator = [1458321331, 1458321331, 1399760834, 1457994374, 1457994374, 1146978827, 1457994374, 1458321336, 1458307000, 1458328768, 1458376290];
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'untrustedChildWithdraw':
    |  DAO constant public mainDAO = DAO(0xbb9bc244d798123fde783fcc1c72d3bb8c189413);
    |  uint[] public untrustedProposals = [35, 36, 53, 62, 67, 68, 70, 71, 73, 76, 87];
  > |  uint public ratioDenominator = 1000000000;
    |  uint[] public untrustedTokenNumerator = [1458321331, 1458321331, 1399760834, 1457994374, 1457994374, 1146978827, 1457994374, 1458321336, 1458307000, 1458328768, 1458376290];
    |  mapping (uint => childDAO) public whiteList;
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'untrustedChildWithdraw':
    |  uint[] public untrustedProposals = [35, 36, 53, 62, 67, 68, 70, 71, 73, 76, 87];
    |  uint public ratioDenominator = 1000000000;
  > |  uint[] public untrustedTokenNumerator = [1458321331, 1458321331, 1399760834, 1457994374, 1457994374, 1146978827, 1457994374, 1458321336, 1458307000, 1458328768, 1458376290];
    |  mapping (uint => childDAO) public whiteList;
    |
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'untrustedChildWithdraw':
    |  * that needs to be transferred to this contract.
    |  */
  > |  function requiredEndowment() constant returns (uint endowment) {
    |      uint sum = 0;
    |      for(uint i=0; i<untrustedProposals.length; i++) {
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(41)

[33mWarning[0m for TODReceiver in contract 'untrustedChildWithdraw':
    |
    |    // Transfer childDao tokens first, then send Ether back in return
  > |    if (!whiteList[proposalId].dao.transferFrom(msg.sender, this, balance) || !msg.sender.send(adjustedBalance))
    |      throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(62)

[33mWarning[0m for UnhandledException in contract 'untrustedChildWithdraw':
    |          uint proposalId = untrustedProposals[i];
    |          DAO child = whiteList[proposalId].dao;
  > |          sum += (child.totalSupply() * (untrustedTokenNumerator[i] / ratioDenominator) );
    |      }
    |      return sum;
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(46)

[33mWarning[0m for UnhandledException in contract 'untrustedChildWithdraw':
    |  function withdraw(uint proposalId) {
    |    //Check the token balance
  > |    uint balance = whiteList[proposalId].dao.balanceOf(msg.sender);
    |    uint adjustedBalance = balance * (whiteList[proposalId].numerator / ratioDenominator);
    |
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(58)

[33mWarning[0m for UnhandledException in contract 'untrustedChildWithdraw':
    |
    |    // Transfer childDao tokens first, then send Ether back in return
  > |    if (!whiteList[proposalId].dao.transferFrom(msg.sender, this, balance) || !msg.sender.send(adjustedBalance))
    |      throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(62)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'untrustedChildWithdraw':
    |          uint proposalId = untrustedProposals[i];
    |          DAO child = whiteList[proposalId].dao;
  > |          sum += (child.totalSupply() * (untrustedTokenNumerator[i] / ratioDenominator) );
    |      }
    |      return sum;
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(46)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'untrustedChildWithdraw':
    |  function withdraw(uint proposalId) {
    |    //Check the token balance
  > |    uint balance = whiteList[proposalId].dao.balanceOf(msg.sender);
    |    uint adjustedBalance = balance * (whiteList[proposalId].numerator / ratioDenominator);
    |
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(58)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'untrustedChildWithdraw':
    |
    |    // Transfer childDao tokens first, then send Ether back in return
  > |    if (!whiteList[proposalId].dao.transferFrom(msg.sender, this, balance) || !msg.sender.send(adjustedBalance))
    |      throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6ac85d0408044afb786a6d631d4d3426ce0e031a.sol(62)


