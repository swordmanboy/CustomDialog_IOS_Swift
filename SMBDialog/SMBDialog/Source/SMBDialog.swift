//
//  SMBDialog.swift
//  SMBDialog
//
//  Created by Apinun Wongintawang on 8/30/18.
//  Copyright © 2018 Apinun Wongintawang. All rights reserved.
//

import UIKit

protocol SMBDialogDelegate {
    func closeAction()
    func doneAction()
}

class SMBDialog {
    static let shared = SMBDialog()
    private var  alertView: SMBAlertViewController? = nil
    var delegate: SMBDialogDelegate! = nil
    
    func show(title: String){
        if let rootViewController = UIApplication.shared.keyWindow?.rootViewController{

            alertView = SMBAlertViewController(nibName: "SMBAlertViewController", bundle: nil)
            
            guard let _alertView = alertView else {
                return
            }
            
            _alertView.providesPresentationContextTransitionStyle = true
            _alertView.definesPresentationContext = true
            _alertView.modalPresentationStyle = .overCurrentContext
            _alertView.modalTransitionStyle = .crossDissolve
            
            rootViewController.present(_alertView, animated: true, completion: nil)
            
        }
    }
    
    func hide(){
        guard let _alertView = alertView else {
            return
        }
        
        _alertView.dismiss(animated: true) {
            self.delegate.closeAction()
        }
    }
}
