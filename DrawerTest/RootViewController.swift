//
//  ViewController.swift
//  DrawerTest
//
//  Created by Tom Kidd on 9/10/14.
//  Copyright (c) 2014 Tom Kidd. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet var go: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goThere(x:UIButton) {
        performSegueWithIdentifier("DRAWER_SEGUE", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DRAWER_SEGUE" {
            let destinationViewController = segue.destinationViewController as MMDrawerController
            
            // Instantitate and set the center view controller.
            let centerViewController = self.storyboard!.instantiateViewControllerWithIdentifier("SECOND_TOP_VIEW_CONTROLLER") as UIViewController
            destinationViewController.centerViewController = centerViewController;
            
            // Instantiate and set the left drawer controller.
            let leftDrawerViewController = self.storyboard!.instantiateViewControllerWithIdentifier("SIDE_DRAWER_CONTROLLER") as UIViewController
            destinationViewController.leftDrawerViewController = leftDrawerViewController            
        }
    }
    

}

