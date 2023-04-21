Processing contract: /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol:GraphenePowerToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is owned,Utils {
    |    
    |    //*** Pre-sale ***//
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |	}
    |
  > |	function changeOwner(address newOwner) onlyOwner {
    |		owner = newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |	}
    |
  > |	function changeServer(address newServer) onlyOwner {
    |		server = newServer;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |    
    |    //***Balance***//
  > |    mapping (address => uint256) public balanceOf;
    |    
    |    //*** Tranfer ***//
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |contract owned {
  > |	address public owner;
    |	address public server;
    |
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract owned {
    |	address public owner;
  > |	address public server;
    |
    |	function owned() {
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    
    |    //*** GraphenePowerCrowdsale ***//
  > |    function GraphenePowerCrowdsale(){
    |        balanceOf[this]=500000000;
    |        preSaleAddress=0xC07850969A0EC345A84289f9C5bb5F979f27110f;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    
    |    //*** Is ico closed ***//
  > |    function isIcoClosed() constant returns (bool closed) {
    |		return ((icoStart+(35*24*60*60)) >= now);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    
    |    //*** Is preSale closed ***//
  > |    function isPreSaleClosed() constant returns (bool closed) {
    |		return (preSaleEnd >= now);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	
    |	//*** Get Bounty Tokens ***//
  > |	function getBountyTokens() onlyOwner{
    |	    require(bountyTokens>0);
    |	    payment(bountyAddress,bountyTokens);
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	
    |	//*** Get Founders Tokens ***//
  > |	function getFoundersTokens() onlyOwner{
    |	    require(founderTokens>0);
    |	    payment(founderAddress,founderTokens);
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	
    |	//*** Get Advisers,Consultants Tokens ***//
  > |	function getAdvisersConsultantsTokens() onlyOwner{
    |	    require(advisersConsultantTokens>0);
    |	    payment(advisersConsultantsAddress,advisersConsultantTokens);
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |	
    |	//*** Payment ***//
  > |    function payment(address _from,uint256 _tokens) internal{
    |        if(balanceOf[this] > _tokens){
    |            balanceOf[msg.sender] += _tokens;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    //*** GraphenePowerCrowdsale ***//
    |    function GraphenePowerCrowdsale(){
  > |        balanceOf[this]=500000000;
    |        preSaleAddress=0xC07850969A0EC345A84289f9C5bb5F979f27110f;
    |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function GraphenePowerCrowdsale(){
    |        balanceOf[this]=500000000;
  > |        preSaleAddress=0xC07850969A0EC345A84289f9C5bb5F979f27110f;
    |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
    |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        balanceOf[this]=500000000;
    |        preSaleAddress=0xC07850969A0EC345A84289f9C5bb5F979f27110f;
  > |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
    |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
    |        bountyAddress=0xD53E82Aea770feED8e57433D3D61674caEC1D1Be;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        preSaleAddress=0xC07850969A0EC345A84289f9C5bb5F979f27110f;
    |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
  > |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
    |        bountyAddress=0xD53E82Aea770feED8e57433D3D61674caEC1D1Be;
    |        founderAddress=0xDA0D3Dad39165EA2d7386f18F96664Ee2e9FD8db;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
    |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
  > |        bountyAddress=0xD53E82Aea770feED8e57433D3D61674caEC1D1Be;
    |        founderAddress=0xDA0D3Dad39165EA2d7386f18F96664Ee2e9FD8db;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
    |        bountyAddress=0xD53E82Aea770feED8e57433D3D61674caEC1D1Be;
  > |        founderAddress=0xDA0D3Dad39165EA2d7386f18F96664Ee2e9FD8db;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |	    require(bountyTokens>0);
    |	    payment(bountyAddress,bountyTokens);
  > |	    bountyTokens=0;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |	    require(founderTokens>0);
    |	    payment(founderAddress,founderTokens);
  > |	    founderTokens=0;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |	    require(advisersConsultantTokens>0);
    |	    payment(advisersConsultantsAddress,advisersConsultantTokens);
  > |	    advisersConsultantTokens=0;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if(balanceOf[this] > _tokens){
    |            balanceOf[msg.sender] += _tokens;
  > |            balanceOf[this] -= _tokens;
    |            Transfer(this, _from, _tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    function payment(address _from,uint256 _tokens) internal{
    |        if(balanceOf[this] > _tokens){
  > |            balanceOf[msg.sender] += _tokens;
    |            balanceOf[this] -= _tokens;
    |            Transfer(this, _from, _tokens);
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |	function changeOwner(address newOwner) onlyOwner {
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |	function changeServer(address newServer) onlyOwner {
  > |		server = newServer;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |        if(balanceOf[this] > _tokens){
    |            balanceOf[msg.sender] += _tokens;
  > |            balanceOf[this] -= _tokens;
    |            Transfer(this, _from, _tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(126)

[33mWarning[0m for LockedEther in contract 'GraphenePowerToken':
    |}
    |
  > |contract GraphenePowerToken is Crowdsale {
    |    
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |    //*** GraphenePowerCrowdsale ***//
    |    function GraphenePowerCrowdsale(){
  > |        balanceOf[this]=500000000;
    |        preSaleAddress=0xC07850969A0EC345A84289f9C5bb5F979f27110f;
    |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |    function GraphenePowerCrowdsale(){
    |        balanceOf[this]=500000000;
  > |        preSaleAddress=0xC07850969A0EC345A84289f9C5bb5F979f27110f;
    |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
    |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |        balanceOf[this]=500000000;
    |        preSaleAddress=0xC07850969A0EC345A84289f9C5bb5F979f27110f;
  > |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
    |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
    |        bountyAddress=0xD53E82Aea770feED8e57433D3D61674caEC1D1Be;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |        preSaleAddress=0xC07850969A0EC345A84289f9C5bb5F979f27110f;
    |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
  > |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
    |        bountyAddress=0xD53E82Aea770feED8e57433D3D61674caEC1D1Be;
    |        founderAddress=0xDA0D3Dad39165EA2d7386f18F96664Ee2e9FD8db;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |        icoAddress=0x1C21Cf57BF4e2dd28883eE68C03a9725056D29F1;
    |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
  > |        bountyAddress=0xD53E82Aea770feED8e57433D3D61674caEC1D1Be;
    |        founderAddress=0xDA0D3Dad39165EA2d7386f18F96664Ee2e9FD8db;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |        advisersConsultantsAddress=0xe8B6dA1B801b7F57e3061C1c53a011b31C9315C7;
    |        bountyAddress=0xD53E82Aea770feED8e57433D3D61674caEC1D1Be;
  > |        founderAddress=0xDA0D3Dad39165EA2d7386f18F96664Ee2e9FD8db;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |	       require(balanceOf[msg.sender] >= _value);
    |           balanceOf[msg.sender] -= _value;
  > |           balanceOf[_to] += _value;
    |           Transfer(msg.sender, _to, _value);
    |		   return true;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |    function payment(address _from,uint256 _tokens) internal{
    |        if(balanceOf[this] > _tokens){
  > |            balanceOf[msg.sender] += _tokens;
    |            balanceOf[this] -= _tokens;
    |            Transfer(this, _from, _tokens);
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |		if (transfersEnable) {
    |	       require(balanceOf[msg.sender] >= _value);
  > |           balanceOf[msg.sender] -= _value;
    |           balanceOf[_to] += _value;
    |           Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |
    |	function changeOwner(address newOwner) onlyOwner {
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |
    |	function changeServer(address newServer) onlyOwner {
  > |		server = newServer;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |	    require(bountyTokens>0);
    |	    payment(bountyAddress,bountyTokens);
  > |	    bountyTokens=0;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |	    require(founderTokens>0);
    |	    payment(founderAddress,founderTokens);
  > |	    founderTokens=0;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |	    require(advisersConsultantTokens>0);
    |	    payment(advisersConsultantsAddress,advisersConsultantTokens);
  > |	    advisersConsultantTokens=0;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |        if(balanceOf[this] > _tokens){
    |            balanceOf[msg.sender] += _tokens;
  > |            balanceOf[this] -= _tokens;
    |            Transfer(this, _from, _tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |                 require(icoSaleTotalTokens >= tokensWeek1);
    |                 payment(msg.sender,tokensWeek1);
  > |                 icoSaleTotalTokens-=tokensWeek1;
    |            }
    |            else if((icoStart+(14*24*60*60)) >= now){
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |                 require(icoSaleTotalTokens >= tokensWeek2);
    |                 payment(msg.sender,tokensWeek2);
  > |                 icoSaleTotalTokens-=tokensWeek2;
    |            }
    |            else if((icoStart+(21*24*60*60)) >= now){
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |                 require(icoSaleTotalTokens >= tokensWeek3);
    |                 payment(msg.sender,tokensWeek3);
  > |                 icoSaleTotalTokens-=tokensWeek3;
    |            }
    |            else if((icoStart+(28*24*60*60)) >= now){
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |                 require(icoSaleTotalTokens >= tokensWeek4);
    |                 payment(msg.sender,tokensWeek4);
  > |                 icoSaleTotalTokens-=tokensWeek4;
    |            }
    |            else if((icoStart+(35*24*60*60)) >= now){
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |                 require(icoSaleTotalTokens >= tokensWeek5);
    |                 payment(msg.sender, tokensWeek5);
  > |                 icoSaleTotalTokens-=tokensWeek5;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'GraphenePowerToken':
    |	function transfersEnabled() onlyOwner{
    |	    require(!transfersEnable);
  > |	    transfersEnable=true;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(218)

[33mWarning[0m for LockedEther in contract 'Utils':
    |
    |
  > |contract Utils {
    |
    |	function Utils() {
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(32)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.18;
    |
  > |contract owned {
    |	address public owner;
    |	address public server;
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |	}
    |
  > |	function changeOwner(address newOwner) onlyOwner {
    |		owner = newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |	}
    |
  > |	function changeServer(address newServer) onlyOwner {
    |		server = newServer;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |	address public owner;
    |	address public server;
    |
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |contract owned {
    |	address public owner;
  > |	address public server;
    |
    |	function owned() {
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |	function changeOwner(address newOwner) onlyOwner {
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |	function changeServer(address newServer) onlyOwner {
  > |		server = newServer;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xca346d7550ad8796b757a9a9f00616d56474dd81.sol(17)


