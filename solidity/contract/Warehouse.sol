pragma solidity ^0.4.25;

// Assuming all 5000 products have the same cost

contract Warehouse {
    address public owner;

    uint private constant COST = 100;

    mapping(uint => uint) private inventory;

    address private vendor1Address = 0x0969B7bCfcBc5C68d667047B221f69bB55377dCa;
    address private vendor2Address = 0x0969B7bCfcBc5C68d667047B221f69bB55377dCa;

    constructor() public {
        owner = msg.sender;
    }

    modifier ownerOnly() {
        owner = msg.sender;
        _;
    }

    function addToStock(uint productId) public ownerOnly {

        if (productId < 2000) {
            vendor1Address.transfer(COST);
        } else if (productId > 2000 && productId < 5000) {
            vendor2Address.transfer(COST);
        } else {
            require(productId < 5000, "Product is not available");
        }
        inventory[productId] += 1;
    }

    function removeFromStock(uint productId) public payable {

        // recieve amount
        inventory[productId] -= 1;

        // call knownCustomer(address)
        // sjá til, er þetta gott til að sýna struct?
    }

    // function knownCustomer(address customer) private {
    //     // ef viðskiptavinur er know, þá afsláttur
    // }
}
