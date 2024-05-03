//
//  UITableView + Ext.swift
//  CoreModule
//
//  Created by Mohamad Basuony on 02/05/2024.
//

import Foundation
import UIKit.UITableView
// To Handle Table View Easily
extension UITableView {
    
    public func registerNibFor(cellClass: UITableViewCell.Type , bundle : Bundle) {
        self.register(UINib(nibName: cellClass.cellNibName, bundle: bundle),
                      forCellReuseIdentifier: cellClass.cellIdentifier)
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(cellClass: T.Type) -> T {
        guard let cell: T = self.dequeueReusableCell(withIdentifier: cellClass.cellIdentifier) as? T else {
            fatalError("no \(cellClass.cellIdentifier) registered")
        }
        return cell
    }
}

extension UITableViewCell {
    
    static var cellIdentifier: String {
        return NSStringFromClass(Self.self)
    }
    
    static var cellNibName: String {
        return NSStringFromClass(Self.self).components(separatedBy: ".").last ?? ""
    }
}
