//
//  UIViewController + Ext.swift
//  CoreModule
//
//  Created by Mohamad Basuony on 02/05/2024.
//

import Foundation
import UIKit
import KRProgressHUD

// Confirming to Base Protocols
extension UIViewController : BaseProtocol {
    public func showIndicatorInView() {
        KRProgressHUD.show()
    }
    
    public func hideIndicatorInView() {
        KRProgressHUD.dismiss()
    }
}
