// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
  
   function store(uint _num) public override  {
      myFavoriteNumber = _num + 5;
   }
}