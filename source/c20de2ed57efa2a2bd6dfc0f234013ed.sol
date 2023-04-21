pragma solidity ^0.4.6;

contract Seglos{
    address Admin;
    bool public Open;
    uint public Fee; // current fee charged on each trade, out of 1000
    uint public offerPool; // the ammount in the lending pool not loaned out
    uint public feePool; // the pool that collects fee to be distributed to the lenders
    uint public tradeId; // unique auto incromented id given to each trade
    uint[] public Timestamp; // an array of all the timestamps with prices


    struct Trade { // trade assigned to a trader
      address trader;
      uint lev;
      uint lock;
      uint eth;
      uint time;
      bool expired;
    }

    mapping ( address => uint[] ) private trader; // to find the list of a traders trades
    mapping ( uint => Trade ) private trades; // to give a unique id to each trader
    mapping ( address => uint ) private deposits; // to find how much eth a trader has in their account
    mapping ( uint => uint ) private Price; // timestamp to price


    function Seglos() {
      Admin = msg.sender;
      offerPool = 0;
      feePool = 0;
      tradeId = 0;
      Open = true;
    }

    function Door(bool _door){ // to close down the exchange or open it back up and allow the creation of new trades
      if ( msg.sender != Admin)
          throw;
      Open = _door;
    }

    function setPrice(uint _time ,uint _price) { // the exchange rate of eth/usd
      if ( msg.sender != Admin || now > _time)
          throw;
      Timestamp.push(_time);
      Price[_time] = _price;
    }

    function setFee(uint _fee) { // the percentage to charge of each trade, out of 10000
      if ( msg.sender != Admin || _fee > 25 )
          throw;
      Fee = _fee;
    }

    function depositOffer() payable {
      if ( msg.sender != Admin)
          throw;
      offerPool = offerPool + msg.value;
    }

    function withdrawOffer(uint _eth) {
      if ( msg.sender != Admin || offerPool < _eth)
          throw;
      offerPool = offerPool - _eth;
      bool sent = msg.sender.send(_eth);
      if (!sent)
        throw;
    }

    function withdrawFee() {
      if ( msg.sender != Admin)
          throw;
      bool sent = msg.sender.send(feePool);
      feePool = 0;
      if (!sent)
        throw;
    }

    function getPrice(uint _timestamp) constant returns (uint price) { // get price at time
      return Price[_timestamp];
    }

    function currentTimestamp() constant returns (uint) {
      return Timestamp[Timestamp.length - 1];
    }

    function timestampLength() constant returns (uint) {
      return Timestamp.length;
    }

    function getTradersList() constant returns (uint[]) {
      return trader[msg.sender];
    }

    function getTrade(uint _trade) constant returns (uint lev , uint lock, uint eth, uint time) {
      Trade trade = trades[_trade];
      return (trade.lev, trade.lock, trade.eth, trade.time );
    }

    function getDeposit() constant returns (uint eth) { // for traders to see how much eth they have in their account
      return deposits[msg.sender];
    }

    function Deposit() payable { // for users to deposit eth into their account
      deposits[msg.sender] = deposits[msg.sender] + msg.value;
    }

    function Withdraw(uint _eth) { // for users to withdraw money from their account
      if (deposits[msg.sender] >= _eth){
        deposits[msg.sender] = deposits[msg.sender] - _eth;
        bool sent = msg.sender.send(_eth);
        if (!sent)
          throw;
      }else{
        throw;
      }
    }

    function createTrade(uint _eth, uint _lev) {
      // add in the fee from the total subtracted
      uint fee = _eth * _lev * Fee / 10000;
      uint eth = _eth + fee;

      if (!Open)
        throw;

      if (_lev < 2 || _lev > 10)
        throw;

      if (deposits[msg.sender] < eth)
        throw;

      if (offerPool < eth * (_lev - 1))
        throw;

      deposits[msg.sender] = deposits[msg.sender] - eth;

      offerPool = offerPool - _eth * (_lev - 1);

      feePool = feePool + fee;

      tradeId++;

      trades[tradeId].trader = msg.sender;
      trades[tradeId].lev = _lev;
      trades[tradeId].lock = Price[currentTimestamp()];
      trades[tradeId].eth = _eth*_lev;
      trades[tradeId].time = now;
      trades[tradeId].expired = false;

      trader[msg.sender].push(tradeId);

    }

    function exitTrade(uint _trade) {
      Trade trade = trades[_trade];
      uint price;

      if (msg.sender == trade.trader && now < trade.time + 6 hours)
        price = Price[currentTimestamp()];
      else if (now > trade.time + 6 hours)
        price = Price[trade.time + 6 hours];
      else
        throw;

      trade.expired = true;

      if (Price[currentTimestamp()] <= trade.lock*(1/trade.lev)){
        offerPool = offerPool + trade.eth;
      }else {
        uint lenderEth = trade.eth * trade.lock * (trade.lev - 1) / (trade.lev * Price[currentTimestamp()]);
        offerPool = offerPool + lenderEth;
        deposits[msg.sender] = deposits[msg.sender] + trade.eth - lenderEth;
      }
    }

    function() payable { Deposit(); }
}