reorder_contracts_2_3/test1672.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 21
column: 36
content: 0xbb9bc244d798123fde783fcc1c72d3bb8c189413

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 63
column: 6
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 4
column: 4
content: functiongetNewDAOAddress(uint_proposalID)constantreturns(address_newDAO);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 41
column: 2
content: functionrequiredEndowment()constantreturns(uintendowment){uintsum=0;for(uinti=0;i<untrustedProposals.length;i++){uintproposalId=untrustedProposals[i];DAOchild=whiteList[proposalId].dao;sum+=(child.totalSupply()*(untrustedTokenNumerator[i]/ratioDenominator));}returnsum;}

ruleId: SOLIDITY_DIV_MUL
patternId: 09hhh1
severity: 2
line: 46
column: 18
content: child.totalSupply()*(untrustedTokenNumerator[i]/ratioDenominator)

ruleId: SOLIDITY_DIV_MUL
patternId: 09hhh1
severity: 2
line: 59
column: 27
content: balance*(whiteList[proposalId].numerator/ratioDenominator)

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 31
column: 6
content: for(uinti=0;i<untrustedProposals.length;i++){uintproposalId=untrustedProposals[i];whiteList[proposalId]=childDAO(DAO(mainDAO.getNewDAOAddress(proposalId)),untrustedTokenNumerator[i]);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 43
column: 6
content: for(uinti=0;i<untrustedProposals.length;i++){uintproposalId=untrustedProposals[i];DAOchild=whiteList[proposalId].dao;sum+=(child.totalSupply()*(untrustedTokenNumerator[i]/ratioDenominator));}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 31
column: 6
content: for(uinti=0;i<untrustedProposals.length;i++){uintproposalId=untrustedProposals[i];whiteList[proposalId]=childDAO(DAO(mainDAO.getNewDAOAddress(proposalId)),untrustedTokenNumerator[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 43
column: 6
content: for(uinti=0;i<untrustedProposals.length;i++){uintproposalId=untrustedProposals[i];DAOchild=whiteList[proposalId].dao;sum+=(child.totalSupply()*(untrustedTokenNumerator[i]/ratioDenominator));}

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 62
column: 4
content: if(!whiteList[proposalId].dao.transferFrom(msg.sender,this,balance)||!msg.sender.send(adjustedBalance))throw;

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 2
column: 4
content: functionbalanceOf(addressaddr)returns(uint);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 3
column: 4
content: functiontransferFrom(addressfrom,addressto,uintbalance)returns(bool);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 4
column: 4
content: functiongetNewDAOAddress(uint_proposalID)constantreturns(address_newDAO);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 30
column: 2
content: functionuntrustedChildWithdraw(){for(uinti=0;i<untrustedProposals.length;i++){uintproposalId=untrustedProposals[i];whiteList[proposalId]=childDAO(DAO(mainDAO.getNewDAOAddress(proposalId)),untrustedTokenNumerator[i]);}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 41
column: 2
content: functionrequiredEndowment()constantreturns(uintendowment){uintsum=0;for(uinti=0;i<untrustedProposals.length;i++){uintproposalId=untrustedProposals[i];DAOchild=whiteList[proposalId].dao;sum+=(child.totalSupply()*(untrustedTokenNumerator[i]/ratioDenominator));}returnsum;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 56
column: 2
content: functionwithdraw(uintproposalId){uintbalance=whiteList[proposalId].dao.balanceOf(msg.sender);uintadjustedBalance=balance*(whiteList[proposalId].numerator/ratioDenominator);if(!whiteList[proposalId].dao.transferFrom(msg.sender,this,balance)||!msg.sender.send(adjustedBalance))throw;}

SOLIDITY_VISIBILITY :6
SOLIDITY_DEPRECATED_CONSTRUCTIONS :3
SOLIDITY_REVERT_REQUIRE :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_GAS_LIMIT_IN_LOOPS :2
SOLIDITY_DIV_MUL :2

