//
//  Feed.swift
//  FlickrGallery
//
//  Created by Mohamed Aberkane on 07/08/2018.
//  Copyright © 2018 Mohamed Aberkane. All rights reserved.
//

import Foundation

struct Feed: Decodable {
    
    let title, link, description, modified: String?
    let generator: String?
    let items: [Item]?
}

struct Item: Decodable {
    
    let title, link: String?
    let media: Media?
    let dateTaken, description, published, author: String?
    let authorID, tags: String?
    
    enum CodingKeys: String, CodingKey {
        case title, link, media
        case dateTaken = "date_taken"
        case description, published, author
        case authorID = "author_id"
        case tags
    }
}

struct Media: Decodable {
    
    let m: String?
}
