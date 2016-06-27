//
//  Category.swift
//  FiverrApp
//
//  Created by Christopher Myers on 6/27/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class Category: NSObject {
    
    var name : String = ""
    var descriptionString : String = ""
    var imageNameString : String = ""
    
    override init() {
        super.init()
        
        self.name = ""
        self.descriptionString = ""
        self.imageNameString = ""
        
    }

}
