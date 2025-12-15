pragma solidity ^0.8.0;

contract vehicle {
string public brand;

constructor(string memory _brand){
    brand = _brand;
}

function getBrand() public pure virtual returns (string memory){
    return "The Brand of Vehicle is G-Wagon";
}

}

contract car is vehicle {
  uint public noofdoors;

  constructor(string memory _brand,uint  _noofdoors) vehicle(_brand) {
    noofdoors = _noofdoors;
  }   

  function getBrand() public  pure override returns (string memory) {
    return "This is a Car";
  }  
}