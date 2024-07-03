// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import {AggregatorV3Interface} from "@chainlink/contracts@1.1.1/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";


library PriceConverter {
   

    function getPrice() internal view returns (uint) {
        //get address : 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI

        AggregatorV3Interface priceFeaed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
         ( , int256 price,,,) = priceFeaed.latestRoundData(); //Price of ETH in usd

         return uint (price * 1e10); //Eth price always comes with 8 decimal place, but msg.value has 18 decimal place , we multiply by 1e10 to equate with msg.value

    }

    function getConversionRate(uint256 ethAmount) internal view returns(uint) {
        uint ethPrice = getPrice();
        uint ethAmountInUsd = (ethPrice * ethAmount)/1e18;
        return  ethAmountInUsd;
    }

    
}