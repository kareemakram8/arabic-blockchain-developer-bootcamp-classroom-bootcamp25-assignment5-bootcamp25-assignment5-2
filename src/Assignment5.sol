// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
    // 1. Declare a public unsigned integer variable called `counter`
    uint public counter;

    // 2. Declare a public boolean variable called `isActive`
    bool public isActive;

    // 3. Create a public mapping from an address to a string called `userNames`
    mapping(address => string) public userNames;

    // 4. Define a struct `User` with fields: `id` (uint), `name` (string)
    struct User {
        uint id;
        string name;
    }

    // 5. Create a public array of `User` called `users`
    User[] public users;

    // Constructor
    constructor() {
        isActive = true;
    }

    // 6. Function to increment the counter (visibility specified as external)
    function incrementCounter() external {
        for (uint i = 0; i < 5; i++) {
            counter += 1;
        }
    }

    // 7. Function to toggle `isActive` (visibility specified as public)
    function toggleActive() public {
        isActive = !isActive;
    }

    // 8. Function to add a user (visibility specified as public)
    function addUser(uint id, string memory name, address userAddress) public {
        User memory user = User(id, name);
        users.push(user);
        userNames[userAddress] = name;
    }

    // 9. Function to get user count (visibility specified as public view)
    function getUserCount() public view returns (uint) {
        return users.length;
    }
}
