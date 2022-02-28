//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract referenceTypes {
    uint8[] members;

    function Members() public{
        members[0] = 1;
        members[1] = 2;
    }

    function setMembersByStorage() public {
        uint8[] storage myArr = members;
        myArr[0] = 0;    
    }

    function setMembersByMemory() public view {
        uint8[] memory myArr = members;
        myArr[0] = 0;    
    }

    function getMembers() public view returns(uint8) {
        return members[0];
    }

}