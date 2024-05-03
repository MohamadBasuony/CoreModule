//
//  BaseProtocols.swift
//  NetworkModule
//
//  Created by Mohamad Basuony on 02/05/2024.
//

import Foundation
// For Handling Loading Indicator 
public protocol BaseProtocol : AnyObject {
    func showIndicatorInView()
    func hideIndicatorInView()
}
