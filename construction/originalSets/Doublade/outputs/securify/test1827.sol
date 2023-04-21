Processing contract: /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol:EIP20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol:MainframeInvestment
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol:Ownable
[33mWarning[0m for DAOConstantGas in contract 'MainframeInvestment':
    |    uint minor_fee = transfer_amount * 4 * 20 / (10 * 420);
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(76)

[33mWarning[0m for DAOConstantGas in contract 'MainframeInvestment':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(77)

[33mWarning[0m for DAOConstantGas in contract 'MainframeInvestment':
    |
    |    // Send the rest
  > |    require(investment_address.call.gas(gas).value(transfer_amount - major_fee - minor_fee)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(80)

[33mWarning[0m for LockedEther in contract 'MainframeInvestment':
    |
    |// The owner of this contract should be an externally owned account
  > |contract MainframeInvestment is Ownable {
    |
    |  // Address of the target contract
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'MainframeInvestment':
    |
    |  // Sets the amount of gas allowed to investors
  > |  function set_transfer_gas(uint transfer_gas) public onlyOwner {
    |    gas = transfer_gas;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'MainframeInvestment':
    |
    |  // We can use this function to move unwanted tokens in the contract
  > |  function approve_unwanted_tokens(EIP20Token token, address dest, uint value) public onlyOwner {
    |    token.approve(dest, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'MainframeInvestment':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'MainframeInvestment':
    |   * @param newOwner The address to transfer ownership to. 
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'MainframeInvestment':
    |
    |  // Address of the target contract
  > |  address public investment_address = 0x213E52B799bf99B2436EE492f7e2dFA184e790ab;
    |  // Major partner address
    |  address public major_partner_address = 0x8f0592bDCeE38774d93bC1fd2c97ee6540385356;
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'MainframeInvestment':
    |  address public investment_address = 0x213E52B799bf99B2436EE492f7e2dFA184e790ab;
    |  // Major partner address
  > |  address public major_partner_address = 0x8f0592bDCeE38774d93bC1fd2c97ee6540385356;
    |  // Minor partner address
    |  address public minor_partner_address = 0xC787C3f6F75D7195361b64318CE019f90507f806;
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'MainframeInvestment':
    |  address public major_partner_address = 0x8f0592bDCeE38774d93bC1fd2c97ee6540385356;
    |  // Minor partner address
  > |  address public minor_partner_address = 0xC787C3f6F75D7195361b64318CE019f90507f806;
    |  // Gas used for transfers.
    |  uint public gas = 2000;
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'MainframeInvestment':
    |  address public minor_partner_address = 0xC787C3f6F75D7195361b64318CE019f90507f806;
    |  // Gas used for transfers.
  > |  uint public gas = 2000;
    |
    |  // Payments to this contract require a bit of gas. 100k should be enough.
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'MainframeInvestment':
    |
    |  // Transfer some funds to the target investment address.
  > |  function execute_transfer(uint transfer_amount) internal {
    |    // Major fee is 60% * 20/420 * value = (6 * 20 / (10 * 420)) * value
    |    uint major_fee = transfer_amount * 6 * 20 / (10 * 420);
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(70)

[33mWarning[0m for TODAmount in contract 'MainframeInvestment':
    |    uint minor_fee = transfer_amount * 4 * 20 / (10 * 420);
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(76)

[33mWarning[0m for TODAmount in contract 'MainframeInvestment':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(77)

[33mWarning[0m for TODAmount in contract 'MainframeInvestment':
    |
    |    // Send the rest
  > |    require(investment_address.call.gas(gas).value(transfer_amount - major_fee - minor_fee)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(80)

[33mWarning[0m for TODReceiver in contract 'MainframeInvestment':
    |    uint minor_fee = transfer_amount * 4 * 20 / (10 * 420);
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(76)

[33mWarning[0m for TODReceiver in contract 'MainframeInvestment':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(77)

[33mWarning[0m for TODReceiver in contract 'MainframeInvestment':
    |
    |    // Send the rest
  > |    require(investment_address.call.gas(gas).value(transfer_amount - major_fee - minor_fee)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(80)

[33mWarning[0m for UnhandledException in contract 'MainframeInvestment':
    |    uint minor_fee = transfer_amount * 4 * 20 / (10 * 420);
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(76)

[33mWarning[0m for UnhandledException in contract 'MainframeInvestment':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(77)

[33mWarning[0m for UnhandledException in contract 'MainframeInvestment':
    |
    |    // Send the rest
  > |    require(investment_address.call.gas(gas).value(transfer_amount - major_fee - minor_fee)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(80)

[33mWarning[0m for UnhandledException in contract 'MainframeInvestment':
    |  // We can use this function to move unwanted tokens in the contract
    |  function approve_unwanted_tokens(EIP20Token token, address dest, uint value) public onlyOwner {
  > |    token.approve(dest, value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(90)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'MainframeInvestment':
    |    uint minor_fee = transfer_amount * 4 * 20 / (10 * 420);
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(76)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'MainframeInvestment':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(77)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'MainframeInvestment':
    |
    |    // Send the rest
  > |    require(investment_address.call.gas(gas).value(transfer_amount - major_fee - minor_fee)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(80)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainframeInvestment':
    |  // We can use this function to move unwanted tokens in the contract
    |  function approve_unwanted_tokens(EIP20Token token, address dest, uint value) public onlyOwner {
  > |    token.approve(dest, value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeInvestment':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeInvestment':
    |  // Sets the amount of gas allowed to investors
    |  function set_transfer_gas(uint transfer_gas) public onlyOwner {
  > |    gas = transfer_gas;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x75298d365092dcecab1dae51b257b972d34f0323.sol(85)


