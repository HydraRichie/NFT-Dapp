//SPDEX-Licensce-Identifier:UNLICENSCED
pragma solidity ^0.8.1;
// We first import some OpenZeppelin Contracts.
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";
contract MyEpicNft is ERC721URIStorage{
    event newNFTminted(address from, uint256 tokenid);
  using Counters for Counters.Counter;
  Counters.Counter private _tokenid;
constructor()ERC721("Hydra Richie","HR")
{
console.log("Hey These My NFT");
}
function MakeanEpicNft()public
{
    uint currentid=_tokenid.current();

    _safeMint(msg.sender,currentid);

    _setTokenURI(currentid, "Data");
    console.log("The nft with id %s was minted by %s user",currentid,msg.sender);

    _tokenid.increment();
    emit newNFTminted(msg.sender, currentid);
}
}
