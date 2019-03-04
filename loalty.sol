pragma solidity ^0.5.4;


// 1.
contract FrequentFlyer {
    
    // Last
    event PointsEarned(uint pointsRecieved, uint totalPoints);
    
    // 5.
    enum Tier { Gold, Silver, Bronze }

    // 1
    struct Client {
        string ssn;
        uint points;
    
         // 5.
        Tier tier;
    }
    // 1.
    mapping(address => Client) public clientInfo;
    
    // 1
    function register(string memory ssn) public {
        
        // 3.
        require(!isRegistered(msg.sender));
        
        clientInfo[msg.sender] = Client(ssn, 0, /*5.*/ Tier.Bronze);
    }
    
    // 3
    function isRegistered(address sender) public view returns (bool) {
        if(bytes(clientInfo[sender].ssn).length == 0) {
            return false;
        }
        return true;
    }
    
    // 4
    function earn(uint points) public {
        require(isRegistered(msg.sender));
        clientInfo[msg.sender].points += points;
        
        // Last
        emit PointsEarned(points, clientInfo[msg.sender].points);
    }
    
    // 5.
    function use(uint points, address reciever) public {
        require(isRegistered(msg.sender));
        require(clientInfo[msg.sender].points >= points);
        
        clientInfo[msg.sender].points -= points;
        clientInfo[reciever].points += points;
    }
    
    //6 
    function getBonus() private returns (uint) {
        
    }

    
}