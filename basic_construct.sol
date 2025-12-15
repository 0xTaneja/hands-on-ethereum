pragma solidity ^0.8.0;

contract Basic {
    uint256 num;
    uint256[5] numbers;
    mapping (address => string) public names;

    constructor (uint256 _number,string memory _name) {
        num = _number;
        names[msg.sender] = _name;
    }
    //require
    function div(uint256 _no) public  {
     require(_no > 0 ,"Number should be greater than  0 ");
     num /= _no;
    }
    //if_else
    function check_if_even() public view returns (bool) {
        if (num % 2 == 0 ) {
            return true;
        }
        else {
            return false;
        }
    }
    function check_if_odd() public view returns (bool) {
        if (num % 2 != 0){
            return true;
        }
        else {
            return false;
        }
    }

    function process_sum() public view returns (uint256){
        uint256 result;
        for (uint256 i = 0; i<num; i++){
             result += num;
        }
        return result;
    } 
    function getMap(address _address) public view returns (string memory){
        return names[_address];
    }

    function setNumber(uint256 _num) public {
        for(uint256 i = 0; i<5; i++) {
            numbers[i] = _num + 1;
        }
    } 
    
    function getNumber (uint256 _index) public  view returns (uint256) {
      return numbers[_index];
    }



}