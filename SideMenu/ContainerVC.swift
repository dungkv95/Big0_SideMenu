//
//  ViewController.swift
//  SideMenu
//
//  Created by Trương Thắng on 3/12/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {

    @IBOutlet weak var sideMenuViewContainer: UIView!
    @IBOutlet weak var mainViewContainer: UIView!
    @IBOutlet weak var leftSideMenuConstraint: NSLayoutConstraint!
    
    
    var isSideMenuOpen: Bool = true {
        didSet {
            if isSideMenuOpen {
                configForSideMenuOpeningState()
            } else {
                configForSideMenuClosingState()
            }
            UIView.animate(withDuration: 0.35, animations: { 
                self.view.layoutIfNeeded()
            }) { (isSuccess) in
                // TODO:
            }
            
        }
    }
    
    func configForSideMenuOpeningState() {
        leftSideMenuConstraint.constant = 0
    }
    
    func configForSideMenuClosingState() {
        leftSideMenuConstraint.constant = -sideMenuViewContainer.bounds.width
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickCorverButton() {
        isSideMenuOpen = !isSideMenuOpen
    }


}

