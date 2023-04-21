/* Created by Arseniy Klempner, Hudson Jameson, with the help of the Zeppelin Ethereum framework - https://openzeppelin.org/ */
/* License: Apache 2.0 */

pragma solidity ^0.4.4;

contract ConstructBitcoinClue {

  bytes32[] public answers = new bytes32[](4);
  mapping (address => mapping(uint => bool)) public passed;

  function ConstructBitcoinClue(bytes32 answer1, bytes32 answer2, bytes32 answer3, bytes32 answer4) {
    answers[0] = answer1;
    answers[1] = answer2;
    answers[2] = answer3;
    answers[3] = answer4;
  }

  function getClue1() constant external returns (string instructions) {
    return "Call setClue1(string answer) and give me the 4th word of the 3rd section of the Satoshi whitepaper.";
  }
  
  function getClue2() constant external returns (string instructions) {
    return "Call setClue2(string answer) and give me the block number of the first Pay to script hash (P2SH) transaction ";
  }
  
  function getClue3() constant external returns (string instructions) {
    return "Call setClue3(string answer) and give me the BIP number of 'Segregated Witness (Consensus layer)'.";
  }
  
  function getClue4() constant external returns (string instructions) {
    return "Call setClue4(string answer) and give me the 'richest' Bitcoin address (Bitcoin wallet address with the most Bitcoins currently in the wallet).";
  }

  function setClue1(string guess) external returns (bool) {
    if(sha3(guess) == answers[0]) {
      passed[msg.sender][0] = true;
      return true;
    }
    return false;
  }

  function setClue2(string guess) external returns (bool)  {
    if(sha3(guess) == answers[1]) {
      passed[msg.sender][1] = true;
      return true;
    }
    return false;
  }

  function setClue3(string guess) external returns (bool)  {
    if(sha3(guess) == answers[2]) {
      passed[msg.sender][2] = true;
      return true;
    }
    return false;
  }

  function setClue4(string guess) external returns (bool)  {
    if(sha3(guess) == answers[3]) {
      passed[msg.sender][3] = true;
      return true;
    }
    return false;
  }

  function checkPassed(address participant) external constant returns(bool) {
    return passed[participant][0] && passed[participant][1] && passed[participant][2] && passed[participant][3];
  }

}