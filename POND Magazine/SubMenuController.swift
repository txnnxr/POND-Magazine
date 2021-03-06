//
//  SubMenu.swift
//  POND Magazine
//
//  Created by Tanner Wells on 2/29/16.
//  Copyright © 2016 PONDMAG. All rights reserved.
//

import Foundation

class SubMenuController: UITableViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if revealViewController() != nil {
            revealViewController().rearViewRevealWidth = 180
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
    }
}