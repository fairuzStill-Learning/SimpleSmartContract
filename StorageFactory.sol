// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // solidity version

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public ListOfSimpleStorageContract;

    function createSimpleStorage() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        ListOfSimpleStorageContract.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _SimpleStorageIndex , uint256 _NewSimpleStorageNumber) public {
        // address
        // ABI (Apllication Binary Interface)
        ListOfSimpleStorageContract[_SimpleStorageIndex].store(_NewSimpleStorageNumber);
    }

    function sfGet(uint256 _SimpleStorageIndex) public view returns(uint256){
        return ListOfSimpleStorageContract[_SimpleStorageIndex].retrieve();
    }

}