Processing contract: /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol:BlockdeblockContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'BlockdeblockContract':
    |}
    |
  > |contract BlockdeblockContract is Ownable {
    |
    |	struct Product {
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |}
    |
  > |contract BlockdeblockContract is Ownable {
    |
    |	struct Product {
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |}
    |
  > |contract BlockdeblockContract is Ownable {
    |
    |	struct Product {
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |	function register(uint uniqueId, uint design, uint8 gender, uint8 productType,
    |		uint8 size, uint8 color, string brandGuardPhrase) external onlyOwner {
  > |		lastIndex += 1;
    |		require(!uniqueIdExists(uniqueId));
    |		uniqueIds[uniqueId] = lastIndex;
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |		lastIndex += 1;
    |		require(!uniqueIdExists(uniqueId));
  > |		uniqueIds[uniqueId] = lastIndex;
    |		products[lastIndex] = 
    |			Product(lastIndex, now, uniqueId, design, gender, productType, size,
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |		require(!uniqueIdExists(uniqueId));
    |		uniqueIds[uniqueId] = lastIndex;
  > |		products[lastIndex] = 
    |			Product(lastIndex, now, uniqueId, design, gender, productType, size,
    |				color, brandGuardPhrase);
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |		Product storage product = products[index];
    |		if(design != 0) {
  > |			product.design = design;
    |		}
    |		if(gender != 0) {
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |		}
    |		if(gender != 0) {
  > |			product.gender = gender;
    |		}
    |		if(size != 0) {
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |		}
    |		if(size != 0) {
  > |			product.size = size;
    |		}
    |		if(color != 0) {
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |		}
    |		if(color != 0) {
  > |			product.color = color;
    |		}
    |		if(productType != 0) {
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockdeblockContract':
    |		}
    |		if(productType != 0) {
  > |			product.productType = productType;
    |		}
    |		if(bytes(brandGuardPhrase).length > 0) {
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(123)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc96d4c01834ab2f35be35632ea6a9a708343895d.sol(40)


