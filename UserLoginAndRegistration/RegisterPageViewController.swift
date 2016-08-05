//
//  RegisterPageViewController.swift
//  UserLoginAndRegistration
//
//  Created by Rukmani on 02/08/16.
//  Copyright © 2016 Rukmani. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
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
    @IBAction func registerButtonTapped(sender: AnyObject) {
        let userEmail = userEmailTextField.text!
        let userPassword = userPasswordTextField.text!
        let userRepeatPassword = repeatPasswordTextField.text!
        
        // Mark: Check for empty fields
        
        if(userEmail.isEmpty || userPassword.isEmpty || userRepeatPassword.isEmpty)
        {
            // Display alert message
            displayMyAlertMessage("All Fields are required")
            
            return
        }
         // check if password matches
        
        if(userPassword != userRepeatPassword)
        
        {
            //display alert message
            
              displayMyAlertMessage("Password do not match")
            return
        }
        // Store Data
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userEmail")
        
         NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey: "userPassword")
        
         NSUserDefaults.standardUserDefaults().synchronize()
        
        //Display Alert Message with Confirmation
           let myAlert = UIAlertController(title: "Alert", message: "Registeration is successful.. Thank You..", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default){action in self.dismissViewControllerAnimated(true, completion: nil)
        }
    
            myAlert.addAction(okAction)
           self.presentViewController(myAlert, animated: true, completion: nil)
    }
    
    func displayMyAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil)
        
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
    }

}
