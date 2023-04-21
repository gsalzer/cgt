Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol:DukeOfEther
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol:ShareHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'DukeOfEther':
    |        m_nOwnersMoney += (nAmount - nDemiurgsEffectiveAmount);
    |                
  > |        addrPrevDuke.transfer(nDemiurgsEffectiveAmount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(188)

[33mWarning[0m for DAOConstantGas in contract 'DukeOfEther':
    |		processShareHolderFee(nFee, strNickName);
    |        
  > |        addrPrevDuke.transfer(nPrevDukeReceived);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(232)

[33mWarning[0m for DAOConstantGas in contract 'DukeOfEther':
    |	function withdrawDukeOwnersMoney() onlyOwner
    |	{
  > |		m_addrOwner.transfer(m_nOwnersMoney);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(239)

[33mWarning[0m for LockedEther in contract 'DukeOfEther':
    |// ------
    |
  > |contract DukeOfEther is Ownable
    |{
    |	address m_addrShareHolder = 0;      // addr. of ShareHolder Profit Manager
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(46)

[31mViolation[0m for TODAmount in contract 'DukeOfEther':
    |	function withdrawDukeOwnersMoney() onlyOwner
    |	{
  > |		m_addrOwner.transfer(m_nOwnersMoney);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(239)

[31mViolation[0m for TODReceiver in contract 'DukeOfEther':
    |	function withdrawDukeOwnersMoney() onlyOwner
    |	{
  > |		m_addrOwner.transfer(m_nOwnersMoney);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(239)

[33mWarning[0m for UnhandledException in contract 'DukeOfEther':
    |        {
    |            ShareHolder contractShareHolder = ShareHolder(m_addrShareHolder);
  > |            contractShareHolder.addToShareHoldersProfit.value(nFee)(strNickName, "");
    |        }
    |	}
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(130)

[33mWarning[0m for UnhandledException in contract 'DukeOfEther':
    |        m_nOwnersMoney += (nAmount - nDemiurgsEffectiveAmount);
    |                
  > |        addrPrevDuke.transfer(nDemiurgsEffectiveAmount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(188)

[33mWarning[0m for UnhandledException in contract 'DukeOfEther':
    |		processShareHolderFee(nFee, strNickName);
    |        
  > |        addrPrevDuke.transfer(nPrevDukeReceived);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(232)

[33mWarning[0m for UnhandledException in contract 'DukeOfEther':
    |	function withdrawDukeOwnersMoney() onlyOwner
    |	{
  > |		m_addrOwner.transfer(m_nOwnersMoney);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DukeOfEther':
    |	function withdrawDukeOwnersMoney() onlyOwner
    |	{
  > |		m_addrOwner.transfer(m_nOwnersMoney);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'DukeOfEther':
    |		uint nFee = msg.value / 25;	// 4%
    |		uint nOwnersFee = msg.value / 100;	// 1%
  > |		m_nOwnersMoney += nOwnersFee;
    |
    |        uint nPrevDukeReceived = msg.value - nFee - nOwnersFee;
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'DukeOfEther':
    |	function transferOwnership(address newOwner) onlyOwner 
    |	{
  > |		m_addrOwner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'DukeOfEther':
    |	// ---
    |	
  > |    function setShareHolder(address addr) onlyOwner { m_addrShareHolder = addr; }
    |    
    |	function isDestroyed(string strCountry) constant returns (bool) { return m_Countries[strCountry].m_bIsDestroyed; }
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(244)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// --- End of ShareHolder forward declaration ---
    |
  > |contract Ownable 
    |{
    |	address m_addrOwner;
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |	// ---
    |
  > |	function transferOwnership(address newOwner) onlyOwner 
    |	{
    |		m_addrOwner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	// ---
    |
  > |	function isOwner() constant returns (bool bIsOwner) { return (m_addrOwner == msg.sender); }
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |	function transferOwnership(address newOwner) onlyOwner 
    |	{
  > |		m_addrOwner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(35)

[31mViolation[0m for LockedEther in contract 'ShareHolder':
    |
    |// --- ShareHolder forward declaration ---
  > |contract ShareHolder
    |{
    |	function addToShareHoldersProfit(string, string) payable
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'ShareHolder':
    |contract ShareHolder
    |{
  > |	function addToShareHoldersProfit(string, string) payable
    |	{
    |		// ...
  at /home/jiaming/mavs_srcs/contract@0x1ca0a2632519021798cb0e0a073371c8ddfcdde5.sol(6)


