pragma solidity ^0.4.15;

contract Alice { 
    function set(uint); 
}

contract Bob { 
    function set(Alice c){ 
        c.set(42); 
    }
}

pragma solidity ^0.4.15;

contract Alice { 
    int public val;

    function set(int new_val){
        val = new_val;
    }

    function(){
        val = 1;
    }
}
