pragma solidity ^0.4.4;
contract UnicornMilk {
    /* Public variables of the token */
    string public standard = 'Token 0.1';
    string public name = "Unicorn Milk";
    string public symbol = "liters";
    uint8 public decimals = 9; //nanoliters
    uint256 public totalSupply;
    address[] public minters;
    address public owner;

    /* This creates an array with all balances */
    mapping (address => uint256) public balance;
    mapping (address => mapping (address => uint256)) public allowance;

    /* This generates a public event on the blockchain that will notify clients */
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    modifier onlyOwner() {if ( msg.sender != owner ) throw; _;}
    modifier onlyMinters() {if ( !addressInArray(msg.sender) ) throw; _;}

    function UnicornMilk() {
      owner = msg.sender;
    }

    /* Send coins */
    function transfer(address _to, uint256 _value) {
        if (balance[msg.sender] < _value) throw;           // Check if the sender has enough
        if (balance[_to] + _value < balance[_to]) throw; // Check for overflows
        if (this == _to){throw;}
        balance[msg.sender] -= _value;                     // Subtract from the sender
        balance[_to] += _value;                            // Add the same to the recipient
        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    }


    /* Allow another contract to spend some tokens in your behalf */
    function approve(address _spender, uint256 _value)
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        return true;
    }

    /* A contract attempts to get the coins */
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
        if (balance[_from] < _value) throw;                 // Check if the sender has enough
        if (balance[_to] + _value < balance[_to]) throw;  // Check for overflows
        if (_value > allowance[_from][msg.sender]) throw;   // Check allowance
        if (this == _to){throw;}
        balance[_from] -= _value;                          // Subtract from the sender
        balance[_to] += _value;                            // Add the same to the recipient
        allowance[_from][msg.sender] -= _value;
        Transfer(_from, _to, _value);
        return true;
    }



    /*function totalSupply() constant returns (uint256 supply){

    }*/

        /*function balanceOf(address _owner) constant returns (uint256){
          return balance[_owner];
        }*/

        function drink(address _from, uint256 _value/*, uint glassSizeNanoLiters = 200000000*/ ) returns (bool success){
          //glassSizeNanoLiters=200000000 = 2dl
          if (balance[_from] < _value) throw;                 // Check if the sender has enough
          //if (_value > glassSizeNanoLiters) _value = glassSizeNanoLiters;             // Check for overflow
          balance[_from] -= _value;                          // Subtract from the sender
          Transfer(_from, 0x0000000000000000000000000000000000000000, _value);
          return true;
        }

        /* Mint coins */
        function mint(address _to, uint256 _value) onlyMinters {

            if (balance[_to] + _value < balance[_to]) throw; // Check for overflows
            if (this == _to){throw;}
            balance[_to] += _value;                            // Add the same to the recipient
          Transfer(this, _to, _value);                           // Notify anyone listening that this transfer took place
        }

        function addMinter(address addr) returns (bool success) {
          if(!addressInArray(addr)){
            minters.push(addr);
            return true;
          }
          return false;
        }

        function removeMinter(address addr) returns (bool success) {
          for(uint i=0; i<minters.length;i++){
            if(minters[i]==addr){
              delete minters[i];
              return true;
            }
          }
          return false;
        }


        function addressInArray(address inAddress) private returns (bool inArray){
          for(uint i=0; i<minters.length;i++){
            if(minters[i]==inAddress){
              return true;
            }
          }
          return false;
        }


        function kill() onlyOwner {
          suicide(owner);
        }

    /* This unnamed function is called whenever someone tries to send ether to it */
    function () {
        throw;     // Prevents accidental sending of ether
    }
}
/*contract token {
    mapping (address => uint256) public balanceOf;
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success);
    function mintToken(address target, uint256 mintedAmount);
}*/