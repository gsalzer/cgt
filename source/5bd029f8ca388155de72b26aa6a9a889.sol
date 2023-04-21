pragma solidity ^0.4.6;

contract PseudonymRoundFactory { 
    function newRound(address _proofOfIndividuality,
                        uint _deployment, 
                        uint _groupSize,
                        uint _depositSize,
                        uint _commitment,
                        uint _generateAddress,
                        uint _pseudonymEvent,
                        uint _issuePOIs,
                        uint _withdrawals,
                        address _previousPOIround
                        ) 
    
        returns (address) 
    {}
}

contract PseudonymRound {   
    function verifyPOI(address _nym) public returns (bool) { }  
}

contract ProofOfIndividuality {

  PseudonymRoundFactory public pseudonymRoundFactory;

  PseudonymRound public currentPOIs;

  address public currentRound;
  uint public groupSize;

  uint public commitment;
  uint public generateAddress;
  uint public pseudonymEvent;
  uint public issuePOIs;
  uint public withdrawals;
  uint public roundLength;
  uint public previousRound;

  function ProofOfIndividuality() {
    groupSize = 5;
    roundLength = 24 hours;
    commitment = 11 hours;
    generateAddress = 22 hours;
    pseudonymEvent = 24 hours - 15 minutes;
    issuePOIs = 24 hours;
    withdrawals = 26 hours;
    pseudonymRoundFactory = PseudonymRoundFactory(0xb7266f6ed39D60e765362037d8453f39A433107c);
  }

  function firstRound() {
    if(currentRound != 0) throw;
    currentRound = pseudonymRoundFactory.newRound(
                          this,
                          now,
                          groupSize, 
                          0,
                          commitment,
                          generateAddress,
                          pseudonymEvent,
                          issuePOIs,
                          withdrawals,
                          0
                        );
    previousRound = now;  
  }

  function newRound(uint _newDepositSize) {
    if(msg.sender != currentRound) throw;
    if(address(currentPOIs) != 0x0000000000000000000000000000000000000000) {
        address previousPOIround = address(currentPOIs);
    }
    currentPOIs = PseudonymRound(currentRound);
    currentRound = pseudonymRoundFactory.newRound(
                          this,
                          previousRound + roundLength,
                          groupSize, 
                          _newDepositSize,
                          commitment,
                          generateAddress,
                          pseudonymEvent,
                          issuePOIs,
                          withdrawals,
                          previousPOIround
                        );
    previousRound += roundLength;
  }

  function verifyPOI(address _nym) public returns (bool) {
    return currentPOIs.verifyPOI(_nym);
  }

  function dissolveCurrentPOIs() {
    if(msg.sender != address(currentPOIs)) throw;
    currentPOIs = PseudonymRound(0x0000000000000000000000000000000000000000);
  }

}