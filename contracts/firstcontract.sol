// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;


interface myInterface {
    function add(uint a, uint b) external returns (uint) ;
    function getValue() external view returns (uint);
}

contract myContract is myInterface{

    function add(uint a, uint b) external  pure override returns (uint) {
         return  a + b;
    }

    function getValue() external view override  returns (uint){
        return this.add(6,8);
    }
   
}