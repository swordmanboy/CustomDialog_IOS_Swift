//
//  SMBAlertViewController.swift
//  SMBDialog
//
//  Created by Apinun Wongintawang on 8/30/18.
//  Copyright © 2018 Apinun Wongintawang. All rights reserved.
//

import UIKit

enum SMBDialogType {
    case done           //done
    case textfield      //textfield
    case confirm        //yes no
}

extension UIColor{
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    static let backgroundColor = UIColor.rgb(r: 21, g: 22, b: 23)
    static let outlineStrokeColor = UIColor.rgb(r: 234, g: 46, b: 11)
    static let trackStrokeColor = UIColor.rgb(r: 56, g: 25, b: 49)
    static let pulsatingFillColor = UIColor.rgb(r: 86, g: 30, b: 63)
}

class SMBAlertViewController: UIViewController {

    @IBOutlet weak var viewForAdded: UIView!
    @IBOutlet weak var viewMain: UIView!
    var typeDialog: SMBDialogType = .done
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureUI()
        self.configureUIByType()
    }
    
    private func configureUIByType(){
        switch self.typeDialog {
        case .done:
            self.configureDoneUI()
            break
        case .confirm:
            break
        case .textfield:
            break
        }
    }
    
    private func configureDoneUI(){
        //create done UI
        let doneRect = CGRect.init(x: 0, y: 0, width: 120, height: 40)
        let doneButton = UIButton.init(frame: doneRect)
        doneButton.setTitle("Done", for: .normal)
        doneButton.backgroundColor = UIColor.rgb(r: 120, g: 134, b: 224)
        doneButton.translatesAutoresizingMaskIntoConstraints = false
        doneButton.layer.cornerRadius = 3
        doneButton.isUserInteractionEnabled = true
        self.viewForAdded.addSubview(doneButton)
        
        NSLayoutConstraint.init(item: doneButton, attribute: .centerX, relatedBy: .equal, toItem: self.viewForAdded, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint.init(item: doneButton, attribute: .centerY, relatedBy: .equal, toItem: self.viewForAdded, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint.init(item: doneButton, attribute: .width, relatedBy: .equal, toItem: self.viewForAdded, attribute: .width, multiplier: 0.3, constant: 0).isActive = true
        
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
