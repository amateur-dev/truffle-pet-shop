pragma solidity ^0.5.0;

contract Adoption {
    struct Pet{
        string name; 
        uint8 adoptionStatus;
        address owner;
    } // this is the struct class of the pets to be used when a pet is created or deposited 
    
    address[] public adopters; // this is the array of all the adopters
    
    mapping (string => Pet) public pets; // this is the mapping of the pets to their struct instances
    
    // Pet[] public pets; // this is array of all the pets
    
        
    function create_pet(string memory _petName) public {
        Pet memory newPet = Pet({
            name: _petName,
            adoptionStatus: 1,
            owner: address(0)
        });
        
        pets[_petName] = newPet;
        
    }
    
    function adopt(string memory _petName) public payable {
        require(pets[_petName].adoptionStatus == 1);
        adopters.push(msg.sender);
        pets[_petName].owner = msg.sender;
        pets[_petName].adoptionStatus = 0;
    }
    
}