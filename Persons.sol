pragma solidity ^0.8.0;

contract Persons {
    struct person {
        string name;
        uint age;
        string gender;
        address addr;
    }

    mapping (address => person) pers;

    function setPerson(string memory _name,uint _age,string memory _gender) public  {
     pers[msg.sender] = person({
        name: _name,
        age: _age,
        gender: _gender,
        addr: msg.sender
     });
      
    }

    function getPerson () public view returns (string memory,string memory,uint,address) {
      person memory ps= pers[msg.sender];
      return (ps.gender,ps.name,ps.age,ps.addr);

    }
}