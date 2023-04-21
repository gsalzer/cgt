pragma solidity ^0.4.4;

contract ElectroPuppy {

    uint256 public carbonCredit = 0;

    // Anyone can call this contract and override the value of the previous caller
    function addCarbonCredit(uint256 value) public {
        carbonCredit += value;
    }

}