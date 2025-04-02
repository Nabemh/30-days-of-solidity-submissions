// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract saveData {
    struct User{
        string name;
        string bio;
    }

    mapping (address => User) public Profile;

    function createProfile(string memory _name, string memory _bio) public {
        Profile[msg.sender] = User({
            name: _name,
            bio: _bio
        });
    }

    function getProfile() public view returns (string){
        return (_name, _bio);
    }
}