Processing contract: /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol:Sets
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Sets':
    |// sets support up to 2^256-2 members
    |// memberIndices stores the index of members + 1, not their actual index
  > |library Sets {
    |    // address set
    |    struct addressSet {
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |pragma solidity ^0.4.13;
    |
  > |// sets support up to 2^256-2 members
    |// memberIndices stores the index of members + 1, not their actual index
    |library Sets {
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |// sets support up to 2^256-2 members
    |// memberIndices stores the index of members + 1, not their actual index
  > |library Sets {
    |    // address set
    |    struct addressSet {
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(addressSet storage self, address other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(14)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            address lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(uintSet storage self, uint other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            uint lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(uint8Set storage self, uint8 other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            uint8 lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(intSet storage self, int other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            int lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(int8Set storage self, int8 other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            int8 lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(byteSet storage self, byte other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(204)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            byte lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |    function insert(bytes32Set storage self, bytes32 other) {
    |        if (!contains(self, other)) {
  > |            self.members.push(other);
    |            self.memberIndices[other] = length(self);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |        if (!contains(self, other)) {
    |            self.members.push(other);
  > |            self.memberIndices[other] = length(self);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(243)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            bytes32 lastMember = self.members[length(self)-1];
    |            // overwrite other with the last member and remove last member
  > |            self.members[replaceIndex-1] = lastMember;
    |            self.members.length--;
    |            // reflect this change in the indices
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            self.members.length--;
    |            // reflect this change in the indices
  > |            self.memberIndices[lastMember] = replaceIndex;
    |            delete self.memberIndices[other];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'Sets':
    |            // reflect this change in the indices
    |            self.memberIndices[lastMember] = replaceIndex;
  > |            delete self.memberIndices[other];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e61847e3b0c5786e81c8cd477c4af76b5f7098f.sol(256)


