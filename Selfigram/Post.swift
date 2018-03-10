//
//  Post.swift
//  Selfigram
//
//  Created by Will Chew on 2018-03-07.
//  Copyright © 2018 Will Chew. All rights reserved.
//

import UIKit

class Post {
    
    let image:UIImage
    let user:User
    let comment:String
    
    init(image:UIImage, user:User, comment:String) {
        self.image = image
        self.user = user
        self.comment = comment
    }
}
