contract MoneyMarketInterface {
    function supply(address asset, uint amount) public returns (uint);
    function repayBorrow(address asset, uint amount) public returns (uint);
    function borrow(address asset, uint amount) public returns (uint);
    function withdraw(address asset, uint requestedAmount) public returns (uint);
    function getCollateralMarketsLength() public view returns (uint);
    address[] public collateralMarkets;
    function assetPrices(address asset) public view returns (uint);
    function getSupplyBalance(address account, address asset) view public returns (uint);
    function getBorrowBalance(address account, address asset) view public returns (uint);
    function calculateAccountValues(address userAddress) public view returns (uint, uint, uint);
    function getAccountLiquidity(address account) public view returns (int);
}

contract EIP20Interface {
    /* This is a slight change to the ERC20 base standard.
    function totalSupply() constant returns (uint256 supply);
    is replaced with:
    uint256 public totalSupply;
    This automatically creates a getter function for the totalSupply.
    This is moved to the base contract since public getter functions are not
    currently recognised as an implementation of the matching abstract
    function by the compiler.
    */
    /// total amount of tokens
    uint256 public totalSupply;

    /// @param _owner The address from which the balance will be retrieved
    /// @return The balance
    function balanceOf(address _owner) public view returns (uint256 balance);

    /// @notice send `_value` token to `_to` from `msg.sender`
    /// @param _to The address of the recipient
    /// @param _value The amount of token to be transferred
    /// @return Whether the transfer was successful or not
    function transfer(address _to, uint256 _value) public returns (bool success);

    /// @notice send `_value` token to `_to` from `_from` on the condition it is approved by `_from`
    /// @param _from The address of the sender
    /// @param _to The address of the recipient
    /// @param _value The amount of token to be transferred
    /// @return Whether the transfer was successful or not
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);

    /// @notice `msg.sender` approves `_spender` to spend `_value` tokens
    /// @param _spender The address of the account able to transfer the tokens
    /// @param _value The amount of tokens to be approved for transfer
    /// @return Whether the approval was successful or not
    function approve(address _spender, uint256 _value) public returns (bool success);

    /// @param _owner The address of the account owning tokens
    /// @param _spender The address of the account able to transfer the tokens
    /// @return Amount of remaining tokens allowed to spent
    function allowance(address _owner, address _spender) public view returns (uint256 remaining);

    // solhint-disable-next-line no-simple-event-func-name
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}
contract CompoundReader {

    uint[] supplyBalances;
    uint[] borrowBalances;
    uint256[] tokenHolding;
    uint[] tokenPrices;
    MoneyMarketInterface moneyMarket = MoneyMarketInterface(0x3fda67f7583380e67ef93072294a7fac882fd7e7);

    function getPrices() public view returns (uint[] memory) {
        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
            tokenPrices.push(moneyMarket.assetPrices(moneyMarket.collateralMarkets(i)));
        }
        return tokenPrices;
    }

    function getTokenHolding(address account) public view returns (uint256[] memory) {
        for (uint i=0; i < moneyMarket.getCollateralMarketsLength(); i++) {
            tokenHolding.push(EIP20Interface(moneyMarket.collateralMarkets(i)).balanceOf(account));
        }
        return tokenHolding;
    }

    function getBalances(address account) public view returns (uint[] memory, uint[] memory, uint, uint) {
        for (uint i=0; i<moneyMarket.getCollateralMarketsLength(); i++) {
            supplyBalances.push(moneyMarket.getSupplyBalance(account, moneyMarket.collateralMarkets(i)));
            borrowBalances.push(moneyMarket.getBorrowBalance(account, moneyMarket.collateralMarkets(i)));
        }
        uint sumSupplyValues;
        uint sumBorrowValues;
        (, sumSupplyValues, sumBorrowValues) = moneyMarket.calculateAccountValues(account);

        return (supplyBalances, borrowBalances, sumSupplyValues, sumBorrowValues);
    }

}
