/**
 *Submitted for verification at basescan.org on 2025-01-15
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PlayerJump {
    uint public jumpHeight;

    event PlayerJumped(uint height);

    constructor() {
        jumpHeight = 0;
    }

    function jump() public {
        uint randomHeight = uint(keccak256(abi.encodePacked(block.timestamp, block.prevrandao))) % 101; // Hauteur entre 0 et 100
        jumpHeight = randomHeight;
        emit PlayerJumped(jumpHeight);
    }

    // Fonction pour récupérer la hauteur actuelle du saut
    function getJumpHeight() public view returns (uint) {
        return jumpHeight;
    }
}
