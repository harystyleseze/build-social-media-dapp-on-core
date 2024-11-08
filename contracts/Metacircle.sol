// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Metacircle {

    // Struct to represent a User
    struct User {
        //  ASSIGNMENT #1
        address userAddress;
        string username;
        string bio;
    }
    
    // Struct to represent a Post
    struct Post {
        uint postId;
        address author;
        string content;
        //  ASSIGNMENT #2
        uint likes;
        mapping(address => bool) likedBy; // Mapping to track which users have liked the post
        uint[] commentIds;  // Array to store comment IDs associated with the post
    }

    // Struct to represent a Comment
    struct Comment {
        uint commentId;
        string authorUsername; // Store the username of the commenter
        uint postId;
        //  ASSIGNMENT #3
        string content;
    }

    // Mappings to store users, posts, and comments
    mapping(address => User) public users;
    //  ASSIGNMENT #4
    mapping(uint => Post) public posts;
    mapping(uint => Comment) public comments;

    // Counters for posts and comments
    uint public postCount;
    //  ASSIGNMENT #5
    uint public commentCount;

}
