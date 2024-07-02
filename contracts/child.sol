// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;


contract Parent {

    uint public number;

    function store(uint _number) public {
        number = _number;
    }

    function increment(uint _number) public {
        number += _number;
    }
}

contract child is Parent {
 
}