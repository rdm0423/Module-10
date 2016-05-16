//
//  SettingsTableViewCell.swift
//  Settings
//
//  Created by Ross McIlwaine on 5/16/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit

protocol SettingCellDelegate {
    func settingValueChanged(cell: SettingsTableViewCell, isOn: Bool)
}

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellSwitch: UISwitch!
    
    var setting: Setting?
    var delegate: SettingCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCellWithSettings(setting: Setting) {
        
        self.setting = setting
        
        cellImageView.image = setting.image
        cellLabel.text = setting.name
        cellSwitch.on = setting.isSet
        
        if setting.isSet {
            backgroundColor = .magentaColor()
        } else {
            backgroundColor = .whiteColor()
        }
        
    }
    
    
    @IBAction func switchValueChanged(sender: AnyObject) {
        
        delegate?.settingValueChanged(self, isOn: cellSwitch.on)
        
        
    }
    
    

}
