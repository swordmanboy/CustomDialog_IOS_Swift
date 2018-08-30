//
//  MenuViewController.swift
//  SMBDialog
//
//  Created by Apinun Wongintawang on 8/30/18.
//  Copyright © 2018 Apinun Wongintawang. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        
    }

    
    @IBAction func onTouchShow(_ sender: Any) {
        SMBDialog.shared.show(title: "Hello World")
    }
}
