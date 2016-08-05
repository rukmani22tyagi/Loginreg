//
//  LoginViewController.swift
//  UserLoginAndRegistration
//
//  Created by Rukmani on 02/08/16.
//  Copyright © 2016 Rukmani. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func loginButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        
        let userEmailStored = NSUserDefaults.standardUserDefaults().stringForKey("userEmail")
        let userPasswordStored = NSUserDefaults.standardUserDefaults().stringForKey("userPassword")
        
        
        if(userEmail == userEmailStored)&&(userPassword == userPasswordStored)
        {
        
        
                // login successful
                NSUserDefaults.standardUserDefaults().setBool(true, forKey: "userLoggedIn")
                NSUserDefaults.standardUserDefaults().synchronize()
               self.dismissViewControllerAnimated(true, completion: nil)
            
            
        }
        
        else{
            //Show alert message
            
            let myAlert = UIAlertController(title: "Alert", message: "Email or Password do not match", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            
            myAlert.addAction(okAction)
            self.presentViewController(myAlert, animated: true, completion: nil)
            
            
            
        }
    }

}
