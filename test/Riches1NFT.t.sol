//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/Riches1NFT.sol";

contract Riches1NFTTest is Test {
    Riches1NFT nft;
    address user = address(1);

    function setUp() public {
        nft = new Riches1NFT("ipfs://test/");
    }
    function testMintNFT() public {
        nft.mint(user);
        assertEq(nft.ownerOf(1), user);
    }
    function testOnlyOwnerCanMint() public {
        vm.prank(user);
        vm.expectRevert();
        nft.mint(user);
    }
}