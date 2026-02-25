//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/Riches1NFT.sol";

contract DeployRiches1NFT is Script {
    function run() external {
        vm.startBroadcast();
        new Riches1NFT("ipfs://bafybeihqly4nmvrlhlbduhyvotoqp66ch44yyo2l2tztlgsmhflgb5j6cq/1.json");
        vm.stopBroadcast();
    }
}