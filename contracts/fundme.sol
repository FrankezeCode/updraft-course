// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;


import {PriceConverter} from "contracts/PriceConverter.sol";



contract FundMe {

    uint public  minimumusd = 5e18;
    address[] public funders;
    mapping(address funder => uint amount) public funderToAmount;
    address public owner ;


    constructor(){
         owner = msg.sender;
    }

    modifier onlyOwner(){
       require(msg.sender == owner, "Must be Owner");
       _;
    }


    
    function fund() public payable {
        require( PriceConverter.getConversionRate((msg.value)) >= minimumusd);
        funders.push(msg.sender);
        funderToAmount[msg.sender]+=msg.value;
    }

    function withdraw() public onlyOwner{
        
        // for(starting index, ending index, step amount){ perform this operation }
        for (uint i = 0; i < funders.length; i++){
            address funder = funders[i];
            funderToAmount[funder] = 0; //this is use to reset the value of each address to zero
        }
        
        funders = new address[](0); // this is use to reset the array to zero 

         //withdraw
        (bool callSucess,) = payable (msg.sender).call{value: address(this).balance}("");
        require(callSucess, "call failed");
    
    }

   
}