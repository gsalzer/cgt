Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:Configurator
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:EmaCrowdSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:EmaToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:MiniMeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:MiniMeTokenFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:TokenController
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol:Whitelist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Configurator':
    |        }
    |      }
  > |      contract Configurator is Ownable {
    |        EmaToken public token = EmaToken(0xC3EE57Fa8eD253E3F214048879977265967AE745);
    |        EmaCrowdSale public crowdsale = EmaCrowdSale(0xAd97aF045F815d91621040809F863a5fb070B52d);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(907)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |    */
    |    contract Ownable {
  > |     address public owner;
    |     event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |     /**
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |      * @param newOwner The address to transfer ownership to.
    |      */
  > |      function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |      }
    |      contract Configurator is Ownable {
  > |        EmaToken public token = EmaToken(0xC3EE57Fa8eD253E3F214048879977265967AE745);
    |        EmaCrowdSale public crowdsale = EmaCrowdSale(0xAd97aF045F815d91621040809F863a5fb070B52d);
    |        address ownerWallet = 0x3046751e1d843748b4983D7bca58ECF6Ef1e5c77;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(908)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |      contract Configurator is Ownable {
    |        EmaToken public token = EmaToken(0xC3EE57Fa8eD253E3F214048879977265967AE745);
  > |        EmaCrowdSale public crowdsale = EmaCrowdSale(0xAd97aF045F815d91621040809F863a5fb070B52d);
    |        address ownerWallet = 0x3046751e1d843748b4983D7bca58ECF6Ef1e5c77;
    |        address tokenfactory = 0xB74AA356913316ce49626527AE8543FFf23bB672;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(909)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |        address Contributors = 0xa02dfB73de485Ebd9d37CbA4583e916F3bA94CeE;
    |        address BountiesWal = 0xaB662f89A2c6e71BD8c7f754905cAaEC326BcdE7;
  > |        uint256 public crowdSaleStart;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(918)

[33mWarning[0m for MissingInputValidation in contract 'Configurator':
    |
    |
  > |        function deploy() onlyOwner public{
    | 	    owner = msg.sender; 
    |	    
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(921)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |	//	token.transferOwnership(ownerWallet);
    |	//	token.changeController(this);
  > |		token.generateTokens(crowdsale, 255000000000000000000000000); // Generate CrowdSale tokens
    |		token.generateTokens(incetivesPool, 115000000000000000000000000); //generate Incentives pool tokens
    |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(928)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |	//	token.changeController(this);
    |		token.generateTokens(crowdsale, 255000000000000000000000000); // Generate CrowdSale tokens
  > |		token.generateTokens(incetivesPool, 115000000000000000000000000); //generate Incentives pool tokens
    |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
    |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(929)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |		token.generateTokens(crowdsale, 255000000000000000000000000); // Generate CrowdSale tokens
    |		token.generateTokens(incetivesPool, 115000000000000000000000000); //generate Incentives pool tokens
  > |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
    |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
    |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(930)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |		token.generateTokens(incetivesPool, 115000000000000000000000000); //generate Incentives pool tokens
    |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
  > |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
    |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
    |		token.changeController(EmaCrowdSale(crowdsale));
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(931)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
    |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
  > |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
    |		token.changeController(EmaCrowdSale(crowdsale));
    |			token.transferOwnership(ownerWallet);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(932)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
    |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
  > |		token.changeController(EmaCrowdSale(crowdsale));
    |			token.transferOwnership(ownerWallet);
    |			crowdsale.transferOwnership(ownerWallet);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(933)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
    |		token.changeController(EmaCrowdSale(crowdsale));
  > |			token.transferOwnership(ownerWallet);
    |			crowdsale.transferOwnership(ownerWallet);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(934)

[33mWarning[0m for UnhandledException in contract 'Configurator':
    |		token.changeController(EmaCrowdSale(crowdsale));
    |			token.transferOwnership(ownerWallet);
  > |			crowdsale.transferOwnership(ownerWallet);
    |        }
    |      }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(935)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |	//	token.transferOwnership(ownerWallet);
    |	//	token.changeController(this);
  > |		token.generateTokens(crowdsale, 255000000000000000000000000); // Generate CrowdSale tokens
    |		token.generateTokens(incetivesPool, 115000000000000000000000000); //generate Incentives pool tokens
    |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(928)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |	//	token.changeController(this);
    |		token.generateTokens(crowdsale, 255000000000000000000000000); // Generate CrowdSale tokens
  > |		token.generateTokens(incetivesPool, 115000000000000000000000000); //generate Incentives pool tokens
    |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
    |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(929)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |		token.generateTokens(crowdsale, 255000000000000000000000000); // Generate CrowdSale tokens
    |		token.generateTokens(incetivesPool, 115000000000000000000000000); //generate Incentives pool tokens
  > |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
    |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
    |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(930)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |		token.generateTokens(incetivesPool, 115000000000000000000000000); //generate Incentives pool tokens
    |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
  > |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
    |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
    |		token.changeController(EmaCrowdSale(crowdsale));
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(931)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |		token.generateTokens(FoundersAndTeam, 85000000000000000000000000); //generate Founders and team tokens
    |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
  > |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
    |		token.changeController(EmaCrowdSale(crowdsale));
    |			token.transferOwnership(ownerWallet);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(932)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |		token.generateTokens(FuturePartners, 40000000000000000000000000); //generate future partners tokens and contributors
    |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
  > |		token.changeController(EmaCrowdSale(crowdsale));
    |			token.transferOwnership(ownerWallet);
    |			crowdsale.transferOwnership(ownerWallet);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(933)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |		token.generateTokens(BountiesWal, 5000000000000000000000000); //generate contributors tokens
    |		token.changeController(EmaCrowdSale(crowdsale));
  > |			token.transferOwnership(ownerWallet);
    |			crowdsale.transferOwnership(ownerWallet);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(934)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Configurator':
    |		token.changeController(EmaCrowdSale(crowdsale));
    |			token.transferOwnership(ownerWallet);
  > |			crowdsale.transferOwnership(ownerWallet);
    |        }
    |      }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(935)

[33mWarning[0m for UnrestrictedWrite in contract 'Configurator':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |     }
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Configurator':
    |
    |        function deploy() onlyOwner public{
  > | 	    owner = msg.sender; 
    |	    
    |	  
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(922)

[33mWarning[0m for LockedEther in contract 'Controlled':
    |
    |
  > |contract Controlled is Pausable {
    | /// @notice The address of the controller is the only address that can call
    | ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(426)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    | /// @notice Changes the controller of the contract
    | /// @param _newController The new controller of the contract
  > | function changeController(address _newController) public onlyControllerorOwner {
    |   controller = _newController;
    | }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(435)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    */
    |    contract Ownable {
  > |     address public owner;
    |     event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |     /**
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |      * @param newOwner The address to transfer ownership to.
    |      */
  > |      function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |     event Unpause();
    |
  > |     bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |      * @dev called by the owner to pause, triggers stopped state
    |      */
  > |      function pause() onlyOwner whenNotPaused public {
    |       paused = true;
    |       emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |      * @dev called by the owner to unpause, returns to normal state
    |      */
  > |      function unpause() onlyOwner whenPaused public {
    |       paused = false;
    |       emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    | modifier onlyController { require(msg.sender == controller); _; }
    | modifier onlyControllerorOwner { require((msg.sender == controller) || (msg.sender == owner)); _; }
  > | address public controller;
    | constructor() public { controller = msg.sender;}
    | /// @notice Changes the controller of the contract
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(431)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |     }
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |      */
    |      function pause() onlyOwner whenNotPaused public {
  > |       paused = true;
    |       emit Pause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |      */
    |      function unpause() onlyOwner whenPaused public {
  > |       paused = false;
    |       emit Unpause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    | /// @param _newController The new controller of the contract
    | function changeController(address _newController) public onlyControllerorOwner {
  > |   controller = _newController;
    | }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(436)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |      */
    |      function _forwardFunds() internal {
  > |       wallet.transfer(msg.value);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(376)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |    * behavior.
    |    */
  > |    contract Crowdsale is Whitelist{
    |     using SafeMath for uint256;
    |     // The token being sold
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(224)

[31mViolation[0m for TODReceiver in contract 'Crowdsale':
    |      */
    |      function _forwardFunds() internal {
  > |       wallet.transfer(msg.value);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(376)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |      */
    |      function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |       token.transfer(_beneficiary, _tokenAmount);
    |     }
    |     /**
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(344)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |      */
    |      function _forwardFunds() internal {
  > |       wallet.transfer(msg.value);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(376)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |      */
    |      function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |       token.transfer(_beneficiary, _tokenAmount);
    |     }
    |     /**
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(344)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |       require(_token != address(0));
    |
  > |       wallet = _wallet;
    |       token = _token;
    |       startTime = starttime;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |       wallet = _wallet;
  > |       token = _token;
    |       startTime = starttime;
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(266)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |       wallet = _wallet;
    |       token = _token;
  > |       startTime = starttime;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(267)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |      
    |       if ((tokensSold > 20884500000000000000000000 ) && (tokensSold <= 30791250000000000000000000)) {
  > |         rate = 5967;
    |       }
    |       else if ((tokensSold > 30791250000000000000000000) && (tokensSold <= 39270000000000000000000000)) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |       }
    |       else if ((tokensSold > 30791250000000000000000000) && (tokensSold <= 39270000000000000000000000)) {
  > |        rate = 5865;
    |       }
    |       else if ((tokensSold > 39270000000000000000000000) && (tokensSold <= 46856250000000000000000000)) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(292)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |       }
    |       else if ((tokensSold > 39270000000000000000000000) && (tokensSold <= 46856250000000000000000000)) {
  > |        rate = 5610;
    |       }
    |       else if ((tokensSold > 46856250000000000000000000) && (tokensSold <= 35700000000000000000000000)) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(295)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |       }
    |       else if ((tokensSold > 46856250000000000000000000) && (tokensSold <= 35700000000000000000000000)) {
  > |        rate = 5355;
    |       }
    |       else if (tokensSold > 35700000000000000000000000) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(298)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |       }
    |       else if (tokensSold > 35700000000000000000000000) {
  > |        rate = 5100;
    |       }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |      uint256 weiAmount = msg.value;
    |      uint256 tokens = _getTokenAmount(weiAmount);
  > |      tokensSold = tokensSold.add(tokens);
    |      _processPurchase(_beneficiary, tokens);
    |      emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |     }
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |      */
    |      function pause() onlyOwner whenNotPaused public {
  > |       paused = true;
    |       emit Pause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |      */
    |      function unpause() onlyOwner whenPaused public {
  > |       paused = false;
    |       emit Unpause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |      function addAddressToWhitelist(address addr) onlyOwner public returns(bool success) {
    |       if (!whitelist[addr]) {
  > |         whitelist[addr] = true;
    |         emit WhitelistedAddressAdded(addr);
    |         success = true;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |      function removeAddressFromWhitelist(address addr) onlyOwner public returns(bool success) {
    |       if (whitelist[addr]) {
  > |         whitelist[addr] = false;
    |         emit WhitelistedAddressRemoved(addr);
    |         success = true;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(142)

[33mWarning[0m for DAOConstantGas in contract 'EmaCrowdSale':
    |      */
    |      function _forwardFunds() internal {
  > |       wallet.transfer(msg.value);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(376)

[33mWarning[0m for LockedEther in contract 'EmaCrowdSale':
    |
    |
  > |   contract EmaCrowdSale is Crowdsale {
    |    uint256 public hardcap;
    |    uint256 public starttime;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(383)

[31mViolation[0m for TODReceiver in contract 'EmaCrowdSale':
    |      */
    |      function _forwardFunds() internal {
  > |       wallet.transfer(msg.value);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(376)

[33mWarning[0m for UnhandledException in contract 'EmaCrowdSale':
    |      */
    |      function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |       token.transfer(_beneficiary, _tokenAmount);
    |     }
    |     /**
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(344)

[33mWarning[0m for UnhandledException in contract 'EmaCrowdSale':
    |      */
    |      function _forwardFunds() internal {
  > |       wallet.transfer(msg.value);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(376)

[33mWarning[0m for UnhandledException in contract 'EmaCrowdSale':
    |function tranferPresaleTokens(address investor, uint256 ammount)public onlyOwner{
    |    tokensSold = tokensSold.add(ammount); 
  > |    token.transferFrom(this, investor, ammount); 
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(398)

[33mWarning[0m for UnhandledException in contract 'EmaCrowdSale':
    |
    |    function setTokenTransferState(bool state) public onlyOwner {
  > |     token.changeController(this);
    |     token.enableTransfers(state);
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(402)

[33mWarning[0m for UnhandledException in contract 'EmaCrowdSale':
    |    function setTokenTransferState(bool state) public onlyOwner {
    |     token.changeController(this);
  > |     token.enableTransfers(state);
    |   }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(403)

[33mWarning[0m for UnhandledException in contract 'EmaCrowdSale':
    |
    |   function claim(address claimToken) public onlyOwner {
  > |     token.changeController(this);
    |     token.claimTokens(claimToken);
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(407)

[33mWarning[0m for UnhandledException in contract 'EmaCrowdSale':
    |   function claim(address claimToken) public onlyOwner {
    |     token.changeController(this);
  > |     token.claimTokens(claimToken);
    |   }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(408)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmaCrowdSale':
    |      */
    |      function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |       token.transfer(_beneficiary, _tokenAmount);
    |     }
    |     /**
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(344)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmaCrowdSale':
    |      */
    |      function _forwardFunds() internal {
  > |       wallet.transfer(msg.value);
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(376)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmaCrowdSale':
    |function tranferPresaleTokens(address investor, uint256 ammount)public onlyOwner{
    |    tokensSold = tokensSold.add(ammount); 
  > |    token.transferFrom(this, investor, ammount); 
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(398)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmaCrowdSale':
    |
    |    function setTokenTransferState(bool state) public onlyOwner {
  > |     token.changeController(this);
    |     token.enableTransfers(state);
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmaCrowdSale':
    |    function setTokenTransferState(bool state) public onlyOwner {
    |     token.changeController(this);
  > |     token.enableTransfers(state);
    |   }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(403)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmaCrowdSale':
    |
    |   function claim(address claimToken) public onlyOwner {
  > |     token.changeController(this);
    |     token.claimTokens(claimToken);
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(407)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmaCrowdSale':
    |   function claim(address claimToken) public onlyOwner {
    |     token.changeController(this);
  > |     token.claimTokens(claimToken);
    |   }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(408)

[31mViolation[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |       require(_token != address(0));
    |
  > |       wallet = _wallet;
    |       token = _token;
    |       startTime = starttime;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |
    |       wallet = _wallet;
  > |       token = _token;
    |       startTime = starttime;
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(266)

[31mViolation[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |       wallet = _wallet;
    |       token = _token;
  > |       startTime = starttime;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(267)

[31mViolation[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |      
    |       if ((tokensSold > 20884500000000000000000000 ) && (tokensSold <= 30791250000000000000000000)) {
  > |         rate = 5967;
    |       }
    |       else if ((tokensSold > 30791250000000000000000000) && (tokensSold <= 39270000000000000000000000)) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |       }
    |       else if ((tokensSold > 30791250000000000000000000) && (tokensSold <= 39270000000000000000000000)) {
  > |        rate = 5865;
    |       }
    |       else if ((tokensSold > 39270000000000000000000000) && (tokensSold <= 46856250000000000000000000)) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(292)

[31mViolation[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |       }
    |       else if ((tokensSold > 39270000000000000000000000) && (tokensSold <= 46856250000000000000000000)) {
  > |        rate = 5610;
    |       }
    |       else if ((tokensSold > 46856250000000000000000000) && (tokensSold <= 35700000000000000000000000)) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(295)

[31mViolation[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |       }
    |       else if ((tokensSold > 46856250000000000000000000) && (tokensSold <= 35700000000000000000000000)) {
  > |        rate = 5355;
    |       }
    |       else if (tokensSold > 35700000000000000000000000) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(298)

[31mViolation[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |       }
    |       else if (tokensSold > 35700000000000000000000000) {
  > |        rate = 5100;
    |       }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |     }
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |      */
    |      function pause() onlyOwner whenNotPaused public {
  > |       paused = true;
    |       emit Pause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |      */
    |      function unpause() onlyOwner whenPaused public {
  > |       paused = false;
    |       emit Unpause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |      function addAddressToWhitelist(address addr) onlyOwner public returns(bool success) {
    |       if (!whitelist[addr]) {
  > |         whitelist[addr] = true;
    |         emit WhitelistedAddressAdded(addr);
    |         success = true;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |      function removeAddressFromWhitelist(address addr) onlyOwner public returns(bool success) {
    |       if (whitelist[addr]) {
  > |         whitelist[addr] = false;
    |         emit WhitelistedAddressRemoved(addr);
    |         success = true;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |      uint256 weiAmount = msg.value;
    |      uint256 tokens = _getTokenAmount(weiAmount);
  > |      tokensSold = tokensSold.add(tokens);
    |      _processPurchase(_beneficiary, tokens);
    |      emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'EmaCrowdSale':
    |
    |function tranferPresaleTokens(address investor, uint256 ammount)public onlyOwner{
  > |    tokensSold = tokensSold.add(ammount); 
    |    token.transferFrom(this, investor, ammount); 
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(397)

[33mWarning[0m for LockedEther in contract 'MiniMeTokenFactory':
    |       ///  In solidity this is the way to create a contract from a contract of the
    |       ///  same class
  > |       contract MiniMeTokenFactory {
    |         /// @notice Update the DApp by creating a new token with new functionalities
    |         ///  the msg.sender becomes the controller of this clone token
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(869)

[31mViolation[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |         /// @param _transfersEnabled If true, tokens will be able to be transferred
    |         /// @return The address of the new token contract
  > |         function createCloneToken(
    |           address _parentToken,
    |           uint _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(880)

[33mWarning[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |       ///  In solidity this is the way to create a contract from a contract of the
    |       ///  same class
  > |       contract MiniMeTokenFactory {
    |         /// @notice Update the DApp by creating a new token with new functionalities
    |         ///  the msg.sender becomes the controller of this clone token
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(869)

[33mWarning[0m for UnhandledException in contract 'MiniMeTokenFactory':
    |             _transfersEnabled
    |             );
  > |           newToken.changeController(msg.sender);
    |           return newToken;
    |         }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(897)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeTokenFactory':
    |             _transfersEnabled
    |             );
  > |           newToken.changeController(msg.sender);
    |           return newToken;
    |         }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(897)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |    * functions, this simplifies the implementation of "user permissions".
    |    */
  > |    contract Ownable {
    |     address public owner;
    |     event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    */
    |    contract Ownable {
  > |     address public owner;
    |     event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |     /**
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |      * @param newOwner The address to transfer ownership to.
    |      */
  > |      function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |     }
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(42)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |    * @dev Base contract which allows children to implement an emergency stop mechanism.
    |    */
  > |    contract Pausable is Ownable {
    |     event Pause();
    |     event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    */
    |    contract Ownable {
  > |     address public owner;
    |     event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |     /**
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |      * @param newOwner The address to transfer ownership to.
    |      */
  > |      function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     event Unpause();
    |
  > |     bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |      * @dev called by the owner to pause, triggers stopped state
    |      */
  > |      function pause() onlyOwner whenNotPaused public {
    |       paused = true;
    |       emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |      * @dev called by the owner to unpause, returns to normal state
    |      */
  > |      function unpause() onlyOwner whenPaused public {
    |       paused = false;
    |       emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |     }
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |      */
    |      function pause() onlyOwner whenNotPaused public {
  > |       paused = true;
    |       emit Pause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |      */
    |      function unpause() onlyOwner whenPaused public {
  > |       paused = false;
    |       emit Unpause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(87)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    * @dev Math operations with safety checks that throw on error
    |    */
  > |    library SafeMath {
    |     /**
    |     * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(175)

[33mWarning[0m for LockedEther in contract 'Whitelist':
    |    * @dev This simplifies the implementation of "user permissions".
    |    */
  > |    contract Whitelist is Pausable {
    |     mapping(address => bool) public whitelist;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |    */
    |    contract Whitelist is Pausable {
  > |     mapping(address => bool) public whitelist;
    |
    |     event WhitelistedAddressAdded(address addr);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    */
    |    contract Ownable {
  > |     address public owner;
    |     event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |     /**
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |      * @param newOwner The address to transfer ownership to.
    |      */
  > |      function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |     event Unpause();
    |
  > |     bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |      * @dev called by the owner to pause, triggers stopped state
    |      */
  > |      function pause() onlyOwner whenNotPaused public {
    |       paused = true;
    |       emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |      * @dev called by the owner to unpause, returns to normal state
    |      */
  > |      function unpause() onlyOwner whenPaused public {
    |       paused = false;
    |       emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |      * false if all addresses were already in the whitelist
    |      */
  > |      function addAddressesToWhitelist(address[] addrs) onlyOwner public returns(bool success) {
    |       for (uint256 i = 0; i < addrs.length; i++) {
    |         if (addAddressToWhitelist(addrs[i])) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |      * false if all addresses weren't in the whitelist in the first place
    |      */
  > |      function removeAddressesFromWhitelist(address[] addrs) onlyOwner public returns(bool success) {
    |       for (uint256 i = 0; i < addrs.length; i++) {
    |         if (removeAddressFromWhitelist(addrs[i])) {
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |     }
    |   }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |      */
    |      function pause() onlyOwner whenNotPaused public {
  > |       paused = true;
    |       emit Pause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |      */
    |      function unpause() onlyOwner whenPaused public {
  > |       paused = false;
    |       emit Unpause();
    |     }
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |      function addAddressToWhitelist(address addr) onlyOwner public returns(bool success) {
    |       if (!whitelist[addr]) {
  > |         whitelist[addr] = true;
    |         emit WhitelistedAddressAdded(addr);
    |         success = true;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |      function removeAddressFromWhitelist(address addr) onlyOwner public returns(bool success) {
    |       if (whitelist[addr]) {
  > |         whitelist[addr] = false;
    |         emit WhitelistedAddressRemoved(addr);
    |         success = true;
  at /home/jiaming/mavs_srcs/contract@0xc3ee57fa8ed253e3f214048879977265967ae745.sol(142)


