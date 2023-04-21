Processing contract: /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol:UnilotToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'UnilotToken':
    |}
    |
  > |contract UnilotToken is ERC20 {
    |    struct TokenStage {
    |        string name;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    // What is the balance of a particular account?
  > |    function balanceOf(address _owner)
    |        public
    |        constant
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(342)

[31mViolation[0m for MissingInputValidation in contract 'UnilotToken':
    |    // Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |    // If this function is called again it overwrites the current allowance with _value.
  > |    function approve(address _spender, uint256 _amount)
    |        public
    |        onlyAfterICO
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(406)

[31mViolation[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |
  > |    function allowance(address _owner, address _spender)
    |        public
    |        constant
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(418)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |}
    |
  > |contract UnilotToken is ERC20 {
    |    struct TokenStage {
    |        string name;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    //Token symbol
  > |    string public constant symbol = "UNIT";
    |    //Token name
    |    string public constant name = "Unilot token";
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    string public constant symbol = "UNIT";
    |    //Token name
  > |    string public constant name = "Unilot token";
    |    //It can be reeeealy small
    |    uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    string public constant name = "Unilot token";
    |    //It can be reeeealy small
  > |    uint8 public constant decimals = 18;
    |
    |    //This one duplicates the above but will have to use it because of
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    //This one duplicates the above but will have to use it because of
    |    //solidity bug with power operation
  > |    uint public constant accuracy = 1000000000000000000;
    |
    |    //500 mln tokens
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    //Public investor can buy tokens for 30 ether at maximum
  > |    uint256 public constant singleInvestorCap = 30 ether; //30 ether
    |
    |    //Distribution units
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    //Distribution units
  > |    uint public constant DST_ICO     = 62; //62%
    |    uint public constant DST_RESERVE = 10; //10%
    |    uint public constant DST_BOUNTY  = 3;  //3%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    //Distribution units
    |    uint public constant DST_ICO     = 62; //62%
  > |    uint public constant DST_RESERVE = 10; //10%
    |    uint public constant DST_BOUNTY  = 3;  //3%
    |    //Referral and Bonus Program
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant DST_ICO     = 62; //62%
    |    uint public constant DST_RESERVE = 10; //10%
  > |    uint public constant DST_BOUNTY  = 3;  //3%
    |    //Referral and Bonus Program
    |    uint public constant DST_R_N_B_PROGRAM = 10; //10%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant DST_BOUNTY  = 3;  //3%
    |    //Referral and Bonus Program
  > |    uint public constant DST_R_N_B_PROGRAM = 10; //10%
    |    uint public constant DST_ADVISERS      = 5;  //5%
    |    uint public constant DST_TEAM          = 10; //10%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    //Referral and Bonus Program
    |    uint public constant DST_R_N_B_PROGRAM = 10; //10%
  > |    uint public constant DST_ADVISERS      = 5;  //5%
    |    uint public constant DST_TEAM          = 10; //10%
    |
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant DST_R_N_B_PROGRAM = 10; //10%
    |    uint public constant DST_ADVISERS      = 5;  //5%
  > |    uint public constant DST_TEAM          = 10; //10%
    |
    |    //Referral Bonuses
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    //Referral Bonuses
  > |    uint public constant REFERRAL_BONUS_LEVEL1 = 5; //5%
    |    uint public constant REFERRAL_BONUS_LEVEL2 = 4; //4%
    |    uint public constant REFERRAL_BONUS_LEVEL3 = 3; //3%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    //Referral Bonuses
    |    uint public constant REFERRAL_BONUS_LEVEL1 = 5; //5%
  > |    uint public constant REFERRAL_BONUS_LEVEL2 = 4; //4%
    |    uint public constant REFERRAL_BONUS_LEVEL3 = 3; //3%
    |    uint public constant REFERRAL_BONUS_LEVEL4 = 2; //2%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant REFERRAL_BONUS_LEVEL1 = 5; //5%
    |    uint public constant REFERRAL_BONUS_LEVEL2 = 4; //4%
  > |    uint public constant REFERRAL_BONUS_LEVEL3 = 3; //3%
    |    uint public constant REFERRAL_BONUS_LEVEL4 = 2; //2%
    |    uint public constant REFERRAL_BONUS_LEVEL5 = 1; //1%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant REFERRAL_BONUS_LEVEL2 = 4; //4%
    |    uint public constant REFERRAL_BONUS_LEVEL3 = 3; //3%
  > |    uint public constant REFERRAL_BONUS_LEVEL4 = 2; //2%
    |    uint public constant REFERRAL_BONUS_LEVEL5 = 1; //1%
    |
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant REFERRAL_BONUS_LEVEL3 = 3; //3%
    |    uint public constant REFERRAL_BONUS_LEVEL4 = 2; //2%
  > |    uint public constant REFERRAL_BONUS_LEVEL5 = 1; //1%
    |
    |    //Token amount
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    //Token amount
    |    //25 mln tokens
  > |    uint public constant TOKEN_AMOUNT_PRE_ICO = 25 * (10**6) * accuracy;
    |    //5 mln tokens
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE1 = 5 * (10**6) * accuracy;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant TOKEN_AMOUNT_PRE_ICO = 25 * (10**6) * accuracy;
    |    //5 mln tokens
  > |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE1 = 5 * (10**6) * accuracy;
    |    //5 mln tokens
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE2 = 5 * (10**6) * accuracy;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE1 = 5 * (10**6) * accuracy;
    |    //5 mln tokens
  > |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE2 = 5 * (10**6) * accuracy;
    |    //5 mln tokens
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE3 = 5 * (10**6) * accuracy;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE2 = 5 * (10**6) * accuracy;
    |    //5 mln tokens
  > |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE3 = 5 * (10**6) * accuracy;
    |    //5 mln tokens
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE4 = 5 * (10**6) * accuracy;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE3 = 5 * (10**6) * accuracy;
    |    //5 mln tokens
  > |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE4 = 5 * (10**6) * accuracy;
    |    //122.5 mln tokens
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE5 = 1225 * (10**5) * accuracy;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE4 = 5 * (10**6) * accuracy;
    |    //122.5 mln tokens
  > |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE5 = 1225 * (10**5) * accuracy;
    |    //265 mln tokens
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE2 = 1425 * (10**5) * accuracy;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE5 = 1225 * (10**5) * accuracy;
    |    //265 mln tokens
  > |    uint public constant TOKEN_AMOUNT_ICO_STAGE2 = 1425 * (10**5) * accuracy;
    |
    |    uint public constant BONUS_PRE_ICO = 40; //40%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant TOKEN_AMOUNT_ICO_STAGE2 = 1425 * (10**5) * accuracy;
    |
  > |    uint public constant BONUS_PRE_ICO = 40; //40%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE1 = 35; //35%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE2 = 30; //30%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    uint public constant BONUS_PRE_ICO = 40; //40%
  > |    uint public constant BONUS_ICO_STAGE1_PRE_SALE1 = 35; //35%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE2 = 30; //30%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE3 = 25; //25%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant BONUS_PRE_ICO = 40; //40%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE1 = 35; //35%
  > |    uint public constant BONUS_ICO_STAGE1_PRE_SALE2 = 30; //30%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE3 = 25; //25%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE4 = 20; //20%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE1 = 35; //35%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE2 = 30; //30%
  > |    uint public constant BONUS_ICO_STAGE1_PRE_SALE3 = 25; //25%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE4 = 20; //20%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE5 = 0; //0%
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE2 = 30; //30%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE3 = 25; //25%
  > |    uint public constant BONUS_ICO_STAGE1_PRE_SALE4 = 20; //20%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE5 = 0; //0%
    |    uint public constant BONUS_ICO_STAGE2 = 0; //No bonus
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE3 = 25; //25%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE4 = 20; //20%
  > |    uint public constant BONUS_ICO_STAGE1_PRE_SALE5 = 0; //0%
    |    uint public constant BONUS_ICO_STAGE2 = 0; //No bonus
    |
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE4 = 20; //20%
    |    uint public constant BONUS_ICO_STAGE1_PRE_SALE5 = 0; //0%
  > |    uint public constant BONUS_ICO_STAGE2 = 0; //No bonus
    |
    |    //Token Price on Coin Offer
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    //Token Price on Coin Offer
  > |    uint256 public constant price = 79 szabo; //0.000079 ETH
    |
    |    address public constant ADVISORS_WALLET = 0x77660795BD361Cd43c3627eAdad44dDc2026aD17;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    uint256 public constant price = 79 szabo; //0.000079 ETH
    |
  > |    address public constant ADVISORS_WALLET = 0x77660795BD361Cd43c3627eAdad44dDc2026aD17;
    |    address public constant RESERVE_WALLET = 0x731B47847352fA2cFf83D5251FD6a5266f90878d;
    |    address public constant BOUNTY_WALLET = 0x794EF9c680bDD0bEf48Bef46bA68471e449D67Fb;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    address public constant ADVISORS_WALLET = 0x77660795BD361Cd43c3627eAdad44dDc2026aD17;
  > |    address public constant RESERVE_WALLET = 0x731B47847352fA2cFf83D5251FD6a5266f90878d;
    |    address public constant BOUNTY_WALLET = 0x794EF9c680bDD0bEf48Bef46bA68471e449D67Fb;
    |    address public constant R_N_D_WALLET = 0x794EF9c680bDD0bEf48Bef46bA68471e449D67Fb;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    address public constant ADVISORS_WALLET = 0x77660795BD361Cd43c3627eAdad44dDc2026aD17;
    |    address public constant RESERVE_WALLET = 0x731B47847352fA2cFf83D5251FD6a5266f90878d;
  > |    address public constant BOUNTY_WALLET = 0x794EF9c680bDD0bEf48Bef46bA68471e449D67Fb;
    |    address public constant R_N_D_WALLET = 0x794EF9c680bDD0bEf48Bef46bA68471e449D67Fb;
    |    address public constant STORAGE_WALLET = 0xE2A8F147fc808738Cab152b01C7245F386fD8d89;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    address public constant RESERVE_WALLET = 0x731B47847352fA2cFf83D5251FD6a5266f90878d;
    |    address public constant BOUNTY_WALLET = 0x794EF9c680bDD0bEf48Bef46bA68471e449D67Fb;
  > |    address public constant R_N_D_WALLET = 0x794EF9c680bDD0bEf48Bef46bA68471e449D67Fb;
    |    address public constant STORAGE_WALLET = 0xE2A8F147fc808738Cab152b01C7245F386fD8d89;
    |
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    address public constant BOUNTY_WALLET = 0x794EF9c680bDD0bEf48Bef46bA68471e449D67Fb;
    |    address public constant R_N_D_WALLET = 0x794EF9c680bDD0bEf48Bef46bA68471e449D67Fb;
  > |    address public constant STORAGE_WALLET = 0xE2A8F147fc808738Cab152b01C7245F386fD8d89;
    |
    |    // Owner of this contract
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    // Owner of this contract
  > |    address public administrator;
    |
    |    // Balances for each account
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    }
    |
  > |    function prealocateCoins()
    |        public
    |        onlyAdministrator
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    }
    |
  > |    function getTeamWallets()
    |        public
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    }
    |
  > |    function _proceedStage()
    |        internal
    |    {
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    }
    |
  > |    function getTotalCoinsAvailable()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(313)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    }
    |
  > |    function getAvailableCoinsForCurrentStage()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    //------------- ERC20 methods -------------//
  > |    function totalSupply()
    |        public
    |        constant
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(332)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    // Transfer the balance from owner's account to another account
  > |    function transfer(address _to, uint256 _amount)
    |        public
    |        onlyAfterICO
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(352)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    // deliberately authorized the sender of the message via some mechanism; we propose
    |    // these standardized APIs for approval:
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(378)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |
    |    //Returns bonus for certain level of reference
  > |    function calculateReferralBonus(uint amount, uint level)
    |        public
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(428)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    }
    |
  > |    function calculateBonus(uint amountOfTokens)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(448)

[33mWarning[0m for MissingInputValidation in contract 'UnilotToken':
    |    //It doesn't really close the stage
    |    //It just needed to push transaction to update stage and update block.now
  > |    function closeStage()
    |        public
    |        onlyAdministrator
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(500)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotToken':
    |            }
    |
  > |            balances[teamWallets[i]] += memberAmount;
    |            teamSupply -= memberAmount;
    |            totalCoinsAvailable -= memberAmount;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotToken':
    |            balances[teamWallets[i]] += memberAmount;
    |            teamSupply -= memberAmount;
  > |            totalCoinsAvailable -= memberAmount;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotToken':
    |            if ( currentStage < stages.length
    |            && (now >= stages[currentStage].endsAt || getAvailableCoinsForCurrentStage() == 0) ) {
  > |                currentStage++;
    |                uint totalTokensForSale = TOKEN_AMOUNT_PRE_ICO
    |                                    + TOKEN_AMOUNT_ICO_STAGE1_PRE_SALE1
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotToken':
    |                if (currentStage >= stages.length) {
    |                    //Burning all unsold tokens and proportionally other for deligation
  > |                    _totalSupply -= ( ( ( stages[(stages.length - 1)].coinsAvailable * DST_BOUNTY ) / 100 )
    |                                    + ( ( stages[(stages.length - 1)].coinsAvailable * DST_R_N_B_PROGRAM ) / 100 ) );
    |
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(290)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotToken':
    |                                    + ( ( stages[(stages.length - 1)].coinsAvailable * DST_R_N_B_PROGRAM ) / 100 ) );
    |
  > |                    balances[BOUNTY_WALLET] = (((totalTokensForSale - stages[(stages.length - 1)].coinsAvailable) * DST_BOUNTY)/100);
    |                    balances[R_N_D_WALLET] = (((totalTokensForSale - stages[(stages.length - 1)].coinsAvailable) * DST_R_N_B_PROGRAM)/100);
    |
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotToken':
    |
    |                    balances[BOUNTY_WALLET] = (((totalTokensForSale - stages[(stages.length - 1)].coinsAvailable) * DST_BOUNTY)/100);
  > |                    balances[R_N_D_WALLET] = (((totalTokensForSale - stages[(stages.length - 1)].coinsAvailable) * DST_R_N_B_PROGRAM)/100);
    |
    |                    totalCoinsAvailable = 0;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(294)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotToken':
    |                    balances[R_N_D_WALLET] = (((totalTokensForSale - stages[(stages.length - 1)].coinsAvailable) * DST_R_N_B_PROGRAM)/100);
    |
  > |                    totalCoinsAvailable = 0;
    |                    break; //ICO ended
    |                }
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(296)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotToken':
    |                }
    |
  > |                stages[currentStage].numCoinsStart = totalCoinsAvailable;
    |
    |                if ( currentStage > 0 ) {
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'UnilotToken':
    |                if ( currentStage > 0 ) {
    |                    //Move all left tokens to last stage
  > |                    stages[(stages.length - 1)].coinsAvailable += stages[ (currentStage - 1 ) ].coinsAvailable;
    |                    StageUpdated(stages[currentStage - 1].name, stages[currentStage].name);
    |                }
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotToken':
    |        returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotToken':
    |        onlyAdministrator
    |    {
  > |        totalCoinsAvailable -= balances[ADVISORS_WALLET] += ( ( _totalSupply * DST_ADVISERS ) / 100 );
    |        totalCoinsAvailable -= balances[RESERVE_WALLET] += ( ( _totalSupply * DST_RESERVE ) / 100 );
    |
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'UnilotToken':
    |    {
    |        totalCoinsAvailable -= balances[ADVISORS_WALLET] += ( ( _totalSupply * DST_ADVISERS ) / 100 );
  > |        totalCoinsAvailable -= balances[RESERVE_WALLET] += ( ( _totalSupply * DST_RESERVE ) / 100 );
    |
    |        address[7] memory teamWallets = getTeamWallets();
  at /home/jiaming/mavs_srcs/contract@0x378356e2391cbaccb1cb11d9f7b1fe6b244819f1.sol(167)


