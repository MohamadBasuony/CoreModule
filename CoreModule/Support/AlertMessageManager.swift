//
//  AlertMessageManager.swift
//  Keylos
//
//  Created by Mohamad Basuony on 15/04/2024.
//

import Foundation
import SwiftMessages
import UIKit

public class AlertMessageManager {

    @MainActor public class func alertError(_ msg: String?) {

        guard let msg = msg else { return }

        var config = SwiftMessages.Config()

        // Slide up from the bottom.
        config.presentationStyle = .top
        config.presentationContext = .window(windowLevel: .statusBar)

        let messageView = MessageView.viewFromNib(layout: .cardView)

        messageView.configureTheme(.error, iconStyle: .default)
        messageView.configureDropShadow()
        messageView.bodyLabel?.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.light)
        messageView.configureContent(body: msg)
        messageView.titleLabel?.isHidden = true
        messageView.button?.isHidden = true
        messageView.tapHandler = {
            _ in
            SwiftMessages.hide()
        }

        SwiftMessages.show(config: config, view: messageView)
    }

    @MainActor public class func informMsg(_ msg: String?) {

        guard let msg = msg else { return }
        var config = SwiftMessages.Config()

        // Slide up from the bottom.
        config.presentationStyle = .top
        config.presentationContext = .window(windowLevel: .alert)

        let messageView = MessageView.viewFromNib(layout: .cardView)

        messageView.configureTheme(.success)
        messageView.configureDropShadow()
        messageView.bodyLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.light)
        messageView.configureContent(body: msg)
        messageView.titleLabel?.isHidden = true
        messageView.button?.isHidden = true
        messageView.tapHandler = {
            _ in
            SwiftMessages.hide()
        }

        SwiftMessages.show(config: config, view: messageView)
    }
}
