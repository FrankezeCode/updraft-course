// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import{MathLib } from "contracts/MathLib.sol";


contract  Calculator{

    // using MathLib for uint;
     
     function add(uint a , uint b) public pure returns(uint) {
       return  MathLib.add(a,b);
     }

     function multiply(uint a, uint b) public pure returns(uint){
       return MathLib.multiply(a, b);
     }
}

contract  Calculator2{

    using MathLib for uint;
     
     function add(uint a , uint b) public pure returns(uint) {
       return  a.add(b);
     }

     function multiply(uint a, uint b) public pure returns(uint){
       return a.multiply(b);
     }
}