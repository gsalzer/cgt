contract FairExchange {

    struct Instance{
        uint NumberOfParties;
        uint Fee;
        uint JoinDeadline;
        uint DeliverDeadline;
        uint NumberJoined;
        uint NumberDelivered;
        uint[] DeliverData;
        bool distributed;
        mapping(uint => party) parties;
    }

    uint counter;

    mapping(uint => Instance) instance;

    enum State {waiting, joined, delivered, finished}

    struct party {
		address adr;
		State state;
		uint balance;
    }

    function FairExchange(){
        counter = 0;
    }

    function newInstance(
            address[] AddressesOfParties,
            uint _Fee, uint[] _DeliverData,
            uint _JoinDeadline,
            uint _DeliverDeadline
            ) returns(uint){
        counter += 1;
        Instance inst = instance[counter];
        inst.NumberOfParties = AddressesOfParties.length;
        inst.Fee = _Fee;
		party temp = inst.parties[1];
        for(uint i = 0; i < AddressesOfParties.length; i++){
            temp = inst.parties[i+1];
            temp.adr = AddressesOfParties[i];
            temp.state = State.waiting;
        }
		inst.JoinDeadline = block.number + _JoinDeadline;
		inst.DeliverDeadline = inst.JoinDeadline + _DeliverDeadline;
        for(i = 0; i < _DeliverData.length; i++)
            inst.DeliverData.push(_DeliverData[i]);
        inst.distributed = false;
        return counter;
	}

    function getData(uint index, uint number) constant returns(uint data){
        if(number == 0)
            return data = instance[index].DeliverData.length;
        return data = instance[index].DeliverData[number-1];
	}

    function status(uint index) constant returns (uint numberJoined, uint numberDelivered){
		numberJoined = instance[index].NumberJoined;
		numberDelivered = instance[index].NumberDelivered;
	}

    function getDeadlines(uint index) constant returns(uint[2] Deadlines){
        Deadlines[0] = instance[index].JoinDeadline;
        Deadlines[1] = instance[index].DeliverDeadline;
	}

    function deposit(uint index, uint PartyNumber) payable{
        Instance inst = instance[index];
		if(msg.value >= inst.Fee){
			party temp = inst.parties[PartyNumber];
			temp.balance = msg.value - inst.Fee;
			if(msg.sender == temp.adr &&
			        temp.state == State.waiting &&
			        block.number <= inst.JoinDeadline){
				inst.NumberJoined += 1;
				temp.state = State.joined;
			} else throw;
		} else throw;
	}

    function deliver(
            uint index,
            uint PartyNumber,
            uint token,
            uint randomness){
        Instance inst = instance[index];
		party temp = inst.parties[PartyNumber];
		if(temp.state == State.joined &&
		        inst.NumberJoined == inst.NumberOfParties &&
		        block.number <= inst.DeliverDeadline &&
		        checkInput(index, PartyNumber, token, randomness)){
			temp.state = State.delivered;
			inst.NumberDelivered += 1;
		}
	}

    function finish(uint index, uint PartyNumber){
        Instance inst = instance[index];
		party temp = inst.parties[PartyNumber];
		if(msg.sender == temp.adr &&
                inst.DeliverDeadline < block.number &&
                (inst.distributed || distributeEther(index))){
			temp.state == State.finished;
            if(!msg.sender.send(temp.balance))
                throw;
		}
    }
	
    function refund(uint index, uint PartyNumber){
        Instance inst = instance[index];
		party temp = inst.parties[PartyNumber];
        if(msg.sender == temp.adr &&
                temp.state == State.joined &&
                inst.JoinDeadline < block.number &&
                inst.NumberJoined < inst.NumberOfParties){
			temp.state = State.finished;
			if(!msg.sender.send(inst.Fee + temp.balance))
				throw;
		}
    }

    function checkInput(uint index,
            uint PartyNumber,
            uint token,
            uint randomness)
            private returns(bool){
        if(instance[index].DeliverData[2*PartyNumber-2] ==
                uint(sha3(token, randomness))){
            instance[index].DeliverData[2*PartyNumber-1] = token;
            return true;
        }
        return false;
    }

    function distributeEther(uint index) private returns (bool){
        Instance inst = instance[index];
        for(uint PartyNumber = 1;
                PartyNumber <= inst.NumberOfParties;
                PartyNumber++)
            if(inst.parties[PartyNumber].state == State.delivered)
                inst.parties[PartyNumber].balance +=
                    inst.Fee +
                    (inst.NumberOfParties - inst.NumberDelivered)
                    *inst.Fee
                    /inst.NumberDelivered;
        inst.distributed = true;
        return true;
	}
}