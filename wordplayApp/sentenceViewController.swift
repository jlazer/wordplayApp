//
//  sentenceViewController.swift
//  wordplayApp
//
//  Created by student1 on 12/9/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class sentenceViewController: UIViewController {
    var madLibInSentenceViewController = madLib()

    override func viewDidLoad() {
        super.viewDidLoad()
        //Displaying the contents of the class in the console.
        print(madLibInSentenceViewController.noun)
        print(madLibInSentenceViewController.verb)
        print(madLibInSentenceViewController.adjective)

        // Do any additional setup after loading the view.
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
