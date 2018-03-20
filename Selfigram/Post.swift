//
//  Post.swift
//  Selfigram
//
//  Created by Will Chew on 2018-03-07.
//  Copyright © 2018 Will Chew. All rights reserved.
//

import UIKit

class Post {
    
    let imageURL:URL
    let user:User
    let comment:String
    
    init(imageURL:URL, user:User, comment:String) {
        self.imageURL = imageURL
        self.user = user
        self.comment = comment
    }
}
