pragma solidity ^0.8.0;

contract Auth {

    mapping (address => string) names;

    constructor (string memory _name) {
         names[msg.sender] = _name;
    }

    function setName(string memory _name) public  {
        names[msg.sender] = _name;
    }
    
    function getName(address _address) public view returns (string memory) {
        return names[_address];
    } 

    

}