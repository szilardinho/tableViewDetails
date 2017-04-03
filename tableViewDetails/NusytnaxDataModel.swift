//
//  NusytnaxDataModel.swift
//  tableViewDetails
//
//  Created by Szi Gabor on 4/1/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import Foundation


class NusyntaxDataModel {
    
    private var _imageURL: String!
    private var _articleURL: String!
    private var _articleTitle: String!
    
    var imageURL:String
    {
        return _imageURL
    }
    
    var articleURL:String
    {
        return _articleURL
    }
    
    var articleTitle: String
    {
        return _articleTitle
    }
    
    
    init(imageURL:String, articleURL: String, articleTitle: String) {
        _imageURL = imageURL
        _articleURL = articleURL
        _articleTitle = articleTitle
    }
    
}
