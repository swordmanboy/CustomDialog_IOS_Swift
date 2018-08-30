//
//  SMBAlertViewController.swift
//  SMBDialog
//
//  Created by Apinun Wongintawang on 8/30/18.
//  Copyright © 2018 Apinun Wongintawang. All rights reserved.
//

import UIKit

class SMBAlertViewController: UIViewController {

    @IBOutlet weak var viewMain: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureUI()
    }
    
    private func configureUI(){
        self.viewMain.layer.cornerRadius = 5
    }

    @IBAction func onTouchClose(_ sender: Any) {
        self.closeDialog()
    }
    
    private func closeDialog(){
        self.dismiss(animated: true, completion: nil)
    }
}
