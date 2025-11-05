// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    uint256 public tokenId;
    constructor() ERC721("TestNFT", "TNFT") {}

// Mint a new NFT to the caller and increment ID
    function mint() public {
        require(tokenId < 1000, "Max supply reached");
        _safeMint(msg.sender, tokenId++);
    }
}
// End of NFT contract
