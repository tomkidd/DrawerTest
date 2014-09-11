//
//  SideDrawerViewController.swift
//  DrawerTest
//
//  Created by Tom Kidd on 9/11/14.
//  Copyright (c) 2014 Tom Kidd. All rights reserved.
//

import UIKit

class SideDrawerViewController: UIViewController {
    
    @IBOutlet var FirstVC:UIButton?
    @IBOutlet var SecondVC:UIButton?
    @IBOutlet var ThirdVC:UIButton?
    
    //[self.mm_drawerController setCenterViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"SECOND_TOP_VIEW_CONTROLLER"] withCloseAnimation:YES completion:nil];
    
    @IBAction func goFirstVC(x:UIButton) {
        self.mm_drawerController.setCenterViewController(self.storyboard!.instantiateViewControllerWithIdentifier("FIRST_TOP_VIEW_CONTROLLER") as UIViewController, withCloseAnimation: true, completion:{finished in self.mm_drawerController.leftDrawerViewController = self.storyboard!.instantiateViewControllerWithIdentifier("SIDE_DRAWER_CONTROLLER") as UIViewController})
    }
    
    @IBAction func goSecondVC(x:UIButton) {
        self.mm_drawerController.setCenterViewController(self.storyboard!.instantiateViewControllerWithIdentifier("SECOND_TOP_VIEW_CONTROLLER") as UIViewController, withCloseAnimation: true, completion: {finished in self.mm_drawerController.leftDrawerViewController = self.storyboard!.instantiateViewControllerWithIdentifier("SIDE_DRAWER_CONTROLLER") as UIViewController})
    }
    
    @IBAction func goThirdVC(x:UIButton) {
        self.mm_drawerController.leftDrawerViewController = self.storyboard!.instantiateViewControllerWithIdentifier("SIDE_DRAWER_CONTROLLER_2") as UIViewController
    }
    
    func resetmenu() -> Bool {
        self.mm_drawerController.leftDrawerViewController = self.storyboard!.instantiateViewControllerWithIdentifier("SIDE_DRAWER_CONTROLLER") as UIViewController
        return true
    }
    
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
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
