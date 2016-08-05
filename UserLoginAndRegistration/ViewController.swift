//
//  ViewController.swift
//  UserLoginAndRegistration
//
//  Created by Rukmani on 02/08/16.
//  Copyright © 2016 Rukmani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let isuserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("userLoggedIn")
        
        if(!isuserLoggedIn)
        {
           self.performSegueWithIdentifier("loginView", sender: self)
        }
       
    }
    @IBAction func logoutButtonTapped(sender: AnyObject) {
        
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "userLoggedIn")
        NSUserDefaults.standardUserDefaults().synchronize()
        self.performSegueWithIdentifier("loginView", sender: self)    }

}

