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
        
        // 7.
        uint totalPoints; //eh?
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
        
        // 4
        //clientInfo[msg.sender].points += points;
        
        // 6
        clientInfo[msg.sender].points += getBonus(points);
        
        // 7 
        clientInfo[msg.sender].totalPoints += clientInfo[msg.sender].points; // eh?
        
        
        // Last
        emit PointsEarned(points, clientInfo[msg.sender].points);
    }
    
    // 5.
    function use(uint points, address reciever) public {
        require(isRegistered(msg.sender));
        require(clientInfo[msg.sender].points >= points);
        
        clientInfo[msg.sender].points -= points;
        
        clientInfo[reciever].points += points;
        clientInfo[reciever].totalPoints += points; // eh?
    }
    
    //6 
    function getBonus(uint points) private returns (uint) {
        if (clientInfo[msg.sender].tier == Tier.Bronze){
            points += points * 5/100;
        }
        else if (clientInfo[msg.sender].tier == Tier.Silver){
            points += points * 10/100;
        }
        else if (clientInfo[msg.sender].tier == Tier.Gold){
            points += points * 15/100;
        }
        return points;
    }
}