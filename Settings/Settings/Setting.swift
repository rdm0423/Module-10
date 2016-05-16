//
//  Setting.swift
//  Settings
//
//  Created by Ross McIlwaine on 5/16/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit

class Setting {
    
    var image: UIImage?
    let name: String
    var isSet: Bool
    
    init(image: UIImage?, name: String, isSet: Bool) {
        
        self.image = image
        self.name = name
        self.isSet = isSet
    }
    
}