// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SocialMediaV1 {

    // Struct to represent a User
    struct User {
        address userAddress;
        string username;
        string bio;
    }
    
    // Struct to represent a Post
    struct Post {
        uint postId;
        address author;
        string content;
        uint likes;
        mapping(address => bool) likedBy;
        uint[] commentIds;
    }

    // Struct to represent a Comment
    struct Comment {
        uint commentId;
        string authorUsername;
        uint postId;
        string content;
    }

    // Mappings to store users, posts, and comments
    mapping(address => User) public users;
    mapping(uint => Post) public posts;
    mapping(uint => Comment) public comments;

    // Counters for posts and comments
    uint public postCount;
    uint public commentCount;

    // Function to create a new user
    function createUser(string memory _username, string memory _bio) public {
        require(bytes(users[msg.sender].username).length == 0, "User already exists.");
        users[msg.sender] = User(msg.sender, _username, _bio);
    }

    // Function to get the username of a user by their address
    function getUsername(address _userAddress) public view returns (string memory) {
        require(bytes(users[_userAddress].username).length != 0, "User does not exist.");
        return users[_userAddress].username;
    }

    // Function to create a new post (logic to be defined)
    function createPost(string memory _content) public {}

    // Function to like a post (logic to be defined)
    function likePost(uint _postId) public {}

    // Function to unlike a post (logic to be defined)
    function unlikePost(uint _postId) public {}

    // Function to comment on a post (logic to be defined)
    function commentOnPost(uint _postId, string memory _content) public {}

    // Function to check if a post is liked by a user (logic to be defined)
    function isPostLikedByUser(uint _postId, address _user) public view returns (bool) {}

    // Function to check if a user is registered
    function isUserRegistered(address _user) public view returns (bool) {
        return bytes(users[_user].username).length != 0;
    }

    // Function to get the username of the author of a post (logic to be defined)
    function getPostAuthorUsername(uint _postId) public view returns (string memory) {}

    // Function to get all comments for a post (logic to be defined)
    function getCommentsForPost(uint _postId) public view returns (Comment[] memory) {}

}

