reorder_contracts_2_3/test1660.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 106
column: 24
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 107
column: 25
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 109
column: 44
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 167
column: 24
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 169
column: 25
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 171
column: 39
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 174
column: 51
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 241
column: 39
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 243
column: 42
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 292
column: 41
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 94
column: 4
content: functiongetShareholderArray()constantreturns(address[]){returnshareholder;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 98
column: 4
content: functiongetShareholderArrayLength()constantreturns(uint){returnshareholder.length;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 225
column: 4
content: functiongetProposalTextArrayLength()constantreturns(uint){returnproposalText.length;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 262
column: 4
content: functiongetMyProposals()constantreturns(uint256[]){returnproposalsByShareholder[msg.sender];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 84
column: 8
content: for(uint256i=0;i<shareholder.length;i++){if(balanceOf[shareholder[i]]>0){activeShareholdersArray.push(shareholder[i]);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 299
column: 8
content: for(uint256i=0;i<votes[_proposalID].length;i++){addressvoter=votes[_proposalID][i];result=result+balanceOf[voter];}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 84
column: 8
content: for(uint256i=0;i<shareholder.length;i++){if(balanceOf[shareholder[i]]>0){activeShareholdersArray.push(shareholder[i]);}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 299
column: 8
content: for(uint256i=0;i<votes[_proposalID].length;i++){addressvoter=votes[_proposalID][i];result=result+balanceOf[voter];}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 106
column: 8
content: if(_value<1)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 107
column: 8
content: if(this==_to)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 109
column: 8
content: if(balanceOf[msg.sender]<_value)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 167
column: 8
content: if(_value<1)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 169
column: 8
content: if(this==_to)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 171
column: 8
content: if(balanceOf[_from]<_value)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 174
column: 8
content: if(_value>allowance[_from][msg.sender])throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 241
column: 8
content: if(balanceOf[msg.sender]<1)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 243
column: 8
content: if(_debatingPeriodInMinutes<1)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 292
column: 8
content: if(now<deadline[_proposalID])throw;

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 11
column: 4
content: functionreceiveApproval(address_from,uint256_value,address_share,bytes_extraData);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 62
column: 4
content: functionMetrumcoinShares(){balanceOf[msg.sender]=totalSupply;shareholderID[this]=shareholder.push(this)-1;shareholderID[msg.sender]=shareholder.push(msg.sender)-1;activeShareholdersArray.push(msg.sender);refreshActiveShareholdersArray();}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 82
column: 4
content: functionrefreshActiveShareholdersArray()returns(address[]){deleteactiveShareholdersArray;for(uint256i=0;i<shareholder.length;i++){if(balanceOf[shareholder[i]]>0){activeShareholdersArray.push(shareholder[i]);}}activeShareholdersArrayLength=activeShareholdersArray.length;returnactiveShareholdersArray;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 94
column: 4
content: functiongetShareholderArray()constantreturns(address[]){returnshareholder;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 98
column: 4
content: functiongetShareholderArrayLength()constantreturns(uint){returnshareholder.length;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 104
column: 4
content: functiontransfer(address_to,uint256_value)returns(boolsuccess){if(_value<1)throw;if(this==_to)throw;if(balanceOf[msg.sender]<_value)throw;balanceOf[msg.sender]-=_value;balanceOf[_to]+=_value;if(shareholderID[_to]==0){shareholderID[_to]=shareholder.push(_to)-1;}refreshActiveShareholdersArray();Transfer(msg.sender,_to,_value);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 134
column: 4
content: functionapproveAndCall(address_spender,uint256_value,bytes_extraData)returns(boolsuccess){allowance[msg.sender][_spender]=_value;tokenRecipientspender=tokenRecipient(_spender);spender.receiveApproval(msg.sender,_value,this,_extraData);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 160
column: 4
content: functiontransferFrom(address_from,address_to,uint256_value)returns(boolsuccess){if(_value<1)throw;if(this==_to)throw;if(balanceOf[_from]<_value)throw;if(_value>allowance[_from][msg.sender])throw;balanceOf[_from]-=_value;balanceOf[_to]+=_value;allowance[_from][msg.sender]-=_value;if(shareholderID[_to]==0){shareholderID[_to]=shareholder.push(_to)-1;}refreshActiveShareholdersArray();Transfer(_from,_to,_value);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 225
column: 4
content: functiongetProposalTextArrayLength()constantreturns(uint){returnproposalText.length;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 236
column: 4
content: functionmakeNewProposal(string_proposalDescription,uint256_debatingPeriodInMinutes)returns(uint256){if(balanceOf[msg.sender]<1)throw;if(_debatingPeriodInMinutes<1)throw;uint256id=proposalText.push(_proposalDescription)-1;deadline[id]=now+_debatingPeriodInMinutes*1minutes;proposalsByShareholder[msg.sender].push(id);votes[id].push(msg.sender);voted[id][msg.sender]=true;ProposalAdded(id,msg.sender,_proposalDescription,deadline[id]);returnid;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 262
column: 4
content: functiongetMyProposals()constantreturns(uint256[]){returnproposalsByShareholder[msg.sender];}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 266
column: 4
content: functionvoteForProposal(uint256_proposalID)returns(string){if(balanceOf[msg.sender]<1)return"no shares, vote not accepted";if(voted[_proposalID][msg.sender]){return"already voted, vote not accepted";}if(now>deadline[_proposalID]){return"vote not accepted after deadline";}votes[_proposalID].push(msg.sender);voted[_proposalID][msg.sender]=true;return"vote accepted";}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 289
column: 4
content: functioncountVotes(uint256_proposalID)returns(uint256){if(now<deadline[_proposalID])throw;if(results[_proposalID]>0)returnresults[_proposalID];uint256result=0;for(uint256i=0;i<votes[_proposalID].length;i++){addressvoter=votes[_proposalID][i];result=result+balanceOf[voter];}results[_proposalID]=result;VotingFinished(_proposalID,result);returnresult;}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 208
column: 4
content: mapping(uint256=>mapping(address=>bool))voted;

SOLIDITY_VISIBILITY :14
SOLIDITY_DEPRECATED_CONSTRUCTIONS :14
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_REVERT_REQUIRE :10
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :2

