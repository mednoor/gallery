//
//  APIManager.swift
//  FlickrGallery
//
//  Created by Mohamed Aberkane on 07/08/2018.
//  Copyright © 2018 Mohamed Aberkane. All rights reserved.
//

import Foundation

// MARK: - API Error Enum
enum APIError {
    
    static let invalidURL = "Invalid URL"
    static let unableToCreateURL = "Unable to create a valid URL"
    static let imagePathNotFound = "Unable to find Poster Path"
    static let unknown = "Undefined expection"
}


// MARK: - API Result ENUM
enum APIResult<T> {
    
    case success(T)
    case error(String)
}

// MARK: - APIManager class to talk to Flickr API
class APIManager {
    
    // Following the singleton design pattern
    static let shared = APIManager()
    private init() {}
    
    // Caching images
}
