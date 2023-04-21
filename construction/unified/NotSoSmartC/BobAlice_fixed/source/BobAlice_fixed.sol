pragma solidity ^0.4.15;

contract Alice { 
    function set_fixed(int); 
}

contract Bob { 
    function set_fixed(Alice c){ 
        c.set_fixed(42); 
    } 
}

pragma solidity ^0.4.15;

contract Alice { 
    int public val;

    function set_fixed(int new_val){
        val = new_val;
    }

    function(){
        val = 1;
    }
}
