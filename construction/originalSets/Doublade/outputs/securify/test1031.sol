Processing contract: /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol:Prover
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol:Sets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Prover':
    |        }
    |        // send the rebate
  > |        if (rebate > 0) msg.sender.transfer(rebate);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(120)

[33mWarning[0m for LockedEther in contract 'Prover':
    |pragma solidity ^0.4.13;
    |
  > |contract Prover {
    |    // attach library
    |    using Sets for Sets.addressSet;
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(3)

[33mWarning[0m for TODReceiver in contract 'Prover':
    |        }
    |        // send the rebate
  > |        if (rebate > 0) msg.sender.transfer(rebate);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(120)

[33mWarning[0m for UnhandledException in contract 'Prover':
    |        }
    |        // send the rebate
  > |        if (rebate > 0) msg.sender.transfer(rebate);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Prover':
    |        users.insert(msg.sender);
    |        accounts[msg.sender].entries.insert(dataHash);
  > |        accounts[msg.sender].values[dataHash] = Entry(now, msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Prover':
    |        uint rebate = accounts[msg.sender].values[dataHash].staked;
    |        // update user account
  > |        delete accounts[msg.sender].values[dataHash];
    |        accounts[msg.sender].entries.remove(dataHash);
    |        // delete from users if this was the user's last entry
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(113)

[31mViolation[0m for LockedEther in contract 'Sets':
    |// sets support up to 2^256-2 members
    |// memberIndices stores the index of members + 1, not their actual index
  > |library Sets {
    |    // address set
    |    struct addressSet {
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |pragma solidity ^0.4.13;
    |
  > |contract Prover {
    |    // attach library
    |    using Sets for Sets.addressSet;
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |// sets support up to 2^256-2 members
    |// memberIndices stores the index of members + 1, not their actual index
  > |library Sets {
    |    // address set
    |    struct addressSet {
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(addressSet storage self, address other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            address lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(uintSet storage self, uint other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            uint lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(uint8Set storage self, uint8 other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            uint8 lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(232)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(intSet storage self, int other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            int lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(273)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(int8Set storage self, int8 other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(298)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(299)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            int8 lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(311)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(byteSet storage self, byte other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(336)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(337)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            byte lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(346)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(349)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(350)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(bytes32Set storage self, bytes32 other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(374)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(375)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            bytes32 lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(384)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(387)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4125c610b63dd63be5c48d5cc3c68784f92d3b43.sol(388)


