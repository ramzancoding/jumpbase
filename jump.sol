/**
 *Submitted for verification at basescan.org on 2025-01-15
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PlayerJump {
    // Hauteur actuelle du saut du joueur
    uint public jumpHeight;

    // Événement pour signaler un saut
    event PlayerJumped(uint height);

    // Constructeur pour initialiser la hauteur de saut
    constructor() {
        jumpHeight = 0;
    }

    // Fonction pour effectuer un saut avec une hauteur aléatoire
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
