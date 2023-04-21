pragma solidity ^0.4.6;

contract TestBotAttack { function create1accounts() {} function create2accounts() {} function create10accounts() {} function create50accounts() {} function create100accounts() {}}

contract scheduleNewAccounts {
    
    TestBotAttack public testBotAttack;
    address scheduler;
    
    function scheduleNewAccounts() {
        testBotAttack = TestBotAttack(0x690392cb6907cba0888be2b56aa1bdec1c0b7e87);
        scheduler;
    }
    
    function make1Accounts() {
        testBotAttack.create1accounts();
    }
    function make2Accounts() {
        testBotAttack.create2accounts();
    }   
    function make10Accounts() {
        testBotAttack.create10accounts();
    }
    function make50Accounts() {
        testBotAttack.create50accounts();
    }
    function make100Accounts() {
        testBotAttack.create100accounts();
    }

}