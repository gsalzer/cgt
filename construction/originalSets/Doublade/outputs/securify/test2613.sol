Processing contract: /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol:BuddhaTower
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'BuddhaTower':
    |    {
    |        require(ethOf[msg.sender] >= _amount);
  > |        msg.sender.transfer(_amount);
    |        ethOf[msg.sender] -= _amount;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(164)

[31mViolation[0m for DAOConstantGas in contract 'BuddhaTower':
    |
    |    function takeDevCut() public onlyOwner() {
  > |        addr4.transfer(devCut);
    |        devCut = 0;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(417)

[33mWarning[0m for LockedEther in contract 'BuddhaTower':
    |pragma solidity ^0.4.22;
    |
  > |contract BuddhaTower {
    |    event onBuy
    |    (
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(3)

[31mViolation[0m for TODAmount in contract 'BuddhaTower':
    |
    |    function takeDevCut() public onlyOwner() {
  > |        addr4.transfer(devCut);
    |        devCut = 0;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(417)

[33mWarning[0m for TODAmount in contract 'BuddhaTower':
    |    {
    |        require(ethOf[msg.sender] >= _amount);
  > |        msg.sender.transfer(_amount);
    |        ethOf[msg.sender] -= _amount;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(164)

[33mWarning[0m for TODReceiver in contract 'BuddhaTower':
    |    {
    |        require(ethOf[msg.sender] >= _amount);
  > |        msg.sender.transfer(_amount);
    |        ethOf[msg.sender] -= _amount;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(164)

[33mWarning[0m for TODReceiver in contract 'BuddhaTower':
    |
    |    function takeDevCut() public onlyOwner() {
  > |        addr4.transfer(devCut);
    |        devCut = 0;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(417)

[33mWarning[0m for UnhandledException in contract 'BuddhaTower':
    |    {
    |        require(ethOf[msg.sender] >= _amount);
  > |        msg.sender.transfer(_amount);
    |        ethOf[msg.sender] -= _amount;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(164)

[33mWarning[0m for UnhandledException in contract 'BuddhaTower':
    |
    |    function takeDevCut() public onlyOwner() {
  > |        addr4.transfer(devCut);
    |        devCut = 0;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BuddhaTower':
    |
    |    function takeDevCut() public onlyOwner() {
  > |        addr4.transfer(devCut);
    |        devCut = 0;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BuddhaTower':
    |    {
    |        require(ethOf[msg.sender] >= _amount);
  > |        msg.sender.transfer(_amount);
    |        ethOf[msg.sender] -= _amount;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |pragma solidity ^0.4.22;
    |
  > |contract BuddhaTower {
    |    event onBuy
    |    (
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |    	if(inviterOf[msg.sender]==0x0 && qualified[_inviter] && _inviter != msg.sender)
    |    	{
  > |    		inviterOf[msg.sender] = _inviter;
    |    	}
    |        buy(_amount);
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        require(ethOf[msg.sender] >= _amount);
    |        msg.sender.transfer(_amount);
  > |        ethOf[msg.sender] -= _amount;
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |    function getQualified() public{
    |    	require(balanceOf[msg.sender] >= 1000000000000000000);
  > |    	qualified[msg.sender] = true;
    |    	emit onQualifySuccess(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |		require(amount > 0);
    |		uint256 cost = (price + height*step + price + (height+amount-1)*step)*amount/2;
  > |		ethOf[msg.sender] += msg.value - cost;
    |		
    |		roundData_[_rId].peakPool += cost*3/10;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |		ethOf[msg.sender] += msg.value - cost;
    |		
  > |		roundData_[_rId].peakPool += cost*3/10;
    |		roundData_[_rId].lotteryPool += cost/10;
    |		roundData_[_rId].tokenPot += cost*17/100;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |		
    |		roundData_[_rId].peakPool += cost*3/10;
  > |		roundData_[_rId].lotteryPool += cost/10;
    |		roundData_[_rId].tokenPot += cost*17/100;
    |		devCut += cost*55/1000;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |		roundData_[_rId].peakPool += cost*3/10;
    |		roundData_[_rId].lotteryPool += cost/10;
  > |		roundData_[_rId].tokenPot += cost*17/100;
    |		devCut += cost*55/1000;
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |		roundData_[_rId].lotteryPool += cost/10;
    |		roundData_[_rId].tokenPot += cost*17/100;
  > |		devCut += cost*55/1000;
    |
    |        ethOf[addr1] += cost*35/1000;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |		devCut += cost*55/1000;
    |
  > |        ethOf[addr1] += cost*35/1000;
    |        ethOf[addr2] += cost*20/1000;
    |        ethOf[addr3] += cost*20/1000;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |
    |        ethOf[addr1] += cost*35/1000;
  > |        ethOf[addr2] += cost*20/1000;
    |        ethOf[addr3] += cost*20/1000;
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        ethOf[addr1] += cost*35/1000;
    |        ethOf[addr2] += cost*20/1000;
  > |        ethOf[addr3] += cost*20/1000;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        if ((balanceOf[msg.sender] < 20000000000000000000 || leefs[msg.sender][1] < 3)&& balanceOf[msg.sender] + tokenGet >= 20000000000000000000 && leefs[msg.sender][1] >= 3)
    |        	leefs[inviterOf[msg.sender]][2]+=1;
  > |        balanceOf[msg.sender] += tokenGet;
    |        totalToken+=tokenGet;
    |        address inviter = inviterOf[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        //防止溢出
    |        require(ethOf[finalWinner]+roundData_[_rId].peakPool*8/10 >= ethOf[finalWinner]);
  > |        ethOf[finalWinner] += roundData_[_rId].peakPool*8/10;
    |        finalIncome[finalWinner] += roundData_[_rId].peakPool*8/10;
    |        roundData_[_rId].finalWinner = finalWinner;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        require(ethOf[finalWinner]+roundData_[_rId].peakPool*8/10 >= ethOf[finalWinner]);
    |        ethOf[finalWinner] += roundData_[_rId].peakPool*8/10;
  > |        finalIncome[finalWinner] += roundData_[_rId].peakPool*8/10;
    |        roundData_[_rId].finalWinner = finalWinner;
    |        roundData_[_rId].maxHeight = height;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        ethOf[finalWinner] += roundData_[_rId].peakPool*8/10;
    |        finalIncome[finalWinner] += roundData_[_rId].peakPool*8/10;
  > |        roundData_[_rId].finalWinner = finalWinner;
    |        roundData_[_rId].maxHeight = height;
    |        height = 0;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(390)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        finalIncome[finalWinner] += roundData_[_rId].peakPool*8/10;
    |        roundData_[_rId].finalWinner = finalWinner;
  > |        roundData_[_rId].maxHeight = height;
    |        height = 0;
    |        step = 100000000000;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        roundData_[_rId].finalWinner = finalWinner;
    |        roundData_[_rId].maxHeight = height;
  > |        height = 0;
    |        step = 100000000000;
    |        _rId++;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        roundData_[_rId].maxHeight = height;
    |        height = 0;
  > |        step = 100000000000;
    |        _rId++;
    |        roundData_[_rId].peakPool = roundData_[_rId-1].peakPool*2/10;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        height = 0;
    |        step = 100000000000;
  > |        _rId++;
    |        roundData_[_rId].peakPool = roundData_[_rId-1].peakPool*2/10;
    |        ethOf[owner] += roundData_[_rId-1].lotteryPool;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        step = 100000000000;
    |        _rId++;
  > |        roundData_[_rId].peakPool = roundData_[_rId-1].peakPool*2/10;
    |        ethOf[owner] += roundData_[_rId-1].lotteryPool;
    |        roundData_[_rId].lotteryPool = 0; 
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        _rId++;
    |        roundData_[_rId].peakPool = roundData_[_rId-1].peakPool*2/10;
  > |        ethOf[owner] += roundData_[_rId-1].lotteryPool;
    |        roundData_[_rId].lotteryPool = 0; 
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        roundData_[_rId].peakPool = roundData_[_rId-1].peakPool*2/10;
    |        ethOf[owner] += roundData_[_rId-1].lotteryPool;
  > |        roundData_[_rId].lotteryPool = 0; 
    |
    |        roundData_[_rId].startTime = now;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |        roundData_[_rId].lotteryPool = 0; 
    |
  > |        roundData_[_rId].startTime = now;
    |        roundData_[_rId].endTime = now+86400;
    |        emit onTimeup(_rId-1,finalWinner);
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |
    |        roundData_[_rId].startTime = now;
  > |        roundData_[_rId].endTime = now+86400;
    |        emit onTimeup(_rId-1,finalWinner);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |//====================/=========================================================
    |    function activate() public onlyOwner(){
  > |    	height = 0;
    |    	_rId = 0;
    |    	roundData_[_rId].startTime = now;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |    function activate() public onlyOwner(){
    |    	height = 0;
  > |    	_rId = 0;
    |    	roundData_[_rId].startTime = now;
    |    	roundData_[_rId].endTime = now + 86400;
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |    	height = 0;
    |    	_rId = 0;
  > |    	roundData_[_rId].startTime = now;
    |    	roundData_[_rId].endTime = now + 86400;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |    	_rId = 0;
    |    	roundData_[_rId].startTime = now;
  > |    	roundData_[_rId].endTime = now + 86400;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |    function takeDevCut() public onlyOwner() {
    |        addr4.transfer(devCut);
  > |        devCut = 0;
    |    }    
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |
    |    function emergencyStart() public onlyOwner() {
  > |        emergencySwitch = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(426)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |
    |    function emergencyClose() public onlyOwner() {
  > |        emergencySwitch = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |
    |    function addToBanlist(address addr) public onlyOwner() {
  > |    	banAddress[addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(434)

[33mWarning[0m for UnrestrictedWrite in contract 'BuddhaTower':
    |
    |    function moveFromBanlist(address addr) public onlyOwner() {
  > |    	banAddress[addr] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaf5398f054ccc45043ce162954bd8cb39f0ba75.sol(438)


