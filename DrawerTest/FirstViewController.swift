//
//  FirstViewController.swift
//  DrawerTest
//
//  Created by Tom Kidd on 9/10/14.
//  Copyright (c) 2014 Tom Kidd. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var go:UIButton?
    
    @IBAction func doIt(x:UIButton) {
        self.mm_drawerController.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
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
