Processing contract: /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol:TeaToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'TeaToken':
    |                Payout(adds[i], this.balance);
    |
  > |                if (adds[i].send(this.balance)){}
    |
    |                }
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(125)

[33mWarning[0m for DAOConstantGas in contract 'TeaToken':
    |                }
    |                else Payout(adds[i], sendValue);
  > |                if (adds[i].send(sendValue)){}
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(129)

[33mWarning[0m for LockedEther in contract 'TeaToken':
    |//defines the contract (this is the entire program basically)
    |
  > |contract TeaToken {
    |    //Definition section. To the non-devs, define means "tell the compiler this concept exists and if I mention it later this is what im talking about" 
    |
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'TeaToken':
    |    uint256 tea_tokens;
    |
  > |    mapping(address => uint256) public balanceOf;               //this is used to measure how much money some wallet just sent us
    |
    |    bool public crowdsaleOpen = true;                               //this is a true-false statement that tells the program whether or not the crowdsale is still going. Unlike the others, this one actually does have data saved to it via the = false;
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'TeaToken':
    |    //Without this section the TeaTokens would be trapped in their account forever, unable to move.
    |
  > |    function transfer(address _to, uint256 _value) {
    |
    |        require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    //please note that define does not mean fill with data, that happens later on. Im merely telling the computer these variables exist so it doesnt get confused later.
    |
  > |    uint256 public pricePreSale = 1000000 wei;                       //this is how much each token costs
    |
    |    uint256 public priceStage1 = 2000000 wei;         
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    uint256 public pricePreSale = 1000000 wei;                       //this is how much each token costs
    |
  > |    uint256 public priceStage1 = 2000000 wei;         
    |
    |    uint256 public priceStage2 = 4000000 wei;         
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    uint256 public priceStage1 = 2000000 wei;         
    |
  > |    uint256 public priceStage2 = 4000000 wei;         
    |
    |    uint256 tea_tokens;
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    mapping(address => uint256) public balanceOf;               //this is used to measure how much money some wallet just sent us
    |
  > |    bool public crowdsaleOpen = true;                               //this is a true-false statement that tells the program whether or not the crowdsale is still going. Unlike the others, this one actually does have data saved to it via the = false;
    |
    |    string public name = "TeaToken";                             //this is the name of the token, what normies will see in their Ether Wallets
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    bool public crowdsaleOpen = true;                               //this is a true-false statement that tells the program whether or not the crowdsale is still going. Unlike the others, this one actually does have data saved to it via the = false;
    |
  > |    string public name = "TeaToken";                             //this is the name of the token, what normies will see in their Ether Wallets
    |
    |    string public symbol = "TEAT";
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    string public name = "TeaToken";                             //this is the name of the token, what normies will see in their Ether Wallets
    |
  > |    string public symbol = "TEAT";
    |
    |    uint256 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    string public symbol = "TEAT";
    |
  > |    uint256 public decimals = 8;
    |
    |    uint256 durationInMinutes = 10080;              // one week
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    uint256 durationInMinutes = 10080;              // one week
    |
  > |    uint256 public totalAmountOfTeatokensCreated = 0;
    |
    |    uint256 public totalAmountOfWeiCollected = 0;
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    uint256 public totalAmountOfTeatokensCreated = 0;
    |
  > |    uint256 public totalAmountOfWeiCollected = 0;
    |
    |    uint256 public preSaleDeadline = now + durationInMinutes * 1 minutes;         //how long until the crowdsale ends
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    uint256 public totalAmountOfWeiCollected = 0;
    |
  > |    uint256 public preSaleDeadline = now + durationInMinutes * 1 minutes;         //how long until the crowdsale ends
    |
    |    uint256 public icoStage1Deadline = now + (durationInMinutes * 2) * 1 minutes;         //how long until the crowdsale ends
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |    uint256 public preSaleDeadline = now + durationInMinutes * 1 minutes;         //how long until the crowdsale ends
    |
  > |    uint256 public icoStage1Deadline = now + (durationInMinutes * 2) * 1 minutes;         //how long until the crowdsale ends
    |
    |    uint256 deadmanSwitchDeadline = now + (durationInMinutes * 4) * 1 minutes;         //how long until the crowdsale ends
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |//this is how we get our money out. It can only be activated after the deadline currently.
    |
  > |    function safeWithdrawal() {
    |
    |        //this checks to see if the sender is actually authorized to trigger the withdrawl. The sender must be the beneficiary in this case or it wont work.
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'TeaToken':
    |
    |
  > |    function endCrowdsale() {
    |        //this checks to see if the sender is actually authorized to trigger the withdrawl. The sender must be the beneficiary in this case or it wont work.
    |
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(138)

[31mViolation[0m for TODAmount in contract 'TeaToken':
    |                Payout(adds[i], this.balance);
    |
  > |                if (adds[i].send(this.balance)){}
    |
    |                }
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(125)

[31mViolation[0m for UnhandledException in contract 'TeaToken':
    |                Payout(adds[i], this.balance);
    |
  > |                if (adds[i].send(this.balance)){}
    |
    |                }
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(125)

[31mViolation[0m for UnhandledException in contract 'TeaToken':
    |                }
    |                else Payout(adds[i], sendValue);
  > |                if (adds[i].send(sendValue)){}
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'TeaToken':
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |
    |        /* Notify anyone listening that this transfer took place */
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'TeaToken':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows. If someone sent like 500 googolplex tokens it would actually go back to zero again because of an overflow. Computerized integers can only store so many numbers before they run out of room for more. This prevents that from causing a problem. Fun fact: this shit right here is what caused the Y2K bug everyone was panicking about back in 1999
    |
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'TeaToken':
    |        require(controllerAddress1 == msg.sender || controllerAddress2 == msg.sender || controllerAddress3 == msg.sender || now >= deadmanSwitchDeadline);
    |        //shuts down the crowdsale
  > |        crowdsaleOpen = false;
    |    }
    |    /* Allows users to send tokens to each other, to act as money */
  at /home/jiaming/mavs_srcs/contract@0x15a058323dcd425be52b9340fb13d7d1f135f554.sol(143)


