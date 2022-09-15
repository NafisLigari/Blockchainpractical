pragma solidity ^0.6.0;
 
contract SimpleStorage {
    // uint256 favoriteNumber = 5;
    // bool favoriteBool = false;
    // string favoriteString = "String";
    // int256 favoriteInt = -5;
    // bytes32 favoriteBytes = "cat";
    // address favoriteAddress = 0x9e8323c2bB08f9170333199212b0f8823A860A2c;
 
    uint256 public favoriteNumber;
 
    struct People{
        uint favoriteNumber;
        string name;
    }
 
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
 
    People public person = People({favoriteNumber : 1, name : "Nafis"});
 
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
 
    function retrieve() public view returns(uint256)
    {
        return favoriteNumber;
    }
 
 
    function addperson(string memory _name , uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
 
 
 
 


