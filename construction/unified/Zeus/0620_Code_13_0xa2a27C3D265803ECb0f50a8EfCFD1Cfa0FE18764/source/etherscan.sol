pragma solidity ^0.4.0;

contract MyAccount
{
  int public balance = 1000;
  event Print(address sender, int value, int outstanding);

  function addToBalance(int to_add) {
    balance = balance + to_add;
    Print(msg.sender, to_add, balance);
  }

  function subFromBalance(int to_sub) {
    balance = balance - to_sub;
    Print(msg.sender, to_sub, balance);
  }
}