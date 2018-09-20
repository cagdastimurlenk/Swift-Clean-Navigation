//
//  UIViewController+Extensions.swift
//  DagitimMobil
//
//  Created by Cagdas Timurlenk on 08/09/2017.
//  Copyright © 2017 EnerjiSA. All rights reserved.
//

import Foundation
import UIKit
import SideMenu
public extension UIViewController{
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    func hideBackButtonTitle(){
        let backItem = UIBarButtonItem()
        backItem.title = " "
        navigationItem.backBarButtonItem = backItem
    }
    
    
    func showAlert(title:String?, message:String?){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func addMenuItemToNavigationBar(){
        let testButton = UIBarButtonItem(image: UIImage(.ic_menu), style: .plain, target: self, action:  #selector(openSideMenu))
        navigationItem.setRightBarButtonItems([testButton], animated: false)
    }
    
    
    func openSideMenu(){
        guard let controller = SideMenuManager.menuRightNavigationController else { return }
        present(controller, animated: true, completion: nil)
    }
    
    func callCustomerCenter(){
        if let url = URL(string: "telprompt://\(186)") {
            UIApplication.shared.openURL(url)
        }
    }
    
    func add(asChildViewController viewController: UIViewController, containerView: UIView) {
        addChildViewController(viewController)
        containerView.addSubview(viewController.view)
        viewController.view.frame = containerView.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        viewController.didMove(toParentViewController: self)
    }
    
    func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParentViewController: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParentViewController()
    }

    func getPhoneNumberOfUserIfLoggedIn() -> String?{
        guard SharedService.appSettigs.value.isLoggedIn, let gsm = MainViewController.loggedInUser?.gsmNumber, gsm.count == 10 else { return nil }
        let index = gsm.index(gsm.startIndex, offsetBy: 1)
        return gsm.substring(from: index)
    }

}
