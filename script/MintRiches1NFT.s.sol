//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/Riches1NFT.sol";

contract MintRiches1NFT is Script {
    function run() external {
        vm.startBroadcast();
        Riches1NFT nft = Riches1NFT(0xc2Ab664F60405f69498D0b8B2fC1d2F8DE3F0701);
        nft.mint(0x657E6f78deBe5cB17240D82569a5f27174d5d95F);
        vm.stopBroadcast();
    }
}