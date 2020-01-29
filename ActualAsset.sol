pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract AsstTech
{
    
    struct Bank {
        uint id;
        string name;
    }
    
    struct Sector{
        uint id;
        string name;
    }
    
    struct Transaction{
        uint tranxid;
        string bankname;
        string Borrower;
        string Asset_on_auction;
        string Guaranters;
        string sectorname;
        uint Reserve_Price;
        uint EMD;
        uint Auction_ID;
        string Date_Time;
    }
    
    
    
    Transaction[] private trns;
    Bank[] private assets;
    uint private nextId=100;
    Sector[] private sectors;
    uint private nextIdS=100;
    uint private nextTrans=0;
    
    function Bank_Input(string memory name) public{
        assets.push(Bank(nextId, name));
        nextId++;
    }
    
    function compareStrings (string memory a, string memory b) private pure returns (bool) {
        return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))) );
   }
    
    
    
    
    function findbankid(string memory bname) private view returns (uint){
        for(uint i=0;i<assets.length;i++){
            if(compareStrings(assets[i].name,bname)==true){
                return assets[i].id;
            }
        }
        return 0;
    }
    
    function findsectorid(string memory secname) private view returns (uint){
        for(uint i=0;i<sectors.length;i++){
            if(compareStrings(sectors[i].name,secname)==true){
                return sectors[i].id;
            }
        }
        return 0;
    }
    
    
    
    
    
    
    
    function Sector_Input(string memory name) public{
        sectors.push(Sector(nextId, name));
        nextIdS++;
    }
    
    function newtrans(string memory bname, string memory borrower, string memory aoa, string memory guraners, string memory secname, uint resprice, uint emd, uint auid, string memory datetime) public{
        nextTrans++;
        uint x = findbankid(bname);
        uint y = findsectorid(secname);
        require(x!=0 && y!=0, "Bank or Sector not found\nPlease create bank/sector using corresponding functions before processing a transaction");
        
        
        trns.push(Transaction(nextTrans, bname, borrower, aoa, guraners, secname, resprice, emd, auid, datetime));
    }
    
    function read(uint id) view public returns(Transaction memory){
        for(uint i=0; i<trns.length;i++){
            if(trns[i].tranxid == id)
                return(trns[i]);
        }
    }

    function readAll() view public returns(Transaction[] memory){
            return(trns);
    }

    
    function destroy(uint id) public{
        delete assets[id];
    }
    
    
    
}
