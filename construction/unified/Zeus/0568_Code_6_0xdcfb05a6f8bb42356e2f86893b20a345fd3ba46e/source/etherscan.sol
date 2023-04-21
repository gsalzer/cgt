/* Created by Arseniy Klempner, Hudson Jameson, with the help of the Zeppelin Ethereum framework - https://openzeppelin.org/ */
/* License: Apache 2.0 */

pragma solidity ^0.4.4;

contract ConstructZCashClue {
  bytes32 public answer;
  mapping (address => bool) public passed;

  function ConstructZCashClue (bytes32 inputAnswer) {
    answer = inputAnswer;
  }

  function getClue() constant external returns (string instructions) {
    return "See ";
  }
  
  function setClue(string guess) external returns (bool) {
    if(sha3(guess) == answer) {
      passed[msg.sender] = true;
      return true;
    }
    return false;
  }
  
  function checkPassed(address participant) external constant returns(bool) {
    return passed[participant];
  }

}