pragma solidity ^0.8.0;

contract calculator {
  uint256 value;

  constructor(uint256 _initialValue) {
    value = _initialValue;
  }
  function add (uint256 _num) public {
    value += _num;
    
  }

  function subtract(uint256 _num) public  {
    value -= _num;
  }

  function multiply(uint256 _num) public {
    value *= _num;
  }

  function divide(uint256 _num) public {
    value /= _num;
  }
  
  function getCurrentValue() public view returns (uint256) {
    return value;
  }


}