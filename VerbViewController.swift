//
//  VerbViewController.swift
//  wordplayApp
//
//  Created by student1 on 12/8/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//  Hello There

import UIKit

class VerbViewController: UIViewController {
    var madLibInVerbViewController = madLib()

    @IBOutlet weak var verbTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func verbOnButtonTap(sender: UIButton) {
        madLibInVerbViewController.verb = (verbTextField.text!)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextViewController = segue.destinationViewController as! AdjectiveViewController
        nextViewController.madLibInAdjViewController = madLibInVerbViewController
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
