//
//  UIViewController+Routable.swift
//  petsapp
//
//  Created by volkan biçer on 26/08/2017.
//  Copyright © 2017 volkan biçer. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController:Routable{
    
    enum StoryboardIdentifier: String {
        case main = "Main"
        case launch = "LaunchScreen"
        case login = "Login"
        case demand = "Demand"
        case search = "Search"
        case helper = "Helper"
        case appointment = "Appointment"
        case profile = "Profile"
        case menu = "Menu"
        case test = "Test"
        case projectButtons = "ProjectButtons"
        case outages = "Outages"
        case miscellaneous = "Miscellaneous"
        case missingDocument = "MissingDocument"
        case instantFault = "InstantFault"
    }

}
