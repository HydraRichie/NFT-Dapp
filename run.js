const { ethers } = require("hardhat");

async function main()
{
    const Contract=await ethers.getContractFactory("MyEpicNft");
    const contract=await Contract.deploy();
    await contract.deployed();
    console.log("The contract address is :",contract.address);

    const txn=await contract.MakeanEpicNft();
    await txn.wait();
    console.log("Minted Nft #1");
    txn=await contract.MakeanEpicNft();
    await txn.wait();
    console.log("Minted Nft #2");
}
main()
.then(()=>
process.exit(0))
.catch((error)=>
process.exit(1)
)