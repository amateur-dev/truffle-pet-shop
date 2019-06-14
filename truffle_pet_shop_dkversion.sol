pragma solidity ^0.5.0;

contract Adoption {
    address[] public adopters; // this is the array of all the adopters
    
    struct Pet{
        uint adoptionStatus;
        string name; 
    } // this is the struct class of the pets to be used when a pet is created or deposited 

    mapping (address => Pet) pet_address; // this is the mapping of the pets to their struct instances
    
    address[] public pets; // this is array of all the pets
    
        
    function create_pet(string memory _petName) public {
        // this is to create a new pet using the struct pet above
        pets.push(msg.sender); // this will push the address of the pet in the pets array
        pet_address[]
        
        
        
    }
    
    function adopt(uint8 _petId) public {
        // ideally this function should be payable, that is to say that the person who would like to adopt the pet must pay or make a little contribution
        adopters.push(msg.sender);
    }
    
}