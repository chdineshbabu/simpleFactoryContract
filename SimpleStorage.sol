//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{ 
   uint256 public favNumber;
   function store(uint _fNumber) public {
      favNumber = _fNumber;
   }
   function retrive() public view returns(uint256){
      return favNumber;
   }
}
