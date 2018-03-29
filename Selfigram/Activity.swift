//
//  Post.swift
//  Selfigram
//
//  Created by Will Chew on 2018-03-07.
//  Copyright © 2018 Will Chew. All rights reserved.
//


import Parse
import UIKit

class Activity: PFObject, PFSubclassing {
    
    @NSManaged var type:String
    @NSManaged var post:Post
    @NSManaged var user:PFUser
    
    static func parseClassName()-> String {
        return "Activity"
    }
    
    //convenience init method, because it's building on top of PFFObject's init, rather than overriding
    convenience init(type:String, post:Post, user:PFUser){
        //you can name the property you are passing into the function the
        //same name as the class' property. To distinguish the two
        //add ".self" to the beginning of the class's property
        
        self.init()
        self.type = type
        self.post = post
        self.user = user
    }
}


