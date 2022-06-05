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

    _setTokenURI(currentid, " data:application/json;base64,ewogICAgIm5hbWUiOiJTcG9uZ2Vib2IiLAogICAgIkRlc2NyaXB0aW9uIjoiQmVzdCBDYXJ0b29uIiwKICAgICJpbWFnZSI6ImRhdGE6aW1hZ2Uvc3ZnK3htbDtiYXNlNjQsUEhOMlp5QjRiV3h1Y3owaWFIUjBjRG92TDNkM2R5NTNNeTV2Y21jdk1qQXdNQzl6ZG1jaUlIQnlaWE5sY25abFFYTndaV04wVW1GMGFXODlJbmhOYVc1WlRXbHVJRzFsWlhRaUlIWnBaWGRDYjNnOUlqQWdNQ0F6TlRBZ016VXdJajRLSUNBZ0lEeHpkSGxzWlQ0dVltRnpaU0I3SUdacGJHdzZJSGRvYVhSbE95Qm1iMjUwTFdaaGJXbHNlVG9nYzJWeWFXWTdJR1p2Ym5RdGMybDZaVG9nTVRSd2VEc2dmVHd2YzNSNWJHVStDaUFnSUNBOGNtVmpkQ0IzYVdSMGFEMGlNVEF3SlNJZ2FHVnBaMmgwUFNJeE1EQWxJaUJtYVd4c1BTSmliR0ZqYXlJZ0x6NEtJQ0FnSUR4MFpYaDBJSGc5SWpVd0pTSWdlVDBpTlRBbElpQmpiR0Z6Y3owaVltRnpaU0lnWkc5dGFXNWhiblF0WW1GelpXeHBibVU5SW0xcFpHUnNaU0lnZEdWNGRDMWhibU5vYjNJOUltMXBaR1JzWlNJK1JYQnBZMHh2Y21SSVlXMWlkWEpuWlhJOEwzUmxlSFErQ2p3dmMzWm5QZz09Igp9");
    console.log("The nft with id %s was minted by %s user",currentid,msg.sender);

    _tokenid.increment();
    emit newNFTminted(msg.sender, currentid);
}
}
