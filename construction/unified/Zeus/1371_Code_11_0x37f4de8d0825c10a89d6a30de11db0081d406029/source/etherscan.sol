contract DepositGovernance { function doRegistrationVote(address _registrant, uint _amount) {} }

contract RegistrationDeposits {
    
    DepositGovernance public governance;
    address public registrationContract;
    
    mapping(address => uint256) deposit;
    
    function RegistrationDeposits(address _depositGovernance, address _registrationContract) {
        governance = DepositGovernance(_depositGovernance);
        registrationContract = _registrationContract;
    }
    
    function register(address _registrant) payable external {
        if(msg.sender != registrationContract) throw;
        deposit[_registrant] = msg.value;
        governance.doRegistrationVote(_registrant, msg.value);
    }
    
    function withdrawDeposit() public {
        if(deposit[msg.sender] == 0) throw;
        if(!msg.sender.send(deposit[msg.sender])) throw;
        deposit[msg.sender] = 0;
    }
}

contract RegistrationDepositsFactory {
    
    function newDepositContract(address _depositGovernance, address _registrationContract) returns (address) {
        return new RegistrationDeposits(_depositGovernance, _registrationContract);
    }
    
}