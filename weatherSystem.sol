// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract weatherSystem {

    mapping( address => bool ) hasFever;
    mapping( address => bool ) goingOut;

    function safe_to_travel(uint256 temperature ) public {

        if(temperature>=30){
            revert("Not safe to travel -- too hot");
        }

        require(temperature >= 10, "Not safe to travel -- too cold");

        assert(!hasFever[msg.sender]);
        goingOut[msg.sender] = true;
    }

    function checkFever( address addr, uint256 bodyTemp ) public {
        if(bodyTemp >= 38)
            hasFever[addr] = true;
        else 
            hasFever[addr] =  false;
    }
}
