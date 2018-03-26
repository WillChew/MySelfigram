//
//  Post.swift
//  Selfigram
//
//  Created by Will Chew on 2018-03-07.
//  Copyright © 2018 Will Chew. All rights reserved.
//

import UIKit
import Parse

class Post: PFObject, PFSubclassing {
    
    @NSManaged var image:PFFile
    @NSManaged var user:PFUser
    @NSManaged var comment:String
    
    static func parseClassName()-> String {
        return "Post"
    }
    
    //convenience init method, because it's building on top of PFFObject's init, rather than overriding
    convenience init(image:PFFile, user:PFUser, comment:String){
    //you can name the property you are passing into the function the
    //same name as the class' property. To distinguish the two
    //add ".self" to the beginning of the class's property
    
        self.init()
        self.image = image
        self.user = user
        self.comment = comment
    }
}
