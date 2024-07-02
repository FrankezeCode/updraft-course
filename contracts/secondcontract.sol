// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;


import {Math} from "./firstcontract.sol";


contract Test{
    
    Math  math ;
   

    function deploy() public  {
        math = new Math();
       
    }
}