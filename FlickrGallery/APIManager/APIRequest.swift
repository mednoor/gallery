//
//  APIRequest.swift
//  FlickrGallery
//
//  Created by Mohamed Aberkane on 07/08/2018.
//  Copyright © 2018 Mohamed Aberkane. All rights reserved.
//

import Foundation

/**
 A class that represent an api request and encapsulates the api info
 */
class APIRequest {
    
    private let path: String?
    private let queryItems: [URLQueryItem]
    
    fileprivate init(path: String? = nil, params: [URLQueryItem] = []) {
        
        self.path = path
        self.queryItems = params
    }
    
    private lazy var urlComponsents: URLComponents = {
        
        var components = URLComponents()
        components.host = "www.flickr.com"
        components.scheme = "https"
        components.path = "/services/feeds/docs/photos_public"
        
        let apiFormat = URLQueryItem(name: "format", value: "json")
        components.queryItems = [apiFormat]
        
        return components
    }()
}
