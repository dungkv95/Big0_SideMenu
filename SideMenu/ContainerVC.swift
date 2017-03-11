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
    @IBOutlet weak var corverButton: UIButton!
    
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
                if self.isSideMenuOpen {
                    
                } else {
                    self.sideMenuViewContainer.clipsToBounds = true
                }
            }
            
        }
    }
    
    func configForSideMenuOpeningState() {
        self.sideMenuViewContainer.clipsToBounds = false
            self.leftSideMenuConstraint.constant = 0
            self.corverButton.alpha = 0.5
    }
    
    func configForSideMenuClosingState() {
            self.leftSideMenuConstraint.constant = -self.sideMenuViewContainer.bounds.width
            self.corverButton.alpha = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNotification()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func registerNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(onClickCorverButton), name: NotificationKey.menuClick, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickCorverButton() {
        isSideMenuOpen = !isSideMenuOpen
    }


}

