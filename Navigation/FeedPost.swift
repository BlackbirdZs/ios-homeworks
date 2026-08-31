//
//  FeedPost.swift
//  Navigation
//
//  Created by Anton Kruglov on 31.07.2026.
//

import Foundation

struct FeedPost {
    let author: String
    let description: String
    let image: String
    let likes: Int
    let views: Int
}

let feedPost1 = FeedPost(author: "John", description: "I like to cook!", image: "avatar", likes: 18, views: 9)

let feedPost2 = FeedPost(author: "Jane", description: "I love to drive!", image: "avatar", likes: 20, views: 16)

let feedPost3 = FeedPost(author: "Jean", description: "I like to climb mountains", image: "avatar", likes: 15, views: 13)

let feedPost4 = FeedPost(author: "Joon", description: "I like to read!", image: "avatar", likes: 5, views: 9)

let feedPosts: [FeedPost] = [feedPost1, feedPost2, feedPost3, feedPost4]
