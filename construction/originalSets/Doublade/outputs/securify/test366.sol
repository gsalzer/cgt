Processing contract: /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol:SortitionSumTreeFactory
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'SortitionSumTreeFactory':
    | *  @dev A factory of trees that keep track of staked values for sortition.
    | */
  > |library SortitionSumTreeFactory {
    |    /* Structs */
    |
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(10)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |
    |/**
  > | *  @title SortitionSumTreeFactory
    | *  @author Enrique Piqueras - <epiquerass@gmail.com>
    | *  @dev A factory of trees that keep track of staked values for sortition.
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(6)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    | *  @dev A factory of trees that keep track of staked values for sortition.
    | */
  > |library SortitionSumTreeFactory {
    |    /* Structs */
    |
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(10)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |        require(tree.K == 0, "Tree already exists.");
    |        require(_K > 1, "K must be greater than one.");
  > |        tree.K = _K;
    |        tree.stack.length = 0;
    |        tree.nodes.length = 0;
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |        tree.stack.length = 0;
    |        tree.nodes.length = 0;
  > |        tree.nodes.push(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                    // Get the index and append the value.
    |                    treeIndex = tree.nodes.length;
  > |                    tree.nodes.push(_value);
    |
    |                    // Potentially append a new node and make the parent a sum node.
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                        bytes32 parentID = tree.nodeIndexesToIDs[parentIndex];
    |                        uint newIndex = treeIndex + 1;
  > |                        tree.nodes.push(tree.nodes[parentIndex]);
    |                        delete tree.nodeIndexesToIDs[parentIndex];
    |                        tree.IDsToNodeIndexes[parentID] = newIndex;
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                        uint newIndex = treeIndex + 1;
    |                        tree.nodes.push(tree.nodes[parentIndex]);
  > |                        delete tree.nodeIndexesToIDs[parentIndex];
    |                        tree.IDsToNodeIndexes[parentID] = newIndex;
    |                        tree.nodeIndexesToIDs[newIndex] = parentID;
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                        tree.nodes.push(tree.nodes[parentIndex]);
    |                        delete tree.nodeIndexesToIDs[parentIndex];
  > |                        tree.IDsToNodeIndexes[parentID] = newIndex;
    |                        tree.nodeIndexesToIDs[newIndex] = parentID;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                        delete tree.nodeIndexesToIDs[parentIndex];
    |                        tree.IDsToNodeIndexes[parentID] = newIndex;
  > |                        tree.nodeIndexesToIDs[newIndex] = parentID;
    |                    }
    |                } else { // Some vacant spot.
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                    treeIndex = tree.stack[tree.stack.length - 1];
    |                    tree.stack.length--;
  > |                    tree.nodes[treeIndex] = _value;
    |                }
    |
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |
    |                // Add label.
  > |                tree.IDsToNodeIndexes[_ID] = treeIndex;
    |                tree.nodeIndexesToIDs[treeIndex] = _ID;
    |
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                // Add label.
    |                tree.IDsToNodeIndexes[_ID] = treeIndex;
  > |                tree.nodeIndexesToIDs[treeIndex] = _ID;
    |
    |                updateParents(self, _key, treeIndex, true, _value);
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                // Remember value and set to 0.
    |                uint value = tree.nodes[treeIndex];
  > |                tree.nodes[treeIndex] = 0;
    |
    |                // Push to stack.
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |
    |                // Push to stack.
  > |                tree.stack.push(treeIndex);
    |
    |                // Clear label.
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |
    |                // Clear label.
  > |                delete tree.IDsToNodeIndexes[_ID];
    |                delete tree.nodeIndexesToIDs[treeIndex];
    |
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                // Clear label.
    |                delete tree.IDsToNodeIndexes[_ID];
  > |                delete tree.nodeIndexesToIDs[treeIndex];
    |
    |                updateParents(self, _key, treeIndex, false, value);
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                bool plusOrMinus = tree.nodes[treeIndex] <= _value;
    |                uint plusOrMinusValue = plusOrMinus ? _value - tree.nodes[treeIndex] : tree.nodes[treeIndex] - _value;
  > |                tree.nodes[treeIndex] = _value;
    |
    |                updateParents(self, _key, treeIndex, plusOrMinus, plusOrMinusValue);
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |        while (parentIndex != 0) {
    |            parentIndex = (parentIndex - 1) / tree.K;
  > |            tree.nodes[parentIndex] = _plusOrMinus ? tree.nodes[parentIndex] + _value : tree.nodes[parentIndex] - _value;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86.sol(219)


