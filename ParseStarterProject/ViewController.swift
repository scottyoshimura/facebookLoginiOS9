//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse
//lets import the FBSDK
import FBSDKCoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //lets create a variable called permissions, that is an array that details what we want to get from the user's fb acccount. there are many options for data that you can get, such as friends list, etc
        var permissions = ["public_profile"]
        
        //we don't want publish permissions like writing on peoples walls. we want
        PFFacebookUtils.logInInBackgroundWithReadPermissions(permissions) {
            
            //the variables we are expecting are user, so let's get that user and populate in parse. and it is optional because we don't know if it will work. we are not returning anythings, so we use void
            (user: PFUser?, error: NSError?) -> Void in
            if let error = error {
                print(error)
            } else {
                if let user = user {
                    print(user)
                }
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

