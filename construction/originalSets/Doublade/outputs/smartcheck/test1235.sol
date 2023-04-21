reorder_contracts_2_3/test1235.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 25
column: 12
content: self.members.length--

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 63
column: 12
content: self.members.length--

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 101
column: 12
content: self.members.length--

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 139
column: 12
content: self.members.length--

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 177
column: 12
content: self.members.length--

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 215
column: 12
content: self.members.length--

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 253
column: 12
content: self.members.length--

ruleId: SOLIDITY_BYTE_ARRAY_INSTEAD_BYTES
patternId: f13a9f
severity: 1
line: 198
column: 8
content: byte[]

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 32
column: 4
content: functioncontains(addressSetstorageself,addressother)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 39
column: 4
content: functionlength(addressSetstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 70
column: 4
content: functioncontains(uintSetstorageself,uintother)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 77
column: 4
content: functionlength(uintSetstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 108
column: 4
content: functioncontains(uint8Setstorageself,uint8other)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 115
column: 4
content: functionlength(uint8Setstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 146
column: 4
content: functioncontains(intSetstorageself,intother)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 153
column: 4
content: functionlength(intSetstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 184
column: 4
content: functioncontains(int8Setstorageself,int8other)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 191
column: 4
content: functionlength(int8Setstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 222
column: 4
content: functioncontains(byteSetstorageself,byteother)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 229
column: 4
content: functionlength(byteSetstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 260
column: 4
content: functioncontains(bytes32Setstorageself,bytes32other)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 267
column: 4
content: functionlength(bytes32Setstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 12
column: 4
content: functioninsert(addressSetstorageself,addressother){if(!contains(self,other)){self.members.push(other);self.memberIndices[other]=length(self);}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 19
column: 4
content: functionremove(addressSetstorageself,addressother){if(contains(self,other)){uintreplaceIndex=self.memberIndices[other];addresslastMember=self.members[length(self)-1];self.members[replaceIndex-1]=lastMember;self.members.length--;self.memberIndices[lastMember]=replaceIndex;deleteself.memberIndices[other];}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 32
column: 4
content: functioncontains(addressSetstorageself,addressother)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 39
column: 4
content: functionlength(addressSetstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 50
column: 4
content: functioninsert(uintSetstorageself,uintother){if(!contains(self,other)){self.members.push(other);self.memberIndices[other]=length(self);}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 57
column: 4
content: functionremove(uintSetstorageself,uintother){if(contains(self,other)){uintreplaceIndex=self.memberIndices[other];uintlastMember=self.members[length(self)-1];self.members[replaceIndex-1]=lastMember;self.members.length--;self.memberIndices[lastMember]=replaceIndex;deleteself.memberIndices[other];}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 70
column: 4
content: functioncontains(uintSetstorageself,uintother)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 77
column: 4
content: functionlength(uintSetstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 88
column: 4
content: functioninsert(uint8Setstorageself,uint8other){if(!contains(self,other)){self.members.push(other);self.memberIndices[other]=length(self);}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 95
column: 4
content: functionremove(uint8Setstorageself,uint8other){if(contains(self,other)){uintreplaceIndex=self.memberIndices[other];uint8lastMember=self.members[length(self)-1];self.members[replaceIndex-1]=lastMember;self.members.length--;self.memberIndices[lastMember]=replaceIndex;deleteself.memberIndices[other];}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 108
column: 4
content: functioncontains(uint8Setstorageself,uint8other)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 115
column: 4
content: functionlength(uint8Setstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 126
column: 4
content: functioninsert(intSetstorageself,intother){if(!contains(self,other)){self.members.push(other);self.memberIndices[other]=length(self);}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 133
column: 4
content: functionremove(intSetstorageself,intother){if(contains(self,other)){uintreplaceIndex=self.memberIndices[other];intlastMember=self.members[length(self)-1];self.members[replaceIndex-1]=lastMember;self.members.length--;self.memberIndices[lastMember]=replaceIndex;deleteself.memberIndices[other];}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 146
column: 4
content: functioncontains(intSetstorageself,intother)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 153
column: 4
content: functionlength(intSetstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 164
column: 4
content: functioninsert(int8Setstorageself,int8other){if(!contains(self,other)){self.members.push(other);self.memberIndices[other]=length(self);}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 171
column: 4
content: functionremove(int8Setstorageself,int8other){if(contains(self,other)){uintreplaceIndex=self.memberIndices[other];int8lastMember=self.members[length(self)-1];self.members[replaceIndex-1]=lastMember;self.members.length--;self.memberIndices[lastMember]=replaceIndex;deleteself.memberIndices[other];}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 184
column: 4
content: functioncontains(int8Setstorageself,int8other)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 191
column: 4
content: functionlength(int8Setstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 202
column: 4
content: functioninsert(byteSetstorageself,byteother){if(!contains(self,other)){self.members.push(other);self.memberIndices[other]=length(self);}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 209
column: 4
content: functionremove(byteSetstorageself,byteother){if(contains(self,other)){uintreplaceIndex=self.memberIndices[other];bytelastMember=self.members[length(self)-1];self.members[replaceIndex-1]=lastMember;self.members.length--;self.memberIndices[lastMember]=replaceIndex;deleteself.memberIndices[other];}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 222
column: 4
content: functioncontains(byteSetstorageself,byteother)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 229
column: 4
content: functionlength(byteSetstorageself)constantreturns(uint){returnself.members.length;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 240
column: 4
content: functioninsert(bytes32Setstorageself,bytes32other){if(!contains(self,other)){self.members.push(other);self.memberIndices[other]=length(self);}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 247
column: 4
content: functionremove(bytes32Setstorageself,bytes32other){if(contains(self,other)){uintreplaceIndex=self.memberIndices[other];bytes32lastMember=self.members[length(self)-1];self.members[replaceIndex-1]=lastMember;self.members.length--;self.memberIndices[lastMember]=replaceIndex;deleteself.memberIndices[other];}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 260
column: 4
content: functioncontains(bytes32Setstorageself,bytes32other)constantreturns(bool){returnself.memberIndices[other]>0;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 267
column: 4
content: functionlength(bytes32Setstorageself)constantreturns(uint){returnself.members.length;}

SOLIDITY_VISIBILITY :28
SOLIDITY_DEPRECATED_CONSTRUCTIONS :14
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_ARRAY_LENGTH_MANIPULATION :7
SOLIDITY_BYTE_ARRAY_INSTEAD_BYTES :1

