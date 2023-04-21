Processing contract: /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol:Bills
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Bills':
    |    function WithdrawEther() onlyOwner public
    |    {
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(288)

[33mWarning[0m for LockedEther in contract 'Bills':
    |pragma solidity ^0.4.11;
    |
  > |contract Bills
    |{
    |    string public name          = "Bills";
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(3)

[31mViolation[0m for TODAmount in contract 'Bills':
    |    function WithdrawEther() onlyOwner public
    |    {
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(288)

[31mViolation[0m for TODReceiver in contract 'Bills':
    |    function WithdrawEther() onlyOwner public
    |    {
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(288)

[33mWarning[0m for UnhandledException in contract 'Bills':
    |    function WithdrawEther() onlyOwner public
    |    {
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bills':
    |    function WithdrawEther() onlyOwner public
    |    {
  > |        Owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |pragma solidity ^0.4.11;
    |
  > |contract Bills
    |{
    |    string public name          = "Bills";
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |
    |contract Bills
  > |{
    |    string public name          = "Bills";
    |    string public symbol        = "BLS";
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            {
    |                require(balanceOf[this] >= 31);
  > |                balanceOf[msg.sender] += 31;
    |                balanceOf[this] -= 31;
    |                Transfer(this, msg.sender, 31);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            {
    |                require(balanceOf[this] >= 95);
  > |                balanceOf[msg.sender] += 95;
    |                balanceOf[this] -= 95;
    |                Transfer(this, msg.sender, 95);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            {
    |                require(balanceOf[this] >= 160);
  > |                balanceOf[msg.sender] += 160;
    |                balanceOf[this] -= 160;
    |                Transfer(this, msg.sender, 160);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            {
    |                require(balanceOf[this] >= 254);
  > |                balanceOf[msg.sender] += 254;
    |                balanceOf[this] -= 254;
    |                Transfer(this, msg.sender, 254);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            {
    |                require(balanceOf[this] >= 317);
  > |                balanceOf[msg.sender] += 317;
    |                balanceOf[this] -= 317;
    |                Transfer(this, msg.sender, 317);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            {
    |                require(balanceOf[this] >= 938);
  > |                balanceOf[msg.sender] += 938;
    |                balanceOf[this] -= 938;
    |                Transfer(this, msg.sender, 938);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            {
    |                require(balanceOf[this] >= 1560);
  > |                balanceOf[msg.sender] += 1560;
    |                balanceOf[this] -= 1560;
    |                Transfer(this, msg.sender, 1560);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            require(balanceOf[this] >= _Amount);
    |            
  > |            balanceOf[msg.sender] += _Amount;
    |            balanceOf[this] -= _Amount;
    |            
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            
    |            balanceOf[msg.sender] += _Amount;
  > |            balanceOf[this] -= _Amount;
    |            
    |            Transfer(this, msg.sender, _Amount);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        
    |        require(balanceOf[this] + Price >= balanceOf[this]);
  > |        balanceOf[msg.sender] -= Price;
    |        balanceOf[this] += Price;
    |        Transfer(msg.sender, this, Price);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            uint CompensateTime   = now - Advr.AddTime;
    |            
  > |            Advr.Till             = Advr.Till + CompensateTime;
    |            Advr.Status           = "Published";
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |			require(balanceOf[this] >= Advr.SpentTokens);
    |			
  > |            balanceOf[Advr.Advertiser] += Advr.SpentTokens;
    |            balanceOf[this] -= Advr.SpentTokens;
    |            Transfer(this, Advr.Advertiser, Advr.SpentTokens);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |			
    |            balanceOf[Advr.Advertiser] += Advr.SpentTokens;
  > |            balanceOf[this] -= Advr.SpentTokens;
    |            Transfer(this, Advr.Advertiser, Advr.SpentTokens);
    |            
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            Transfer(this, Advr.Advertiser, Advr.SpentTokens);
    |            
  > |            delete Advr.Advertiser;
    |            delete Advr.AdvertSrc;
    |            delete Advr.Till;
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            delete Advr.Advertiser;
    |            delete Advr.AdvertSrc;
  > |            delete Advr.Till;
    |            delete Advr.AddTime;
    |            delete Advr.SpentTokens;
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            delete Advr.AdvertSrc;
    |            delete Advr.Till;
  > |            delete Advr.AddTime;
    |            delete Advr.SpentTokens;
    |            
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |            delete Advr.Till;
    |            delete Advr.AddTime;
  > |            delete Advr.SpentTokens;
    |            
    |            Advr.Status = "Free";
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        require(Advr.BoardId == _BillToEdit && _BillToEdit > 0 && _NewPricePerDay > 0 && _NewMaxDays > 0);
    |        
  > |        Advr.BoardId          = _BillToEdit;
    |        Advr.PricePerDay      = _NewPricePerDay;
    |        Advr.MaxDays          = _NewMaxDays;
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        
    |        Advr.BoardId          = _BillToEdit;
  > |        Advr.PricePerDay      = _NewPricePerDay;
    |        Advr.MaxDays          = _NewMaxDays;
    |        Advr.AllowLeasing     = _AllowLeasing;
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        Advr.BoardId          = _BillToEdit;
    |        Advr.PricePerDay      = _NewPricePerDay;
  > |        Advr.MaxDays          = _NewMaxDays;
    |        Advr.AllowLeasing     = _AllowLeasing;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        Advr.PricePerDay      = _NewPricePerDay;
    |        Advr.MaxDays          = _NewMaxDays;
  > |        Advr.AllowLeasing     = _AllowLeasing;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        require(Advr.BoardId  != NewBoardId && NewBoardId > 0 && PricePerDay > 0 && MaxDays > 0);
    |        
  > |        Advr.BoardId          = NewBoardId;
    |        Advr.PricePerDay      = PricePerDay;
    |        Advr.MaxDays          = MaxDays;
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        
    |        Advr.BoardId          = NewBoardId;
  > |        Advr.PricePerDay      = PricePerDay;
    |        Advr.MaxDays          = MaxDays;
    |        Advr.Status           = "Free";
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        Advr.BoardId          = NewBoardId;
    |        Advr.PricePerDay      = PricePerDay;
  > |        Advr.MaxDays          = MaxDays;
    |        Advr.Status           = "Free";
    |        Advr.AllowLeasing     = _AllowLeasing;
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        require(Modr.Address != Address);
    |        
  > |        Modr.Address = Address;
    |        
    |        Moderators.push(Address);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        Modr.Address = Address;
    |        
  > |        Moderators.push(Address);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |    function DeleteBillModerator(address _Address) onlyOwner isICOend public
    |    {
  > |        delete moderators[_Address];
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |    function SetTokenPrice(uint _Price) onlyOwner isICOend public
    |    {
  > |        tokenPrice = _Price;
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'Bills':
    |    function ChangeOwner(address _Address) onlyOwner public
    |    {
  > |        Owner = _Address;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe979c1dbcf46b9935e2a46e76a4b64765edd1a9d.sol(293)


