//
//  ViewController.swift
//  wordplayApp
//
//  Created by student1 on 12/7/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//
//This is A Test


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nounTextField: UITextField!
    // This is the outlet for poop.
    
   
    
    var madLibInViewController = madLib()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //nounTexfField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
       
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        madLibInViewController.noun = (nounTextField.text!)
        textField.resignFirstResponder()
        performSegueWithIdentifier("nounSegue", sender: nil)
        
    
        return true
    }
    
    @IBAction func nounOnButtonTap(sender: UIButton) {
        madLibInViewController.noun = (nounTextField.text!)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextViewController = segue.destinationViewController as! NounTwoViewController
        nextViewController.madLibInNounTwoViewController = madLibInViewController
    }
    
    
}
