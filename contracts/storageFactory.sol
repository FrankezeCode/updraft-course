// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;


import { SimpleStorage} from "./SimpleStorage.sol";

contract storageFactory{

    SimpleStorage[] public ListOfSimpleStorage;

    function deploySimpleStorageContract() public {
        SimpleStorage  newSimpleStorage = new SimpleStorage();
        ListOfSimpleStorage.push(newSimpleStorage);

    }

    function sfStore(uint index, uint _favoriteNumber ) public{
        //get the particular contract adress
        SimpleStorage mySimpleStorage = ListOfSimpleStorage[index];

        //get the ABI
        mySimpleStorage.store(_favoriteNumber);
    }

    function sfRetrieve(uint index) public view returns  (uint){
      SimpleStorage mySimpleStorage = ListOfSimpleStorage[index];

      return  mySimpleStorage.retrieve();
    }
}