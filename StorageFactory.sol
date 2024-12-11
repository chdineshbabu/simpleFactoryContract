// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorge.sol";
contract StorageFactory{
    SimpleStorage[] public listOfContract;
    function createStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfContract.push(newSimpleStorage);
    }
    function sStore(uint _index, uint256 _fNumber) public {
            listOfContract[_index].store(_fNumber);
    }
    function gStore(uint _index) public view returns(uint256) {
        return listOfContract[_index].retrive();
    }
}
