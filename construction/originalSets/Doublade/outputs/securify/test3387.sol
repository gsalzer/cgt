Processing contract: /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol:CurrentCost
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol:CurrentCostInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol:PiecewiseLogic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol:RegistryInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol:Upgradable
Processing contract: /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol:ZapCoordinatorInterface
[33mWarning[0m for LockedEther in contract 'CurrentCost':
    |// File: contracts/platform/bondage/currentCost/CurrentCost.sol
    |
  > |contract CurrentCost is Destructible, CurrentCostInterface, Upgradable {
    |
    |    RegistryInterface registry;
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(171)

[33mWarning[0m for UnhandledException in contract 'CurrentCost':
    |
    |    function _updateDependencies() internal {
  > |        registry = RegistryInterface(coordinator.getContract("REGISTRY"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(180)

[33mWarning[0m for UnhandledException in contract 'CurrentCost':
    |
    |
  > |        uint256 length = registry.getProviderCurveLength(oracleAddress,endpoint);
    |        int[] memory curve = new int[](length);
    |        curve = registry.getProviderCurve(oracleAddress, endpoint);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(218)

[33mWarning[0m for UnhandledException in contract 'CurrentCost':
    |        uint256 length = registry.getProviderCurveLength(oracleAddress,endpoint);
    |        int[] memory curve = new int[](length);
  > |        curve = registry.getProviderCurve(oracleAddress, endpoint);
    |
    |        int res = PiecewiseLogic.evaluateFunction(curve, start, nDots);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(220)

[33mWarning[0m for UnhandledException in contract 'CurrentCost':
    |        returns (uint256)
    |    {
  > |        uint256 length = registry.getProviderCurveLength(oracleAddress,endpoint);
    |        int[] memory curve = new int[](length);
    |        curve = registry.getProviderCurve(oracleAddress, endpoint);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(235)

[33mWarning[0m for UnhandledException in contract 'CurrentCost':
    |        uint256 length = registry.getProviderCurveLength(oracleAddress,endpoint);
    |        int[] memory curve = new int[](length);
  > |        curve = registry.getProviderCurve(oracleAddress, endpoint);
    |
    |        return uint(curve[length-1]);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrentCost':
    |
    |    function _updateDependencies() internal {
  > |        registry = RegistryInterface(coordinator.getContract("REGISTRY"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrentCost':
    |
    |
  > |        uint256 length = registry.getProviderCurveLength(oracleAddress,endpoint);
    |        int[] memory curve = new int[](length);
    |        curve = registry.getProviderCurve(oracleAddress, endpoint);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrentCost':
    |        uint256 length = registry.getProviderCurveLength(oracleAddress,endpoint);
    |        int[] memory curve = new int[](length);
  > |        curve = registry.getProviderCurve(oracleAddress, endpoint);
    |
    |        int res = PiecewiseLogic.evaluateFunction(curve, start, nDots);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrentCost':
    |        returns (uint256)
    |    {
  > |        uint256 length = registry.getProviderCurveLength(oracleAddress,endpoint);
    |        int[] memory curve = new int[](length);
    |        curve = registry.getProviderCurve(oracleAddress, endpoint);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(235)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CurrentCost':
    |        uint256 length = registry.getProviderCurveLength(oracleAddress,endpoint);
    |        int[] memory curve = new int[](length);
  > |        curve = registry.getProviderCurve(oracleAddress, endpoint);
    |
    |        return uint(curve[length-1]);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'CurrentCost':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'CurrentCost':
    |
    |    function _updateDependencies() internal {
  > |        registry = RegistryInterface(coordinator.getContract("REGISTRY"));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(180)

[33mWarning[0m for LockedEther in contract 'Destructible':
    |// File: contracts/lib/lifecycle/Destructible.sol
    |
  > |contract Destructible is Ownable {
    |	function selfDestruct() public onlyOwner {
    |		selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(23)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// File: contracts/lib/ownership/Ownable.sol
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Allows the current owner to transfer control of the contract to a newOwner.
    |    /// @param newOwner The address to transfer ownership to.
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(23)

[33mWarning[0m for LockedEther in contract 'PiecewiseLogic':
    |// File: contracts/lib/platform/PiecewiseLogic.sol
    |
  > |library PiecewiseLogic {
    |    function sumOfPowers(uint n, uint i) internal pure returns (uint) {
    |        require(i <= 6 && i >= 0, "Error: Invalid Piecewise Logic");
  at /home/jiaming/mavs_srcs/contract@0xde775430f4e9f0df7887d6c7c3ce63b257300fca.sol(73)


