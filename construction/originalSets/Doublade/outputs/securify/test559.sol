Processing contract: /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol:ChiMarket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol:ERC20token
Processing contract: /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol:ERC721Token
[33mWarning[0m for DAOConstantGas in contract 'ChiMarket':
    |
    |        if(return_ETH_amount > 0){
  > |            msg.sender.transfer(return_ETH_amount); // return extra ETH
    |        }
    |        require(ChiToken.transfer(msg.sender, _chi_amount)); // send CHI tokens
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(97)

[33mWarning[0m for DAOConstantGas in contract 'ChiMarket':
    |
    |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
  > |        msg.sender.transfer(eth_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(113)

[33mWarning[0m for DAOConstantGas in contract 'ChiMarket':
    |    function moveEther(address _target, uint256 _amount) public onlyOwner {
    |        require(_amount <= address(this).balance);
  > |        _target.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(133)

[33mWarning[0m for DAOConstantGas in contract 'ChiMarket':
    |        require(_eth_amount <= eth_balance);
    |        
  > |        msg.sender.transfer(_eth_amount);
    |        require(ChiToken.transfer(msg.sender, _chi_amount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(157)

[33mWarning[0m for LockedEther in contract 'ChiMarket':
    |}
    |
  > |contract ChiMarket {
    |    ERC20token ChiToken = ERC20token(0x71E1f8E809Dc8911FCAC95043bC94929a36505A5);
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'ChiMarket':
    |    // Allows owner to move CHI (e.g. to an updated contract), also to rescue 
    |    // other ERC20 tokens sent by mistake.    
  > |    function moveERC20Tokens(address _tokenContract, address _to, uint _val) public onlyOwner {
    |        ERC20token token = ERC20token(_tokenContract);
    |        require(token.transfer(_to, _val));
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'ChiMarket':
    |    // Hopefully this doesn't get used, but it allows for gotchi rescue if someone sends
    |    // their gotchi (or a cat) to the contract by mistake.
  > |    function moveERC721Tokens(address _tokenContract, address _to, uint256 _tid) public onlyOwner {
    |        ERC721Token token = ERC721Token(_tokenContract);
    |        token.transferFrom(this, _to, _tid);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'ChiMarket':
    |
    |    // Allows the owner to move ether, for example to an updated contract  
  > |    function moveEther(address _target, uint256 _amount) public onlyOwner {
    |        require(_amount <= address(this).balance);
    |        _target.transfer(_amount);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'ChiMarket':
    | 
    |    // change the owner
  > |    function setOwner(address _owner) public onlyOwner {
    |        owner = _owner;    
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'ChiMarket':
    |    // All of the ETH included in the TX is converted to CHI
    |    // requires at least _min_chi_amount of CHI for that ETH, otherwise TX fails
  > |    function limitBuy(uint256 _chi_amount) public payable{
    |        require(_chi_amount > 0);
    |        uint256 eth_amount = calcBUYoffer(_chi_amount, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'ChiMarket':
    |    // require at least _min_eth_amount for that CHI, otherwise TX fails
    |    // Make sure to set CHI allowance before calling this function
  > |    function limitSell(uint256 _chi_amount, uint256 _min_eth_amount) public {
    |        require(ChiToken.allowance(msg.sender, this) >= _chi_amount);
    |        uint256 eth_amount = calcSELLoffer(_chi_amount);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'ChiMarket':
    |
    |    // Set the market spread (actually it's half of the spread).    
  > |    function setSpread(uint256 _halfspread) public onlyOwner {
    |        require(_halfspread <= 50);
    |        market_halfspread = _halfspread;        
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'ChiMarket':
    |    // Allows for deposit of ETH and CHI at the same time (to avoid temporary imbalance
    |    // in the market)
  > |    function depositBoth(uint256 _chi_amount) public payable onlyOwner {
    |        require(ChiToken.allowance(msg.sender, this) >= _chi_amount);
    |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'ChiMarket':
    |    // Allows for withdrawal of ETH and CHI at the same time (to avoid temporary imbalance
    |    // in the market)
  > |    function withdrawBoth(uint256 _chi_amount, uint256 _eth_amount) public onlyOwner {
    |        uint256 eth_balance = address(this).balance;
    |        uint256 chi_balance = ChiToken.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(151)

[33mWarning[0m for TODAmount in contract 'ChiMarket':
    |    function moveEther(address _target, uint256 _amount) public onlyOwner {
    |        require(_amount <= address(this).balance);
  > |        _target.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(133)

[33mWarning[0m for TODAmount in contract 'ChiMarket':
    |        require(_eth_amount <= eth_balance);
    |        
  > |        msg.sender.transfer(_eth_amount);
    |        require(ChiToken.transfer(msg.sender, _chi_amount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(157)

[33mWarning[0m for TODAmount in contract 'ChiMarket':
    |
    |        if(return_ETH_amount > 0){
  > |            msg.sender.transfer(return_ETH_amount); // return extra ETH
    |        }
    |        require(ChiToken.transfer(msg.sender, _chi_amount)); // send CHI tokens
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(97)

[33mWarning[0m for TODAmount in contract 'ChiMarket':
    |
    |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
  > |        msg.sender.transfer(eth_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(113)

[33mWarning[0m for TODReceiver in contract 'ChiMarket':
    |
    |        if(return_ETH_amount > 0){
  > |            msg.sender.transfer(return_ETH_amount); // return extra ETH
    |        }
    |        require(ChiToken.transfer(msg.sender, _chi_amount)); // send CHI tokens
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(97)

[33mWarning[0m for TODReceiver in contract 'ChiMarket':
    |
    |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
  > |        msg.sender.transfer(eth_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(113)

[33mWarning[0m for TODReceiver in contract 'ChiMarket':
    |    function moveEther(address _target, uint256 _amount) public onlyOwner {
    |        require(_amount <= address(this).balance);
  > |        _target.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(133)

[33mWarning[0m for TODReceiver in contract 'ChiMarket':
    |        require(_eth_amount <= eth_balance);
    |        
  > |        msg.sender.transfer(_eth_amount);
    |        require(ChiToken.transfer(msg.sender, _chi_amount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(157)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |    function calcSELLoffer(uint256 chi_amount) public view returns(uint256){
    |        uint256 eth_balance = address(this).balance;
  > |        uint256 chi_balance = ChiToken.balanceOf(this);
    |        uint256 eth_amount;
    |        require(eth_balance > 0 && chi_balance > 0);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(57)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |    function calcBUYoffer(uint256 _chi_amount, uint256 _offset_eth) public view returns(uint256){
    |        uint256 eth_balance = address(this).balance - _offset_eth;
  > |        uint256 chi_balance = ChiToken.balanceOf(this);
    |        uint256 eth_amount;
    |        require(eth_balance > 0 && chi_balance > 0);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(74)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |
    |        if(return_ETH_amount > 0){
  > |            msg.sender.transfer(return_ETH_amount); // return extra ETH
    |        }
    |        require(ChiToken.transfer(msg.sender, _chi_amount)); // send CHI tokens
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(97)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |            msg.sender.transfer(return_ETH_amount); // return extra ETH
    |        }
  > |        require(ChiToken.transfer(msg.sender, _chi_amount)); // send CHI tokens
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(99)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |    // Make sure to set CHI allowance before calling this function
    |    function limitSell(uint256 _chi_amount, uint256 _min_eth_amount) public {
  > |        require(ChiToken.allowance(msg.sender, this) >= _chi_amount);
    |        uint256 eth_amount = calcSELLoffer(_chi_amount);
    |        require(eth_amount >= _min_eth_amount);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(107)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |        require(eth_amount > 0);
    |
  > |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
    |        msg.sender.transfer(eth_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(112)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |
    |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
  > |        msg.sender.transfer(eth_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(113)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |    function moveERC20Tokens(address _tokenContract, address _to, uint _val) public onlyOwner {
    |        ERC20token token = ERC20token(_tokenContract);
  > |        require(token.transfer(_to, _val));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(120)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |    function moveERC721Tokens(address _tokenContract, address _to, uint256 _tid) public onlyOwner {
    |        ERC721Token token = ERC721Token(_tokenContract);
  > |        token.transferFrom(this, _to, _tid);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(127)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |    function moveEther(address _target, uint256 _amount) public onlyOwner {
    |        require(_amount <= address(this).balance);
  > |        _target.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(133)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |    // in the market)
    |    function depositBoth(uint256 _chi_amount) public payable onlyOwner {
  > |        require(ChiToken.allowance(msg.sender, this) >= _chi_amount);
    |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(145)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |    function depositBoth(uint256 _chi_amount) public payable onlyOwner {
    |        require(ChiToken.allowance(msg.sender, this) >= _chi_amount);
  > |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(146)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |    function withdrawBoth(uint256 _chi_amount, uint256 _eth_amount) public onlyOwner {
    |        uint256 eth_balance = address(this).balance;
  > |        uint256 chi_balance = ChiToken.balanceOf(this);
    |        require(_chi_amount <= chi_balance);
    |        require(_eth_amount <= eth_balance);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(153)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |        require(_eth_amount <= eth_balance);
    |        
  > |        msg.sender.transfer(_eth_amount);
    |        require(ChiToken.transfer(msg.sender, _chi_amount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(157)

[33mWarning[0m for UnhandledException in contract 'ChiMarket':
    |        
    |        msg.sender.transfer(_eth_amount);
  > |        require(ChiToken.transfer(msg.sender, _chi_amount));
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(158)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |
    |        if(return_ETH_amount > 0){
  > |            msg.sender.transfer(return_ETH_amount); // return extra ETH
    |        }
    |        require(ChiToken.transfer(msg.sender, _chi_amount)); // send CHI tokens
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(97)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |
    |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
  > |        msg.sender.transfer(eth_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |    function calcSELLoffer(uint256 chi_amount) public view returns(uint256){
    |        uint256 eth_balance = address(this).balance;
  > |        uint256 chi_balance = ChiToken.balanceOf(this);
    |        uint256 eth_amount;
    |        require(eth_balance > 0 && chi_balance > 0);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(57)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |    function calcBUYoffer(uint256 _chi_amount, uint256 _offset_eth) public view returns(uint256){
    |        uint256 eth_balance = address(this).balance - _offset_eth;
  > |        uint256 chi_balance = ChiToken.balanceOf(this);
    |        uint256 eth_amount;
    |        require(eth_balance > 0 && chi_balance > 0);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |            msg.sender.transfer(return_ETH_amount); // return extra ETH
    |        }
  > |        require(ChiToken.transfer(msg.sender, _chi_amount)); // send CHI tokens
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |    // Make sure to set CHI allowance before calling this function
    |    function limitSell(uint256 _chi_amount, uint256 _min_eth_amount) public {
  > |        require(ChiToken.allowance(msg.sender, this) >= _chi_amount);
    |        uint256 eth_amount = calcSELLoffer(_chi_amount);
    |        require(eth_amount >= _min_eth_amount);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(107)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |        require(eth_amount > 0);
    |
  > |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
    |        msg.sender.transfer(eth_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |    function moveERC20Tokens(address _tokenContract, address _to, uint _val) public onlyOwner {
    |        ERC20token token = ERC20token(_tokenContract);
  > |        require(token.transfer(_to, _val));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |    function moveERC721Tokens(address _tokenContract, address _to, uint256 _tid) public onlyOwner {
    |        ERC721Token token = ERC721Token(_tokenContract);
  > |        token.transferFrom(this, _to, _tid);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |    // in the market)
    |    function depositBoth(uint256 _chi_amount) public payable onlyOwner {
  > |        require(ChiToken.allowance(msg.sender, this) >= _chi_amount);
    |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |    function depositBoth(uint256 _chi_amount) public payable onlyOwner {
    |        require(ChiToken.allowance(msg.sender, this) >= _chi_amount);
  > |        require(ChiToken.transferFrom(msg.sender, this, _chi_amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |    function withdrawBoth(uint256 _chi_amount, uint256 _eth_amount) public onlyOwner {
    |        uint256 eth_balance = address(this).balance;
  > |        uint256 chi_balance = ChiToken.balanceOf(this);
    |        require(_chi_amount <= chi_balance);
    |        require(_eth_amount <= eth_balance);
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(153)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |        
    |        msg.sender.transfer(_eth_amount);
  > |        require(ChiToken.transfer(msg.sender, _chi_amount));
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(158)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |    function moveEther(address _target, uint256 _amount) public onlyOwner {
    |        require(_amount <= address(this).balance);
  > |        _target.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChiMarket':
    |        require(_eth_amount <= eth_balance);
    |        
  > |        msg.sender.transfer(_eth_amount);
    |        require(ChiToken.transfer(msg.sender, _chi_amount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'ChiMarket':
    |    function setSpread(uint256 _halfspread) public onlyOwner {
    |        require(_halfspread <= 50);
  > |        market_halfspread = _halfspread;        
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'ChiMarket':
    |    // change the owner
    |    function setOwner(address _owner) public onlyOwner {
  > |        owner = _owner;    
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x23ff342055b7c27bdc9e20dd416530e650082cf3.sol(163)


