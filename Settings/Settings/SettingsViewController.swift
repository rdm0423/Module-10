//
//  SettingsViewController.swift
//  Settings
//
//  Created by Ross McIlwaine on 5/16/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SettingCellDelegate {

    @IBOutlet weak var settingsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 0
//    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.sharedController.settings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath) as? SettingsTableViewCell
        
        let setting = SettingsController.sharedController.settings[indexPath.row]
        cell?.setupCellWithSettings(setting)
        
        cell?.delegate = self
        
        
        // nil coelesing
        
        return cell ?? UITableViewCell()
    }
    
    func settingValueChanged(cell: SettingsTableViewCell, isOn: Bool) {
        guard let setting = cell.setting, cellIndexPath = settingsTableView.indexPathForCell(cell) else {
            return
        }
        SettingsController.sharedController.updateSettingSelection(setting, isOn: isOn)
        settingsTableView.reloadRowsAtIndexPaths([cellIndexPath], withRowAnimation: .Automatic)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
