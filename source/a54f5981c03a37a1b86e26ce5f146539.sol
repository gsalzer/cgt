contract MyContract {
  address public owner;
  function MyContract() { owner = msg.sender; }

  modifier onlyOwner { if (msg.sender!=owner) throw; _;}
  event paidBy (address from, uint value);
  function changeOwner(address newOwner) onlyOwner {owner = newOwner;}
  function() payable { paidBy(msg.sender, msg.value); }
  function withdraw() onlyOwner{ bool r = owner.send(this.balance); }
}