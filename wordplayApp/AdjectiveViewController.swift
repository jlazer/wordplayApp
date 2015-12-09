//
//  AdjectiveViewController.swift
//  wordplayApp
//
//  Created by student1 on 12/9/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class AdjectiveViewController: UIViewController {
    
    
    @IBOutlet weak var adjectiveTextField: UITextField!
    var madLibInAdjViewController = madLib()
    override func viewDidLoad() {
        super.viewDidLoad()
       
               // Do any additional setup after loading the view.
    }

    @IBAction func adjectiveOnButtonTap(sender: UIButton) {
        madLibInAdjViewController.adjective = (adjectiveTextField.text!)
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextViewController = segue.destinationViewController as! sentenceViewController
        nextViewController.madLibInSentenceViewController = madLibInAdjViewController
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
