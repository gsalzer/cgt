reorder_contracts_2_3/test3619.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 11
column: 2
content: functionstate(uintid)constantinternalreturns(State){if(id==1){returnState(false,s1);}if(id==2){returnState(false,s2);}if(id==3){returnState(false,s3);}if(id==4){returnState(false,s4);}if(id==5){returnState(false,s5);}if(id==6){returnState(false,s6);}if(id==7){returnState(false,s7);}if(id==8){returnState(false,s8);}if(id==9){returnState(true,s9);}if(id==10){returnState(true,s10);}}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 44
column: 2
content: functionmatches(stringinput)constantreturns(bool){uintcur=1;for(vari=0;i<bytes(input).length;i++){varc=bytes(input)[i];cur=state(cur).func(c);if(cur==0){returnfalse;}}returnstate(cur).accepts;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 59
column: 2
content: functions1(bytec)constantinternalreturns(uint){if(c>=37&&c<=37||c>=43&&c<=43||c>=45&&c<=45||c>=46&&c<=46||c>=48&&c<=57||c>=65&&c<=90||c>=95&&c<=95||c>=97&&c<=122){return2;}return0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 67
column: 2
content: functions2(bytec)constantinternalreturns(uint){if(c>=37&&c<=37||c>=43&&c<=43||c>=45&&c<=45||c>=46&&c<=46||c>=48&&c<=57||c>=65&&c<=90||c>=95&&c<=95||c>=97&&c<=122){return3;}if(c>=64&&c<=64){return4;}return0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 78
column: 2
content: functions3(bytec)constantinternalreturns(uint){if(c>=37&&c<=37||c>=43&&c<=43||c>=45&&c<=45||c>=46&&c<=46||c>=48&&c<=57||c>=65&&c<=90||c>=95&&c<=95||c>=97&&c<=122){return3;}if(c>=64&&c<=64){return4;}return0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 89
column: 2
content: functions4(bytec)constantinternalreturns(uint){if(c>=46&&c<=47||c>=48&&c<=57||c>=58&&c<=64||c>=65&&c<=90||c>=91&&c<=95||c>=97&&c<=122){return5;}return0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 97
column: 2
content: functions5(bytec)constantinternalreturns(uint){if(c>=46&&c<=46){return6;}if(c>=47&&c<=47||c>=48&&c<=57||c>=58&&c<=64||c>=65&&c<=90||c>=91&&c<=95||c>=97&&c<=122){return7;}return0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 108
column: 2
content: functions6(bytec)constantinternalreturns(uint){if(c>=46&&c<=46){return6;}if(c>=47&&c<=47||c>=48&&c<=57||c>=58&&c<=64||c>=91&&c<=95){return7;}if(c>=65&&c<=90||c>=97&&c<=122){return8;}return0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 122
column: 2
content: functions7(bytec)constantinternalreturns(uint){if(c>=46&&c<=46){return6;}if(c>=47&&c<=47||c>=48&&c<=57||c>=58&&c<=64||c>=65&&c<=90||c>=91&&c<=95||c>=97&&c<=122){return7;}return0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 133
column: 2
content: functions8(bytec)constantinternalreturns(uint){if(c>=46&&c<=46){return6;}if(c>=47&&c<=47||c>=48&&c<=57||c>=58&&c<=64||c>=91&&c<=95){return7;}if(c>=65&&c<=90||c>=97&&c<=122){return9;}return0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 147
column: 2
content: functions9(bytec)constantinternalreturns(uint){if(c>=46&&c<=46){return6;}if(c>=47&&c<=47||c>=48&&c<=57||c>=58&&c<=64||c>=91&&c<=95){return7;}if(c>=65&&c<=90||c>=97&&c<=122){return10;}return0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 161
column: 2
content: functions10(bytec)constantinternalreturns(uint){if(c>=46&&c<=46){return6;}if(c>=47&&c<=47||c>=48&&c<=57||c>=58&&c<=64||c>=91&&c<=95){return7;}if(c>=65&&c<=90||c>=97&&c<=122){return10;}return0;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 47
column: 4
content: for(vari=0;i<bytes(input).length;i++){varc=bytes(input)[i];cur=state(cur).func(c);if(cur==0){returnfalse;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 47
column: 4
content: for(vari=0;i<bytes(input).length;i++){varc=bytes(input)[i];cur=state(cur).func(c);if(cur==0){returnfalse;}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 11
column: 53
content: State

ruleId: SOLIDITY_VAR
patternId: d28aa7
severity: 2
line: 47
column: 9
content: vari=0

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 44
column: 2
content: functionmatches(stringinput)constantreturns(bool){uintcur=1;for(vari=0;i<bytes(input).length;i++){varc=bytes(input)[i];cur=state(cur).func(c);if(cur==0){returnfalse;}}returnstate(cur).accepts;}

SOLIDITY_VISIBILITY :1
SOLIDITY_DEPRECATED_CONSTRUCTIONS :12
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_VAR :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_UPGRADE_TO_050 :1
SOLIDITY_GAS_LIMIT_IN_LOOPS :1

