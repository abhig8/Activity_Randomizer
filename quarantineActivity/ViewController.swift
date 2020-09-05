//
//  ViewController.swift
//  quarantineActivity
//
//  Created by Abhinav Gupta on 4/24/20.
//  Copyright © 2020 Abhinav Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityText : String = "Random"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        overrideUserInterfaceStyle = .dark
    }
    
    override open var shouldAutorotate: Bool {
        return false
    }

    @IBAction func randomButton(_ sender: UIButton) {
        var myActivity : activities = activities(activityType: sender.currentTitle ?? "Random")
        activityText = myActivity.getActivity()
        self.performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            let destination = segue.destination as! secondViewController
                
            destination.activityText = self.activityText
        }
    }
}

