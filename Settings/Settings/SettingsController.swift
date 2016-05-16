//
//  SettingsController.swift
//  Settings
//
//  Created by Ross McIlwaine on 5/16/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit

class SettingsController {
    
    static let sharedController = SettingsController()
    
    var settings: [Setting]
    
    init() {
        settings = []
        settings = mockData()
    }
    
    func mockData() -> [Setting] {
        
        let music = Setting(image: UIImage(named:"music"), name: "Music", isSet: false)
        let apps = Setting(image: UIImage(named:"apps"), name: "Apps", isSet: true)
        let books = Setting(image: UIImage(named:"books"), name: "Books", isSet: false)
        let updates = Setting(image: UIImage(named:"apps"), name: "Updates", isSet: false)
        
        return [music, apps, books, updates]
        
    }
    
    func updateSettingSelection(setting: Setting, isOn: Bool) {
        setting.isSet = isOn
        
    }
    
}