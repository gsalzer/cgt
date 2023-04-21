Processing contract: /home/jiaming/mavs_srcs/contract@0x3edbf38df1f895e639d705aaadb5430dbb7f894b.sol:FORM_2019_01001
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'FORM_2019_01001':
    |pragma solidity 		^0.4.25		;	// 0.4.25+commit.59dbf8f1.Emscripten.clang					
    |										
  > |contract		FORM_2019_01001		{						
    |										
    |	address	owner	;							
  at /home/jiaming/mavs_srcs/contract@0x3edbf38df1f895e639d705aaadb5430dbb7f894b.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'FORM_2019_01001':
    |pragma solidity 		^0.4.25		;	// 0.4.25+commit.59dbf8f1.Emscripten.clang					
    |										
  > |contract		FORM_2019_01001		{						
    |										
    |	address	owner	;							
  at /home/jiaming/mavs_srcs/contract@0x3edbf38df1f895e639d705aaadb5430dbb7f894b.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'FORM_2019_01001':
    |										
    |	function	NewForm		()	public	{				
  > |		owner	= msg.sender;							
    |	}									
    |										
  at /home/jiaming/mavs_srcs/contract@0x3edbf38df1f895e639d705aaadb5430dbb7f894b.sol(8)

[33mWarning[0m for UnrestrictedWrite in contract 'FORM_2019_01001':
    |pragma solidity 		^0.4.25		;	// 0.4.25+commit.59dbf8f1.Emscripten.clang					
    |										
  > |contract		FORM_2019_01001		{						
    |										
    |	address	owner	;							
  at /home/jiaming/mavs_srcs/contract@0x3edbf38df1f895e639d705aaadb5430dbb7f894b.sol(3)


