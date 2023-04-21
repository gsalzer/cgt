// PriceGeth - feedbase.io based feed which keeps the last 10 prices
// Shayan Eskandari shayan@bitaccess.co
pragma solidity ^0.4.0;


contract pricegeth {

    struct Feed {
      uint    USDBTC;
      uint40    BTCETH;
      uint40    BTCETC;
      uint40    BTCDOGE;
    //  uint    value;
      uint40  timestamp;
      uint    blockNumber;
    //  bool    priceSet; //just as a check to make sure the price was set (e.g if price = 0 or delete required checks)
    }

    mapping (uint => Feed) priceHistory;
    uint public lastBlock; // TODO: this can be checked on the client side as how updated the price is
    // and maybe as an indicator to check if the procedure should be executed or not (saves gas on client side)
    uint40 public firstBlock;

    address feedOwner;

    //returns latest price(USDBTC, BTCETH, BTCETC, BTCDOGE, BlockNumber, Timestamp)
    function getPrices() constant returns (uint, uint, uint, uint, uint, uint) {
      return (priceHistory[lastBlock].USDBTC, priceHistory[lastBlock].BTCETH, priceHistory[lastBlock].BTCETC, priceHistory[lastBlock].BTCDOGE, priceHistory[lastBlock].blockNumber, priceHistory[lastBlock].timestamp);
    }
    //returns (USDBTC, BTCETH, BTCETC, BTCDOGE, BlockNumber, Timestamp)
    function getPrices(uint blockNumber) constant returns (uint, uint, uint, uint, uint, uint) {
      return (priceHistory[blockNumber].USDBTC, priceHistory[blockNumber].BTCETH, priceHistory[blockNumber].BTCETC, priceHistory[blockNumber].BTCDOGE, priceHistory[blockNumber].blockNumber, priceHistory[blockNumber].timestamp);
    }

    // these functions returns (PRICE, Timestamp, Blocknumber)
    function USDBTC(uint blockNumber) constant returns (uint, uint, uint) {
      return (priceHistory[blockNumber].USDBTC, priceHistory[blockNumber].timestamp, priceHistory[blockNumber].blockNumber);
    }
    function BTCETH(uint blockNumber) constant returns (uint, uint, uint) {
      return (priceHistory[blockNumber].BTCETH, priceHistory[blockNumber].timestamp, priceHistory[blockNumber].blockNumber);
    }
    function BTCETC(uint blockNumber) constant returns (uint, uint, uint) {
      return (priceHistory[blockNumber].BTCETC, priceHistory[blockNumber].timestamp, priceHistory[blockNumber].blockNumber);
    }
    function BTCDOGE(uint blockNumber) constant returns (uint, uint, uint) {
      return (priceHistory[blockNumber].BTCDOGE, priceHistory[blockNumber].timestamp, priceHistory[blockNumber].blockNumber);
    }
    function timestamp(uint blockNumber) constant returns (uint40) { //not exactly needed
        return priceHistory[blockNumber].timestamp;
    }

    //constructor
    function pricegeth(){
      feedOwner = msg.sender;
      lastBlock = 0; //UI/User should check that priceHistory[0] is always 0 and !priceSet
    }

    // only feed owner have access to the functions using this modifier
    modifier ifOwner() { if (msg.sender != feedOwner) throw; _ ;}

    // events
  //  event ValueModified(uint id, uint40 oldTimestamp, uint oldValue, uint40 newTimestamp, uint newValue);
    event PriceUpdated(uint timestamp, uint blocknumber, uint USDBTC, uint BTCETH, uint BTCETC, uint BTCDOGE);

    //------------------------------------------------------------------
    // Updating price feed
    //------------------------------------------------------------------

    function setPrice(uint40 timestamp, uint40 blocknumber, uint USDBTC, uint40 BTCETH, uint40 BTCETC, uint40 BTCDOGE) ifOwner() {
      if (firstBlock == 0) firstBlock = blocknumber;
      lastBlock = blocknumber; // changed to use blockNumber instread of an incrementor
    //  priceHistory[lastId].value = block.number; //blocknumber which this transaction was in
      priceHistory[lastBlock].timestamp = timestamp; //uint40(now);
      priceHistory[lastBlock].blockNumber = blocknumber; //block.number;
      //priceHistory[lastId].priceSet = true;
      priceHistory[lastBlock].USDBTC = USDBTC;
      priceHistory[lastBlock].BTCETH = BTCETH;
      priceHistory[lastBlock].BTCETC = BTCETC;
      priceHistory[lastBlock].BTCDOGE = BTCDOGE;
      PriceUpdated(timestamp, blocknumber, USDBTC, BTCETH, BTCETC, BTCDOGE);
    }

    function queryTimestamp(uint40 timestamp) constant returns(uint, uint) {
      // inputs a timestamp and returns the (blockNumber, timestamp) right before that time.
      Feed memory temp;
      temp = priceHistory[firstBlock];
      for (uint i = 0; i < lastBlock; i++) {
        if ((timestamp >= temp.timestamp) && (timestamp < priceHistory[firstBlock + i].timestamp))
        {
          break;
        }
        if ((timestamp > temp.timestamp) && (timestamp >= priceHistory[firstBlock + i].timestamp))
        {
          temp = priceHistory[firstBlock + i];
        }
      }
    return (temp.blockNumber, temp.timestamp);
    }

    function recoverFunds(uint amount) ifOwner() returns(bool) {
      return (feedOwner.send(amount)); //maybe not the best way to write this? or maybe it is? who knows!
    }

    //rejector function
    function() { throw; }


}