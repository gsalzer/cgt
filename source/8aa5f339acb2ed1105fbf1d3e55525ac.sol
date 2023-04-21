pragma solidity ^0.4.9;

contract CoinbasePriceTicker {
      function getCurrentTimestamp() constant returns (uint);
      function getPrice(uint) constant returns (uint);
      function getCurrentPrice() constant returns(uint);
}

contract Seglos{

    address Admin;
    CoinbasePriceTicker public PriceContract;
    bool public Open;
    uint public Fee; // current fee charged on each trade, out of 1000
    uint public liquidityPool; // the ammount in the lending pool not loaned out
    uint public tradeId; // unique auto incromented id given to each trade
    uint public tradingLimit;

    struct Trade { // trade assigned to a trader
      address trader;
      uint eth;
      uint time;
      uint exit;
    }

    mapping ( address => uint[] ) private trader; // to find the list of a traders trades
    mapping ( uint => Trade ) private trades; // to give a unique id to each trader

    event createTradeEvent(address user, uint tradeId);
    event exitTradeEvent(address user, uint tradeId);

    function Seglos() {
      Admin = msg.sender;
      liquidityPool = 0;
      tradeId = 0;
      Open = true;
      tradingLimit = 1;
      PriceContract = CoinbasePriceTicker("0x1A3f9356356b9423BFb465316e889EBBEBEde1ED");
    }

    function createTrade() payable {
      // creates the trade by subtracting a fee and recording trade data

      uint fee = msg.value * Fee / 100000;
      uint eth = msg.value - fee;

      if (!Open)
        throw; // asserst that the exchange is open

      if (eth < tradingLimit)
        throw; // asserts the trade ammount meets the trading limit

      if (liquidityPool < eth)
        throw; // asserts that the liquidityPool has enough ethereum

      liquidityPool = liquidityPool - eth + fee;

      tradeId++;

      trades[tradeId] = Trade(msg.sender, eth*2, getCurrentTimestamp(), 0);

      trader[msg.sender].push(tradeId);

      createTradeEvent(msg.sender, tradeId);
    }

    function exitTrade(uint _trade) {
      // distributes profits and loses from the trade

      Trade trade = trades[_trade];
      bool expired = false;
      bool marginCall = false;

      if (trade.exit != 0)
        throw;

      if (now >= trade.time + 1 weeks)
        expired = true;

      if (getCurrentPrice() <= getPrice(trade.time)/2)
        marginCall = true;

      // if the trade has expired or hit the margin call anyone can exit the trade
      if ((msg.sender != trade.trader && msg.sender != Admin) && !(expired || marginCall)) // some how allow admin
        throw;

      trade.exit = getCurrentTimestamp();

      if (marginCall){

        liquidityPool = liquidityPool + trade.eth;

      }else {

        uint fundEth = trade.eth * getPrice(trade.time) / (2 * getCurrentPrice());

        liquidityPool = liquidityPool + fundEth;

        uint traderEth = trade.eth - fundEth;

        bool sent = trade.trader.send(traderEth);

      }

      exitTradeEvent(trade.trader, _trade);
    }

    function getTradersList() constant returns (uint[]) {
      // returns an array of trade Id's that belong to the user
      return trader[msg.sender];
    }

    function getTrade(uint _trade) constant returns (uint eth, uint time, uint exit) {
      // When given the trade id it returns the data for that trade
      Trade trade = trades[_trade];
      return (trade.eth, trade.time, trade.exit );
    }

    function getCurrentPrice() constant returns (uint currentPrice) {
      // gets the current exchange rate of ETH/USD from the price contract
      return PriceContract.getCurrentPrice();
    }

    function getPrice(uint _time) constant returns (uint price) {
      // gets the current exchange of ETH/USD at a certain time from the price contract
      return PriceContract.getPrice(_time);
    }

    function getCurrentTimestamp() constant returns (uint currentTimestamp){
      // gets the current timestamp of the most recent exchange rate from the price contract
      return PriceContract.getCurrentTimestamp();
    }

    function Door(bool _door){
      // to close down the exchange or open it back up and allow the creation of new trades
      if ( msg.sender != Admin)
          throw;
      Open = _door;
    }

    function setFee(uint _fee) {
      // the percentage to charge of each trade, out of 100000
      if ( msg.sender != Admin)
          throw;
      Fee = _fee;
    }

    function setTradingLimit(uint _limit) {
      // the percentage to charge of each trade, out of 100000
      if ( msg.sender != Admin)
          throw;
      tradingLimit = _limit;
    }

    function depositLiquidity() payable {
      if ( msg.sender != Admin)
          throw;
      liquidityPool = liquidityPool + msg.value;
    }

    function withdrawLiquidity(uint _eth) {

      if ( msg.sender != Admin)
          throw;

      if (liquidityPool < _eth)
          throw;

      liquidityPool = liquidityPool - _eth;

      if(!msg.sender.send(_eth))
        throw;
    }
}