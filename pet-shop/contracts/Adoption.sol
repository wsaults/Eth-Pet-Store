pragma solidity ^0.4.17;

contract Adoption {
    address[16] public adopters; // Array of Ethereum addresses

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        // Address of person/smart contract who called this function
        adopters[petId] = msg.sender;

        return petId; // Provided as a confirmation
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
}