//
//  NounTwoViewController.swift
//  wordplayApp
//
//  Created by Justin Lazarski on 12/25/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class NounTwoViewController: UIViewController {
    
    @IBOutlet weak var nounTwoTextField: UITextField!
    
    var madLibInNounTwoViewController = madLib()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //nounTexfField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func nounTwoOnButtonTap(sender: UIButton) {
        madLibInNounTwoViewController.nounTwo = (nounTwoTextField.text!)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextViewController = segue.destinationViewController as! VerbViewController
        nextViewController.madLibInVerbViewController = madLibInNounTwoViewController
    }
    
    
    
    
    
}
